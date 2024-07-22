#!/bin/bash   ################################################################################################################################################################################   #####################################################
### Usage: sh ./run.sh ################################################################################################################################################################################  #####################################################

### Load MOE version.2020
module load MOE/2022.02_site


for file in *;
do
    if [ -d "$file" ]; then
        echo "$file"; echo "Entering $file to run Site Finder"; sleep 5; cd $file; pwd; ls receptor; echo " "; moebatch -exec "pdb_site_finder './receptor'" -exit; sleep 5; cd receptor; pwd; ls; echo " "; sleep 5; mkdir sitefinder_out; mv *.txt sitefinder_out; ls sitefinder_out/; echo " "; sleep 5; cd ../../; echo "Finished running Site Finder for $file at: $(date)"; echo " "; echo " "; echo " "; sleep 10
    fi
done


