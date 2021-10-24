logHook = dynamicLogWithPP xmobarPP
            { ppOutput = hPutStrLn xmproc
            , ppTitle = xmobarColor "#000000,#50fa7b" "" . shorten 100 . wrap " " " "
            , ppCurrent = xmobarColor "#000000,#f1fa8c" "" 
            , ppWsSep = " "
            , ppExtras = [windowCount]
            , ppOrder = \(ws:l:t:ex) -> [ws]++[t]
            , ppSep = " "
            },
