#!/bin/bash

LIST=${1:--}
sed s/^/$LIST/ $TEXT


