(function () {
  class BibliotecaDemo {
    constructor() {
      this.prazo = 50;
      this.multa = 20;
      this.livros = [
        {
          codigo: 1,
          titulo: "Dom Casmurro",
          genero: "Romance",
          autor: "Machado de Assis",
          editora: "Principis",
          ano: 1899,
          emprestado: false,
          aluno: ""
        },
        {
          codigo: 2,
          titulo: "O Hobbit",
          genero: "Fantasia",
          autor: "J. R. R. Tolkien",
          editora: "HarperCollins",
          ano: 1937,
          emprestado: false,
          aluno: ""
        },
        {
          codigo: 3,
          titulo: "1984",
          genero: "Distopia",
          autor: "George Orwell",
          editora: "Companhia das Letras",
          ano: 1949,
          emprestado: false,
          aluno: ""
        }
      ];
    }

    cadastrar(livro) {
      if (this.livros.length >= 5) {
        return "Limite atingido!";
      }

      if (this.buscar(livro.codigo)) {
        return "Codigo ja cadastrado.";
      }

      this.livros.push({ ...livro, emprestado: false, aluno: "" });
      return "Cadastrado!";
    }

    consultar() {
      if (this.livros.length === 0) {
        return "Nenhum livro!";
      }

      return this.livros
        .map((livro) => {
          const status = livro.emprestado
            ? `Emprestado para ${livro.aluno}`
            : "Disponivel";

          return `${livro.codigo} - ${livro.titulo} (${livro.ano}) | ${status}`;
        })
        .join("\n");
    }

    emprestar(codigo, aluno) {
      const livro = this.buscar(codigo);

      if (!livro) {
        return "Codigo nao encontrado!";
      }

      if (livro.emprestado) {
        return "Ja emprestado!";
      }

      livro.aluno = aluno;
      livro.emprestado = true;
      return `Sucesso! ${livro.titulo} foi emprestado para ${aluno}.`;
    }

    devolver(codigo, diasComLivro) {
      const livro = this.buscar(codigo);

      if (!livro) {
        return "Codigo nao encontrado!";
      }

      if (!livro.emprestado) {
        return "Esse livro nao esta emprestado!";
      }

      const mensagemPrazo = diasComLivro > this.prazo
        ? `Multa de ${this.multa}R$`
        : `Faltam ${this.prazo - diasComLivro} dias`;

      livro.emprestado = false;
      livro.aluno = "";

      return `${mensagemPrazo}. Devolvido!`;
    }

    buscar(codigo) {
      return this.livros.find((livro) => livro.codigo === Number(codigo));
    }
  }

  window.BibliotecaDemo = BibliotecaDemo;
})();
