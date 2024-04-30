#!/bin/bash

# Set the repository path and name
REPO_PATH="d/GitDesktop/repo2024"
REPO_NAME="repo2024"

# Create 50,000 branches
for i in {1..10}; do
git branch "feature-branch-$i"
done

# Create 50,000 tags
for i in {1..10}; do
git tag "release-tag-$i"
done

# Add and commit the changes
git add .
git commit -m "Create 10 branches and tags"

# Push the changes to GitHub
git push origin --all
git push origin --tags
