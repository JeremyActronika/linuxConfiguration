#!/bin/bash
# Title: playEffect.sh
# Author: Jérémy Cheynet <jeremy.cheynet@actronika.com>
# Copyright: Copyright (C) 2019 Actronika SAS
# ============================================================================ #

if [ $# -ne 1 ]
then
	echo "Usage ${0} [id of effect]"
	exit 1
fi

tools/tupctl /dev/ttyUSB2 load 0 ${1}
tools/tupctl /dev/ttyUSB2 bind_effect 0 3
tools/tupctl /dev/ttyUSB2 play 0
