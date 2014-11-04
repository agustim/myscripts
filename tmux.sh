[ ! -z "$TMUX" ] && (
tmux bind E command-prompt -p "Command:" \ "run \"tmux list-sessions -F '##{session_name}' | xargs -I SESS \ tmux list-windows -t SESS -F 'SESS:##{window_index}' | xargs -I SESS_WIN \ tmux list-panes -t SESS_WIN -F 'SESS_WIN.##{pane_index}' | xargs -I SESS_WIN_PANE \ tmux send-keys -t SESS_WIN_PANE '%1' Enter\""
tmux bind R command-prompt -p "Command:" \ "run \"tmux list-panes -F '##{pane_index}' | xargs -I SESS_WIN_PANE \ tmux send-keys -t SESS_WIN_PANE '%1' Enter\""
tmux bind r command-prompt -p "Command:" \ "run \"tmux list-panes -F '##{pane_index}' | xargs -I SESS_WIN_PANE \ tmux send-keys -t SESS_WIN_PANE '%1'\""
)
spane(){
	[ $# -lt 2 ] && return;
	H=$1
	W=$2
	PANES=$(tmux list-pane -F '#{pane_active}:#{pane_width}:#{pane_height}'|grep '^1:')
	TMUX_WIDTH=$(echo $PANES|cut -d ":" -f 2)
	TMUX_HEIGHT=$(echo $PANES|cut -d ":" -f 3)
	_PANE_WIDTH=$(($TMUX_WIDTH/$W))
	_PANE_HEIGHT=$(($TMUX_HEIGHT/$H))

	first_panel=$(tmux display-message -p '#P')
	for x in $(seq 2 $H); 
  do 
		tmux split-window -v -l $_PANE_HEIGHT;
		tmux select-pane -t $first_panel  
	done


	for x in $(tmux list-panes -F '#{pane_index}'|tac)
  do
	tmux select-pane -t $x
		first_panel=$(tmux display-message -p '#P')
		for y in $(seq 2 $W); do 
			tmux split-window -h -l $_PANE_WIDTH;
			tmux select-pane -t $first_panel  
		done
	done		
}
	
