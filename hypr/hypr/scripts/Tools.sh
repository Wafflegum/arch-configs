#!/bin/bash
# For Searching via web browsers with wofi

# Define the path to the config file
config_file=$HOME/.config/hypr/UserConfigs/01-UserDefaults.conf

# Check if the config file exists
if [[ ! -f "$config_file" ]]; then
    echo "Error: Configuration file not found!"
    exit 1
fi

# Process the config file in memory, removing the $ and fixing spaces
config_content=$(sed 's/\$//g' "$config_file" | sed 's/ = /=/')

# Source the modified content directly from the variable
eval "$config_content"

# Check if $Search_Engine is set correctly
if [[ -z "$Search_Engine" ]]; then
    echo "Error: \$Search_Engine is not set in the configuration file!"
    exit 1
fi

# Kill wofi if already running before execution
if pgrep -x "wofi" >/dev/null; then
    pkill wofi
fi

# Open wofi and pass the selected query to xdg-open for web search
query=$(echo "" | wofi \
    -dmenu \
    --prompt "Search Online" \
    --conf ~/.config/wofi/wallpaper \
    --style ~/.config/wofi/style.css \
    --width 600 \
    --height 40 \
    --cache-file /dev/null)

# If query is not empty, open it in the default browser with the search engine
if [[ -n "$query" ]]; then
    # URL encode the query
    encoded_query=$(echo "$query" | jq -sRr @uri)
    xdg-open "${Search_Engine}${encoded_query}"
fi