#!/bin/bash
eval $(conda shell.bash hook)
source deactivate;
code --install-extension ms-python.vscode-pylance;
sed -i "s/\"--bind_all\", default=True,/\"--bind_all\",/g" /opt/conda/lib/python3.8/site-packages/tensorboard/plugins/core/core_plugin.py;
source activate ~/env/squad_nlp;
