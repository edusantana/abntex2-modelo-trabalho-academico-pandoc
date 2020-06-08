#!/usr/bin/env sh

if command -v tlmgr > /dev/null; then
  tex_em_cache=1
  echo TinyTeX não será instalado pois foi encontrado no cache.
fi

if [ $tex_em_cache -eq 1 ]; then
  : #echo TinyTeX não será instalado.
else
    wget -qO- "https://yihui.name/gh/tinytex/tools/install-unx.sh" | sh
    tlmgr install abntex2 \
      babel-portuges \
      enumitem \
      ifetex \
      lastpage \
      lipsum \
      listings \
      memoir \
      microtype \
      pdfpages \
      textcase \
      xcolor
      tlmgr option -- autobackup 0
fi