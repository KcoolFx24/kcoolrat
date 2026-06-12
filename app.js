// Global API Configuration Details
const API_KEY = '9a046389be577339c39b240764d954bb';
const REGION = 'eu'; 

// Application Memory State Machine Engine
let currentOdds = 0;
let userBalance = 1000.00;
let currentActiveSport = 'upcoming';

// Boot initialization sequence
window.addEventListener('DOMContentLoaded', () => {
    initializeDatabase();
    fetchAllInSeasonSportsLeagues();
    fetchLiveMatchesData(currentActiveSport);

    // Setup listener event hook for mobile filter elements
    const mobileDropdown = document.getElementById('sports-dropdown');
    mobileDropdown.addEventListener('change', (e) => {
        currentActiveSport = e.target.value;
        fetchLiveMatchesData(currentActiveSport);
    });
});

/**
 * TAB CONTAINER NAVIGATION CONTROLLER: Switches full view panes interactively
 */
function switchMainView(targetView) {
    const sportsbookPane = document.getElementById('view-pane-sportsbook');
    const myBetsPane = document.getElementById('view-pane-mybets');
    const sidebarElement = document.getElementById('left-sidebar-wrapper');
    
    const tabSportsbookBtn = document.getElementById('tab-sportsbook');
    const tabMyBetsBtn = document.getElementById('tab-mybets');

    // Remove old state styling markers
    tabSportsbookBtn.classList.remove('active');
    tabMyBetsBtn.classList.remove('active');

    if (targetView === 'sportsbook') {
        tabSportsbookBtn.classList.add('active');
        sportsbookPane.classList.remove('style-hidden');
        myBetsPane.classList.add('style-hidden');
        
        // Restore sidebar visibility layout on desktop monitors
        sidebarElement.style.opacity = "1";
        sidebarElement.style.pointerEvents = "auto";
    } else if (targetView === 'mybets') {
        tabMyBetsBtn.classList.add('active');
        sportsbookPane.classList.add('style-hidden');
        myBetsPane.classList.remove('style-hidden');
        
        // Hide sidebar when reading full ledger tickets to provide clear viewing grids
        sidebarElement.style.opacity = "0.2";
        sidebarElement.style.pointerEvents = "none";
        
        // Render updated history metrics whenever looking directly at the tab panel
        renderHistoryLedgerCards();
    }
}

/**
 * DATABASE INITIALIZATION: Syncs state values inside client localStorage blocks
 */
function initializeDatabase() {
    if (localStorage.getItem('kcoolbet_balance') === null) {
        localStorage.setItem('kcoolbet_balance', userBalance.toFixed(2));
    } else {
        userBalance = parseFloat(localStorage.getItem('kcoolbet_balance'));
    }
    document.getElementById('balance').innerText = '$' + userBalance.toFixed(2);

    if (localStorage.getItem('kcoolbet_history') === null) {
        localStorage.setItem('kcoolbet_history', JSON.stringify([]));
    }
    renderHistoryLedgerCards();
}

/**
 * AUTOMATIC LEAGUE FETCH: Pulls ALL sports globally in season right now
 */
async function fetchAllInSeasonSportsLeagues() {
    try {
        const response = await fetch(`https://api.the-odds-api.com/v4/sports/?apiKey=${API_KEY}`);
        if (!response.ok) return;
        
        const sports = await response.json();
        
        const desktopList = document.getElementById('desktop-sports-list');
        const mobileSelect = document.getElementById('sports-dropdown');

        sports.forEach(sport => {
            if (!sport.active) return;

            // 1. Desktop elements mapping
            const desktopLi = document.createElement('li');
            desktopLi.innerText = '🏆 ' + sport.title;
            desktopLi.onclick = () => filterBySport(sport.key, desktopLi);
            desktopList.appendChild(desktopLi);

            // 2. Mobile components options injection mapping
            const mobileOption = document.createElement('option');
            mobileOption.value = sport.key;
            mobileOption.innerText = '🏆 ' + sport.title;
            mobileSelect.appendChild(mobileOption);
        });
    } catch (err) {
        console.error(err);
    }
}

