import System.IO
import System.Exit

import Graphics.X11.ExtraTypes.XF86
import XMonad
import XMonad.Config.Desktop
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run

import qualified Data.Map as M

myTerminal    = "kitty"
myBorderWidth = 3
myFocusedBorderColor = "#CAA9FA"
myNormalBorderColor = "#BFBFBF"
modm = mod4Mask
myBar = "/usr/bin/xmobar"

myPP = xmobarPP { ppCurrent = xmobarColor "#FF2266" "" . wrap "<" ">" }

toggleStrutsKey XConfig {XMonad.modMask = modMask} = (modMask, xK_b)

myConfig = defaultConfig
        { terminal    = myTerminal
        , borderWidth = myBorderWidth
        , focusedBorderColor = myFocusedBorderColor
        , normalBorderColor = myNormalBorderColor
	, modMask = modm
	, workspaces = myWorkspaces
        , keys = \c -> mykeys c `M.union` keys defaultConfig c
        }
        where 
            mykeys (XConfig {modMask = modm}) = M.fromList $
                [ ((modm, xK_r), spawn "rofi-launch")
                -- Volume controls
                , ((0,xF86XK_AudioRaiseVolume), spawn
                "pactl set-sink-volume alsa_output.pci-0000_00_1b.0.analog-stereo +25%; notify_sound.sh -v" )
                , ((0,xF86XK_AudioLowerVolume), spawn
                "pactl set-sink-volume alsa_output.pci-0000_00_1b.0.analog-stereo -25%; notify_sound.sh -v" )
                , ((0,xF86XK_AudioMute), spawn
                "pactl set-sink-mute alsa_output.pci-0000_00_1b.0.analog-stereo toggle; notify_sound.sh -m" )
                -- Brightness controls
                , ((0,xF86XK_MonBrightnessUp), spawn
                "light -A 20")
                , ((0,xF86XK_MonBrightnessDown), spawn "light -U 20")
                -- Keyboard brightness
                , ((0,xF86XK_KbdBrightnessUp), spawn "light -s sysfs/leds/smc::kbd_backlight -A 20")
                , ((0,xF86XK_KbdBrightnessDown), spawn "light -s sysfs/leds/smc::kbd_backlight -U 20")
                -- Media player controls
                , ((0,xF86XK_AudioPlay), spawn "playerctl play-pause")
                , ((0,xF86XK_AudioNext), spawn "playerctl next")
                , ((0,xF86XK_AudioPrev), spawn "playerctl previous")
                ]

-- My Workspaces
workspaceNames =
  [ "1"
  , "2"
  , "3"
  , "4"
  , "5"
  , "6"
  , "7"
  , "8"
  , "9"
  ]

myWorkspaces = workspaceNames

main = xmonad =<< statusBar myBar myPP toggleStrutsKey  myConfig


