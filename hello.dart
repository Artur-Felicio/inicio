import 'dart:io';

void main() {
  Map<String, String> contatos = {};

  while (true) {
    print("********************");
    print("Menu:");
    print("1 - Criar contato");
    print("2 - ler contato");
    print("3 - Atualizar contato");
    print("4 - deletar contato");
    print("5 - Sair contato");
    print("********************");

    var opcao = int.parse(stdin.readLineSync()!);
    switch (opcao) {
      case 1:
        stdout.write('Digite o nome do contato: ');
        var nome = stdin.readLineSync()!;
        stdout.write('Digite o número de telefone: ');
        var numero = stdin.readLineSync()!;
        contatos[nome] = numero;
        print('Contato criado com sucesso.');
        break;
      case 2:
        if (contatos.isEmpty) {
          print('Lista de contatos vazia.');
        } else {
          print('Lista de contatos:');
          contatos.forEach((nome, numero) {
            print('Nome: $nome, Número: $numero');
          });
        }
        break;
      case 3:
        stdout.write('Digite o nome do contato a ser atualizado: ');
        var nome = stdin.readLineSync()!;
        if (contatos.containsKey(nome)) {
          stdout.write('Digite o novo número de telefone: ');
          var numero = stdin.readLineSync()!;
          contatos[nome] = numero;
          print('Contato atualizado com sucesso.');
        } else {
          print('Contato não encontrado.');
        }
        break;
      case 4:
        stdout.write('Digite o nome do contato a ser deletado: ');
        var nome = stdin.readLineSync()!;
        if (contatos.containsKey(nome)) {
          contatos.remove(nome);
          print('Contato deletado com sucesso.');
        } else {
          print('Contato não encontrado.');
        }
        break;
      case 5:
        print('Saindo do programa.');
        return;
      default:
        print('Opção inválida. Tente novamente.');
    }
  }
}
