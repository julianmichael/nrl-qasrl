#!/bin/bash

python -m allennlp.service.server_simple \
  --archive-path data/qasrl_parser_elmo.tar.gz \
  --predictor qasrl_parser \
  --include-package nrl \
  --port 5000 \
  --field-name sentence