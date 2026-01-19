#!/bin/bash

echo "=== EasyDevOps installatie gestart ==="

echo "Stap 1: Controleren of Git is geïnstalleerd"
if ! command -v git &> /dev/null
then
    echo "Git is niet geïnstalleerd. Installeer Git eerst."
    exit 1
fi

echo "Stap 2: Controleren of .NET SDK is geïnstalleerd"
if ! command -v dotnet &> /dev/null
then
    echo ".NET SDK is niet geïnstalleerd."
    echo "Download .NET SDK 8 via: https://dotnet.microsoft.com/"
    exit 1
fi

echo "Stap 3: Repository clonen"
git clone https://github.com/s-eliif/EasyDevOps.git

echo "Stap 4: Frontend starten"
cd EasyDevOps/frontend/EasyDevOps
dotnet run
