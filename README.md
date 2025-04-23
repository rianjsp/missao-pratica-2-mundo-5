# Flutter Layout App

Este é um aplicativo Flutter de demonstração de layout, que exibe uma interface informativa com imagem, título, botões de ação e uma descrição detalhada sobre um local turístico. Foi desenvolvido com foco em organização visual e boas práticas de layout utilizando componentes do Flutter.

## Funcionalidades

- **Exibição de imagem**: Mostra uma imagem ilustrativa do local.
- **Título e subtítulo**: Informa o nome e a localização do local com destaque visual.
- **Botões de ação**: Possui três botões com ícones para ações comuns — Ligar, Rota e Compartilhar.
- **Descrição**: Exibe um texto descritivo com informações detalhadas sobre o local.


## Libs utilizadas

- **Principal**:  
  - `Flutter` — SDK para desenvolvimento de aplicativos multiplataforma.

- **Widgets usados**:
  - `MaterialApp`, `Scaffold`, `AppBar`, `ListView`, `Image.asset`, `Card`, `Row`, `Column`, `Icon`, `Text`, `Padding`, `Expanded`, `Container`, entre outros.

## Componentes Principais

- **MyApp (main.dart)**  
  Componente principal responsável por montar toda a estrutura do app: imagem, seção de título, botões e descrição.

- **TitleArea (title_area.dart)**  
  Componente reutilizável responsável por exibir o nome e a localização do local destacado no layout.
