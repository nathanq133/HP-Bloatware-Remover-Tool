Add-Type -AssemblyName System.Windows.Forms, System.Drawing

# --- UI Setup ---
$form = New-Object System.Windows.Forms.Form
$form.Text = "HP Bloatware Killer v2.1"
$form.Size = New-Object System.Drawing.Size(450, 600)
$form.BackColor = [System.Drawing.Color]::FromArgb(32, 32, 32)
$form.ForeColor = [System.Drawing.Color]::White
$form.StartPosition = "CenterScreen"

$title = New-Object System.Windows.Forms.Label
$title.Text = "System Optimizer"
$title.Font = New-Object System.Drawing.Font("Segoe UI", 18, [System.Drawing.FontStyle]::Bold)
$title.Location = New-Object System.Drawing.Point(20, 20)
$title.AutoSize = $true
$form.Controls.Add($title)

$chkRestore = New-Object System.Windows.Forms.CheckBox
$chkRestore.Text = "Create System Restore Point"
$chkRestore.Location = New-Object System.Drawing.Point(25, 70)
$chkRestore.AutoSize = $true
$chkRestore.Checked = $true
$form.Controls.Add($chkRestore)

$chkRestart = New-Object System.Windows.Forms.CheckBox
$chkRestart.Text = "Restart PC when finished"
$chkRestart.Location = New-Object System.Drawing.Point(25, 100)
$chkRestart.AutoSize = $true
$form.Controls.Add($chkRestart)

$btnRun = New-Object System.Windows.Forms.Button
$btnRun.Text = "START CLEANING"
$btnRun.Size = New-Object System.Drawing.Size(390, 50)
$btnRun.Location = New-Object System.Drawing.Point(22, 140)
$btnRun.FlatStyle = "Flat"
$btnRun.BackColor = [System.Drawing.Color]::FromArgb(0, 120, 215)
$btnRun.Font = New-Object System.Drawing.Font("Segoe UI", 11, [System.Drawing.FontStyle]::Bold)
$form.Controls.Add($btnRun)

$logBox = New-Object System.Windows.Forms.TextBox
$logBox.Size = New-Object System.Drawing.Size(390, 250)
$logBox.Location = New-Object System.Drawing.Point(22, 210)
$logBox.Multiline = $true
$logBox.ReadOnly = $true
$logBox.BackColor = [System.Drawing.Color]::FromArgb(20, 20, 20)
$logBox.ForeColor = [System.Drawing.Color]::FromArgb(0, 255, 127)
$logBox.BorderStyle = "None"
$logBox.Font = New-Object System.Drawing.Font("Consolas", 10)
$form.Controls.Add($logBox)

# --- Logic ---
$btnRun.Add_Click({
    $btnRun.Enabled = $false
    $logBox.AppendText(" > Task Started...`r`n")

    if ($chkRestore.Checked) {
        $logBox.AppendText(" > Creating Restore Point...`r`n")
        [System.Windows.Forms.Application]::DoEvents()
        Checkpoint-Computer -Description "HP Bloat Removal" -RestorePointType "MODIFY_SETTINGS" -ErrorAction SilentlyContinue
    }

    # Your actual HP removal commands go inside these quotes or right here:
    $logBox.AppendText(" > Cleaning HP Bloatware...`r`n")
    # Example: Get-AppxPackage "*HP*" | Remove-AppxPackage
    Start-Sleep -Seconds 2

    $logBox.AppendText(" > COMPLETED SUCCESSFULLY.`r`n")

    if ($chkRestart.Checked) {
        $logBox.AppendText(" > RESTARTING IN 5 SECONDS...")
        Start-Sleep -Seconds 5
        Restart-Computer -Force
    }
})

$form.ShowDialog() | Out-Null