#!/bin/sh

function hhkb() {
    hidutil property --set '{
        "UserKeyMapping":[
            {
            "HIDKeyboardModifierMappingSrc":0x700000039,
            "HIDKeyboardModifierMappingDst":0x7000000E0
            },
            {
            "HIDKeyboardModifierMappingSrc":0x7000000E0,
            "HIDKeyboardModifierMappingDst":0x700000039
            }
        ]
    }'
}

function dishhkb(){
	hidutil property --set '{
	  "UserKeyMapping": []
	}'
}
