##### Custom bindings
# Keybindings for Browsers
define_keymap(re.compile(browserStr, re.IGNORECASE),{
    K("RC-Left"): K("M-Left"),     # Navigate back
    K("RC-Right"): K("M-Right"),   # Navigate forward 
    K("RC-y"): K("LC-h"),          # Show history
})
