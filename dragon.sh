#!/bin/bash

echo "🔥🐉 Setting up the QuantDragon 🐲 environment... 🔥🐉"

echo "🐉 Creating and activating virtual environment... 🔥"
# Create virtual environment
python3 -m venv ~/quantdragon-env
source ~/quantdragon-env/bin/activate


echo "🔥 Installing essential quant libraries... 🐉"
# Install required libraries
pip install --upgrade pip
pip install numpy pandas scipy matplotlib seaborn plotly
pip install yfinance pandas-datareader alpha_vantage
pip install statsmodels scikit-learn quantlib riskfolio-lib
pip install cvxpy scipy pyportfolioopt
pip install ipykernel jupyter_contrib_nbextensions

# Register kernel in Jupyter
python -m ipykernel install --user --name=quantdragon-env --display-name "🐉 Python (quantdragon-env) 🔥"

echo "🐉 Jupyter kernel registered! 🔥"

# Enable Jupyter extensions
jupyter contrib nbextension install --user
jupyter nbextension enable varInspector/main

echo "🔥 Jupyter extensions enabled! 🐉"

echo "🔥🐉 QuantDragon environment setup complete! 🐉🔥"
echo "🐲🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥🐲"
