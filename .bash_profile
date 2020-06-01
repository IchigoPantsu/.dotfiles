
### basic config
export PATH=$PATH:$HOME/bin

### Linuxbrew config
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

# You can preview the content of the file under the cursor by setting --preview option.
#export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"
# export FZF_CTRL_T_OPTS="--select-1 --exit-0"
#bind "$(bind -s | grep '^"\\C-r"' | sed 's/"/"\\C-x/' | sed 's/"$/\\C-m"/')"
#export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"
#export FZF_COMPLETION_TRIGGER=''
#bindkey '^T' fzf-completion
#bindkey '^I' $fzf_default_completion

#no nvidia driver cache
export __GL_SHADER_DISK_CACHE=0

# export ValkanSDK PATH 
export VULKAN_SDK=~/Workspace/vulkan/1.2.135.0/x86_64
export PATH=$VULKAN_SDK/bin:$PATH
export LD_LIBRARY_PATH=$VULKAN_SDK/lib:$LD_LIBRARY_PATH
export VK_LAYER_PATH=$VULKAN_SDK/etc/vulkan/explicit_layer.d
