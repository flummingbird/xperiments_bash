 #!/bin/bash
counter=1
p="p"
counterp=${counter}${p}
test='tulane record tulane:jrphil193050'
for line in $(cat tulane-orig-ns.txt);do
  bod=$(sed -n ${counterp} < tulane_collections.tsv)
  echo "$bod" | sed "s/$test/tulane record https://digitallibrary.tulane.edu/islandora/object/$line/" >>tmp.tsv
  counter=$((counter+1))
  counterp=${counter}${p}
done
counter=1
