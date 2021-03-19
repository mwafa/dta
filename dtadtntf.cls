\LoadClass[12pt]{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dtadtntf}[2021/3/18 v1.0 Unofficial The Department of Nuclear Engineering and Engineering Physics UGM Skripsi Description Class]

\RequirePackage[bahasa]{babel}
\RequirePackage{indentfirst}

\RequirePackage{setspace}
\RequirePackage[T1]{fontenc}
\RequirePackage{times}
\RequirePackage{graphicx,latexsym}
\RequirePackage{supertabular}

\usepackage{rotating}
\usepackage{mdframed}
\usepackage{titlesec}
\usepackage{graphicx}
\usepackage{float}
\usepackage{hyperref}

%------------------------------------------------------------
%Layout
%------------------------------------------------------------
\setlength{\topmargin}{-3cm}
\setlength{\headheight}{12pt}
\setlength{\headsep}{2.3cm}
\setlength{\topskip}{1ex}
\setlength{\oddsidemargin}{0.46cm}
\setlength{\evensidemargin}{0.46cm}
\setlength{\textwidth}{16.3cm}
\setlength{\textheight}{22cm}
\setlength{\footskip}{1.5cm}
\setlength{\marginparsep}{0pt}
\setlength{\marginparwidth}{0pt}
\setlength{\parindent}{3em} %Indent approx 6 character

\titleformat*{\section}{\normalsize\bfseries}{}{}
\renewcommand{\thesection}{\alph{section}.}

%------------------------------------------------------------
%Redefine caption names
%------------------------------------------------------------
\def\captionsbahasa{%
\def\prefacename{KATA PENGANTAR}%
\def\contentsname{DAFTAR ISI}%
\def\listfigurename{DAFTAR GAMBAR}%
\def\listtablename{DAFTAR TABEL}%
\def\listappendixname{DAFTAR LAMPIRAN}%
\def\nomenclaturename{DAFTAR LAMBANG DAN SINGKATAN}%
\def\intisariname{INTISARI}%
\def\abstractname{ABSTRACT}
\def\partname{BAGIAN}%
\def\chaptername{BAB}%
\def\appendixname{LAMPIRAN}%
\def\refname{DAFTAR PUSTAKA}%
\def\bibname{DAFTAR PUSTAKA}%
\def\indexname{Indeks}%
\def\figurename{Gambar}%
\def\tablename{Tabel}%
\def\pagename{Halaman}%
\def\mottoname{HALAMAN MOTTO}
\def\approvalname{HALAMAN PENGESAHAN}
\def\persembahanname{HALAMAN PERSEMBAHAN}
\def\judulname{HALAMAN JUDUL}
\def\plagiarismname{PERNYATAAN BEBAS PLAGIASI}
\def\halamantugasname{HALAMAN TUGAS}
}
% variable
\newcommand{\nama}[1]{\gdef\@nama{#1}}
\newcommand{\@nama}{}

\newcommand{\NIM}[1]{\gdef\@NIM{#1}}
\newcommand{\@NIM}{}

\newcommand{\judul}[1]{\gdef\@judul{#1}}
\newcommand{\@judul}{}

\newcommand{\waktu}[1]{\gdef\@waktu{#1}}
\newcommand{\@waktu}{}

\newcommand{\tanggal}[1]{\gdef\@tanggal{#1}}
\newcommand{\@tanggal}{}

\newcommand{\pembimbing}[1]{\gdef\@pembimbing{#1}}
\newcommand{\@pembimbing}{}
\newcommand{\NIPpembimbing}[1]{\gdef\@NIPpembimbing{#1}}
\newcommand{\@NIPpembimbing}{}

\newcommand{\pendamping}[1]{\gdef\@pendamping{#1}}
\newcommand{\@pendamping}{}
\newcommand{\NIPpendamping}[1]{\gdef\@NIPpendamping{#1}}
\newcommand{\@NIPpendamping}{}

\newcommand{\prodi}[1]{\gdef\@prodi{#1}}
\newcommand{\@prodi}{}
\newcommand{\kaprodi}[1]{\gdef\@kaprodi{#1}}
\newcommand{\@kaprodi}{}
\newcommand{\NIPkaprodi}[1]{\gdef\@NIPkaprodi{#1}}
\newcommand{\@NIPkaprodi}{}


\newmdenv[
  topline=false,
  bottomline=true,
  skipabove=0,
  skipbelow=\topsep
]{deskripsi}

% Nama Instansi
\def
\header{
  \thispagestyle{empty}
  \begin{center}
    \textbf{KEMENTERIAN RISET, TEKNOLOGI DAN PENDIDIKAN TINGGI}

    \textbf{UNIVERSITAS GADJAH MADA}
    
    \textbf{FAKULTAS TEKNIK} 
    
    \textbf{DEPARTEMEN TEKNIK NUKLIR DAN TEKNIK FISIKA}

    \vspace{0.5cm}
    \hrule
    \vspace{0.5cm}

    \Large\textbf{DOKUMEN}

    \textbf{DESKRIPSI TUGAS AKHIR}
    
    \normalsize
    \vspace{0.5cm}

  \end{center}
  \begin{tabular}{|lp{2pt}p{285.8pt}|}
    \hline
    Nama &:&\@nama \\
    \hline
    No. Mahasiswa &:&\@NIM \\
    \hline
    Judul Penelitian Tugas Akhir &:&\@judul \\
    \hline
    Pembimbing I &:&\@pembimbing \\
    \hline
    Pembimbing II &:&\@pendamping \\
    \hline
    Jangka Waktu Penelitian &:&\@waktu \\
    \hline
    Deskripsi Penelitian && \\
    \hline
  \end{tabular}
}

\def\footer{
  \thispagestyle{empty}
  \begin{tabular}{p{8cm}l}
    & Yogyakarta, \@tanggal \\
    & \@nama \vspace{1cm} \\
  \end{tabular}
  \newline
  \begin{tabular}{p{9cm}l}
    Menyetujui & \\
    Pembimbing I & Pembimbing II \vspace{2cm} \\
    \underline{\@pembimbing} & \underline{\@pendamping} \\
    NIP. \@NIPpembimbing & NIP. \@NIPpendamping \vspace{.5cm}\\
    \multicolumn{2}{c}{Mengetahui}\\
    \multicolumn{2}{c}{
      Ketua Program Studi \@prodi \vspace{2cm}
    } \\
    \multicolumn{2}{c}{
      \underline{\@kaprodi}
    } \\
    \multicolumn{2}{c}{
      NIP. \@NIPkaprodi
    }
  \end{tabular}

}