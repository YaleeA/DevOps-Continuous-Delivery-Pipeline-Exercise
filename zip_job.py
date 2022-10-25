#! /usr/bin/python

import os 
from zipfile import ZipFile

arr = ["a", "b", "c", "d"]

for i in arr:
    name = str(i) + ".txt"
    f = open(name, 'w')
    
    # checking if the file was created 
    if not os.path.isfile(name): 
        exit(1)
        
    # creating a ZipFile object
    zip_name = str(i) + "_" + str(os.getenv("VERSION")) + ".zip"
    zipObj = ZipFile(zip_name, 'w')
    # Adding files to the zip
    zipObj.write(name)
    # closing the Zip File
    zipObj.close()
    
     # checking if the file was created 
    if not os.path.isfile(zip_name): 
        exit(1)
