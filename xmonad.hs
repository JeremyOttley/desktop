import XMonad
import XMonad.Config.Desktop

myFont :: String
myFont = "Noto Sans 11"

myModMask :: KeyMask
myModMask = mod4Mask

myTerminal :: String
myTerminal = "alacritty"

myBrowser :: String
myBrowser = "qutebrowser"

myEmacs :: String
myEmacs = "emacsclient -c -a 'emacs' "
-- myEditor = myTerminal ++ " -e vim " 

main :: IO ()
main = xmonad desktopConfig
  { modMask = myModMask
  , terminal = myTerminal
  }
