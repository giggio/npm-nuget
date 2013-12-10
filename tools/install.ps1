param($installPath, $toolsPath, $package, $project)

$destinationPackageJSON = join-path $installPath "..\..\package.json"
if (!([System.IO.File]::Exists($destinationPackageJSON))){
  cp $toolsPath\package.json $destinationPackageJSON
};
