#!/bin/bash

framework_name=$1

# Get URL for AgoraRtcKit binary target from Package.swift
url=$(grep -m 1 "https.*$framework_name.*.xcframework.zip" Package.swift | sed -E "s/.*(https.*$framework_name.*.xcframework.zip).*/\1/")

# Download the AgoraRtcKit xcframework zip file
curl -O $url

# Extract the contents of the zip file to the current directory
unzip $(basename $url)
