const buttons = document.querySelectorAll("[data-view]");
const panels = document.querySelectorAll("[data-panel]");
const codeView = document.querySelector("#jsCodeView");
const output = document.querySelector("#demoOutput");
const bookCode = document.querySelector("#bookCode");
const studentName = document.querySelector("#studentName");
const daysHeld = document.querySelector("#daysHeld");
const loanButton = document.querySelector("#loanButton");
const returnButton = document.querySelector("#returnButton");

const demo = new window.BibliotecaDemo();

const demoSource = `class BibliotecaDemo {
  constructor() {
    this.prazo = 50;
    this.multa = 20;
    this.livros = [
      { codigo: 1, titulo: "Dom Casmurro", ano: 1899, emprestado: false, aluno: "" },
      { codigo: 2, titulo: "O Hobbit", ano: 1937, emprestado: false, aluno: "" },
      { codigo: 3, titulo: "1984", ano: 1949, emprestado: false, aluno: "" }
    ];
  }

  cadastrar(livro) {
    if (this.livros.length >= 5) return "Limite atingido!";
    if (this.buscar(livro.codigo)) return "Codigo ja cadastrado.";

    this.livros.push({ ...livro, emprestado: false, aluno: "" });
    return "Cadastrado!";
  }

  consultar() {
    if (this.livros.length === 0) return "Nenhum livro!";

    return this.livros
      .map((livro) => {
        const status = livro.emprestado
          ? \`Emprestado para \${livro.aluno}\`
          : "Disponivel";

        return \`\${livro.codigo} - \${livro.titulo} | \${status}\`;
      })
      .join("\\n");
  }

  emprestar(codigo, aluno) {
    const livro = this.buscar(codigo);

    if (!livro) return "Codigo nao encontrado!";
    if (livro.emprestado) return "Ja emprestado!";

    livro.aluno = aluno;
    livro.emprestado = true;
    return "Sucesso!";
  }

  devolver(codigo, diasComLivro) {
    const livro = this.buscar(codigo);

    if (!livro) return "Codigo nao encontrado!";
    if (!livro.emprestado) return "Esse livro nao esta emprestado!";

    const mensagemPrazo = diasComLivro > this.prazo
      ? \`Multa de \${this.multa}R$\`
      : \`Faltam \${this.prazo - diasComLivro} dias\`;

    livro.emprestado = false;
    livro.aluno = "";
    return \`\${mensagemPrazo}. Devolvido!\`;
  }

  buscar(codigo) {
    return this.livros.find((livro) => livro.codigo === Number(codigo));
  }
}`;

codeView.textContent = demoSource;

buttons.forEach((button) => {
  button.addEventListener("click", () => {
    const view = button.dataset.view;

    buttons.forEach((item) => {
      item.classList.toggle("active", item === button);
    });

    panels.forEach((panel) => {
      panel.classList.toggle("active", panel.dataset.panel === view);
    });

    window.scrollTo({ top: 0, behavior: "smooth" });
  });
});

loanButton.addEventListener("click", () => {
  const aluno = studentName.value.trim() || "Aluno";
  output.textContent = demo.emprestar(bookCode.value, aluno);
});

returnButton.addEventListener("click", () => {
  output.textContent = demo.devolver(bookCode.value, Number(daysHeld.value));
});
