#!/bin/bash

# UNINSTALL THE ZEBU

# vars
BUNDLE_PATH="$HOME/.vim/bundle"
ZEBU="$HOME/.project_zebu"

rm -rf "$BUNDLE_PATH"
rm -rf "$ZEBU"

rm "$HOME/.vimrc" "$HOME/.vimrc.bundles"

