#!/bin/bash  
cd /home/mykyta/Documents/Blog  
  
# Pull latest changes FIRST  
git pull --rebase origin v4  
  
# Copy files from source to content folder  
rsync -av --delete "/home/mykyta/Documents/Writing Machine/Thoughts/8 Interests/2 Writing/Blog/" "/home/mykyta/Documents/Blog/content/"  
  
# Run Prettier with absolute path
npx prettier "/home/mykyta/Documents/Blog/content/"

# Stage changes  
git add content/  
  
# Commit and push  
git commit -m "Content sync: $(date '+%Y-%m-%d %H:%M:%S')"  
git push origin v4
