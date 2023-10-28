#!/bin/bash

purple='\033[0;35m'
green='\033[0;32m'

# Reseta a cor para a cor padrão no final
clear='\033[0m'

# Imprime o banner com a cor roxa
echo -e "${purple}"
echo "  _____ _         _     _ _             "
echo " |  _  | |       (_)   | (_)            "
echo " | | | | |__  ___ _  __| |_  __ _ _ __  "
echo " | | | | '_ \/ __| |/ _  | |/ _  | '_ \ "
echo " \ \_/ / |_) \__ \ | (_| | | (_| | | | |"
echo "  \___/|_.__/|___/_|\__,_|_|\__,_|_| |_|"
echo "                                         "
echo -e "${reset}"


# Função para exibir uma mensagem de sucesso
success_message() {
  echo -e "${green}✓ $1${clear}"
}

# Clone o repo obsidian-scripts sem exibir mensagens
git clone git@github.com:LuanAccioly/obsidian-notes.git > /dev/null 2>&1
success_message "Clonagem do repositório obsidian-scripts"

# Clone o repo linux-scripts sem exibir mensagens
git clone git@github.com:LuanAccioly/linux-scripts.git > /dev/null 2>&1
success_message "Clonagem do repositório linux-scripts"

# Instale o Obsidian usando o Yay
yay -S obsidian

# Verifique se a instalação do Obsidian foi bem-sucedida
if [ $? -eq 0 ]; then
  success_message "Instalação do Obsidian"
else
  echo "Erro na instalação do Obsidian."
fi

# Adicione o alias ao arquivo ~/.zshrc
echo 'alias obs="~/linux-scripts/obsidian/pc/pc.sh"' >> ~/.zshrc

success_message "Alias adicionado ao arquivo ~/.zshrc"

echo "${green}✓ Finalizado. Reinicie o terminal e execute 'obs' para iniciar o obsidian${clear}"
