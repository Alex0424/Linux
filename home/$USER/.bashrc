# Validate shell: input: 'echo $0' output: '/bin/bash'
# If output is bash then you can use this config

# Starship Prompt Design
eval "$(starship init bash)"

# Key bindings
# add your prefered bindings here

# Aliases
alias ls='ls --color=auto'      # colored output
alias ls='ls -l'                # long format
alias ll='ls -la'               # all files long
alias lal='ls -al'              # all files long
alias lt='ls -lt'               # sort by time
alias ltr='ls -ltr'             # sort by time reverse
alias lltr='ll -ltr'            # all long reverse
alias n='nvim'                  # NeoVim
alias rc='nvim ~./bashrc'       # RC file