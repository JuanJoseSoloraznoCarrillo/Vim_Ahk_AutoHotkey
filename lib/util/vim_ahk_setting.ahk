#UseHook True ; Make it a bit slow, but can avoid infinitude loop
              ; Same as "$" for each hotkey
InstallKeybdHook(true) ; For checking key history
                       ; Use ~500kB memory?
A_HotkeyInterval := 2000 ; Hotkey interval (default 2000 milliseconds).
A_MaxHotkeysPerInterval := 70 ; Max hotkeys per interval (default 50).
SendMode("Input")  ; Recommended for new scripts due to its superior speed and reliability.
