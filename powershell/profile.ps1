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

function yt2mp3 {
	[CmdletBinding()]
	param(
	  [Parameter()]
	  [string] $URL
	)
	youtube-dl --ignore-errors --output %(title)s.%(ext)s" --extract-audio --audio-format mp3 $URL
}
