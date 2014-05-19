echo "echo \"Hello from 1\"" > test.txt
echo "echo \"Hello from 2\"" >> test.txt
echo "echo \"Hello from 3\"" >> test.txt
echo "echo \"Hello from 4\"" >> test.txt

cat test.txt | parallel
