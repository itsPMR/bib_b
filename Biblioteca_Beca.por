programa {
    cadeia usuario
    inteiro ap

    cadeia liv1, liv2, liv3, liv4, liv5
    cadeia gen1, gen2, gen3, gen4, gen5
    cadeia aut1, aut2, aut3, aut4, aut5
    cadeia edt1, edt2, edt3, edt4, edt5

    inteiro cod1, cod2, cod3, cod4, cod5
    inteiro ano1, ano2, ano3, ano4, ano5

    cadeia aluno1, aluno2, aluno3, aluno4, aluno5
    logico emp1 = falso, emp2 = falso, emp3 = falso, emp4 = falso, emp5 = falso
    inteiro livro = 0
    inteiro dia, prazo = 50, prazo_restante
    cadeia senha_inicial, nome, nom_uso
    cadeia senha_2 = "1234", senha_al, nome_user

    funcao inicio() {
        inteiro opcao

        // -------- LIVROS INICIAIS --------
        livro = 3

        cod1 = 1
        liv1 = "Dom Casmurro"
        gen1 = "Romance"
        aut1 = "Machado de Assis"
        edt1 = "Principis"
        ano1 = 1899

        cod2 = 2
        liv2 = "O Hobbit"
        gen2 = "Fantasia"
        aut2 = "J. R. R. Tolkien"
        edt2 = "HarperCollins"
        ano2 = 1937

        cod3 = 3
        liv3 = "1984"
        gen3 = "Distopia"
        aut3 = "George Orwell"
        edt3 = "Companhia das Letras"
        ano3 = 1949

        // -------- LOGIN --------
        escreva("1- SOU ALUNO / 2- SOU PROFESSOR ")
        leia(ap)

        se (ap == 2) {
            escreva("Digite sua senha:\n")
            leia(senha_inicial)

            se (senha_inicial == senha_2) {
                escreva("Nome de usuario:\n")
                leia(nome)
            }
            senao {
                escreva("Senha incorreta!")
                retorne
            }
        }
        senao se (ap == 1) {
            escreva("Digite sua senha: ")
            leia(senha_al)
            escreva("Nome de usuario: ")
            leia(nome_user)
        }
        senao {
            escreva("Acesso restrito.")
            retorne
        }

        // -------- MENU --------
        escreva("\n--- BIBLIOTECA ---")
        escreva("\n1 - Cadastrar livros\n2 - Consultar\n3 - Emprestar\n4 - Devolver\n5 - Sair\n")
        escreva("Opcao: ")
        leia(opcao)

        // --- 1. CADASTRAR ---
        se (opcao == 1) {
            se (livro >= 5) {
                escreva("Limite atingido!\n")
            }
            senao {
                livro = livro + 1

                escreva("Codigo do livro: ")
                se (livro == 1) {
                    leia(cod1)
                }
                senao se (livro == 2) {
                    leia(cod2)
                }
                senao se (livro == 3) {
                    leia(cod3)
                }
                senao se (livro == 4) {
                    leia(cod4)
                }
                senao {
                    leia(cod5)
                }

                escreva("Titulo: ")
                se (livro == 1) {
                    leia(liv1)
                }
                senao se (livro == 2) {
                    leia(liv2)
                }
                senao se (livro == 3) {
                    leia(liv3)
                }
                senao se (livro == 4) {
                    leia(liv4)
                }
                senao {
                    leia(liv5)
                }

                escreva("Genero: ")
                se (livro == 1) {
                    leia(gen1)
                }
                senao se (livro == 2) {
                    leia(gen2)
                }
                senao se (livro == 3) {
                    leia(gen3)
                }
                senao se (livro == 4) {
                    leia(gen4)
                }
                senao {
                    leia(gen5)
                }

                escreva("Autor: ")
                se (livro == 1) {
                    leia(aut1)
                }
                senao se (livro == 2) {
                    leia(aut2)
                }
                senao se (livro == 3) {
                    leia(aut3)
                }
                senao se (livro == 4) {
                    leia(aut4)
                }
                senao {
                    leia(aut5)
                }

                escreva("Editora: ")
                se (livro == 1) {
                    leia(edt1)
                }
                senao se (livro == 2) {
                    leia(edt2)
                }
                senao se (livro == 3) {
                    leia(edt3)
                }
                senao se (livro == 4) {
                    leia(edt4)
                }
                senao {
                    leia(edt5)
                }

                escreva("Ano de publicacao: ")
                se (livro == 1) {
                    leia(ano1)
                }
                senao se (livro == 2) {
                    leia(ano2)
                }
                senao se (livro == 3) {
                    leia(ano3)
                }
                senao se (livro == 4) {
                    leia(ano4)
                }
                senao {
                    leia(ano5)
                }

                escreva("Cadastrado!\n")
            }
        }

        // --- 2. CONSULTAR ---
        senao se (opcao == 2) {
            se (livro == 0) {
                escreva("Nenhum livro!\n")
            }
            senao {
                escreva("\n--- LISTA DE LIVROS ---\n")

                se (livro >= 1) {
                    escreva("\nCodigo: ", cod1)
                    escreva("\nTitulo: ", liv1)
                    escreva("\nGenero: ", gen1)
                    escreva("\nAutor: ", aut1)
                    escreva("\nEditora: ", edt1)
                    escreva("\nAno: ", ano1)
                    escreva("\nStatus: ")
                    se (emp1) {
                        escreva("Emprestado para ", aluno1)
                    }
                    senao {
                        escreva("Disponivel")
                    }
                    escreva("\n")
                }

                se (livro >= 2) {
                    escreva("\nCodigo: ", cod2)
                    escreva("\nTitulo: ", liv2)
                    escreva("\nGenero: ", gen2)
                    escreva("\nAutor: ", aut2)
                    escreva("\nEditora: ", edt2)
                    escreva("\nAno: ", ano2)
                    escreva("\nStatus: ")
                    se (emp2) {
                        escreva("Emprestado para ", aluno2)
                    }
                    senao {
                        escreva("Disponivel")
                    }
                    escreva("\n")
                }

                se (livro >= 3) {
                    escreva("\nCodigo: ", cod3)
                    escreva("\nTitulo: ", liv3)
                    escreva("\nGenero: ", gen3)
                    escreva("\nAutor: ", aut3)
                    escreva("\nEditora: ", edt3)
                    escreva("\nAno: ", ano3)
                    escreva("\nStatus: ")
                    se (emp3) {
                        escreva("Emprestado para ", aluno3)
                    }
                    senao {
                        escreva("Disponivel")
                    }
                    escreva("\n")
                }

                se (livro >= 4) {
                    escreva("\nCodigo: ", cod4)
                    escreva("\nTitulo: ", liv4)
                    escreva("\nGenero: ", gen4)
                    escreva("\nAutor: ", aut4)
                    escreva("\nEditora: ", edt4)
                    escreva("\nAno: ", ano4)
                    escreva("\nStatus: ")
                    se (emp4) {
                        escreva("Emprestado para ", aluno4)
                    }
                    senao {
                        escreva("Disponivel")
                    }
                    escreva("\n")
                }

                se (livro >= 5) {
                    escreva("\nCodigo: ", cod5)
                    escreva("\nTitulo: ", liv5)
                    escreva("\nGenero: ", gen5)
                    escreva("\nAutor: ", aut5)
                    escreva("\nEditora: ", edt5)
                    escreva("\nAno: ", ano5)
                    escreva("\nStatus: ")
                    se (emp5) {
                        escreva("Emprestado para ", aluno5)
                    }
                    senao {
                        escreva("Disponivel")
                    }
                    escreva("\n")
                }
            }
        }

        // --- 3. EMPRESTAR ---
        senao se (opcao == 3) {
            inteiro codigo_busca

            escreva("Codigo do livro: ")
            leia(codigo_busca)

            se (cod1 == codigo_busca) {
                se (emp1) {
                    escreva("Ja emprestado!\n")
                }
                senao {
                    escreva("Aluno: ")
                    leia(aluno1)
                    emp1 = verdadeiro
                    escreva("Sucesso!\n")
                }
            }
            senao se (cod2 == codigo_busca) {
                se (emp2) {
                    escreva("Ja emprestado!\n")
                }
                senao {
                    escreva("Aluno: ")
                    leia(aluno2)
                    emp2 = verdadeiro
                    escreva("Sucesso!\n")
                }
            }
            senao se (cod3 == codigo_busca) {
                se (emp3) {
                    escreva("Ja emprestado!\n")
                }
                senao {
                    escreva("Aluno: ")
                    leia(aluno3)
                    emp3 = verdadeiro
                    escreva("Sucesso!\n")
                }
            }
            senao se (cod4 == codigo_busca) {
                se (emp4) {
                    escreva("Ja emprestado!\n")
                }
                senao {
                    escreva("Aluno: ")
                    leia(aluno4)
                    emp4 = verdadeiro
                    escreva("Sucesso!\n")
                }
            }
            senao se (cod5 == codigo_busca) {
                se (emp5) {
                    escreva("Ja emprestado!\n")
                }
                senao {
                    escreva("Aluno: ")
                    leia(aluno5)
                    emp5 = verdadeiro
                    escreva("Sucesso!\n")
                }
            }
            senao {
                escreva("Codigo nao encontrado!\n")
            }
        }

        // --- 4. DEVOLVER ---
        senao se (opcao == 4) {
            inteiro codigo_busca

            escreva("Codigo do livro: ")
            leia(codigo_busca)

            se (cod1 == codigo_busca) {
                se (emp1 == falso) {
                    escreva("Esse livro nao esta emprestado!\n")
                }
                senao {
                    escreva("Dias com livro: ")
                    leia(dia)

                    se (dia > prazo) {
                        escreva("Multa de 20R$\n")
                    }
                    senao {
                        prazo_restante = prazo - dia
                        escreva("Faltam ", prazo_restante, " dias\n")
                    }

                    emp1 = falso
                    aluno1 = ""
                    escreva("Devolvido!\n")
                }
            }
            senao se (cod2 == codigo_busca) {
                se (emp2 == falso) {
                    escreva("Esse livro nao esta emprestado!\n")
                }
                senao {
                    escreva("Dias com livro: ")
                    leia(dia)

                    se (dia > prazo) {
                        escreva("Multa de 20R$\n")
                    }
                    senao {
                        prazo_restante = prazo - dia
                        escreva("Faltam ", prazo_restante, " dias\n")
                    }

                    emp2 = falso
                    aluno2 = ""
                    escreva("Devolvido!\n")
                }
            }
            senao se (cod3 == codigo_busca) {
                se (emp3 == falso) {
                    escreva("Esse livro nao esta emprestado!\n")
                }
                senao {
                    escreva("Dias com livro: ")
                    leia(dia)

                    se (dia > prazo) {
                        escreva("Multa de 20R$\n")
                    }
                    senao {
                        prazo_restante = prazo - dia
                        escreva("Faltam ", prazo_restante, " dias\n")
                    }

                    emp3 = falso
                    aluno3 = ""
                    escreva("Devolvido!\n")
                }
            }
            senao se (cod4 == codigo_busca) {
                se (emp4 == falso) {
                    escreva("Esse livro nao esta emprestado!\n")
                }
                senao {
                    escreva("Dias com livro: ")
                    leia(dia)

                    se (dia > prazo) {
                        escreva("Multa de 20R$\n")
                    }
                    senao {
                        prazo_restante = prazo - dia
                        escreva("Faltam ", prazo_restante, " dias\n")
                    }

                    emp4 = falso
                    aluno4 = ""
                    escreva("Devolvido!\n")
                }
            }
            senao se (cod5 == codigo_busca) {
                se (emp5 == falso) {
                    escreva("Esse livro nao esta emprestado!\n")
                }
                senao {
                    escreva("Dias com livro: ")
                    leia(dia)

                    se (dia > prazo) {
                        escreva("Multa de 20R$\n")
                    }
                    senao {
                        prazo_restante = prazo - dia
                        escreva("Faltam ", prazo_restante, " dias\n")
                    }

                    emp5 = falso
                    aluno5 = ""
                    escreva("Devolvido!\n")
                }
            }
            senao {
                escreva("Codigo nao encontrado!\n")
            }
        }

        // --- 5. SAIR ---
        senao se (opcao == 5) {
            escreva("Saindo...\n")
        }

        // --- INVALIDO ---
        senao {
            escreva("Opcao invalida!\n")
        }
    }
}
