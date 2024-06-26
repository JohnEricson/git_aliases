# Based on https://gist.github.com/mwhite/6887990
#
# For this to work you should define alises in your ~/.gitconfig file.

# Create functions and set up auto completion for git aliases
git --list-cmds=alias | ForEach-Object {
    $aliasName = $_
    
    # Create a function for the git alias
    $functionDefinition = @"
function g$aliasName {
    git $aliasName @args
}
"@
    Invoke-Expression $functionDefinition
}

