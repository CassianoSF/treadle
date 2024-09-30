# sudo chmod +x ./.devcontainer/setup.sh
# ./.devcontainer/setup.sh

git config --global --add safe.directory /workspace/treadle
git config --global user.email "cassianosfranco@gmail.com"
git config --global user.name "cassianosf"

ssh-keygen -t rsa -b 4096 -C "cassianosfranco@gmail.com" -N "" -f /home/vscode/.ssh/id_rsa
echo "Copy the following SSH key and add it to your Github Account:"
cat /home/vscode/.ssh/id_rsa.pub
echo "Press Enter to install dependencies..."
read

bun install
