#!/bin/bash

git pull origin main

unzip -o -q Informe\ Final\ Trabajo\ Profesional.zip

git add .

git commit -am "update files"

git push origin main


