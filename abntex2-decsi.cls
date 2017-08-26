%%
%% Customizações do abnTeX2 (http://abnTeX2.googlecode.com) para o
%% Departamento de Computação e Sistemas da Universidade Federal de Ouro Preto
%%
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%%
%% This work has the LPPL maintenance status `maintained'.
%%
%% Further information about abnTeX2 are available on https://github.com/abntex/abntex2
%%

%% ------------------------
%% Versions and updates:
%% = Glauber M. Cabral, glauber@decsi.ufop.br (v1.0)
%% = Oto Braz Assunção, oto.braz@outlook.com (v1.1)
%% 		- Adequações à nova resolução do COSI.
%% = Fernando B, Oliveira, fernando@decea.ufop.br (v1.2)
%% 		- Correções na Folha de Aprovação.
%%		- Mudanças na capa
%% 		- Inclusão do Termo de Responsabilidade e da Ata de Defesa atualizada.
%% ------------------------
%%  - 2017/08/25 - Correções na Folha de Aprovação e na Ata - remover "Prof."
%% ------------------------


\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{abntex2-decsi}[2017/03/30 v1.2 Modelo do Departamento de Computação e Sistemas da Universidade Federal de Ouro Preto baseado em abnTeX2]

%
% Repassa todos os parametros a classe abntex2,
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{abntex2}%
}
\ProcessOptions\relax
\LoadClass{abntex2}

\RequirePackage{xcolor}

\RequirePackage[T1]{fontenc}    % Selecao de codigos de fonte.
\RequirePackage[utf8]{inputenc}   % Codificacao do documento (conversão automática dos acentos)

% Pacote para o logo da UFOP ao lado do cabeçalho.
\RequirePackage{wrapfig}

% Define comando para o nome do Instituto
\providecommand{\imprimirinstituto}{}
\newcommand{\instituto}[1]{\renewcommand{\imprimirinstituto}{#1}}

% Define comando para o nome do Departamento
\providecommand{\imprimirdepartamento}{}
\newcommand{\departamento}[1]{\renewcommand{\imprimirdepartamento}{#1}}

% Define comando para o nome do Colegiado
\providecommand{\imprimircolegiado}{}
\newcommand{\colegiado}[1]{\renewcommand{\imprimircolegiado}{#1}}

% Define comando para o nome do Curso
\providecommand{\imprimircurso}{}
\newcommand{\curso}[1]{\renewcommand{\imprimircurso}{#1}}

% Define comando para o nome do grau
\providecommand{\imprimirgrau}{}
\newcommand{\grau}[1]{\renewcommand{\imprimirgrau}{#1}}

% Define comando para o dia de defesa
\providecommand{\imprimirdia}{}
\newcommand{\dia}[1]{\renewcommand{\imprimirdia}{#1}}

% Define comando para o mes de defesa
\providecommand{\imprimirmes}{}
\providecommand{\imprimirMes}{}
\newcommand{\mes}[1]{%
  \renewcommand{\imprimirmes}{\mesExtenso{#1}}%
  \renewcommand{\imprimirMes}{\MesExtenso{#1}}%
}

\newcommand{\mesExtenso}[1]{%
  \ifcase #1%
  \or janeiro% 1
  \or fevereiro% 2
  \or mar\c{c}o% 3
  \or abril% 4
  \or maio% 5
  \or junho% 6
  \or julho% 7
  \or agosto% 8
  \or setembro% 9
  \or outubro% 10
  \or novembro% 11
  \or dezembro% 12
\fi}

\newcommand{\MesExtenso}[1]{%
  \ifcase #1%
  \or Janeiro% 1
  \or Fevereiro% 2
  \or Mar\c{c}o% 3
  \or Abril% 4
  \or Maio% 5
  \or Junho% 6
  \or Julho% 7
  \or Agosto% 8
  \or Setembro% 9
  \or Outubto% 10
  \or Novembro% 11
  \or Dezembro% 12
\fi}

% Define comando para o ano da defesa
\providecommand{\imprimirano}{}
\newcommand{\ano}[1]{\renewcommand{\imprimirano}{#1}}

% Define comando para data da defesa
\providecommand{\imprimirdatadedefesa}{\imprimirdia{} de \imprimirmes{}  de \imprimirano{}}

% Define comando para o local da defesa
\providecommand{\imprimirlocaldefesa}{}
\newcommand{\localdefesa}[1]{\renewcommand{\imprimirlocaldefesa}{#1}}

% Define comando para a hora (HH:MM) da defesa
\providecommand{\imprimirhoradefesa}{}
\newcommand{\horadefesa}[1]{\renewcommand{\imprimirhoradefesa}{#1}}


% ---
% Convidados para banca
% ---
\providecommand{\imprimirorientadorDepartamento}{}
\newcommand{\orientadorDepartamento}[1]{\renewcommand{\imprimirorientadorDepartamento}{#1}}

\providecommand{\imprimirorientadorTitulacao}{}
\newcommand{\orientadorTitulacao}[1]{\renewcommand{\imprimirorientadorTitulacao}{#1}}

\providecommand{\imprimircoorientadorDepartamento}{}
\newcommand{\coorientadorDepartamento}[1]{\renewcommand{\imprimircoorientadorDepartamento}{#1}}

\providecommand{\imprimircoorientadorTitulacao}{}
\newcommand{\coorientadorTitulacao}[1]{\renewcommand{\imprimircoorientadorTitulacao}{#1}}

\providecommand{\imprimirconvidadoUm}{}
\newcommand{\convidadoUm}[1]{\renewcommand{\imprimirconvidadoUm}{#1}}

\providecommand{\imprimirconvidadoUmDepartamento}{}
\newcommand{\convidadoUmDepartamento}[1]{\renewcommand{\imprimirconvidadoUmDepartamento}{#1}}

\providecommand{\imprimirconvidadoUmTitulacao}{}
\newcommand{\convidadoUmTitulacao}[1]{\renewcommand{\imprimirconvidadoUmTitulacao}{#1}}

\providecommand{\imprimirconvidadoDois}{}
\newcommand{\convidadoDois}[1]{\renewcommand{\imprimirconvidadoDois}{#1}}

\providecommand{\imprimirconvidadoDoisDepartamento}{}
\newcommand{\convidadoDoisDepartamento}[1]{\renewcommand{\imprimirconvidadoDoisDepartamento}{#1}}

\providecommand{\imprimirconvidadoDoisTitulacao}{}
\newcommand{\convidadoDoisTitulacao}[1]{\renewcommand{\imprimirconvidadoDoisTitulacao}{#1}}

\providecommand{\imprimirconvidadoTres}{}
\newcommand{\convidadoTres}[1]{\renewcommand{\imprimirconvidadoTres}{#1}}

\providecommand{\imprimirconvidadoTresDepartamento}{}
\newcommand{\convidadoTresDepartamento}[1]{\renewcommand{\imprimirconvidadoTresDepartamento}{#1}}

\providecommand{\imprimirconvidadoTresTitulacao}{}
\newcommand{\convidadoTresTitulacao}[1]{\renewcommand{\imprimirconvidadoTresTitulacao}{#1}}

% Define comando para o preâmbulo
\preambulo{Monografia apresentada ao curso de \imprimircurso{} do Instituto de Ci{\^e}ncias Exatas e Aplicadas, da Universidade Federal de Ouro Preto, como requisito parcial para aprova{\c c}{\~a}o na Disciplina ``Trabalho de Conclus{\~a}o de Curso II''.}
% ---


% ------------------------------------------------------------------------
% CAPA
% ------------------------------------------------------------------------
\renewcommand{\imprimircapa}{%
  \begin{capa}%

    \setlength{\unitlength}{1mm}
    \linethickness{3pt}

%    \begin{picture}(0,20)
%      {\color{gray}
%      \put(-8,2){\line(1,0){140}} % linha horizontal
%      }
%      \put(-2,8){\line(0,-1){65}} % linha vertical
%    \end{picture}

    %\begin{minipage}[c]{0.1\textwidth}
    \begin{minipage}[h]{0.1\textwidth}
        \includegraphics[width=\textwidth]{./img/UFOP.png}
    \end{minipage}%
    \begin{minipage}[h]{0.8\textwidth}
      \centering
      \begin{OnehalfSpace}
      {\ABNTEXchapterfont\Large\bfseries \imprimirinstituicao{}}

      {\ABNTEXchapterfont\Large\bfseries \imprimirinstituto{}}

      {\ABNTEXchapterfont\Large\bfseries \imprimirdepartamento{}}
      \end{OnehalfSpace}
    \end{minipage}

    \begin{minipage}[h]{0.8\textwidth}

      \vspace*{15mm}

      \begin{center}
      \begin{DoubleSpace}
      {\ABNTEXchapterfont\LARGE\bfseries\imprimirtitulo}
      \end{DoubleSpace}

      \vspace*{15mm}

      {\ABNTEXchapterfont\LARGE\bfseries\imprimirautor}
      \end{center}

      \vspace*{15mm}

      {
        \centering
        \begin{OnehalfSpace}
        \ABNTEXchapterfont\LARGE\bfseries TRABALHO DE
        \par
        CONCLUS{\~A}O DE CURSO
        \end{OnehalfSpace}
      }

      \vspace*{5mm}

      \hspace*{3cm}
      \begin{minipage}{\textwidth}
      \begin{OnehalfSpace}
        {\ABNTEXchapterfont\Large ORIENTA\c{C}\~{A}O:}
        \par
        {\ABNTEXchapterfont\Large \imprimirorientador}
        \\~\\ %\par
        \abntex@ifnotempty{\imprimircoorientador}{\ABNTEXchapterfont\Large COORIENTA\c{C}\~{A}O: \par \imprimircoorientador}
      \end{OnehalfSpace}
      \end{minipage}

      \vspace*{\fill}
      \vspace*{1cm}
      \vspace*{\fill}

%      \begin{minipage}{\textwidth}
%      \begin{OnehalfSpace}
%      	\begin{center}
%      	\end{center}
%      \end{OnehalfSpace}
%      \end{minipage}

    \end{minipage}

%    \vspace*{5mm}

%    \begin{picture}(0,0)
%      {\color{gray}
%      \put(140,0){\line(-1,0){150}} % linha horizontal
%      \put(130,-10){\line(0,1){85}} % linha vertical
%      }
%    \end{picture}

%    \vspace*{5mm}
%	\vspace*{1cm}
    \vspace*{\fill}
    \begin{center}
        {\ABNTEXchapterfont\bfseries\Large\imprimirMes, \imprimirano}
        \par
        {\ABNTEXchapterfont\bfseries\Large\imprimirlocal--MG}
    \end{center}

    \vspace*{\fill}

  \end{capa}
}

% ------------------------------------------------------------------------
% FOLHA DE ROSTO
% ------------------------------------------------------------------------
\makeatletter
\renewcommand{\folhaderostocontent}{
\begin{center}
  \vspace*{3cm}

  {\ABNTEXchapterfont\bfseries\Large\imprimirautor}

  \vspace*{\fill}
  \vspace*{\fill}

  {\ABNTEXchapterfont\bfseries\LARGE\imprimirtitulo}

  \vspace*{\fill}

  {\large\imprimirorientadorRotulo~\imprimirorientador\par}%
  \abntex@ifnotempty{\imprimircoorientador}{%
    {\large\imprimircoorientadorRotulo~\imprimircoorientador}%
  }%

  \vspace*{\fill}

  \abntex@ifnotempty{\imprimirpreambulo}{%
    \hspace{.3\textwidth}
    \begin{minipage}{.6\textwidth}
      \begin{SingleSpacing}
        \imprimirpreambulo{}%
      \end{SingleSpacing}
    \end{minipage}%
    \vspace*{\fill}
  }%

  \vspace*{\fill}

  {\ABNTEXchapterfont\bfseries\large Universidade Federal de Ouro Preto}
  \par
  {\ABNTEXchapterfont\bfseries\large\imprimirlocal}
  \par
  {\ABNTEXchapterfont\bfseries\large\imprimirMes{} de \imprimirano{}}

  \vspace*{1cm}
\end{center}
}


% ------------------------------------------------------------------------
% FOLHA DE APROVACAO
% ------------------------------------------------------------------------

% Conteúdo da folha de aprovação

\makeatletter
\newcommand{\folhadeaprovacaocontent}{
  \begin{center}

    {\ABNTEXchapterfont\bfseries\Large FOLHA DE APROVA\c{C}\~{A}O DA BANCA EXAMINADORA}

    \vspace*{\fill}

    {\ABNTEXchapterfont\bfseries\Large\imprimirtitulo}

    \vspace*{\fill}

    {\ABNTEXchapterfont\bfseries\large\imprimirautor}

    \vspace*{\fill}

    \makeatletter
    \abntex@ifnotempty{\imprimirpreambulo}{%
      \begin{minipage}{.9\textwidth}
        \begin{SingleSpacing}
          {\SingleSpacing\bfseries Monografia apresentada ao Instituto de Ci{\^e}ncias Exatas e Aplicadas da Universidade Federal de Ouro Preto como requisito parcial da disciplina CSI499 -- Trabalho de Conclus{\~a}o de Curso II do curso de Bacharelado em Sistemas de Informa{\c c}{\~a}o e aprovada pela Banca Examinadora abaixo assinada:}%
        \end{SingleSpacing}
      \end{minipage}%
    }%
    \makeatother

    \vspace*{\fill}

    \abntex@ifnotempty{\imprimirorientador}{%
      \assinatura{
        \imprimirorientador \linebreak
        \ABNTEXfontereduzida\imprimirorientadorTitulacao \linebreak
%       Orientador \linebreak
        \ABNTEXfontereduzida\imprimirorientadorDepartamento
      }
    }%

    \abntex@ifnotempty{\imprimircoorientador}{%
      \assinatura{
        \imprimircoorientador \linebreak
        \ABNTEXfontereduzida\imprimircoorientadorTitulacao \linebreak
%         Coorientador \linebreak
        \ABNTEXfontereduzida\imprimircoorientadorDepartamento
      }
    }%

    \abntex@ifnotempty{\imprimirconvidadoUm}{%
      \assinatura{
        \imprimirconvidadoUm \linebreak
        \ABNTEXfontereduzida\imprimirconvidadoUmTitulacao \linebreak
        Examinador \linebreak
        \ABNTEXfontereduzida\imprimirconvidadoUmDepartamento
      }
    }%

    \abntex@ifnotempty{\imprimirconvidadoDois}{%
      \assinatura{
        \imprimirconvidadoDois \linebreak
        \ABNTEXfontereduzida\imprimirconvidadoDoisTitulacao \linebreak
        Examinador \linebreak
        \ABNTEXfontereduzida\imprimirconvidadoDoisDepartamento
      }
    }%

    \abntex@ifnotempty{\imprimirconvidadoTres}{%
      \assinatura{
        \imprimirconvidadoTres \linebreak
        \ABNTEXfontereduzida\imprimirconvidadoTresTitulacao \linebreak
        Examinador \linebreak
        \ABNTEXfontereduzida\imprimirconvidadoTresDepartamento
      }
    }%

    \vspace*{\fill}

    {\ABNTEXchapterfont\imprimirlocal, \imprimirdatadedefesa}
    \vspace*{\fill}
  \end{center}
}
\makeatother

\makeatletter
\newcommand{\imprimirfolhadeaprovacaonostar}[0]{%
  \begin{folhadeaprovacao}
     \folhadeaprovacaocontent%
  \end{folhadeaprovacao}}
\newcommand{\imprimirfolhadeaprovacao}[1][\folhadeaprovacaoname]{%
 \imprimirfolhadeaprovacaonostar%
}
\makeatother

% ------------------------------------------------------------------------
% TERMO DE RESPONSABILIDADE
% ------------------------------------------------------------------------

% Conteúdo do Termo de Responsabilidade
\makeatletter
\newcommand{\termoDeResponsabilidadeContent}{
	\begin{center}

		{\ABNTEXchapterfont\bfseries\Large TERMO DE RESPONSABILIDADE}

		\vspace*{\fill}

		\makeatletter
			\begin{minipage}{.9\textwidth}
				\begin{SingleSpacing}
					{\SingleSpacing Eu, {\bfseries\imprimirautor} declaro que o texto do trabalho de conclusão de curso intitulado ``{\itshape\bfseries\imprimirtitulo}'' é de minha inteira responsabilidade e que não há utilização de texto, material fotográfico, código fonte de programa ou qualquer outro material pertencente a terceiros sem as devidas referências ou consentimento dos respectivos autores.}%
				\end{SingleSpacing}
			\end{minipage}%
		\makeatother

		\vspace*{\fill}

		{\ABNTEXchapterfont\imprimirlocal, \imprimirdatadedefesa}

		\vspace*{\fill}

		\abntex@ifnotempty{\imprimirautor}{%
			\assinatura{
				\imprimirautor \linebreak
			}
		}%

		\vspace*{\fill}
	\end{center}
}
\makeatother

% ---
% Termo de Compromisso
\newenvironment{termoderesponsabilidade}{%
	\clearpage%
	\thispagestyle{empty}
	\begin{SingleSpacing}
		%\ABNTEXfontereduzida
	}{%
	\end{SingleSpacing}\PRIVATEclearpageifneeded
}%
% ---

\makeatletter
\newcommand{\imprimirtermoderesponsabilidadeenv}[0]{%
	\begin{termoderesponsabilidade}
		\termoDeResponsabilidadeContent
	\end{termoderesponsabilidade}
}

\newcommand{\imprimirtermoderesponsabilidade}[1][\termoderesponsabilidadename]{%
		\imprimirtermoderesponsabilidadeenv%
}
\makeatother

% ------------------------------------------------------------------------
% Ata de Defesa
% ------------------------------------------------------------------------

% Conteúdo da Ata de Defesa
\makeatletter
\newcommand{\ataDeDefesaContent}{
	\begin{center}

		{\ABNTEXchapterfont\bfseries\Large ATA DE DEFESA}

		%\vspace*{\fill}

		\makeatletter
		\begin{minipage}{\textwidth}
			\begin{SingleSpacing}
				{\SingleSpacing\ABNTEXfontereduzida No dia \imprimirdia~do mês de \imprimirMes~de \imprimirano, às \imprimirhoradefesa~horas, na sala \imprimirlocaldefesa~do Instituto de Ciências Exatas e Aplicadas, foi realizada a defesa de Monografia pelo(a) aluno(a) {\bfseries\imprimirautor}, sendo a Comissão Examinadora constituída pelos professores: \imprimirorientador\abntex@ifnotempty{\imprimircoorientador}{, \imprimircoorientador}\abntex@ifnotempty{\imprimirconvidadoUm}{, \imprimirconvidadoUm}\abntex@ifnotempty{\imprimirconvidadoDois}{, \imprimirconvidadoDois}\abntex@ifnotempty{\imprimirconvidadoTres}{, \imprimirconvidadoTres}. O(a) candidato(a) apresentou a monografia intitulada: ``{\bfseries\imprimirtitulo}''. A comissão examinadora deliberou, por unanimidade, pela aprovação do candidato, com nota \rule{2cm}{.1mm} (\rule{6cm}{.1mm}), concedendo-lhe o prazo de 15 dias para incorporação das alterações sugeridas ao texto final. Na forma regulamentar, foi lavrada a presente ata que é assinada pelos membros da Comissão Examinadora e pelo(a) graduando(a).}%
			\end{SingleSpacing}
		\end{minipage}%
		\makeatother

   % \vspace*{\fill}

    \abntex@ifnotempty{\imprimirorientador}{%
      \assinatura{
        \imprimirorientador \linebreak
        \ABNTEXfontereduzida\imprimirorientadorTitulacao \linebreak
%       Orientador \linebreak
        \ABNTEXfontereduzida\imprimirorientadorDepartamento
      }
    }%

    \abntex@ifnotempty{\imprimircoorientador}{%
      \assinatura{
        \imprimircoorientador \linebreak
        \ABNTEXfontereduzida\imprimircoorientadorTitulacao \linebreak
%         Coorientador \linebreak
        \ABNTEXfontereduzida\imprimircoorientadorDepartamento
      }
    }%

    \abntex@ifnotempty{\imprimirconvidadoUm}{%
      \assinatura{
        \imprimirconvidadoUm \linebreak
        \ABNTEXfontereduzida\imprimirconvidadoUmTitulacao \linebreak
        Examinador(a) \linebreak
        \ABNTEXfontereduzida\imprimirconvidadoUmDepartamento
      }
    }%

    \abntex@ifnotempty{\imprimirconvidadoDois}{%
      \assinatura{
        \imprimirconvidadoDois \linebreak
        \ABNTEXfontereduzida\imprimirconvidadoDoisTitulacao \linebreak
        Examinador(a) \linebreak
        \ABNTEXfontereduzida\imprimirconvidadoDoisDepartamento
      }
    }%

    \abntex@ifnotempty{\imprimirconvidadoTres}{%
      \assinatura{
        \imprimirconvidadoTres \linebreak
        \ABNTEXfontereduzida\imprimirconvidadoTresTitulacao \linebreak
        Examinador(a) \linebreak
        \ABNTEXfontereduzida\imprimirconvidadoTresDepartamento
      }
    }%

		%\vspace*{\fill}

		\abntex@ifnotempty{\imprimirautor}{%
			\assinatura{
				\imprimirautor \linebreak
			}
		}%

		\vspace*{\fill}

		{\ABNTEXchapterfont\imprimirlocal, \imprimirdatadedefesa}

	\end{center}
}
\makeatother

% ---
% Ata de Defesa
\newenvironment{atadedefesa}{%
	\clearpage%
	\thispagestyle{empty}
	\begin{SingleSpacing}
		%\ABNTEXfontereduzida
	}{%
	\end{SingleSpacing}\PRIVATEclearpageifneeded
}%
% ---

\makeatletter
\newcommand{\imprimiratadedefesaenv}[0]{%
	\begin{atadedefesa}
		\ataDeDefesaContent
	\end{atadedefesa}
}

\newcommand{\imprimiratadedefesa}[1][\atadedefesaname]{%
	\imprimiratadedefesaenv%
}
\makeatother
