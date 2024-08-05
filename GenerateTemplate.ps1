param (
    [string]$TargetDir,
    [switch]$forceRaplace
)

$condition = Test-Path $TargetDir
if (!$condition) {
    mkdir $TargetDir
}

$condition = Test-Path $TargetDir\cmake
if (!$condition) {
    mkdir $TargetDir/cmake
}

$condition = Test-Path $TargetDir\cmake/Tools.cmake
if (!$condition) {
    Copy-Item $env:USERPROFILE/.config/vscode-cpp-template/cmake/Tools.cmake $TargetDir\cmake/Tools.cmake
}

$condition = Test-Path $TargetDir\CMakeLists.txt
if (!$condition) {
    Copy-Item $env:USERPROFILE/.config/vscode-cpp-template/CMakeLists.txt $TargetDir\CMakeLists.txt
}

$condition = Test-Path $TargetDir\.vscode
if (!$condition) {
    mkdir $TargetDir\.vscode
}

$condition = Test-Path $TargetDir/.vscode/tasks.json 
if (!$condition) {
    Copy-Item $env:USERPROFILE/.config/vscode-cpp-template/.vscode/tasks.json $TargetDir/.vscode/tasks.json
}
$condition = Test-Path $TargetDir/.vscode/launch.json 
if (!$condition) {
    Copy-Item $env:USERPROFILE/.config/vscode-cpp-template/.vscode/launch.json $TargetDir/.vscode/launch.json
}
$condition = Test-Path $TargetDir/.vscode/settings.json 
if (!$condition) {
    Copy-Item $env:USERPROFILE/.config/vscode-cpp-template/.vscode/settings.json $TargetDir/.vscode/settings.json
}

$condition = Test-Path $TargetDir/.vscode/c_cpp_properties.json 
if (!$condition) {
    Copy-Item $env:USERPROFILE/.config/vscode-cpp-template/.vscode/c_cpp_properties.json $TargetDir/.vscode/c_cpp_properties.json
}
$condition = Test-Path $TargetDir/Templates
if (!$condition) {
    mkdir $TargetDir\Templates
}

$condition = Test-Path $TargetDir/Templates/main.cpp
if (!$condition) {
    Copy-Item $env:USERPROFILE/.config/vscode-cpp-template/Templates/main.cpp $TargetDir/Templates/main.cpp
}

$condition = Test-Path $TargetDir/Templates/CMakeLists.txt
if (!$condition) {
    Copy-Item $env:USERPROFILE/.config/vscode-cpp-template/Templates/CMakeLists.txt $TargetDir/Templates/CMakeLists.txt
}
