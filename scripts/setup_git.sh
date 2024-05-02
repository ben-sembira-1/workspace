read -p "Enter you email:" GIT_EMAIL; echo
read -p "Enter you name:" GIT_NAME; echo

git config --global user.email ${GIT_EMAIL}
git config --global user.name ${GIT_NAME}
