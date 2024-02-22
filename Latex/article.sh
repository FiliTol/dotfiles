#! /bin/sh

# This template generates a Latex article

TYPE=$1
FILE_PATH=$2
FILE_EXTENSION=".tex"

FILE_NAME=$(basename $FILE_PATH)
FOLDER_PATH=$(dirname $FILE_PATH)

# Create a folder that will contain all the files and the knitted pdf
if [ ! -d $FILE_PATH ]; then
	mkdir -p $FILE_PATH
fi

if [[ $TYPE == "article" ]]; then
	echo "\documentclass{article} 
\usepackage[utf8]{inputenc} % UTF-8 encoding 
\usepackage[T1]{fontenc} % Font encoding 
\usepackage[english]{babel} % English language 

% Your additional packages can be included here 

\title{Insert artile title here}
\author{Filippo Tolin} 
\date{\today} % Use \date{} for no date or specify a date 

\begin{document} 
\maketitle 
\section{Introduction} 

% Your content goes here 

\end{document})" >$FILE_PATH/$FILE_NAME$FILE_EXTENSION
fi
