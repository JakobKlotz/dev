echo "Set-up Python dev environment"

git config --global init.defaultBranch main

tools=("ruff" "pre-commit" "cookiecutter")

# install uv
curl -LsSf https://astral.sh/uv/install.sh | sh

# install latest stable Python version
uv python install

for element in "${tools[@]}"; do
  echo "Installing $element"
  uv tool install "$element"
done

# update PATH
uv tool update-shell
