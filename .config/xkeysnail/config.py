# -*- coding: utf-8 -*-

import re
from xkeysnail.transform import *

#define_modmap({
#    Key.CAPSLOCK: Key.LEFT_CTRL
#})

define_multipurpose_modmap({
    #Key.SPACE: [Key.SPACE, Key.LEFT_SHIFT],
    Key.CAPSLOCK: [Key.ESC, Key.LEFT_CTRL],
#   Key.RIGHT_SHIFT: [Key.BACKSPACE, Key.RIGHT_SHIFT],
})

define_keymap(None, {

    K("M-q"):K("KEY_1"),
    K("M-w"):K("KEY_2"),
    K("M-e"):K("KEY_3"),
    K("M-r"):K("KEY_4"),
    K("M-t"):K("KEY_5"),
    K("M-y"):K("KEY_6"),
    K("M-u"):K("KEY_7"),
    K("M-i"):K("KEY_8"),
    K("M-o"):K("KEY_9"),
    K("M-p"):K("KEY_0"),

    K("M-Shift-q"):K("Shift-KEY_1"),
    K("M-Shift-w"):K("Shift-KEY_2"),
    K("M-Shift-e"):K("Shift-KEY_3"),
    K("M-Shift-r"):K("Shift-KEY_4"),
    K("M-Shift-t"):K("Shift-KEY_5"),
    K("M-Shift-y"):K("Shift-KEY_6"),
    K("M-Shift-u"):K("Shift-KEY_7"),
    K("M-Shift-i"):K("Shift-KEY_8"),
    K("M-Shift-o"):K("Shift-KEY_9"),
    K("M-Shift-p"):K("Shift-KEY_0"),

#    K("M-DOT"):K("SLASH"),
#    K("M-Shift-DOT"):K("Shift-SLASH"),
#    K("M-COMMA"):K("BACKSLASH"),
#    K("M-Shift-COMMA"):K("Shift-BACKSLASH"),

#    K("SLASH"):K("SEMICOLON"),
#    K("Shift-SLASH"):K("Shift-SEMICOLON"),
#    K("M-SLASH"):K("APOSTROPHE"),
#    K("M-Shift-SLASH"):K("Shift-APOSTROPHE"),

#    K("APOSTROPHE"):K("LEFT_BRACE"),
#    K("Shift-APOSTROPHE"):K("Shift-LEFT_BRACE"),
#    K("M-APOSTROPHE"):K("MINUS"),
#    K("M-Shift-APOSTROPHE"):K("Shift-MINUS"),

#    K("SEMICOLON"):K("RIGHT_BRACE"),
#    K("Shift-SEMICOLON"):K("Shift-RIGHT_BRACE"),
#    K("M-SEMICOLON"):K("EQUAL"),
#    K("M-Shift-SEMICOLON"):K("Shift-EQUAL"),

#    K("DELETE"):K("TAB"),
#    K("Shift-DELETE"):K("TAB"),
#    K("M-DELETE"):K("GRAVE"),
#    K("M-Shift-DELETE"):K("Shift-GRAVE"),



#    K("ENTER"):K("SEMICOLON"),
#    K("Shift-ENTER"):K("Shift-SEMICOLON"),
    K("M-ENTER"):K("TAB"),
    K("M-Shift-ENTER"):K("TAB"),
#    K("M-Shift-ENTER"):K("BACKSPACE"),
#    K("C-h"):K("BACKSPACE"),
#    K("C-j"):K("ENTER"),


    K("M-h"):K("LEFT"),
    K("M-j"):K("DOWN"),
    K("M-k"):K("UP"),
    K("M-l"):K("RIGHT"),

    K("Shift-LEFT"):K("LEFT"),
    K("Shift-DOWN"):K("DOWN"),
    K("Shift-UP"):K("UP"),
    K("Shift-RIGHT"):K("RIGHT"),

    K("M-C"):K("esc"),
#    K("M-SPACE"):K("RIGHT_SHIFT"),
#    K("RIGHT_SHIFT"):K("BACKSPACE"),
#    K("M-RIGHT_SHIFT"):K("BACKSPACE")
}
)
