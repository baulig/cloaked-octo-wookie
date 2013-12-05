#!/bin/sh
xbuild /p:Configuration=Debug CloakedOctoWookie/CloakedOctoWookie.sln

rm -rf repository
mkdir -p repository
mono ~/.local/share/NuGet/NuGet.exe pack -OutputDirectory repository CloakedOctoWookie/CloakedOctoWookie.nuspec 
