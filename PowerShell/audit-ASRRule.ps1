# Retrieve ASR rules and actions
$asrRules = (Get-MpPreference).AttackSurfaceReductionRules_Ids
$asrActions = (Get-MpPreference).AttackSurfaceReductionRules_Actions

# Loop through each rule and action and print their status
for ($i=0; $i -lt $asrRules.length; $i++) {
    $rule = $asrRules[$i]
    $action = $asrActions[$i]

    # Print rule ID and action
    Write-Output "Rule ID: $rule"
    if ($action -eq 1) {
        Write-Output "Action: Block"
    } elseif ($action -eq 2) {
        Write-Output "Action: Audit"
    } else {
        Write-Output "Action: Not set or unknown"
    }
}
