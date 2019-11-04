import QtQuick 2.13

/*
 * These are mappings for the raw settings key/value pairs provided by the ground station. We
 * give certain settings full readable titles, type information, and limits or ranges in order
 * to make them more visible and easier to deal with.
 *
 * Any settings not listed in these mappings will still end up in the "other" tab, allowing graceful
 * fallback if new settings are added on the ground station. Any settings that are *removed* from the
 * ground station will simply not show up anymore, even if there is a mapping for it, preventing
 * the app from being fragile and dependent on specific versions of the ground station.
 *
 */
Item {
    id: settingsMap
    property var generalSettingsMap: ({
        "DEBUG": {title: "Enable debug mode", itemType: "bool", trueValue: "Y", falseValue: "N"},
        "QUIET": {title: "Enable quiet mode", itemType: "bool", trueValue: "Y", falseValue: "N"},
        "ENABLE_SCREENSHOTS": {title: "Enable OSD screenshots", itemType: "bool", trueValue: "Y", falseValue: "N"},
        "DISPLAY_OSD": {title: "Display OSD", itemType: "bool", trueValue: "Y", falseValue: "N"},
    })

    property var videoSettingsMap: ({
        "BITRATE_PERCENT": {title: "Bitrate percent",
                            itemType: "number",
                            lowerLimit: 0,
                            upperLimit: 100,
                            interval: 1,
                            unit: "%"},
        "VIDEO_BITRATE": {title: "Video bitrate", itemType: "string"},
        "VIDEO_BLOCKLENGTH": {title: "Block length", itemType: "string"},
        "VIDEO_BLOCKS": {title: "Blocks",
                         itemType: "number",
                         lowerLimit: 1,
                         upperLimit: 20,
                         interval: 1,
                         unit: ""},
        "VIDEO_FECS": {title: "FECs",
                       itemType: "number",
                       lowerLimit: 1,
                       upperLimit: 20,
                       interval: 1,
                       unit: ""},
        "WIDTH": {title: "Width", itemType: "string"},
        "HEIGHT": {title: "Height", itemType: "string"},
        "FPS": {title: "Frames per second",
                itemType: "choice",
                choiceValues: [{title: "30 FPS", value: 30},
                               {title: "48 FPS", value: 48},
                               {title: "59.9 FPS", value: 59.9}]},
        "KEYFRAMERATE": {title: "Keyframe interval",
                         itemType: "number",
                         lowerLimit: 1,
                         upperLimit: 60,
                         interval: 1,
                         unit: ""},
        "EXTRAPARAMS": {title: "Extra parameters", itemType: "string"},
    })

    property var radioSettingsMap: ({
        "Bandwidth": {title: "Radio bandwidth",
                      itemType: "choice",
                      "choiceValues": [{title: "5MHz", value: 5},
                                       {title: "10MHz", value: 10},
                                       {title: "20MHz", value: 20}]},
        "EncryptionOrRange": {title: "Encryption/range mode",
                              itemType: "choice",
                              choiceValues: [{title: "Encryption", value: "Encryption"},
                                             {title: "Range", value: "Range"}]},
        "FREQ": {title: "Frequency",
                 itemType: "choice",
                 choiceValues: [{title: "2312 (Atheros)", value: 2312},
                                {title: "2317 (Atheros)", value: 2317},
                                {title: "2322 (Atheros)", value: 2322},
                                {title: "2327 (Atheros)", value: 2327},
                                {title: "2332 (Atheros)", value: 2332},
                                {title: "2337 (Atheros)", value: 2337},
                                {title: "2342 (Atheros)", value: 2342},
                                {title: "2347 (Atheros)", value: 2347},
                                {title: "2352 (Atheros)", value: 2352},
                                {title: "2357 (Atheros)", value: 2357},
                                {title: "2362 (Atheros)", value: 2362},
                                {title: "2367 (Atheros)", value: 2367},
                                {title: "2372 (Atheros)", value: 2372},
                                {title: "2377 (Atheros)", value: 2377},
                                {title: "2382 (Atheros)", value: 2382},
                                {title: "2387 (Atheros)", value: 2387},
                                {title: "2392 (Atheros)", value: 2392},
                                {title: "2397 (Atheros)", value: 2397},
                                {title: "2402 (Atheros)", value: 2402},
                                {title: "2407 (Atheros)", value: 2407},
                                {title: "2412 (Ralink/Atheros)", value: 2412},
                                {title: "2417 (Ralink/Atheros)", value: 2417},
                                {title: "2422 (Ralink/Atheros)", value: 2422},
                                {title: "2427 (Ralink/Atheros)", value: 2427},
                                {title: "2432 (Ralink/Atheros)", value: 2432},
                                {title: "2437 (Ralink/Atheros)", value: 2437},
                                {title: "2442 (Ralink/Atheros)", value: 2442},
                                {title: "2447 (Ralink/Atheros)", value: 2447},
                                {title: "2452 (Ralink/Atheros)", value: 2452},
                                {title: "2457 (Ralink/Atheros)", value: 2457},
                                {title: "2462 (Ralink/Atheros)", value: 2462},
                                {title: "2467 (Ralink/Atheros)", value: 2467},
                                {title: "2472 (Ralink/Atheros)", value: 2472},
                                {title: "2484 (Ralink/Atheros)", value: 2484},
                                {title: "2477 (Atheros)", value: 2477},
                                {title: "2482 (Atheros)", value: 2482},
                                {title: "2487 (Atheros)", value: 2487},
                                {title: "2489 (Atheros)", value: 2489},
                                {title: "2492 (Atheros)", value: 2492},
                                {title: "2494 (Atheros)", value: 2494},
                                {title: "2497 (Atheros)", value: 2497},
                                {title: "2499 (Atheros)", value: 2499},
                                {title: "2512 (Atheros)", value: 2512},
                                {title: "2532 (Atheros)", value: 2532},
                                {title: "2572 (Atheros)", value: 2572},
                                {title: "2592 (Atheros)", value: 2592},
                                {title: "2612 (Atheros)", value: 2612},
                                {title: "2632 (Atheros)", value: 2632},
                                {title: "2652 (Atheros)", value: 2652},
                                {title: "2672 (Atheros)", value: 2672},
                                {title: "2692 (Atheros)", value: 2692},
                                {title: "2712 (Atheros)", value: 2712},
                                {title: "5180", value: 5180},
                                {title: "5200", value: 5200},
                                {title: "5220", value: 5220},
                                {title: "5240", value: 5240},
                                {title: "5260 (DFS RADAR)", value: 5260},
                                {title: "5280 (DFS RADAR)", value: 5280},
                                {title: "5300 (DFS RADAR)", value: 5300},
                                {title: "5320 (DFS RADAR)", value: 5320},
                                {title: "5500 (DFS RADAR)", value: 5500},
                                {title: "5520 (DFS RADAR)", value: 5520},
                                {title: "5540 (DFS RADAR)", value: 5540},
                                {title: "5560 (DFS RADAR)", value: 5560},
                                {title: "5580 (DFS RADAR)", value: 5580},
                                {title: "5600 (DFS RADAR)", value: 5600},
                                {title: "5620 (DFS RADAR)", value: 5620},
                                {title: "5640 (DFS RADAR)", value: 5640},
                                {title: "5660 (DFS RADAR)", value: 5660},
                                {title: "5680 (DFS RADAR)", value: 5680},
                                {title: "5700 (DFS RADAR)", value: 5700},
                                {title: "5745", value: 5745},
                                {title: "5765", value: 5765},
                                {title: "5785", value: 5785},
                                {title: "5805", value: 5805},
                                {title: "5825", value: 5825}]},
        "CTS_PROTECTION": {title: "CTS", itemType: "bool", trueValue: "Y", falseValue: "N"},
        "DATARATE": {title: "Data rate",
                     itemType: "choice",
                     choiceValues: [{title: "5.5Mbps/6.5Mbps (MCS)", value: 1},
                                    {title: "11Mbps/13Mbps (MCS)", value: 2},
                                    {title: "12Mbps/13Mbps (MCS)", value: 3},
                                    {title: "19.5Mbps", value: 4},
                                    {title: "24Mbps/26Mbps (MCS)", value: 5},
                                    {title: "36Mbps/39Mbps (MCS)", value: 6}]},
        "TxPowerAir": {title: "TX power (air)", itemType: "string"},
        "TxPowerGround": {title: "TX power (ground)", itemType: "string"},
        "UseLDPC": {title: "Use LDPC", itemType: "bool", trueValue: "Y", falseValue: "N"},
        "UseMCS": {title: "Use MCS", itemType: "bool", trueValue: "Y", falseValue: "N"},
        "UseSTBC": {title: "Use STBC", itemType: "bool", trueValue: "Y", falseValue: "N"},
    })

    property var rcSettingsMap: ({

    })


    property var smartSyncSettingsMap: ({
        "SmartSync_StartupMode": {title: "SmartSync Startup Mode",
                                  itemType: "choice",
                                  choiceValues: [{title: "Quick", value: "0"},
                                                 {title: "Wait for air at boot", value: "1"}]},

        "SmartSyncRC_Channel": {title: "SmartSync RC Channel",
                                itemType: "number",
                                lowerLimit: 1,
                                upperLimit: 10,
                                interval: 1,
                                unit: ""},
    })

    property var hotspotSettingsMap: ({
        "ETHERNET_HOTSPOT": {title: "Enable ethernet hotspot",
                             itemType: "bool",
                             trueValue: "Y",
                             falseValue: "N"},
        "WIFI_HOTSPOT": {title: "Enable WiFi hotspot",
                         itemType: "choice",
                         choiceValues: [{title: "Automatic", value: "auto"},
                                        {title: "Yes", value: "yes"},
                                        {title: "No", value: "no"}]},
        "HOTSPOT_BAND": {title: "WiFi band",
                         itemType: "choice",
                         choiceValues: [{title: "5GHz", value: "a"},
                                        {title: "2.4GHz", value: "g"}]},
        "HOTSPOT_CHANNEL": {title: "WiFi channel", itemType: "string"},


        "HOTSPOT_TXPOWER": {title: "WiFi TX power",
                            itemType: "choice",
                            choiceValues: [{title: "1dBm", value: 100},
                                           {title: "3dBm", value: 300},
                                           {title: "9dBm", value: 900},
                                           {title: "15dBm", value: 1500},
                                           {title: "24dBm", value: 1800},
                                           {title: "31dBm", value: 3100}]},

        "HOTSPOT_TIMEOUT": {title: "WiFi disabled after",
                            itemType: "choice",
                            choiceValues: [{title: "Always on", value: 0},
                                           {title: "60 seconds", value: 60},
                                           {title: "5 minutes", value: 300},
                                           {title: "30 minutes", value: 1800}]},
    })

    // these settings wont show up at all
    property var blacklistMap: ({
        // Settings from older OSD
        "Imperial": {},
        "Copter": {},
        // Settings from joystick config file which can't be saved easily
        "UPDATE_NTH_TIME": {},
    })

    // these settings will simply be disabled and uneditable in the UI
    property var disabledMap: ({

    })
}
