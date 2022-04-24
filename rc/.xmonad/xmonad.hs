-- Defaults
import XMonad

-- Utils
import XMonad.Util.SpawnOnce

-- Layouts
import XMonad.Layout.ResizableTile
import XMonad.Layout.Gaps
import XMonad.Layout.Spacing
import XMonad.Layout.NoBorders
import XMonad.Layout.Simplest

-- Xmobar
import XMonad.Hooks.DynamicLog

main = xmonad =<< xmobar def 
        { terminal = myterminal
	, borderWidth        = myborderwidth
	, layoutHook         = mylayout
	, normalBorderColor  = mybordercolor
	, focusedBorderColor = myfocuscolor
	, startupHook        = mystartuphook
	}

-- Settings
-- terminal
myterminal = "kitty"
gap_top    = 5
gap_bottom = 5
gap_left   = 5
gap_right  = 5
mylayout   = mytiled ||| noBorders Full ||| Simplest
   where
      mytiled = spacingRaw True (Border gap_top gap_bottom gap_left gap_right) True (Border gap_top gap_bottom gap_left gap_right) True $ tiled
      tiled   = ResizableTall 1 (3/100) (1/2) []

-- border
myborderwidth = 1
mybordercolor = "#000000"
myfocuscolor  = "#dcd3b2"

-- startuphook
mystartuphook = do
   spawnOnce "feh --bg-fill ~/Dropbox/backgrounds/SymboliRudolf.png"
