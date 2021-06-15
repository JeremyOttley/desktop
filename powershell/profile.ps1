function twitch {
	[CmdletBinding()]
	param(
	  [Parameter()]
	  [string] $Channel
	)
	streamlink https://www.twitch.tv/$Channel best
}

function mpv {
	[CmdletBinding()]
	param(
	  [Parameter()]
	  [string] $Source
	)
	C:\Users\jottley\Downloads\mpv.exe $Source
}
