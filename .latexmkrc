$pdflatex = 'lualatex --file-line-error --synctex=1 --shell-escape --interaction=nonstopmode %O %S';
$out_dir = 'build';

$ENV{'TEXMFVAR'} = './texmf-var';
$ENV{'openout_any'} = 'a';

END {
  if ( -e "build/$root_filename.pdf" ) {
    system("mv build/$root_filename.pdf .");
  }
}
