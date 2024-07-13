#!/bin/bash

python -m molbart.predict \
  data_path=uspto_50_test.txt \
  vocabulary_path=bart_vocab_downstream.json \
  model_path=model_v2.ckpt \
  task=forward_prediction \
  output_sampled_smiles=predicted_products.csv \
  batch_size=64 \
  n_beams=10 \
  +device=cpu \
  data_device=cpu