function filterBySport(sportKey, currentElement) {
    currentActiveSport = sportKey;
    
    const listItems = document.querySelectorAll('.sports-list li');
    listItems.forEach(item => item.classList.remove('active'));
    currentElement.classList.add('active');

    document.getElementById('sports-dropdown').value = sportKey;
    fetchLiveMatchesData(sportKey);
}

/**
 * SPORTSBOOK LIVESTREAM CORE HANDSHAKER FEED PIPELINE
 */
async function fetchLiveMatchesData(sportPath) {
    const loader = document.getElementById('matches-loader');
    const container = document.getElementById('live-matches-container');
    
    loader.style.display = 'block';
    container.innerHTML = '';
    
    try {
        let endpointUrl = `https://api.the-odds-api.com/v4/sports/upcoming/odds/?regions=${REGION}&oddsFormat=decimal&apiKey=${API_KEY}`;
        
        if (sportPath !== 'upcoming') {
            endpointUrl = `https://api.the-odds-api.com/v4/sports/${sportPath}/odds/?regions=${REGION}&oddsFormat=decimal&apiKey=${API_KEY}`;
        }

        const response = await fetch(endpointUrl);
        if (!response.ok) throw new Error('Data limits flagged or connection pipeline closed.');
        
        const data = await response.json();
        loader.style.display = 'none';
        
        if (data.length === 0) {
            container.innerHTML = '<div class="loading-text">No active matches matched this sport title criteria right now.</div>';
            return;
        }

        data.forEach(match => {
            const bookmaker = match.bookmakers[0];
            if (!bookmaker) return;
            const market = bookmaker.markets[0];
            if (!market) return;

            const homeOdds = market.outcomes.find(o => o.name === match.home_team)?.price || 1.90;
            const awayOdds = market.outcomes.find(o => o.name === match.away_team)?.price || 2.10;
            const drawOdds = market.outcomes.find(o => o.name.toLowerCase() === 'draw')?.price || 3.20;

            const matchHtml = `
                <div class="match-card" data-teams="${match.home_team.toLowerCase()} ${match.away_team.toLowerCase()}" data-league="${match.sport_title.toLowerCase()}" data-sport="${match.sport_key.toLowerCase()}">
                    <div class="match-details">
                        <span class="league">${match.sport_title}</span>
                        <div class="teams">
                            <span class="team">${match.home_team}</span>
                            <span class="vs">vs</span>
                            <span class="team">${match.away_team}</span>
                        </div>
                    </div>
                    <div class="odds-container">
                        <button class="odds-btn" onclick="addToSlip(this, '${match.home_team} vs ${match.away_team}', 'Home', ${homeOdds})">
                            <span class="label">1</span>
                            <span class="value">${homeOdds.toFixed(2)}</span>
                        </button>
                        <button class="odds-btn" onclick="addToSlip(this, '${match.home_team} vs ${match.away_team}', 'Draw', ${drawOdds})">
                            <span class="label">X</span>
                            <span class="value">${drawOdds.toFixed(2)}</span>
                        </button>
                        <button class="odds-btn" onclick="addToSlip(this, '${match.home_team} vs ${match.away_team}', 'Away', ${awayOdds})">
                            <span class="label">2</span>
                            <span class="value">${awayOdds.toFixed(2)}</span>
                        </button>
                    </div>
                </div>
            `;
            container.innerHTML += matchHtml;
        });

        executeLiveSearch();

    } catch (err) {
        console.error(err);
        loader.innerText = 'Unable to extract dynamic listings data.';
    }
}

function executeLiveSearch() {
    const query = document.getElementById('sports-search-bar').value.toLowerCase().trim();
    const matchCards = document.querySelectorAll('.match-card');

    matchCards.forEach(card => {
        const teamsData = card.getAttribute('data-teams') || '';
        const leagueData = card.getAttribute('data-league') || '';
        const sportData = card.getAttribute('data-sport') || '';

        if (query === "" || teamsData.includes(query) || leagueData.includes(query) || sportData.includes(query)) {
            card.style.display = 'flex';
        } else {
            card.style.display = 'none';
        }
    });
}

