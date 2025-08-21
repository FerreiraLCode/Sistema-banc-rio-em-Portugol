programa {
    real saldo = 1000.00
    cadeia historico[100]
    inteiro transacoes = 0
    cadeia senhaCorreta = "3589"

    funcao logico verificarSenha() {
        cadeia senhaDigitada
        escreva("Digite a senha: ")
        leia(senhaDigitada)
        
        se (senhaDigitada == senhaCorreta) {
            retorne verdadeiro
        } senao {
            escreva("Senha incorreta! Tente novamente.\n")
            retorne falso
        }
    }

    funcao adicionarTransacao(cadeia descricao, real valor) {
        se (transacoes < 100) {
            historico[transacoes] = descricao + " - R$ " + valor
            transacoes++
        }
    }

    funcao transferencia() {
        se (verificarSenha()) {
            real valorTransferencia
            cadeia contaDestino
            
            escreva("\n=== TRANSFERÊNCIA BANCÁRIA ===\n")
            escreva("Digite o número da conta destino: ")
            leia(contaDestino)
            escreva("Digite o valor da transferência: R$ ")
            leia(valorTransferencia)
            
            se (valorTransferencia <= 0) {
                escreva("Valor inválido para transferência.\n")
            } senao se (valorTransferencia > saldo) {
                escreva("Saldo insuficiente para realizar a transferência.\n")
                escreva("Seu saldo atual: R$", saldo, "\n")
            } senao {
                saldo = saldo - valorTransferencia
                adicionarTransacao("Transferência para conta " + contaDestino, valorTransferencia)
                escreva("Transferência realizada com sucesso!\n")
                escreva("Valor transferido: R$", valorTransferencia, "\n")
                escreva("Novo saldo: R$", saldo, "\n\n")
            }
        }
    }
    //========================================================================================================================||
   //DECIDI ADICIONAR ESSA FUNÇÃO PARA PODER COMPLEMENTAR O EXTRATO BANCÁRIO, ALÉM DE TRANSFERÊNCIAS, MOSTRARÁ COMPRAS TAMBÉM.||
   //=========================================================================================================================||
    funcao comprar() {
        
            inteiro loja
            escreva("\n=== ONDE VOCÊ DESEJA FAZER COMPRAS? ===\n1- Supermercado\n2- Shopping Center\n3- Farmácia\n4- Posto de Gasolina\n5- Loja de Roupas\n6- Voltar ao menu principal\n\nESCOLHA UMA OPÇÃO: ")
            leia(loja)

            escolha (loja) {
                caso 1:
                    comprarSupermercado()
                    verificarSenha()
                    pare
                caso 2:
                    comprarShopping()
                    verificarSenha()
                    pare
                caso 3:
                    comprarFarmacia()
                    verificarSenha()
                    pare
                caso 4:
                    comprarPostoGasolina()
                    verificarSenha()
                    pare
                caso 5:
                    comprarLojaRoupas()
                    verificarSenha()
                    pare
                caso 6:
                    pare
                caso contrario:
                    escreva("\nOpção inválida! Tente novamente.\n")
                    comprar()
            
        }
    }

    funcao comprarSupermercado() {
        real valor
        escreva("\n=== SUPERMERCADO ===\nDigite o valor total das suas compras: R$ ")
        leia(valor)
        
        se (valor <= 0) {
            escreva("Por favor, informe um valor válido.\n")
            comprarSupermercado()
        }
        senao se (valor > saldo) {
            escreva("Saldo insuficiente para realizar a compra.\nSeu saldo atual: R$", saldo, "\n")
        }
        senao {
            saldo = saldo - valor
            adicionarTransacao("Compra - Supermercado", valor)
            escreva("Compra realizada com sucesso!\nValor pago: R$", valor, "\nNovo saldo: R$", saldo, "\n\n")
        }
    }

    funcao comprarShopping() {
        real valor
        escreva("\n=== SHOPPING CENTER ===\nDigite o valor total das suas compras: R$ ")
        leia(valor)
        
        se (valor <= 0) {
            escreva("Por favor, informe um valor válido.\n")
            comprarShopping()
        }
        senao se (valor > saldo) {
            escreva("Saldo insuficiente para realizar a compra.\nSeu saldo atual: R$", saldo, "\n")
        }
        senao {
            saldo = saldo - valor
            adicionarTransacao("Compra - Shopping", valor)
            escreva("Compra realizada com sucesso!\nValor pago: R$", valor, "\nNovo saldo: R$", saldo, "\n\n")
        }
    }

    funcao comprarFarmacia() {
        real valor
        escreva("\n=== FARMÁCIA ===\nDigite o valor total dos medicamentos: R$ ")
        leia(valor)
        
        se (valor <= 0) {
            escreva("Por favor, informe um valor válido.\n")
            comprarFarmacia()
        }
        senao se (valor > saldo) {
            escreva("Saldo insuficiente para realizar a compra.\nSeu saldo atual: R$", saldo, "\n")
        }
        senao {
            saldo = saldo - valor
            adicionarTransacao("Compra - Farmácia", valor)
            escreva("Compra realizada com sucesso!\nValor pago: R$", valor, "\nNovo saldo: R$", saldo, "\n\n")
        }
    }

    funcao comprarPostoGasolina() {
        real valor
        escreva("\n=== POSTO DE GASOLINA ===\nDigite o valor do abastecimento: R$ ")
        leia(valor)
        
        se (valor <= 0) {
            escreva("Por favor, informe um valor válido.\n")
            comprarPostoGasolina()
        }
        senao se (valor > saldo) {
            escreva("Saldo insuficiente para realizar a compra.\nSeu saldo atual: R$", saldo, "\n")
        }
        senao {
            saldo = saldo - valor
            adicionarTransacao("Abastecimento", valor)
            escreva("Abastecimento realizado com sucesso!\nValor pago: R$", valor, "\nNovo saldo: R$", saldo, "\n\n")
        }
    }

    funcao comprarLojaRoupas() {
        real valor
        escreva("\n=== LOJA DE ROUPAS ===\nDigite o valor total das roupas: R$ ")
        leia(valor)
        
        se (valor <= 0) {
            escreva("Por favor, informe um valor válido.\n")
            comprarLojaRoupas()
        }
        senao se (valor > saldo) {
            escreva("Saldo insuficiente para realizar a compra.\nSeu saldo atual: R$", saldo, "\n")
        }
        senao {
            saldo = saldo - valor
            adicionarTransacao("Compra - Loja de Roupas", valor)
            escreva("Compra realizada com sucesso!\nValor pago: R$", valor, "\nNovo saldo: R$", saldo, "\n\n")
        }
    }

    funcao extrato() {
        se (verificarSenha()) {
            escreva("\n=== EXTRATO BANCÁRIO ===\nSaldo atual: R$", saldo, "\n---------------------------\nHistórico de transações:\n")

            se (transacoes == 0) {
                escreva("Nenhuma transação realizada.\n")
            } 
            senao {
                para (inteiro i = 0; i < transacoes; i++) {
                    escreva(i+1, ". ", historico[i], "\n")
                }
            }
            escreva("===========================\n\n")
        }
    }
    
    funcao inicio() {
        cadeia login, senha

        escreva(" LOGIN \nLogin: ")
        leia(login)
        escreva("Senha: ")
        leia(senha)
        escreva("\nOlá ", login, ", é um prazer ter você por aqui!")
        
        adicionarTransacao("Saldo inicial", 1000.00)
        
        menuprincipal()
    }

    funcao menuprincipal() {
        inteiro opcao
        escreva("\n\n MENU PRINCIPAL \n")
        escreva("1- Ver saldo\n")
        escreva("2- Fazer depósito\n")
        escreva("3- Fazer saque\n")
        escreva("4- Ver extrato\n")
        escreva("5- Fazer compras\n")
        escreva("6- Transferência\n")
        escreva("7- Sair\n")
        escreva("\nESCOLHA UMA OPÇÃO: ")
        leia(opcao)
        escreva("\nA OPÇÃO SELECIONADA FOI: ", opcao, "\n")

        escolha (opcao) {
            caso 1: 
                se (verificarSenha()) {
                    versaldo()
                }
                pare
            caso 2: 
                fazerdeposito()
                pare
            caso 3: 
                fazersaque()
                pare
            caso 4: 
                extrato()
                pare
            caso 5: 
                comprar()
                pare
            caso 6:
                transferencia()
                pare
            caso 7: 
                escreva("\nObrigado por usar nosso sistema!")
                pare
            caso contrario: 
                escreva("\nOpção inválida! Tente novamente.\n")  
        }

        se (opcao != 7) {
            menuprincipal()
        }
    }

    funcao versaldo() {
        escreva("\nSeu saldo atual é: R$ ", saldo, "\n\n")
    }

    funcao fazerdeposito() {
        se (verificarSenha()) {
            real deposito
            escreva("Digite o valor que deseja depositar: R$ ")
            leia(deposito)
            
            se (deposito <= 0) {
                escreva("Por favor, informe um valor válido.\n\n")
                fazerdeposito()
            } 
            senao {
                saldo = saldo + deposito
                adicionarTransacao("Depósito", deposito)
                escreva("Depósito realizado com sucesso! Novo saldo: R$", saldo, "\n\n")
            }
        }
    }

    funcao fazersaque() {
        se (verificarSenha()) {
            real saque
            escreva("Digite o valor que deseja sacar: R$ ")
            leia(saque)
            
            se (saque <= 0) {
                escreva("Por favor, informe um valor válido.\n\n")
                fazersaque()
            } 
            senao se (saque > saldo) {
                escreva("Você não possui saldo suficiente.\n\n")
                fazersaque()
            } 
            senao {
                saldo = saldo - saque
                adicionarTransacao("Saque", saque)
                escreva("Saque realizado com sucesso! Novo saldo: R$", saldo, "\n\n")
            }
        }
    }
}