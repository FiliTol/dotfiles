#! /bin/sh

# This template generates a Latex template

TYPE=$1
FILE_NAME=$2
FILE_EXTENSION=".tex"

if [[ $TYPE == "article" ]]; then
	echo "\documentclass{article} 
\usepackage[utf8]{inputenc} % UTF-8 encoding 
\usepackage[T1]{fontenc} % Font encoding 
\usepackage[english]{babel} % English language 

% Your additional packages can be included here 

\title{Title of Your Article} 
\author{Filippo Tolin} 
\date{\today} % Use \date{} for no date or specify a date 

\begin{document} 
\maketitle 
\section{Introduction} 

% Your content goes here 

\end{document})" >$FILE_NAME$FILE_EXTENSION
fi
