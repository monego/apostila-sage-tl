Apostila do minicurso de Álgebra Linear realizado na semana acadêmica do curso de matemática da UFSM.

# Compilação

**NOTA**: Por conveniência, uma versão online completa encontra-se disponível [aqui](https://monego.codeberg.page/tl/). É recomendável compilar o material somente se houver necessidade de modificar o conteúdo.

Para compilação local: requer uma máquina rodando GNU/Linux com os pacotes `git`, `make` e `xsltproc` instalados:

```bash
$ sudo apt install git make xsltproc
```

Após a instalação dos pacotes, faça o download deste repositório em qualquer diretório, mude para a sua raiz e faça o download do PreTeXt:

```bash
$ git clone https://github.com/monego/sage-tl
$ cd sage-tl
$ git clone https://github.com/rbeezer/mathbook
```

Execute o comando `make` com a saída desejada. Recomenda-se a saída html:

```bash
make html
```

Abra o arquivo `build/html/index.html` em qualquer navegador.

Shield: [![CC BY-SA 4.0][cc-by-sa-shield]][cc-by-sa]

This work is licensed under a
[Creative Commons Attribution-ShareAlike 4.0 International License][cc-by-sa].

[![CC BY-SA 4.0][cc-by-sa-image]][cc-by-sa]

[cc-by-sa]: http://creativecommons.org/licenses/by-sa/4.0/
[cc-by-sa-image]: https://licensebuttons.net/l/by-sa/4.0/88x31.png
[cc-by-sa-shield]: https://img.shields.io/badge/License-CC%20BY--SA%204.0-lightgrey.svg
