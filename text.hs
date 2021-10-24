logHook = dynamicLogWithPP xmobarPP
            { ppOutput = hPutStrLn xmproc
            , ppTitle = xmobarColor "#50fa7b" "" . shorten 50
            , ppCurrent = xmobarColor "#f1fa8c" ""  . wrap "[" "]"
            , ppUrgent = xmobarColor "#ff5555" "" 
            , ppHiddenNoWindows = xmobarColor "#f8f8f2" "" . clickable
            , ppHidden = xmobarColor "#8be9fd" "" . wrap "*" "" . clickable
            , ppWsSep = " "
            , ppExtras = [windowCount]
            , ppOrder = \(ws:l:t:ex) -> [ws]++ex++[t]
            , ppSep = " | "
            },
