// State variables
let currentOdds = 0;
let userBalance = 1000.00;

// Function to pull selection data into the Betslip
function addToSlip(matchName, selection, odds) {
    currentOdds = odds;
    
    // Hide empty placeholder, show active slip UI
    document.getElementById('betslip-empty').classList.add('style-hidden');
    document.getElementById('betslip-active').classList.remove('style-hidden');
    
    // Inject values into the slip layout
    document.getElementById('slip-match').innerText = matchName;
    document.getElementById('slip-selection').innerText = selection;
    document.getElementById('slip-odds').innerText = odds.toFixed(2);
    
    // Calculate potential payout right away
    calculatePayout();
}

// Function to calculate standard multiplication layout
function calculatePayout() {
    const stakeInput = document.getElementById('stake-input').value;
    const stake = parseFloat(stakeInput) || 0;
    
    // Sports betting payout calculation formula: Stake * Odds
    const potentialPayout = stake * currentOdds;
    
    document.getElementById('payout-amount').innerText = '$' + potentialPayout.toFixed(2);
}

// Process the bet
function confirmBet() {
    const stake = parseFloat(document.getElementById('stake-input').value) || 0;
    
    if (stake <= 0) {
        alert('Please enter a valid stake.');
        return;
    }
    
    if (stake > userBalance) {
        alert('Insufficient balance for this bet.');
        return;
    }
    
    // Deduct stake from current session balance
    userBalance -= stake;
    document.getElementById('balance').innerText = '$' + userBalance.toFixed(2);
    
    alert('Bet successfully placed! Good luck.');
    
    // Reset Betslip interface
    document.getElementById('betslip-active').classList.add('style-hidden');
    document.getElementById('betslip-empty').classList.remove('style-hidden');
}
