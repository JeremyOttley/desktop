function twitch {
	[CmdletBinding()]
	param(
	  [Parameter()]
	  [string] $Channel
	)
	streamlink https://www.twitch.tv/$Channel best
}
