# excScript
# replace Macole with your name 

n=1
for N in 0.1 1 50 
do
echo "Creating Macole$n folder with N=$N"

mkdir Macole${n}
cd Macole${n}
cp ../inputOrig.txt ./
cp ../input.txt ./
sed -e "s/xxxx/${N}/" inputOrig.txt > input.txt
#here you can call an executable that will run your simulation using the input parameter
cd ../
n=$(( $n + 1 ))
done
