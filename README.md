# ECOM - Aplicativo de Compras E-commerce

## Descrição

O **ECOM** é um aplicativo de compras e-commerce desenvolvido com as tecnologias Flutter, Dart, JavaScript, Node.js, Express, MongoDB e Mongoose. Ele oferece uma experiência completa de compras online, com recursos como autenticação, pesquisa de produtos, carrinho de compras, pagamento com Google Pay/Apple Pay e muito mais.

## Requisitos

- [Flutter](https://flutter.dev/)
- [Dart](https://dart.dev/)
- [JavaScript](https://www.javascript.com/)
- [Node.js](https://nodejs.org/)
- [Express](https://expressjs.com/)
- [MongoDB](https://www.mongodb.com/)
- [Mongoose](https://mongoosejs.com/)
- [Cloudinary](https://cloudinary.com/)
- [Provedor (Flutter State Management)](https://pub.dev/packages/provider)

## Features
- Autenticação de e-mail e senha
- Estado de autenticação persistente
- Pesquisando produtos
- Filtragem de produtos (com base na categoria)
- Detalhes do produto
- Avaliação
- Obtendo a oferta do dia
- Carrinho
- Sair
- Painel de administração
- Visualizando todos os produtos
- Adicionando Produtos
- Excluindo Produtos

### Lado do servidor
```bash
  cd server
  npm install
  npm run dev (for continuous development)
  OR
  npm start (to run script 1 time)
```

### Lado do cliente
```bash
  flutter pub get
  open -a simulator (to get iOS Simulator)
  flutter run
```

## Tecnologia usada
**Servidor**: Node.js, Express, Mongoose, MongoDB, Cloudinary

**Cliente**: Flutter, Provider