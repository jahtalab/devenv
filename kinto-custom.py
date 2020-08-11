##### Custom bindings
# Keybindings for Browsers
define_keymap(re.compile(browserStr, re.IGNORECASE),{
    K("RC-Alt-Left"): K("M-Left"),     # Navigate back
    K("RC-Alt-Right"): K("M-Right"),   # Navigate forward 
    K("RC-y"): K("LC-h"),          # Show history
})
