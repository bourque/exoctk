#!/bin/bash
echo "Creating conda environment for Python $PYTHON_VERSION"
conda env create -f "environment-${PYTHON_VERSION}.yml" || exit 1
export CONDA_ENV=exoctk-$PYTHON_VERSION
source activate $CONDA_ENV
echo "Activated $CONDA_ENV"
echo $PATH