#!/usr/bin/env python

import sys
import logging

logging.basicConfig(filename='debug.log',level=logging.DEBUG)
logging.debug("Entering mapper.py")
for line in sys.stdin:
    logging.debug("Inside for loop " + line)
    line = line.strip()
    for word in line.split(" "):
        if( len(word) >0 ):
            print ("%s\t%i" %(word.lower(),1))
