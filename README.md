# Sistema de Leilão Descentralizado

## Descrição
Este projeto implementa um contrato inteligente para um **Sistema de Leilão Descentralizado** utilizando a linguagem Cadence, da Flow Blockchain. O contrato permite que os usuários façam lances em um item, onde o maior lance determina o vencedor quando o leilão termina. Esse projeto é útil para entender como implementar transações e eventos em contratos Cadence.

## Funcionalidades
- Os usuários podem fazer lances através da função `placeBid`.
- Armazena o maior lance e o respectivo licitante.
- Emite um evento `NewBid` quando um novo lance é registrado.
- Funções para acessar o maior lance (`getHighestBid`) e o maior licitante (`getHighestBidder`).

## Estrutura do Código
- **`highestBid`**: Armazena o maior lance atual.
- **`highestBidder`**: Armazena o endereço do licitante que fez o maior lance.
- **`NewBid`**: Evento emitido quando um novo lance é feito.
- **`placeBid(bidAmount: UFix64, bidder: Address)`**: Função para registrar um lance.
- **`getHighestBid()`**: Retorna o maior lance registrado.
- **`getHighestBidder()`**: Retorna o endereço do maior licitante.

## Como Executar
1. Implemente o contrato no ambiente da Flow Blockchain.
2. Utilize ferramentas como o Flow CLI ou playground para interagir com o contrato.
3. Os usuários podem fazer lances chamando a função `placeBid`.

## Requisitos
- Cadence e Flow CLI instalados.
- Conta na Flow Blockchain.

## Melhorias Futuras
- Implementação de uma função para encerrar o leilão.
- Suporte para múltiplos itens em leilão simultaneamente.
- Implementar transferência de tokens para o vencedor.

## Licença
Este projeto está licenciado sob a licença MIT. Consulte o arquivo LICENSE para mais detalhes.