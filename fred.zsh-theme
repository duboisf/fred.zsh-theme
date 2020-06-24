fred_prompt_current_dir=${0:A:h}

{
    function {
        emulate -RL zsh
        setopt err_return
        fpath=("$fred_prompt_current_dir/functions" $fpath)
        autoload $fred_prompt_current_dir/functions/*(:t)
        autoload -U add-zsh-hook
        add-zsh-hook precmd duboisf::theme::precmd
    }
} always {
    unset fred_prompt_current_dir
}

# vim: filetype=zsh
