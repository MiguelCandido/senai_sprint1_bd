USE UNIDAS;
GO 

SELECT * FROM PESSOA 
SELECT * FROM TELEFONE
SELECT * FROM CNH 
SELECT * FROM EMAIL

/* listar as pessoas em ordem alfabética reversa, 
mostrando seus telefones, seus e-mails e suas CNHs*/

SELECT nomePessoa, TELEFONE.numeroTelefone, EMAIL.end_email, CNH.descricao FROM PESSOA
JOIN CNH ON PESSOA.idPessoa = CNH.idPessoa
LEFT JOIN TELEFONE on PESSOA.idPessoa = TELEFONE.idPessoa 
LEFT JOIN EMAIL on PESSOA.idPessoa = EMAIL.idPessoa
ORDER BY nomePessoa DESC;