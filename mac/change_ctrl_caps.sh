#!/bin/sh

# https://developer.apple.com/library/archive/technotes/tn2450/_index.html

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

function hhkb_opt_cmd() {
    hidutil property --set '{
        "UserKeyMapping":[
            {
            "HIDKeyboardModifierMappingSrc":0x700000039,
            "HIDKeyboardModifierMappingDst":0x7000000E0
            },
            {
            "HIDKeyboardModifierMappingSrc":0x7000000E0,
            "HIDKeyboardModifierMappingDst":0x700000039
            },
            {
            "HIDKeyboardModifierMappingSrc":0x7000000E2,
            "HIDKeyboardModifierMappingDst":0x7000000E3,
            },
            {
            "HIDKeyboardModifierMappingSrc":0x7000000E3,
            "HIDKeyboardModifierMappingDst":0x7000000E2,
            }
        ]
    }'
}

function opt_cmd() {
	hidutil property --set '{
		  "UserKeyMapping":[
				  {
					"HIDKeyboardModifierMappingSrc":0x7000000E2,
					"HIDKeyboardModifierMappingDst":0x7000000E3,
					},
					{
					"HIDKeyboardModifierMappingSrc":0x7000000E3,
					"HIDKeyboardModifierMappingDst":0x7000000E2,
					}
			]
		}'
}

function keyMapClear(){
	hidutil property --set '{
	  "UserKeyMapping": []
	}'
}

