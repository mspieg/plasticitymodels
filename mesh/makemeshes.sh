#!/bin/bash
for i in *.geo
do
    basename=${i%.*}
    gmsh -2 -algo del2d $i ${basename}.msh
    dolfin-convert ${basename}.msh ${basename}.xml
    gzip -v *.xml
    rm *.msh
done
exit 0
