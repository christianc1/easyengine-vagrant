#! /bin/bash


function myecho()
{
	echo =========================================================	
}

myecho

wget -qO ee rt.cx/ee && sudo bash ee || exit 1

myecho

sudo ee stack install || exit 1

myecho

sudo ee site create project.dev --hhvm --wpfc --user=christian --pass=123 --email=christian@liftux.com || exit 1

myecho
