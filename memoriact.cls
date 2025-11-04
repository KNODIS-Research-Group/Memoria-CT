\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{memoriact}[2025/09/25 Modelo plan nacional]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Aquí lo específico de formato que aparece en la normativa (https://www.aei.gob.es/sites/default/files/convocatory_info/assistants/2025-09/Convocatoria_ProyectosGeneraci%C3%B3nConocimiento_PID2024_%20%281%29.pdf, artículo 18.2.a)

% Mínimo 11pt
\LoadClass[11pt]{article}

% La memoria se entregará en inglés o español
\RequirePackage{polyglossia}
\setmainlanguage{spanish}
% setmainlanguage{english}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% La recomendación dice que "márgenes laterales de 2,5cm, márgenes
%  superior e inferior de 1,5cm", pero la plantilla no lo sigue porque
%  se apelmaza todo arriba y abajo, así que lo modificamos un poquito
%  para que se parezca más a la plantilla.
\RequirePackage[
    a4paper,
    left=2.5cm, right=2.5cm,
    top=2cm,
    includefoot,
    bottom=2cm,
    footskip=2.5em,
]{geometry}

% Letras times New Roman, Calibri o Arial
\RequirePackage{fontspec}
% \setmainfont{Times New Roman}  % Para imprimir
% \setmainfont{Calibri}  % Para pantalla, pero hay que instalar las fuentes
\setmainfont{Arial}  % Para pantalla

% Espaciado mínimo sencillo
\RequirePackage{setspace}
\setstretch{1.0}

% Nombramos a los Cuadros Tablas
\addto\captionsspanish{\renewcommand{\tablename}{Tabla}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Aquí lo necesario para que se parezca docx que proporcionan salvo las
% que creo que estarían mejor a mi gusto.
%
\RequirePackage{graphicx}  % Imagencitas
\RequirePackage{tikz}
\RequirePackage{xcolor}  % Colorines

% Cabeceras y pies
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}

\pagestyle{fancy}
\fancyhf{}

\fancyhead[L]{\tikz[baseline]{\node[opacity=.45,inner sep=0pt]{\includegraphics[height=1.5cm]{logo-mciu.jpg}};}}
\fancyhead[R]{\tikz[baseline]{\node[opacity=.45,inner sep=0pt]{\includegraphics[height=1.5cm]{logo-aei.png}};}}
\renewcommand{\headrulewidth}{0pt}
\setlength{\headheight}{3.9em}

\fancyfoot[L]{\footnotesize Memoria Científico-Técnica\\Proyectos individuales tipo A, B y RTA}
\fancyfoot[R]{\footnotesize Pág. \thepage\ de \pageref{LastPage}}
\renewcommand{\footrulewidth}{0.4pt}
\renewcommand{\footrule}{\footnotesize \color{lightgray}\hrule height 0.4pt}

\fancypagestyle{firstpage}{
    \fancyhf{}
    \fancyhead[L]{\tikz[baseline]{\node[opacity=.45,inner sep=0pt]{\includegraphics[height=1.5cm]{logo-mciu.jpg}};}}
    \fancyhead[C]{\tikz[baseline]{\node[opacity=.45,inner sep=0pt]{\includegraphics[height=1.5cm]{logo-ue.jpg}};}}
    \fancyhead[R]{\tikz[baseline]{\node[opacity=.45,inner sep=0pt]{\includegraphics[height=1.5cm]{logo-aei.png}};}}
    \renewcommand{\footrule}{\footnotesize \color{gray}\hrule height 0.4pt}
    \fancyfoot[L]{\footnotesize Memoria Científico-Técnica\\Proyectos individuales tipo A, B y RTA}
    \fancyfoot[R]{\footnotesize Pág. \thepage\ de \pageref{LastPage}}
}

% Captions de figuras y tablas
\usepackage[font=it,        % pone el caption en cursiva
            margin=10pt,    % margen izquierdo y derecho
            labelfont=bf    % pone en negrita la etiqueta "Figura X"
           ]{caption}

% Para que los numeritos de todas las secciones acaben en ".", que los
%  espacios tras dichos títulos no sean tan bestias y las secciones en
%  mayúscula
\RequirePackage{titlesec}

\titleformat{\section}{\normalfont\normalsize\bfseries}{\thesection.}{1em}{\texorpdfstring{\MakeUppercase}{}}  % Ojo, aquí la mayúscula
\titlespacing*{\section}{0pt}{1em plus 0em minus 1em}{0.4em}
\titleformat{\subsection}{\normalfont\normalsize\bfseries}{\thesubsection.}{1em}{}
\titlespacing*{\subsection}{0pt}{0.9ex plus .2ex minus .1ex}{0.35em}
\titleformat{\subsubsection}{\normalfont\normalsize\bfseries}{\thesubsubsection.}{1em}{}
\titlespacing*{\subsubsection}{0pt}{0.8ex plus .2ex minus .1ex}{0.3em}

% Nada de sangría y una línea de separación entre párrafos
\setlength{\parindent}{0pt}
\setlength{\parskip}{1em}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Para el título y aviso de la primera página, que aunque no es 
%  necesario, así es más parecido a la plantilla
\RequirePackage{tcolorbox}
\newtcolorbox{cuadroportada}{%
  colback=white,        % fondo blanco
  colframe=black,       % borde negro
  boxrule=1pt,          % grosor del borde
  width=\linewidth,     % ocupa todo el ancho del texto
  left=0.2em, right=0.2em, top=0.2em, bottom=0.2em,  % Padding
  sharp corners,        % quita el redondeo
}

\RequirePackage{ragged2e}
\RequirePackage[normalem]{ulem}  % subrayado que permite salto de línea
\hyphenpenalty=10000     % no cortar palabras
\exhyphenpenalty=10000
\sloppy

\newtcolorbox{cuadroaviso}{%
  colback={rgb,255:red,254;green,255;blue,0},
  colframe=black,
  boxrule=1pt,
  width=\linewidth,
  left=0.2em, right=0.2em, top=0.2em, bottom=0.2em,  % Padding
  sharp corners,
  fontupper=\fontsize{10pt}{10pt}\selectfont\justifying\setlength{\parskip}{10pt},
}

\makeatletter
\renewcommand{\maketitle}{%
  \thispagestyle{firstpage}%
  \noindent
  \begin{cuadroportada}
    \bfseries
    {
    \centering
    \uline{MEMORIA CIENTÍFICO-TÉCNICA PROYECTOS INDIVIDUALES}\\
    }
    Convocatoria 2025 - «Proyectos de Generación de Conocimiento» y actuaciones para la formación de personal investigador predoctoral asociadas a dichos proyectos.
  \end{cuadroportada}%

  \begin{cuadroaviso}
    \bfseries
    \hangindent=2.5em  % primera línea más a la izquierda que el resto
    \textcolor{red}{AVISO IMPORTANTE} - La memoria \uline{no podrá exceder de 20 páginas}. Para rellenar correctamente esta memoria, lea detenidamente las instrucciones disponibles en la web de la convocatoria. \uline{Es obligatorio rellenarla en inglés si se solicita 100.000€ o más} (en costes directos).
    
    \hangindent=2.5em
    \itshape
    \textcolor{red}{IMPORTANT} – The research proposal \uline{cannot exceed 20 pages}. Instructions to fill this document are available at the website. \uline{If the project cost is equal or greater than 100.000€, this document must be filled in English}.
  \end{cuadroaviso}
}
\makeatother

\endinput