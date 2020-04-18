# Trabalho DevOps - Setrem

Raphael Gaita Gomes e Maikel Lozekann

Este documento tem por objetivo descrever o motivos da escolha das ferramentas utilizadas para a execução do trabalho, bem como informações de como o ambiente foi contruido, possibilitando sua reprodução.

## Ferramentas utilizadas

### Gitlab

Ferramenta que oferece Integração Continua (CI) e Desenvolvimento e Entrega Contínuos (CD), ou seja, permite a aplicação de todos os métodos contínuos sem necessidade de integração com aplicações de terceiros.  Estas caracteristicas foram determinantes para sua escolha para a realização do trabalho, além da mesma possuir ampla documentação e interface clara e intuitiva.

Possui suporte a arquivos YMAL, suas etapas executam através do Docker além de possibilitar a sua utilização tanto como SaaS quanto in-loco, através de instalação em um servidor local.

No caso de utilização através da modalidade SaaS, há a opção de criação de contas gratuitas com algums limitações, porém, estas não impactam diretamente na realização do trabalho.

### Aplicação

Como aplicação de teste, foi elaborada uma aplicação simples, em Java, que apresenta uma frase na tela, como "Olá, mundo...".

### Etapas

Como mencionado anteriormente, todas as etapas do processo de pipeline são executadas e armazenadas na solução GitLab, devido a mesma oferecer esta possibilidade e consequentemente facilitar a configuração e integração, tais recursos oferecidos foram utilizados.

Para a realização do trabalho, um Runner dedicado foi configurado em um servidor virtual localizado localmente na residência de um dos colaboradores. O mesmo foi configurado para que pudesse ser possivel executar testes sem limitação de execuções, o mesmo foi configurado como ruuner privilegiado.

Com relação as etapas do pipeline, as mesmas foram declaradas no arquivo .gitlab-ci.yml consistindo em build, test, deploy e publish. Cada uma descrita abaixo.

#### Build

Nesta etapa, ocorre a configuração e montagem do ambiente a partir do projeto relacionado, onde os arquivos Java relacionados a aplicação são montados e compilados.

#### Test

A etapa de teste, possui somente alguns comandos de listagem e mensagens, não existem testes concretos devido ao foco do trabalho ser o processo de pipeline e não do teste de aplicação em si.

#### Deploy

Nesta etapa, a medida em que o desenvolvedor faz alterações no projeto o mesmo é empacotado gerando um conteiner docker e sumetido ao repositório configurado Gitlab.

#### Publish

Nesta etapa, ocorreia a obtenção da ultima versão do conteiner contido no repositório executando-o para que o colaborador pudesse usufruir do produto desenvolvido. Porém, devido a problemas de compreenção dos conteudos relacionados, por serem novos e problemas nas configurações esta etapa não pôde ser concluída.

### Instruções para execução

Para a execução do pipeline é necessário possuir uma conta no Gitlab com um Runner local dedicado configurado, para isso, se faz necessário executar as etapas contidas na documentação presente no link https://docs.gitlab.com/runner/ .
Após a configuração do ambiente Gitlab, é necessário efetua o download do projeto presente no seguinte endereço do Github @@@@@@@@@@ o mesmo deve ser enviado ao Gitlab para execução do pipeline. Para facilitar a verificação do projeto, as credenciais de acesso as contas usadas para a implementação do trabalho (exclusivas para tal finalidade) foram enviadas por e-mail.

Ao se efetuar modificações no projeto e atualização do mesmo no ambiente do Gitlab, o pipeline é disparado, executando as etapas de build, test, em seguida, deploy e publish.

## Resultados obtidos no GitLab

No decorrer da elaboração do trabalho, constatamos extrema dificuldade em por em pratica o que foi solicitado, após intervenção e tiração de dúvidas com o professor, conseguimos avançar e executar algumas etapas do processo de pipeline (build, test, deploy), com relação ao publish, não conseguimos efetuá-lo com sucesso devido a problemas com a configuração do webhook e configurações relacionadas a publicação do conteiner criado armazenado no Gitlab, assim, tal etapa ficou sem ações internas relevantes.

Abaixo, alguns prints demonstrando a execução do processo executando o pipeline pelo GitLab:

### Build:

Esta etapa realiza a compilação da aplicação, gerando um class executável do fonte "DevOps.java". Após isso roda a execução desta aplicação, exibindo a mensgem "Ola mundo...". Confomre imagem:

![](https://raw.githubusercontent.com/devopsgaita/trabalhoDevOps/master/images/build.png)

### Test:

Como esta etapa não contempla o contexto do trabalho, a mesma apenas apresenta uma mensagem "Deveria ter um teste aqui"

![](https://raw.githubusercontent.com/devopsgaita/trabalhoDevOps/master/images/test.png)

### Publish:

Como dito anteriormente, esta etapa não conseguimos desenvolver, portanto apresenta apenas a mensagem "Deveria fazer o Publish"

![](https://raw.githubusercontent.com/devopsgaita/trabalhoDevOps/master/images/publish.png)

### Deploy:

Esta etapa sobe uma imagem docker da aplicação para ser executada no ruuner local

![](https://raw.githubusercontent.com/devopsgaita/trabalhoDevOps/master/images/deploy1.png)

![](https://raw.githubusercontent.com/devopsgaita/trabalhoDevOps/master/images/deploy2.png)

## Resultados obtidos no Runner
