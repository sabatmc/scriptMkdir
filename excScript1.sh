# excScript
# replace Amer with your name 

n=1
for N in 0.1 1 50 
do
m=1
for M in 100 200 300
do
echo "Creating Amer$n_$m folder with N=$N and M=$M"

mkdir Amer${n}_{m}
cd Amer${n}_${m}
cp ../inputOrig.txt ./
cp ../input.txt ./
sed -e "s/xxxx/${N}/" -e "s/yyy/${M}/" inputOrig.txt > input.txt
#here you can call an executable that will run your simulation using the input parameter
cd ../
m=$(( $m + 1 ))
done
n=$(( $n + 1 ))
done

