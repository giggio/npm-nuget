function npm(){
    $npmPath = (join-path $PSScriptRoot npm.cmd)
    & $npmPath $args
}

Export-ModuleMember npm