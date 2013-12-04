#!/bin/sh
xbuild /p:Configuration=Net40 CloakedOctoWookie/CloakedOctoWookie.sln
xbuild /p:Configuration=Net45 CloakedOctoWookie/CloakedOctoWookie.sln

mkdir -p repository
mono ~/.local/share/NuGet/NuGet.exe pack -OutputDirectory repository CloakedOctoWookie/CloakedOctoWookie/CloakedOctoWookie.nuspec 
