// Global Session Engine State Parameters
let currentOdds = 0;
let userBalance = 1000.00;

/**
 * Passes card metrics down to user interaction panels.
 * Handles DOM token swapping cleanly to override CSS active states.
 */
function addToSlip(buttonElement, matchName, selection, odds) {
    currentOdds = odds;
    
    // Select siblings in context block and reset visual classifications
    const parentContainer = buttonElement.parentElement;
    const siblingButtons = parentContainer.querySelectorAll('.odds-btn');
    siblingButtons.forEach(btn => btn.classList.remove('selected'));
    
    // Lock in the active state decoration class rules
    buttonElement.classList.add('selected');
    
    // Update dashboard visual structural states
    document.getElementById('betslip-empty').classList.add('style-hidden');
    document.getElementById('betslip-active').classList.remove('style-hidden');
    
    // Inject selected data metrics inside the DOM elements safely
    document.getElementById('slip-match').innerText = matchName;
    document.getElementById('slip-selection').innerText = selection;
    document.getElementById('slip-odds').innerText = odds.toFixed(2);
    
    calculatePayout();
}

/**
 * Execution method calculating Stake * Odds return parameters.
 */
function calculatePayout() {
    const stakeInput = document.getElementById('stake-input').value;
    const stake = parseFloat(stakeInput) || 0;
    
    // Basic execution formula: Payout = Stake * Odds
    const potentialPayout = stake * currentOdds;
    
    document.getElementById('payout-amount').innerText = '$' + potentialPayout.toFixed(2);
}

/**
 * Final execution submission engine wrapper. Handles logic calculations.
 */
function confirmBet() {
    const stake = parseFloat(document.getElementById('stake-input').value) || 0;
    
    if (stake <= 0) {
        alert('Please specify a positive numerical stake parameter.');
        return;
    }
    
    if (stake > userBalance) {
        alert('Insufficient wallet resources available to process registration stakes.');
        return;
    }
    
    // Deduct transactional ledger balance variables inside the memory frame
    userBalance -= stake;
    document.getElementById('balance').innerText = '$' + userBalance.toFixed(2);
    
    alert('Bet successfully cataloged inside the KCOOLBET execution pipeline!');
    
    // Revert visual elements back to base configuration frameworks
    document.getElementById('betslip-active').classList.add('style-hidden');
    document.getElementById('betslip-empty').classList.remove('style-hidden');
    
    // Scrub highlights off the selection panels globally
    const allOddsButtons = document.querySelectorAll('.odds-btn');
    allOddsButtons.forEach(btn => btn.classList.remove('selected'));
}
