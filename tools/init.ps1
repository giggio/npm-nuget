param($installPath, $toolsPath, $package)

$nodePath = "$(ls (join-path $installPath ..\node.js*))"
$nodeModulesPath = join-path $installPath "..\..\node_modules\.bin"
$env:path="$toolsPath;$nodePath;$nodeModulesPath;$env:path"
