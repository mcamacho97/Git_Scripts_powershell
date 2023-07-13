# Solicitar URL de repositorio
$url = Read-Host "Ingrese el URL del repositorio"

# Solicitar nombre de aws profile
$awsProfile= Read-Host "Ingrese el nombre del perfil de aws"

# Inicializar repositorio Git
git init

# Configurar credenciales de codecommit a nivel local
git config --local credential.helper '!aws codecommit credential-helper --profile $awsProfile $@'
git config --local credential.UseHttpPath true

# Agregar el origen remoto
git remote add origin $url

# Realizar un pull de los archivos locales al repositorio remoto
git pull origin master

