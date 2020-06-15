%%-----------------------------------------------------------------------------
%% The LaTeX Project Public License 
%%--------------------------------------------------------------------
% Codifica��o: UTF-8
% LaTeX:  abnTeX2          
% -----------------------------------------------------------------------------

% Instituto Federal de Educa��o, Ci�ncia e Tecnologia Baiano - Campus Guanambi
% 
% Modelo para Trabalho de Conclus�o de Curso em LaTeX
% Superior de An�lise e Desenvolvimento de Sistemas
% Alterado por: Dr. Naidson Clayr Santos Ferreira and Msc. Tiago Nogueira
%
% ----------------------------------------------------------------------- %
% Arquivo: ifbaiano-abntex2.cls (principal)
% ----------------------------------------------------------------------- %
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{configuracoes/utfpr-abntex2}[2016/07/07 v1.0]

% Repassa os par�metros ao abntex2
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{abntex2}}

\PassOptionsToClass{%
% Op��es da classe memoir
    12pt,                     % Tamanho da fonte
    a4paper,                  % Tamanho do papel.
    sumario=tradicional,      % Seleciona o sum�rio tradicional
% Op��es do pacote babel
    brazil,                   % Idioma do documento
}{abntex2}

\ProcessOptions\relax
\LoadClass{abntex2}

\RequirePackage[brazilian, hyperpageref]{backref}       % Produzir �ndice nas refer�ncias
\RequirePackage{makeidx}                                % Produzir �ndice remissivo de palavras
\RequirePackage{chngcntr}


% -----------------------------------------------------------------------------
% Configura��es gerais
% -----------------------------------------------------------------------------

% Retira o espa�o extra desnecess�rio nas frases
\frenchspacing

