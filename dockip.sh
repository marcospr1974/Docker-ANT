#!/bin/bash

docker inspect $1 | grep -iw "IPAddress"
