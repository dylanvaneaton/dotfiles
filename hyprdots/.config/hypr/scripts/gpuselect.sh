#!/bin/bash

if [[ $(supergfxctl -g) == "AsusMuxDgpu" ]]; then
	export WLR_DRM_DEVICES=/dev/dri/card0:/dev/dri/card1
	echo "Set to NVIDIA."
else
	export WLR_DRM_DEVICES=/dev/dri/card1:/dev/dri/card0
	echo "Set to Intel"
fi
