Sphinx vs Readthedocs
*********************

Documentando projetos com `Sphinx <http://www.sphinx-doc.org/pt_BR/stable/contents.html>`_ e `ReadTheDocs.org <https://docs.readthedocs.io/en/latest/index.html>`_

* Crie um repositório no **github** para o seu projeto:

  Repositório DTISJC    - https://github.com/tiusjc/dtisjc-docs.git
  
  Generating an SSH key - https://help.github.com/articles/generating-an-ssh-key
 
 
* Crie uma pasta **documentation** para o seu projeto::
 
  $ mkdir documentation
  $ cd documentation
  $ git init
  $ git remote add origin git@github.com:tiusjc/dtisjc-docs.git	
								
* Crie uma pasta docs::

  $ mkdir docs

* Instale o **sphinx** e configure o **sphinx-quickstart**:
  
  .. code-block:: bash

    $ pip install phinx
    $ sphinx-quickstart
    > root path for documentation [.]: docs
    > Separate source and build directories (y/n) [n]: y
    > Name prefix for templates and static dir [_]: 
    > Project name: dtisjc-docs
    > Author name(s): DTI-SJC
    > Project version: 1.0
    > Project release [1.0]: 
    > Project language [en]: pt_BR
    > Source file suffix [.rst]:
    > Name of your master document (without suffix) [index]: 
    > Do you want to use the epub builder (y/n) [n]:
    > autodoc: automatically insert docstrings from modules (y/n) [n]: y
    > doctest: automatically test code snippets in doctest blocks (y/n) [n]: y
    > intersphinx: link between Sphinx documentation of different projects (y/n) [n]: 
    > todo: write "todo" entries that can be shown or hidden on build (y/n) [n]: 
    > coverage: checks for documentation coverage (y/n) [n]: 
    > imgmath: include math, rendered as PNG or SVG images (y/n) [n]: 
    > mathjax: include math, rendered in the browser by MathJax (y/n) [n]: y
    > ifconfig: conditional inclusion of content based on config values (y/n) [n]: 
    > viewcode: include links to the source code of documented Python objects (y/n)[n]: y
    > Create Makefile? (y/n) [y]: 
    > Create Windows command file? (y/n) [y]: 

* A pasta docs agora possui:
  
  .. code-block:: bash

    $ ls docs -l
    -rw-r--r-- 1 root root 8085 May 12 14:40 Makefile
    drwxr-xr-x 4 root root 4096 May 12 14:51 build
    -rw-r--r-- 1 root root 7747 May 12 14:40 make.bat
    drwxr-xr-x 4 root root 4096 May 12 14:47 source #arquivo principal index.rst

* Va criar um arquivo all-about-me.rst (para aprender sobre formatação consulte: http://www.sphinx-doc.org/en/stable/rest.html#rst-primer).
 
  .. note::
    A pasta source conterá os arquivos após a renderização(.rst). Arquivos rst são os arquivos fontes para sua documentação.

  ::

    ############
    All about me
    ############

    I'm Daniele Procida, a Django user and developer.

    I've contributed to:

    *   django CMS
    *   Arkestra
    *   Django

* Adicione a referência a ele no arquivo index.rst como abaixo:

  ::
    
    .. toctree::
       :maxdepth: 2

       all-about-me
   
* Para renderizar o seu documento na pasta docs execute ( source(*.rst) -> build/html(*.html) ):
  
  .. code-block:: bash

    $ make html
    sphinx-build -b html -d build/doctrees   source build/html
    Running Sphinx v1.4.1
    loading translations [pt_BR]... done
    loading pickled environment... done
    building [mo]: targets for 0 po files that are out of date
    building [html]: targets for 0 source files that are out of date
    updating environment: 0 added, 0 changed, 0 removed
    looking for now-outdated files... none found
    no targets are out of date.
    build succeeded.

    Build finished. The HTML pages are in build/html.

* Veja na pasta build/html que foram criados os seguintes arquivos:
  
  .. code-block:: bash

    $ ls build/html/
    _sources  _static  all-about-me.html  genindex.html  index.html  objects.inv  search.html  searchindex.js  sobre.html

* Vamos testar:
  
  .. code-block:: bash

    $ python -m SimpleHTTPServer
    Serving HTTP on 0.0.0.0 port 8000 ...

* No seu navegador digite http://servidor:8000/build/html/ 

* Instalar o tema para sphinx_rtd_theme no ReadTheDocs - https://github.com/snide/sphinx_rtd_theme
  
  .. code-block:: bash

    $ pip install sphinx_rtd_theme

* No seu conf.py arquivo
 
  ::

    import sphinx_rtd_theme

    html_theme = "sphinx_rtd_theme"

    html_theme_path = [sphinx_rtd_theme.get_html_theme_path()]

* Atualize o github:
  
  .. code-block:: bash

    $ git add .
    $ git commit -m "Atualizando o tema para sphinx_rtd_theme"
    $ git push origin master


DICAS
^^^^^
  
  - Lista todas as linguagens suportadas (.. code-block:: <language>)
  
  .. code-block:: bash

    $ pygmentize -L lexers  

LINKS ÚTEIS
^^^^^^^^^^^
  
  http://hyperpolyglot.org/lightweight-markup



