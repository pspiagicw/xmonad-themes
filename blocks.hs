logHook = dynamicLogWithPP xmobarPP
            { ppOutput = hPutStrLn xmproc
            , ppTitle = xmobarColor "#000000,#50fa7b" "" . shorten 100 . wrap " " " "
            , ppCurrent = xmobarColor "#000000,#f1fa8c" "" 
            , ppUrgent = xmobarColor "#000000,#ff5555" "" 
            , ppHiddenNoWindows = xmobarColor "#000000,#bd93f9" "" . clickable
            , ppHidden = xmobarColor "#000000,#8be9fd" "" . clickable
            , ppWsSep = " "
            , ppExtras = [windowCount]
            , ppOrder = \(ws:l:t:ex) -> [ws]++[t]
            , ppSep = " "
            },
