#!/bin/bash

APP_NAME="PaddleBattle"
jl_main="main"
certificate="Nathan Daly"

julia ~/src/build-jl-app-bundle/build_app.jl -v \
 -R assets -L "libs/*" --bundle_identifier "com.nhdaly.paddlebattle" --icns icns.icns \
 --certificate "$certificate" --entitlements "./entitlements.entitlements" \
 --app_version=0.2 "$jl_main.jl" "$APP_NAME"
