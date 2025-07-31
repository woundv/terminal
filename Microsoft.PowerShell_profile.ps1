$global:__SuppressBanner = $true

oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\cobalt2.omp.json" | Invoke-Expression

Set-PSReadLineOption -EditMode Vi
Set-PSReadlineOption -ViModeIndicator Script -ViModeChangeHandler {
    Param($mode)
    $Env:SHELL_VI_MODE = $mode
    # go back to the beginning of the line
    Write-Host -NoNewLine "`e[1000D"
    # rewrite the prompt manually
    write-Host -NoNewLine (oh-my-posh --shell pwsh --config ~/.jandedobbeleer.omp.json)
}
Set-PSReadLineKeyHandler -Chord "Tab" -Function ForwardWord
function blue { & "C:\Users\burn\Documents\blue\.venv\Scripts\python.exe" "C:\Users\burn\Documents\blue\main.py" }
function burn { & fastfetch.exe --load-config C:\Users\burn\Documents\fastfetch\presets\examples\14.jsonc }
function speed { & Invoke-RestMethod asheroto.com/speedtest | Invoke-Expression }