#!/bin/bash

cd ./src/vscode-avalonia
npm install

cd ..

echo $PWD

# Build Avalonia LSP
dotnet build $PWD/AvaloniaLSP/AvaloniaLanguageServer/AvaloniaLanguageServer.csproj /property:GenerateFullPaths=true --output $PWD/vscode-avalonia/avaloniaServer

# Build  Solution parser
dotnet build $PWD/SolutionParser/SolutionParser.csproj /property:GenerateFullPaths=true --output $PWD/vscode-avalonia/solutionParserTool

cd ./vscode-avalonia
npm run compile