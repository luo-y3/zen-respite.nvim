
# -----------------------------------------------------------------
# 1. SET COLOR VARIABLES
# -----------------------------------------------------------------
set -g @zen-fg-dark '#0F0F0B'      # base03: Darkest Black/FG on bright BG
set -g @zen-bg-dark '#2e3223'      # base02: Darker Background
set -g @zen-fg-light '#f4f7e6'     # base0: Brightest White/FG
set -g @zen-green '#a6b95d'        # green: Success/Active Accent
set -g @zen-blue '#80a7c8'         # blue: Info/Highlight
set -g @zen-mid-green '#5a6625'    # base3: Mid Green/Inactive Accent

# -----------------------------------------------------------------
# 2. BASE STATUS BAR STYLING
# -----------------------------------------------------------------

# Refresh the status bar every 1 second
set -g status-interval 1

# Set overall background and foreground colors for the status line
set -g status-bg "#{@zen-bg-dark}"
set -g status-fg "#{@zen-fg-light}"
set -g status-style "fg=#{status-fg},bg=#{status-bg}"
set -g status-justify left
set -g status-position bottom

# -----------------------------------------------------------------
# 3. WINDOW STATUS STYLING
# -----------------------------------------------------------------

# Status for inactive windows (Using Mid Green accent)
set -g window-status-style "fg=#{@zen-fg-light},bg=#{@zen-mid-green}"
# Format: Window Index #I, Window Name #W
set -g window-status-format ' #I #[fg=#{@zen-fg-light},bg=#{@zen-mid-green}]#W '

# Status for the currently active window (Using Bright Green accent)
set -g window-status-current-style "fg=#{@zen-fg-dark},bg=#{@zen-green},bold"
# Format: Add bold status-line style to separate text from background
set -g window-status-current-format '#[fg=#{@zen-fg-dark},bg=#{@zen-green},bold] #I #W '

# -----------------------------------------------------------------
# 4. STATUS LEFT (Session Info)
# -----------------------------------------------------------------

set -g status-left-length 40
# Format: [Session Name] (Using Blue as separator background)
set -g status-left "#[fg=#{@zen-bg-dark},bg=#{@zen-blue},bold] #S #[fg=#{@zen-blue},bg=#{@zen-bg-dark},nobold]"

# -----------------------------------------------------------------
# 5. STATUS RIGHT (System Info)
# -----------------------------------------------------------------

# Format: [Time] [Date] (Using Blue as separator background)
set -g status-right "#[fg=#{@zen-blue},bg=#{@zen-bg-dark},nobold]#[fg=#{@zen-bg-dark},bg=#{@zen-blue}] %H:%M #[fg=#{@zen-bg-dark},bg=#{@zen-blue}] %d %b "

# -----------------------------------------------------------------
# 6. PANE BORDERS
# -----------------------------------------------------------------

# Use the Mid Green color for active pane borders
set -g pane-active-border-style "fg=#{@zen-mid-green}"
set -g pane-border-style "fg=#{@zen-bg-dark}"

# -----------------------------------------------------------------
# 7. MESSAGE AND COMMAND LINE
# -----------------------------------------------------------------

# Style the command prompt and status messages
set -g message-style "fg=#{@zen-fg-light},bg=#{@zen-bg-dark},bold"
set -g message-command-style "fg=#{@zen-blue},bg=#{@zen-bg-dark},bold"
