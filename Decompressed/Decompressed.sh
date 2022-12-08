#!/bin/bash

fileName="file.gz"
decompressedFile="$(7z l file.gz | tail -n 3 | head -n 1 | awk 'NF{print $NF}')"

7z x $fileName &>/dev/null

while [ $decompressedFile ]; do
  echo -e "\nDescomprimiendo archivo... $decompressedFile"
  7z x $decompressedFile &>/dev/null
  decompressedFile="$(7z l $decompressedFile 2>/dev/null | tail -n 3 | head -n 1 | awk 'NF{print $NF}')"
done
