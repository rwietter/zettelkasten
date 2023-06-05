#!/bin/bash

# Define a função para exibir a lista de prioridades
function exibir_prioridades {
  # Define um array com as prioridades
  prioridades=("Typescript Generics" "Rust" "Supremo Terere" "Lib Stitches Media Query")

  # Exibe as prioridades com checkbox
  for (( i=0; i<${#prioridades[@]}; i++ )); do
    # Verifica se a prioridade foi marcada
    if [[ "${prioridades_marcadas[$i]}" == "true" ]]; then
      checkbox="[X]"
    else
      checkbox="[ ]"
    fi

    # Exibe a prioridade com checkbox
    echo "$checkbox ${prioridades[$i]}"
  done
}

# Define um array para armazenar as prioridades marcadas
prioridades_marcadas=("false" "false" "false" "false" "false")

# Exibe a lista de prioridades com checkbox
exibir_prioridades

# Solicita ao usuário para marcar ou desmarcar as prioridades
while true; do
  # Solicita a prioridade que deseja marcar ou desmarcar
  read -p "Informe a prioridade que deseja marcar ou desmarcar (ou 's' para sair): " prioridade

  # Verifica se o usuário deseja sair
  if [[ "$prioridade" == "s" ]]; then
    break
  fi

  # Verifica se a prioridade informada é válida
  if [[ "$prioridade" -ge 1 ]] && [[ "$prioridade" -le ${#prioridades[@]} ]]; then
    # Alterna o estado da prioridade marcada
    if [[ "${prioridades_marcadas[$prioridade-1]}" == "true" ]]; then
      prioridades_marcadas[$prioridade-1]="false"
    else
      prioridades_marcadas[$prioridade-1]="true"
    fi

    # Exibe a lista de prioridades com checkbox atualizada
    exibir_prioridades
  else
    echo "Prioridade inválida"
  fi
done
