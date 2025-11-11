

# REPO_URL https://github.com/EunbinJung/blackbird_myapp

# Step 1
git init
git add .
git commit -m ''

gh repo create blackbird_myapp --public --source=. --remote=origin

git push -u origin main


# Step 2
git switch -c update_logo

git add .
git commit -m 'logo, href change'
git push

# Step 3
gh pr create --base main --head update_logo --title 'logo, href change' --body 'Changed Logo image source and href address'

# Step 4
gh pr merge 1 --squash