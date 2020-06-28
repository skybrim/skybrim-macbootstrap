# Usage: mv $1 to $1_backup
function backup_file() {
    if [ $# != 1 ]; then
        echo "Usage: backup_file pat_to_file"
    fi

    if [[ -e $1 ]]; then
        mv $1 $1"_backup"
    fi
}

# fanqiang is not necessary in tt network
function not_wiley_network() {
    ssid=$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | awk '/ SSID/ {print substr($0, index($0, $2))}')
    if [[ $ssid = *"wiley"* ]]; then
        return 1
    else
        return 0
    fi
}

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
