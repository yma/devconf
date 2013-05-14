#!/bin/sh
. "$(dirname $0)/func"

backup_move ~/.ackrc
link etc/ackrc ~/.ackrc
