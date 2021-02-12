#!/usr/bin/env bash
[ -z "$NVM_VERSION" ] && NVM_VERSION=0.37.2
echo "Installing nvm..." &&
(curl -o- "https://raw.githubusercontent.com/nvm-sh/nvm/v${NVM_VERSION}/install.sh" | bash) &&
echo "Done!"
