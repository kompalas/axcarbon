#!/bin/bash

notebook_dir="$HOME/axcarbon"

jupyter lab \
	--ip 0.0.0.0 \
	--port 8888 \
	--allow-root \
	--notebook-dir $notebook_dir