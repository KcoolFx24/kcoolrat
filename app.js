// Global API Configuration Details
const API_KEY = '9a046389be577339c39b240764d954bb';
const REGION = 'eu'; // decimal layout odds tracking standards

let currentOdds = 0;
let userBalance = 1000.00;
let chosenSportEndpoint = 'upcoming'; // Default global variable track

// Program Boot Execution Handshaker
window.addEventListener('DOMContentLoaded', () => {
    // Initial fetch of real global odds data values
    fetchLiveSportsOdds(chosenSportEndpoint);

    // Dynamic responsive Mobile Dropdown Selector trigger listener rule
    const mobileSelector = document.getElementById('sports-dropdown');
    mobileSelector.addEventListener('change', (event) => {
        chosenSportEndpoint = event.target.value;
        fetchLiveSportsOdds(chosenSportEndpoint);
    });
});

/**
 * REST Engine logic connecting directly out to the global sports data node network.
 */
async function fetchLiveSportsOdds(sportPath) {
    const loader = document.getElementById('matches-loader');
    const container = document.getElementById('live-matches-container');
    
    // Reset layout visibility settings before processing fetch chains
    loader.style.display = 'block';
    loader.innerText = 'Syncing real-time global live sportsbook tables...';
    container.innerHTML = '';
    
    try {
        let fetchUrl = `https://api.the-odds-api.com/v4/sports/upcoming/odds/?regions=${REGION}&oddsFormat=decimal&apiKey=${API_KEY}`;
        
        // If user targets specific sport filters rather than global generic lists
        if (sportPath !== 'upcoming') {
            fetchUrl = `https://api.the-odds-api.com/v4/sports/${sportPath}/odds/?regions=${REGION}&oddsFormat=decimal&apiKey=${API_KEY}`;
        }

        const response = await fetch(fetchUrl);
        
        if (!response.ok) {
            throw new Error('API processing limit threshold conflict or network failure.');
        }
        
        const data = await response.json();
        
        loader.style.display = 'none';
        
        if (data.length === 0) {
            container.innerHTML = '<div class="loading-text">No active markets matched this sport title criteria right now.</div>';
            return;
        }

        // Slice array elements down to parse standard clean listings
        data.slice(0, 10).forEach(match => {
            const bookmaker = match.bookmakers[0];
            if (!bookmaker) return; 
            
            const market = bookmaker.markets[0];
            if (!market) return;

            // Mathematical decimal validation formulas parsing standard endpoints safely
            const homeOdds = market.outcomes.find(o => o.name === match.home_team)?.price || 1.95;
            const awayOdds = market.outcomes.find(o => o.name === match.away_team)?.price || 2.10;
            const drawOdds = market.outcomes.find(o => o.name.toLowerCase() === 'draw')?.price || 3.25;

            const matchCardHtml = `
                <div class="match-card">
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
            container.innerHTML += matchCardHtml;
        });

    } catch (error) {
        console.error(error);
        loader.innerText = 'Data pipeline processing exception. Verify subscription limits or network logs.';
    }
}

/**
 * Betslip Handling & Calculations Functions
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

function confirmBet() {
    const stake = parseFloat(document.getElementById('stake-input').value) || 0;
    
    if (stake <= 0) {
        alert('Please specify a valid positive numeric currency token value.');
        return;
    }
    
    if (stake > userBalance) {
        alert('Insufficient platform resources available inside session registry.');
        return;
    }
    
    userBalance -= stake;
    document.getElementById('balance').innerText = '$' + userBalance.toFixed(2);
    
    alert('Bet successfully logged under the current KCOOLBET tracking system node!');
    
    document.getElementById('betslip-active').classList.add('style-hidden');
    document.getElementById('betslip-empty').classList.remove('style-hidden');
    
    const allOddsButtons = document.querySelectorAll('.odds-btn');
    allOddsButtons.forEach(btn => btn.classList.remove('selected'));
}
