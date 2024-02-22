#! /bin/sh

# This template generates a Latex presentation

FILE_PATH=$1
FILE_EXTENSION=".tex"

FILE_NAME=$(basename $FILE_PATH)
FOLDER_PATH=$(dirname $FILE_PATH)

# Create a folder that will contain all the files and the knitted pdf
if [ ! -d $FILE_PATH ]; then
	mkdir -p $FILE_PATH
fi

echo "\documentclass{beamer}
\usepackage{graphicx}
\graphicspath{ {../}}

\title{Write here the presentation title}
\author{Filippo}
\usetheme{Frankfurt}

\begin{document}

\maketitle

\section{Section title}

\begin{frame}
\frametitle{Insert frame title} \pause
\includegraphics[scale=0.7]{/Image/path}
\end{frame}

\begin{frame}
\frametitle{Frame title}
\begin{quotation}
  Write quotation
\end{quotation}
\end{frame}
\end{document})" >$FILE_PATH/$FILE_NAME$FILE_EXTENSION
