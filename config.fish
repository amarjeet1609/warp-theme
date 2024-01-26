if status is-interactive
    # Commands to run in interactive sessions can go here
end
starship init fish | source
# [ -f /opt/homebrew/share/autojump/autojump.fish ]; and source /opt/homebrew/share/autojump/autojump.fish

for var in 1 2 3 4 5
    if contains $fish_user_paths[$var] "/opt/homebrew/opt/openjdk@17/bin"
        set --erase --universal fish_user_paths[$var]
        break
    end
    if contains $fish_user_paths[$var] "/opt/homebrew/opt/openjdk@11/bin"
        set --erase --universal fish_user_paths[$var]
        break
    end
    if contains $fish_user_paths[$var] "/opt/homebrew/opt/openjdk/bin"
        set --erase --universal fish_user_paths[$var]
        break
    end
    if contains $fish_user_paths[$var] "/opt/homebrew/opt/node/bin"
        set --erase --universal fish_user_paths[$var]
        break
    end
    if contains $fish_user_paths[$var] "/opt/homebrew/opt/node@20/bin"
        set --erase --universal fish_user_paths[$var]
        break
    end
end
fish_add_path /opt/homebrew/opt/openjdk@11/bin
# fish_add_path /opt/homebrew/opt/openjdk/bin
# fish_add_path /opt/homebrew/opt/openjdk@17/bin
# fish_add_path /opt/homebrew/opt/node/bin
fish_add_path /opt/homebrew/opt/node@20/bin

set -x JAVA_HOME /opt/homebrew/opt/openjdk@11
# set -x JAVA_HOME /opt/homebrew/opt/openjdk
# set -x JAVA_HOME /opt/homebrew/opt/openjdk@17


# Make sure to keep below line at end of file.
eval "$(/opt/homebrew/bin/brew shellenv)"