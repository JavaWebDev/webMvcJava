﻿# webMvcJava
Sumário

Projeto MVC	1
Criar um projeto	1
Adicionar a referência do pacote mysql	3
Criar a estrutura:	4
Criar a UI (user interface)	4
Configurar a versão no pom.xml	5
Criar as páginas de usuário	5
Criar navegação inicial	6
Listar usuários (listarUsuario.jsp)	6
Javabeans	6
Conceito getter e setter	7
Exemplo métodos get e set	7
Criar os métodos no Netbeans	7
Conexão com a base de dados	8
Criar uma base de dados mysql no db4free	8
Criar uma tabela na database criada	9
Criar a classe de conexão	10
Referências	11

Projeto MVC 

MVC é nada mais que um padrão de arquitetura de software, separando sua aplicação em 3 camadas. A camada de interação do usuário (view), a camada de manipulação dos dados (model) e a camada de controle (controller).
 
Criar um projeto

Passo 1: 
 
Passo 2: 
 
Passo 3: 
 

Atualizar a dependência javaee-web-api
 
Vamos utilizar a versão 8.0.1, caso o seu projeto esteja atualizado, não se preocupe com esta parte. 
1.	Clique com o botão direito na pasta Dependecies > Add dependency 
 
2.	Clique em add. Isso irá substituir a versão atual (6.0) para a última versão (8.0.1)
 

Adicionar a referência do pacote mysql

1° passo: botão direito em dependencies > add dependecy 
 
2° passo: clique em add e deixe a mágica acontecer. 
 

Criar a estrutura: 

Não vamos utilizar nenhum framework, como por exemplo, spring MVC. 
1.	Criar uma pasta para a View (Pasta); 
2.	Criar um pacote para Model (Package); 
3.	E por último, criar um pacote para Controller (Package). 

Criar a UI (user interface) 

Vamos utilizar o Bootstrap 4 para “criar” as nossas interfaces.  

1.	Utilizaremos template para começarmos o nosso desenvolvimento. 
https://www.w3schools.com/bootstrap4/trybs_template1.htm
2.	Faremos apenas umas limpezas. 
3.	Criar um header.jsp e um footer.jsp; 
4.	Importar o header e o footer no index.jsp. 
Código completo está no Github: incluir o link
Configurar a versão no pom.xml
A versão 1.6 geralmente estoura erro de compilação, vamos trocar para 1.7
1.	Abra o arquivo pom.xml
 

Criar as páginas de usuário 

Agora que já criamos um padrão, podemos dar vida ao nossos CRUD. Vamos começar por um cadastro de cliente. 
1.	Criar uma pasta chamada Usuario dentro da pasta View. 
 
2.	Criar 3 arquivos jsp dentro da pasta usuário: listarUsuario.jsp, adicionarUsuario.jsp e editarUsuario.jsp.
 






3.	Incluir o cabeçalho e o rodapé nas três visualizações
exemplo:
 
Incluir nas três visualizações listarUsuario.jsp, editarUsuario.jsp e adicionar.jsp
Criar navegação inicial

1.	No header, crie uma variável para armazenar a raiz do site: 
 
2.	Dentro do menu (emprestado do bootstrap) vamos incluir o caminho da página de listar.

 
Listar usuários (listarUsuario.jsp)



Javabeans

•	São classes para servir de armazenamento, controle e transporte; 
•	Essas classes possuem métodos construtores e atributos;
•	Os atributos são criados utilizando o conceito de get e set.
Conceito getter e setter

•	Por regra, os atributos de uma classe JavaBeans são criados como privados para garantir o encapsulamento; 
•	Utilizado para armazenar e recuperar dados, são criados métodos públicos para cada informação ser manipulado. 
•	Por padrão, os métodos começam com as palavras get e set. 
Exemplo métodos get e set
 

Criar os métodos no Netbeans

1.	Crie uma classe chamada Usuario no Source Package
2.	Adicione duas propriedades, codigo e nome;
 
3.	Selecione as duas propriedades > clique com o botão direito > Refactor > Encapsulate Fields
 
4.	Com as propriedades selecionadas, clique em refactor para gerar os métodos 
 
5.	Resultado esperado: 
 


Conexão com a base de dados

Criar uma base de dados mysql no db4free

1.	Acesse o endereço: 
https://db4free.net/signup.php
2.	Role para baixo para achar o cadastro (A interface não ajuda muito); 
 

3.	Você irá receber um e-mail para confirmação. Detalhe, este e-mail também é bem confuso, procure por confirm.
  
4.	Após confirmar, você já poderá acessar a base criada. Basta clicar em phpmyAdmin
 

Criar uma tabela na database criada 

Vamos partir do pressuposto que você já “manja” de base de dados. 
1.	Criar uma tabela “usuario” com os seguintes campos: 

Coluna	Tipo	Tamanho	Chave	Detalhes
idUsuario	Int		PK 	A_I (auto increment)
usuario	VARCHAR	100		
senha	VARCHAR	100		

 

Criar a classe de conexão 
1.	Vamos criar uma classe para conectar na base de dados mysql;
2.	Criar um pacote chamado Config; 
3.	Adicionar uma classe chamada ConexaoMysql;
4.	Inserir os pacotes que serão utilizados;
 
5.	Criar um atributo para connection
 
6.	Criar um construtor para iniciar a conexão:
 
String configs = "?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&useSSL=false";
Código completo está no Github: incluir o link 
7.	Criar um método para retornar a conexão 
 





Referências

https://pt.slideshare.net/leonardojava/arquitetura-mvc-javabeans-e-dao
https://www.devmedia.com.br/introducao-aos-javabeans/8621
https://db4free.net/signup.php
https://tableless.com.br/mvc-afinal-e-o-que/
https://github.com/google/gson
