#!/bin/sh
xbuild /p:Configuration=Debug CloakedOctoWookie/CloakedOctoWookie.sln

mkdir -p repository
mono ~/.local/share/NuGet/NuGet.exe pack -OutputDirectory repository CloakedOctoWookie/CloakedOctoWookie.nuspec 