% Configura��es do pacote backref usado sem a op��o hyperpageref de backref
\renewcommand{\backrefpagesname}{Citado na(s) p\'agina(s):~}

% Texto padr�o antes do n�mero das p�ginas
\renewcommand{\backref}{}

% Define as listas de item compactas (sem espa�amento entre os itens)
\setlist{noitemsep, topsep=0pt, parsep=0pt, partopsep=0pt}

% Define os textos da cita��o
\renewcommand*{\backrefalt}[4]
{%
    \ifcase #1
        Nenhuma cita\c{c}\~ao no texto.
    \or
        Citado na p\'agina #2.
    \else
        Citado #1 vezes nas p\'aginas #2.
    \fi
}

% Define a numera��o das equa��es de forma sequencial
\counterwithout{equation}{chapter}

% -----------------------------------------------------------------------------
% Comandos de dados
% -----------------------------------------------------------------------------

% Comandos de dados - Mec
\providecommand{\imprimirmec}{}
\newcommand{\mec}[1]{\renewcommand{\imprimirmec}{#1}}

% Comandos de dados - Setec
\providecommand{\imprimirsetec}{}
\newcommand{\setec}[1]{\renewcommand{\imprimirsetec}{#1}}

% Comandos de dados - Departamento
\providecommand{\imprimirdepartamento}{}
\newcommand{\departamento}[1]{\renewcommand{\imprimirdepartamento}{#1}}

% Comandos de dados - Programa
\providecommand{\imprimirprograma}{}
\newcommand{\programa}[1]{\renewcommand{\imprimirprograma}{#1}}

% Comandos de dados - Subt�tulo do trabalho
\providecommand{\imprimirsubtitulo}{}
\newcommand{\subtitulo}[1]{\renewcommand{\imprimirsubtitulo}{#1}}

% Comandos de dados - Institui��o do orientador
\providecommand{\imprimirinstOrientador}{}
\newcommand{\instOrientador}[1]{\renewcommand{\imprimirinstOrientador}{#1}}

% Comandos de dados - Institui��o do coorientador
\providecommand{\imprimirinstCoorientador}{}
\newcommand{\instCoorientador}[1]{\renewcommand{\imprimirinstCoorientador}{#1}}

% Comandos de dados -  Tipo de trabalho acad�mico (trabalho de conclus�o de curso, tese, disserta��o ou projeto de qualifica��o)
\providecommand{\imprimirprojeto}{}
\newcommand{\projeto}[1]{\renewcommand{\imprimirprojeto}{#1}}

% Comandos de dados - T�tulo Acad�mico a ser alcan�ado (Bacharel, Tecn�logo)
\providecommand{\imprimirtituloAcademico}{}
\newcommand{\tituloAcademico}[1]{\renewcommand{\imprimirtituloAcademico}{#1}}

% Comandos de dados - T�tulo em Ingl�s
\providecommand{\imprimirautorcitacao}{}
\newcommand{\autorcitacao}[1]{\renewcommand{\imprimirautorcitacao}{#1}}

% Comandos de dados - Nome autor para cita��o
\providecommand{\imprimirtitleabstract}{}
\newcommand{\titleabstract}[1]{\renewcommand{\imprimirtitleabstract}{#1}}

% Comandos de dados - �rea de concentra��o com R�tulo
\newcommand{\imprimirareaconcentracaoRotulo}{\'Area de concentra\c{c}\~ao: }
\providecommand{\imprimirareaconcentracao}{}
\newcommand{\areaconcentracao}[1]{\renewcommand{\imprimirareaconcentracao}{#1}}

% Comandos de dados - linha de pesquisa
\newcommand{\imprimirlinhapesquisaRotulo}{Linha de pesquisa: }
\providecommand{\imprimirlinhapesquisa}{}
\newcommand{\linhapesquisa}[1]{\renewcommand{\imprimirlinhapesquisa}{#1}}

% Comandos de dados - Texto da folha de aprova��o
\providecommand{\imprimirtextopadraofolhadeaprovacao}{}
\newcommand{\textopadraofolhadeaprovacao}[1]{\renewcommand{\imprimirtextopadraofolhadeaprovacao}{#1}}

% Comandos de dados - Logomarca da institui��o
\providecommand{\imprimirlogoinstituicao}{}
\newcommand{\logoinstituicao}[2]{\renewcommand{\imprimirlogoinstituicao}{\includegraphics[width={#1}\textwidth]{#2}}}

% -----------------------------------------------------------------------------
% Estilo de elementos
% -----------------------------------------------------------------------------

% Elementos pr�-textuais
\renewcommand{\pretextual}
{%
    \pagenumbering{gobble}
    \aliaspagestyle{chapter}{empty}
    \pagestyle{empty}
    \aliaspagestyle{cleared}{empty}
    \aliaspagestyle{part}{empty}
}

% Configura layout para elementos textuais
\renewcommand{\textual}
{%
    \pagenumbering{arabic} % A numera��o das p�ginas � em algarismos ar�bicos, inciando em 1
    \pagestyle{abntheadings}
    \aliaspagestyle{chapter}{abntchapfirst}
    \nouppercaseheads
    \bookmarksetup{startatroot}
}

% Configura layout para elementos p�s-textuais
\renewcommand{\postextual}
{%
    \chapterstyle{abnt}
    \phantompart
}

% -----------------------------------------------------------------------------
% Objetos flutuantes
% -----------------------------------------------------------------------------

% Comando que trata a fonte nos objetos flutuantes
\renewcommand{\fonte}[1]
{%
    \begin{SingleSpacing}\par\end{SingleSpacing}
    \centering\small{Fonte: #1}
}

% Comando que trata as notas nos objetos flutuantes
\renewcommand{\nota}[1]
{%
    \begin{SingleSpacing}\par\end{SingleSpacing}
    \begin{tabular}{l p{.85\textwidth}}%
        Nota: & #1
    \end{tabular}
}

% -----------------------------------------------------------------------------
% Par�grafos
% -----------------------------------------------------------------------------

% Tamanho da indenta��o do par�grafo
\setlength{\parindent}{1.5cm}

% Espa�amento entre um par�grafo e outro
\setlength{\parskip}{0.0cm}

% -----------------------------------------------------------------------------
% Fontes
% -----------------------------------------------------------------------------

% Redefini��o de fontes
\renewcommand{\ABNTEXchapterfont}{\normalfont\bfseries}
\renewcommand{\ABNTEXchapterfontsize}{\normalsize}

\renewcommand{\ABNTEXpartfont}{\normalfont}
\renewcommand{\ABNTEXpartfontsize}{\ABNTEXchapterfontsize}

\renewcommand{\ABNTEXsectionfont}{\normalfont\bfseries}
\renewcommand{\ABNTEXsectionfontsize}{\normalsize}

\renewcommand{\ABNTEXsubsectionfont}{\normalfont\bfseries}
\renewcommand{\ABNTEXsubsectionfontsize}{\normalsize}

\renewcommand{\ABNTEXsubsubsectionfont}{\normalfont\bfseries}
\renewcommand{\ABNTEXsubsubsectionfontsize}{\normalsize}

\renewcommand{\ABNTEXsubsubsubsectionfont}{\normalfont\bfseries}
\renewcommand{\ABNTEXsubsubsubsectionfontsize}{\normalsize}

% -----------------------------------------------------------------------------
% Sum�rio
% -----------------------------------------------------------------------------

% Travess�o no sum�rio para ap�ndices e anexos
\renewcommand{\cftchapteraftersnum}{\hfill\textendash\hfill}

% Insere espa�o entre os itens do sum�rio de diferentes cap�tulos
\setlength{\cftbeforechapterskip}{1.0em \@plus\p@}

% -----------------------------------------------------------------------------
% Listas
% -----------------------------------------------------------------------------

% Define os t�tulos das listas
\addto\captionsbrazil{%
% Ajusta nomes padr�es do babel
    \renewcommand{\listadesiglasname}{LISTA DE ABREVIATURAS E SIGLAS}
    \renewcommand{\listadesimbolosname}{LISTA DE S\'{I}MBOLOS}
    \renewcommand{\listfigurename}{LISTA DE FIGURAS}
    \renewcommand{\listtablename}{LISTA DE TABELAS}
    \renewcommand{\indexname}{\'{I}NDICE REMISSIVO}
% Ajusta nomes usados com a macro \autoref
    \renewcommand{\pageautorefname}{p\'agina}
    \renewcommand{\sectionautorefname}{Se\c{c}\~ao}
    \renewcommand{\subsectionautorefname}{Subse\c{c}\~ao}
    \renewcommand{\subsubsectionautorefname}{Subsubse\c{c}\~ao}
    \renewcommand{\paragraphautorefname}{Subse\c{c}\~ao}
}

% Cria a lista de quadros
\newcommand{\listofquadrosname}{Lista de Quadros}
\newcommand{\quadroname}{Quadro}
\newfloat[chapter]{quadro}{loq}{\quadroname}
\newlistof{listofquadros}{loq}{\listofquadrosname}
\newlistentry{quadro}{loq}{0}
\counterwithout{quadro}{chapter}
\renewcommand{\cftquadroname}{\quadroname\space}
\renewcommand*{\cftquadroaftersnum}{\hfill--\hfill}

% -----------------------------------------------------------------------------
% Capa
% -----------------------------------------------------------------------------
\makeatletter
\renewcommand{\imprimircapa}{
    \begin{capa}
        \begin{center}
          	\begin{figure}[!htpb]
        		\centering
        		\includegraphics[width=5cm]{Figuras/ifbaiano}
        		\label{f_c2_ifbaianocapa}
        	\end{figure}
        \begin{SingleSpacing}
            	
	            \abntex@ifnotempty{\imprimirsetec}
		            {
		            	\large\MakeUppercase{\imprimirsetec} \\
		            }		
	    		\abntex@ifnotempty{\imprimirdepartamento}
            		{
                		\MakeUppercase{\imprimirdepartamento} \\
            		}
           		
           	\large\MakeUppercase{\imprimirareaconcentracao} \\	%\large\MakeUppercase{\imprimirprograma} \\
		\end{SingleSpacing}
        \end{center}
        \vspace{60pt}

	\vspace{25pt}
        \begin{center}
            \ABNTEXchapterfont\large\MakeUppercase{\imprimirtitulo}
            \abntex@ifnotempty{\imprimirsubtitulo}
	    {%
                {\ABNTEXchapterfont: }{\large{\imprimirsubtitulo}}
            }
        \end{center}
        	\vspace{100pt}

        	\begin{flushright}
		\large\MakeUppercase{\imprimirautor}\\
	\end{flushright}
	\vspace{50pt}
	\begin{center}
		%\large\MakeUppercase{\imprimirprojeto}
	\end{center}
	\vfill
        \begin{center}
		\begin{SingleSpacing}
            		\MakeUppercase{\imprimirlocal}\\
            		\MakeUppercase{\imprimirdata}
		\end{SingleSpacing}
    	\end{center}

    \end{capa}

}
%\makeatother

% -----------------------------------------------------------------------------
% Folha de rosto
% -----------------------------------------------------------------------------
\makeatletter
\renewcommand{\folhaderostocontent}
{%
    \setcounter{page}{2}
    \begin{center}
    	\begin{figure}[!htpb]
    		\centering
    		\includegraphics[width=5cm]{Figuras/ifbaiano}
    		\label{f_c2_ifbaianofolharosto}
    	\end{figure}
    	\vspace{20pt}
        \large\MakeUppercase{\imprimirautor}\\
    \end{center}

    \vspace*{70pt}

    \begin{center}
        \ABNTEXchapterfont\large\MakeUppercase{\imprimirtitulo}
        \abntex@ifnotempty{\imprimirsubtitulo}
	{%
        	{\ABNTEXchapterfont: }{\large{\imprimirsubtitulo}}
        }
    \end{center}

    \vspace*{60pt}

    \abntex@ifnotempty{\imprimirpreambulo}
    {%
        \SingleSpacing
        \begin{tabular}{p{.25\textwidth}p{.13\textwidth}p{.44\textwidth}}
            & \multicolumn{2}{p{.6\textwidth}}{\small\hyphenpenalty=10000{\imprimirpreambulo}} \\ & & \\
            \abntex@ifnotempty{\imprimirareaconcentracao}
            {%
                & \multicolumn{2}{p{.6\textwidth}}{\small\hyphenpenalty=10000{\imprimirareaconcentracaoRotulo\imprimirareaconcentracao}} \\ & & \\
            }
            \abntex@ifnotempty{\imprimirlinhapesquisa}
            {%
                & \multicolumn{2}{p{.6\textwidth}}{\small\hyphenpenalty=10000{\imprimirlinhapesquisaRotulo\imprimirlinhapesquisa}} \\ & & \\
            }
            \abntex@ifnotempty{\imprimirorientador}
            {%
                & \small\imprimirorientadorRotulo & \imprimirorientador \\
                & & \small\imprimirinstOrientador \\ & & \\
            }
            \abntex@ifnotempty{\imprimircoorientador}
            {%
                & \small\imprimircoorientadorRotulo & \imprimircoorientador \\
                & & \small\imprimirinstCoorientador
            }
        \end{tabular}
    }

    \vspace*{\fill}

    \begin{center}
	\begin{SingleSpacing}
            \MakeUppercase{\imprimirlocal}\\
            \MakeUppercase{\imprimirdata}
	\end{SingleSpacing}
    \end{center}
}
\makeatother

% -----------------------------------------------------------------------------
% Folha de aprova��o
% -----------------------------------------------------------------------------
\makeatletter
%\newcommand{\imprimirfolhadeaprovacao}
{%
%\begin{folhadeaprovacao}
%\begin{center}

%{\ABNTEXchapterfont\Large\MakeUppercase{\imprimirautor}}

%\vspace{30pt}

%\vspace*{\fill}\vspace*{\fill}

%\begin{center}

%{\ABNTEXchapterfont\bfseries\Large\MakeUppercase{\imprimirtitulo}}

%\end{center}

%\vspace*{\fill}

%\hspace{.45\textwidth}

%\begin{flushright}
%\begin{minipage}{.5\textwidth}
%\imprimirpreambulo	
%\end{minipage}
%\end{flushright}

%\vspace*{\fill}

%\end{center}

%\vspace{10pt}

%\begin{flushleft}
	
%Trabalho aprovado. \imprimirlocal, 24 de Novembro de 2017:

%\end{flushleft}

%\vspace{10pt}

%\begin{flushleft}
%BANCA EXAMINADORA:

%\assinatura{\textbf{Dr./MSc. Nome do Professor} \\ Instituto Federal de Educa��o, Ci�ncia e Tecnologia Baiano-Campus Guanambi}

%\assinatura{\textbf{Dr./MSc. Nome do Professor} \\ Instituto Federal de Educa��o, Ci�ncia e Tecnologia Baiano-Campus Guanambi}
%\end{flushleft}


%\begin{center}

%\assinatura{\textbf{\imprimirorientador} \\ Orientador}

%\assinatura{\textbf{\imprimircoorientador} \\Coorientador}

%\end{center}

%\begin{center}

%\vspace*{0.5cm}

%{\Large\MakeUppercase\imprimirlocal}

%\par

%{\large\MakeUppercase\imprimirdata}

%\vspace*{1cm}

%\end{center}
%\end{folhadeaprovacao}
%}
%\makeatother

% -----------------------------------------------------------------------------
% Dedicat�ria
% -----------------------------------------------------------------------------
\renewenvironment{dedicatoria}[1][]
{%
    \ifthenelse{\equal{#1}{}}{%
        \PRIVATEbookmarkthis{\dedicatorianame}
    }{\pretextualchapter{#1}}

    \vspace*{\fill}

    \begin{flushright}
        \begin{minipage}{.5\textwidth}
            \begin{SingleSpacing}
                \setlength\parindent{0pt}
                \setlength\parskip{12pt}
}
{%
            \end{SingleSpacing}
        \end{minipage}
    \end{flushright}
}

% -----------------------------------------------------------------------------
% Ep�grafe
% -----------------------------------------------------------------------------
\renewenvironment{epigrafe}[1][]
{%
    \ifthenelse{\equal{#1}{}}
    {%
        \PRIVATEbookmarkthis{\epigraphname}
    }{\pretextualchapter{#1}}

    \vspace*{\fill}

    \begin{flushright}
        \begin{minipage}{.5\textwidth}
            \begin{SingleSpacing}
                \setlength\parindent{0pt}
                \setlength\parskip{12pt}
}
{%
            \end{SingleSpacing}
        \end{minipage}
    \end{flushright}
}
