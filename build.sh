#!/bin/sh
xbuild /p:Configuration=Net40 CloakedOctoWookie/CloakedOctoWookie.sln
xbuild /p:Configuration=Net45 CloakedOctoWookie/CloakedOctoWookie.sln
xbuild /p:Configuration=MonoMac CloakedOctoWookie/CloakedOctoWookie.sln
xbuild /p:Configuration=MonoTouch CloakedOctoWookie/CloakedOctoWookie.sln
xbuild /p:Configuration=MonoAndroid CloakedOctoWookie/CloakedOctoWookie.sln

rm -rf repository
mkdir -p repository
mono ~/.local/share/NuGet/NuGet.exe pack -OutputDirectory repository CloakedOctoWookie/CloakedOctoWookie.nuspec 
