#!/bin/bash

cp $HOME/.bashrc $HOME/.bashrc.old

echo "" >> $HOME/.bashrc
echo "if [ -d $(pwd)/script ]; then" >> $HOME/.bashrc
echo "    export PATH=$(pwd)/script:\$PATH" >> $HOME/.bashrc
echo "fi" >> $HOME/.bashrc

echo "" >> $HOME/.bashrc
echo "if [ -d $(pwd)/bin ]; then" >> $HOME/.bashrc
echo "    export PATH=$(pwd)/bin:\$PATH" >> $HOME/.bashrc
echo "fi" >> $HOME/.bashrc

echo "" >> $HOME/.bashrc
echo "if [ -f $(pwd)/bash_aliases ]; then" >> $HOME/.bashrc
echo "    . $(pwd)/bash_aliases" >> $HOME/.bashrc
echo "fi" >> $HOME/.bashrc

echo "" >> $HOME/.bashrc
echo "if [ -f $(pwd)/bash_completion ]; then" >> $HOME/.bashrc
echo "    . $(pwd)/bash_completion" >> $HOME/.bashrc
echo "fi" >> $HOME/.bashrc