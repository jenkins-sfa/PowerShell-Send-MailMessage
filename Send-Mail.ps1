# Remetente
$From = "mail@domain"
# Destinatário
$To = "mail@domain"
# Assunto
$Subject = "E-mail de teste"
# Corpo do e-mail
$Body = "Hello ! This is a test !"
# Endereço do servidor SMTP
$SMTPServer = "smtp.gmail.com" # Substitua esse endereço pelo endereço do servidor SMTP que for utilizar
# Porta do servidor SMTP
$SMTPPort = "587"
# A senha do e-mail remetente
$password = Get-Content -path "C:\Password_Expiry_Email\smtp.txt" | ConvertTo-SecureString
# Novamente o endereço de e-mail do remetente
$userName = "mail@domain"
# Aqui a variável credential está recebendo um novo objeto contendo a o usuário e a senha para a autenticação no SMTP
$credential = New-Object System.Management.Automation.PSCredential($username,$password)
# Codificação de caracteres do texto
$Encoding= New-Object System.Text.UTF8Encoding

# Realizando o envio da mensagem
Send-Mailmessage -smtpServer $smtpServer -from $From -to $To -subject $Subject -body $Body -priority High -encoding UTF8 -port $SMTPPort -UseSsl -Credential $credential -ErrorAction Stop