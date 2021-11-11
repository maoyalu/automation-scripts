# Root directory of repositories
repo_dir='C:\repos'

cd $repo_dir
echo 'Updating repos in' $repo_dir...
echo $'\n#################################\n'

for repo in ./*; 
do
    echo 'Udating' $repo $'\n'
    cd $repo
    
    echo Current branch:
    git branch --show-current
    git pull

    cd ..
    echo $'\n#################################\n'
done


echo $'Update complete!\n'
echo 'Press <ENTER> to exit.'
read