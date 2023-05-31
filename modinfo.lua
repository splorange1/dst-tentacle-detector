name = "tentacle detection"
--The name of your mod
description = "grants vision to nearby tentacles"
--The description that shows when you are selecting the mod from the list
author = "splorange"
--Your name!
version = "1.2"

forumthread = ""

icon_atlas = "modicon.xml"

icon = "modicon.tex"

dst_compatible = true
forge_compatible = true
gorge_compatible = true

dont_starve_compatible = false
reign_of_giants_compatible = false
shipwrecked_compatible = false

all_clients_require_mod = false
server_only_mod = false
client_only_mod = true

api_version = 10
--This is the version of the game's API and should stay the same for the most part
configuration_options =
{
    {
        name = "scale",
        label = "Willow Size",
        hover = "Change the size Willow will be in game!",
        options =
        {
            {description = "100% (No Change)", data = 1.0},
            {description = "90% (Slightly Smaller)", data = 0.9},
            {description = "80% (Definitely Smaller)", data = 0.8},
            {description = "70% (Babu)", data = 0.7},
            {description = "60% (Pinchable cheeks)", data = 0.6},
            {description = "50% (Carry-on size)", data = 0.5},
            {description = "40% (Super baby)", data = 0.4},
            {description = "30% (Actual baby)", data = 0.3},
            {description = "20% (Punchkin)", data = 0.2},
            {description = "10% (Where'd she go?)", data = 0.1},
            {description = "5% (Shrink ray)", data = 0.05},
        },
        default = "0.9",
    },
}