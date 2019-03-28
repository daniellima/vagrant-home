# See where to paste this file:
# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_profiles?view=powershell-6
# In latest windows versions, it's probably "$HOME\Documents\WindowsPowerShell"

Function home {
    ssh home -t "cd /code/$(Split-Path -Path . -Leaf); zsh -li"
}
Function homeup {
    cd $HOME/code/vagrant-home
    vagrant up
}
Function homep {
    cd $HOME/code/vagrant-home
    vagrant up --provision
}