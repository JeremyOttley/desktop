function Prompt
{
  $prompt = "╭───$($Colors.cyan)$env:USER"
  $prompt += "$($Colors.white) powershelling in "
  $prompt += "$($Colors.green)$(shorten_path(Get-Location))$($Colors.white) "
  $prompt += prompt_git_status
  $prompt += "`n╰─λ "
  $prompt
}
