#!/bin/bash

sudo ausearch -k shadow_access -i
sudo aureport -f --summary

echo "Log search complete."