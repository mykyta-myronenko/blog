#!/bin/bash    
cd /home/mykyta/Documents/Blog    
    
# Pull latest changes FIRST    
echo "📥 Pulling latest changes..."  
git pull --rebase origin v4  
    
# Copy files from source to content folder    
echo "📋 Copying files..."  
RSYNC_OUTPUT=$(rsync -av --delete "/home/mykyta/Documents/Writing Machine/Projects/Backburner/Blog/" "/home/mykyta/Documents/Blog/content/" | tail -n 3)  
FILES_COPIED=$(echo "$RSYNC_OUTPUT" | grep -oP '\d+(?= files transferred)' || echo "0")  
    
# Run Prettier with absolute path  
echo "✨ Running Prettier..."  
PRETTIER_OUTPUT=$(npx prettier "/home/mykyta/Documents/Blog/content/" --write 2>&1)  
FILES_FORMATTED=$(echo "$PRETTIER_OUTPUT" | grep -c "ms$" || echo "0")  
  
# Stage changes    
git add content/    
  
# Check if there are changes  
if git diff --staged --quiet; then  
    echo "✅ No changes to commit"  
    notify-send "Quartz Sync" "No changes detected" -u low  
    exit 0  
fi  
  
# Count changed files  
FILES_CHANGED=$(git diff --cached --numstat | wc -l)  
    
# Commit and push    
echo "💾 Committing and pushing..."  
git commit -m "Content sync: $(date '+%Y-%m-%d %H:%M:%S')"    
git push origin v4  
  
# Final notification  
echo ""  
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━"  
echo "✅ Sync Complete!"  
echo "Prettier'd: $FILES_FORMATTED files"  
echo "Pushed: $FILES_CHANGED files"  
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━"  
  
# Desktop notification (optional - requires notify-send)  
notify-send "Quartz Sync Complete" "Prettier'd: $FILES_FORMATTED | Pushed: $FILES_CHANGED" -u normal
