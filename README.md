# docker-builder-android-buck

[![license](https://img.shields.io/github/license/mashape/apistatus.svg)](https://opensource.org/licenses/MIT)
  
---  
  
Uma imagem docker com alguns utilitários para servir de base para processo de build de aplicações android. A ideia é que não sejam necessárias ferramentas adicionais para conseguir empacotar uma aplicação android, apenas o docker e o restante (padrão) fica por conta desta imagem.

Cada projeto deverá ter sua particularidade no processo de build, para esses casos, o projeto deve ter seu **Dockerfile** e o ponto de partida deste será essa imagem.

O ponto de partida desta imagem base é: **macielbombonato/docker-builder-android**

Esta imagem possui:

- buck
  
---