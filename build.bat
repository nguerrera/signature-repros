ilasm SignatureCycle1.il
csi munge.csx SignatureCycle1.exe 15-12-05-01-20-06-08 15-12-05-01-20-0A-08

ilasm SignatureCycle2.il
csi munge.csx SignatureCycle2.exe 15-12-05-01-20-06-08 15-12-05-01-20-0A-08

ilasm SignatureCycle3.il
csi munge.csx SignatureCycle3.exe 15-12-05-01-20-06-08 15-12-05-01-20-0A-08

ilasm TypeSpecInWrongPlace.il
csi munge.csx TypeSpecInWrongPlace.exe 00-01-01-15-12-05-01-08 00-01-01-12-06-00-00-00 

cl /LD /clr:safe ModoptBox.cpp
ilasm /dll ModoptBox2.il