/**
 * INTERACTIVE SLIP ACTION CONTROLLERS
 */
function addToSlip(buttonElement, matchName, selection, odds) {
    currentOdds = odds;
    
    const parentContainer = buttonElement.parentElement;
    const siblingButtons = parentContainer.querySelectorAll('.odds-btn');
    siblingButtons.forEach(btn => btn.classList.remove('selected'));
    
    buttonElement.classList.add('selected');
    
    document.getElementById('betslip-empty').classList.add('style-hidden');
    document.getElementById('betslip-active').classList.remove('style-hidden');
    
    document.getElementById('slip-match').innerText = matchName;
    document.getElementById('slip-selection').innerText = selection;
    document.getElementById('slip-odds').innerText = odds.toFixed(2);
    
    calculatePayout();
}

function calculatePayout() {
    const stakeInput = document.getElementById('stake-input').value;
    const stake = parseFloat(stakeInput) || 0;
    const potentialPayout = stake * currentOdds;
    document.getElementById('payout-amount').innerText = '$' + potentialPayout.toFixed(2);
}

/**
 * CORE DATABASE LOG COMMIT CONTROLLERS
 */
function confirmBet() {
    const stake = parseFloat(document.getElementById('stake-input').value) || 0;
    
    if (stake <= 0) {
        alert('Please specify a positive numerical stake parameter.');
        return;
    }
    
    if (stake > userBalance) {
        alert('Insufficient wallet resources available inside registry.');
        return;
    }
    
    userBalance -= stake;
    localStorage.setItem('kcoolbet_balance', userBalance.toFixed(2));
    document.getElementById('balance').innerText = '$' + userBalance.toFixed(2);
    
    const matchName = document.getElementById('slip-match').innerText;
    const selection = document.getElementById('slip-selection').innerText;
    const potentialPayout = stake * currentOdds;

    const transactionRecord = {
        id: Date.now(),
        match: matchName,
        pick: selection,
        odds: currentOdds.toFixed(2),
        stake: stake.toFixed(2),
        payout: potentialPayout.toFixed(2)
    };

    const existingHistory = JSON.parse(localStorage.getItem('kcoolbet_history'));
    existingHistory.unshift(transactionRecord); 
    localStorage.setItem('kcoolbet_history', JSON.stringify(existingHistory));

    alert('Bet successfully cataloged safely inside the KCOOLBET storage core!');
    
    renderHistoryLedgerCards();
    
    document.getElementById('betslip-active').classList.add('style-hidden');
    document.getElementById('betslip-empty').classList.remove('style-hidden');
    
    const allOddsButtons = document.querySelectorAll('.odds-btn');
    allOddsButtons.forEach(btn => btn.classList.remove('selected'));
}

/**
 * HISTORY LEDGER DOM PARSER RENDER MODULE
 */
function renderHistoryLedgerCards() {
    const historyData = JSON.parse(localStorage.getItem('kcoolbet_history')) || [];
    const container = document.getElementById('history-container');
    const displayCount = document.getElementById('history-count');
    
    displayCount.innerText = historyData.length;
    
    // Only parse visual items if container element exists in current rendering frame
    if (!container) return;
    container.innerHTML = '';

    if (historyData.length === 0) {
        container.innerHTML = '<div class="empty-history-text">No betting history found in local database.</div>';
        return;
    }

    historyData.forEach(bet => {
        const historicalCardHtml = `
            <div class="history-card">
                <div class="history-match">${bet.match}</div>
                <div class="history-details-row">
                    <span>Pick: <strong>${bet.pick}</strong> (@${bet.odds})</span>
                    <span>Stake: <strong>$${bet.stake}</strong></span>
                </div>
                <div class="history-details-row" style="margin-top: 8px; border-top: 1px dashed #243042; padding-top: 8px;">
                    <span style="color: #64748b;">Status: <span style="color: #eab308; font-weight: 600;">Open</span></span>
                    <span>Payout: <strong style="color: #00ff87;">$${bet.payout}</strong></span>
                </div>
            </div>
        `;
        container.innerHTML += historicalCardHtml;
    });
}
