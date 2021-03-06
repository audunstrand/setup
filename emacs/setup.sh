#!/usr/bin/env bash

INSTALL_DIR=$HOME
DIR=`cd $(dirname $0); pwd -P`

. $DIR/../lib/functions.sh
mkdir -p $INSTALL_DIR/el
rm -f $INSTALL_DIR/el/init.el
cp $DIR/init.el $INSTALL_DIR/el/init.el
cat > $INSTALL_DIR/.emacs <<EOF
(defvar ts-emacs-dir "$INSTALL_DIR/el" "Directory with emacs setup")
(load-file (concat ts-emacs-dir "/init.el"))
EOF
github_clone_or_pull $INSTALL_DIR/el/github.com \
    https://github.com/magnars/dash.el.git \
    https://github.com/spotify/dockerfile-mode.git \
    https://github.com/dominikh/go-mode.el.git \
    https://github.com/mooz/js2-mode.git \
    https://github.com/gongo/json-reformat.git \
    https://github.com/Wilfred/logstash-conf.el.git \
    https://github.com/jrblevin/markdown-mode.git \
    https://github.com/puppetlabs/puppet-syntax-emacs.git \
    https://github.com/pashky/restclient.el.git \
    https://github.com/yoshiki/yaml-mode.git



    
