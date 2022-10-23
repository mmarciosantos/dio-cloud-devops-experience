# Script criação de usuários, grupos, dar permições e script para remover tudo 
Criados dois scripts referente ao projeto 1 de Linux (DIO).
O primeiro script cria diretórios, grupos e usuários. Adiciona os usuários aos grupos e gerencia as permissões dos grupos e dos diretórios.
O segundo script remove tudo que foi criado pelo primeiro script. 

### Observações importantes:
1) Deve-se executar os scripts da seguinte maneira:

Dar permissão de execução para os scripts:

	chmod +x cria_usuarios.sh
	chmod +x remove_usuarios.sh

Executar os scripts como usuários root:

	sudo ./cria_usuarios.sh
	sudo ./remove_usuarios.sh

2) O script para remoção dos usuários, grupos e diretórios foi adquirido através do post referenciado abaixo, no entanto a indentação foi modificada para se ter uma melhor visualização do código e foi adicionado um loop a mais para remover os diretórios criados

https://web.dio.me/topics/script-para-preguicosos-como-eu-kkkkk?back=%2Ftrack%2Fcloud-devops-experience-banco-carrefour&page=1&order=oldest
