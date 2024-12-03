import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

void main() async {
  // Substitua pelos seus dados
  String username = 'egabrielrbm@gmail.com'; // Seu e-mail
  String password = ''; // Sua senha ou app password (para Gmail)

  // Configura o servidor SMTP (exemplo com Gmail)
  final smtpServer = gmail(username, password);

  // Criação do e-mail
  final message = Message()
    ..from = Address(username, 'Enzo Gabriel') // Remetente
    ..recipients.add('Enzo.belmino62@aluno.ifce.edu.br') // Destinatário
    ..subject = 'Teste de E-mail' // Assunto
    ..text = 'Este é um teste de envio de e-mail com Dart, sem dotenv.';

  try {
    // Envio do e-mail
    final sendReport = await send(message, smtpServer);
    print('E-mail enviado com sucesso: ${sendReport.toString()}');
  } catch (e) {
    print('Falha ao enviar o e-mail: $e');
  }
}
