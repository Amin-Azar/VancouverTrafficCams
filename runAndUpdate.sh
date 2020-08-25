
while :
do
    echo "Running @ $(date)"
    # grab new images and analyze
    python3 analyze-image.py
    # push to the repo/ github page
    git add reports images
    git commit -m "updated for $(date)"
    git push origin master
    # wait for next round
    wait 3600 # every hour
done
