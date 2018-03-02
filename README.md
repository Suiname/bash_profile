# Bash profile for OS X

This is the bash profile that I use.  Clone down this repository and then do the following to make this your bash profile, substituting "absolute path to repo" with the location where you cloned this repository:
#### Warning: This will append to your current .bash_profile and may create duplicates or conflicts.  Make sure you go through .bash_profile to see everything that will be added.
```
git clone git@github.com:Suiname/bash_profile.git
echo ". <absolute path to repo>/.bash_profile" >> ~/.bash_profile
```

after you do this, if you open a new terminal or do `source ~/.bash_profile`, this profile will be loaded.
