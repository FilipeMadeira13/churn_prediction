# Churn Prediction

Este projeto implementa um fluxo de análise e modelagem para previsão de churn de clientes. O objetivo é preparar os dados, treinar modelos de classificação e validar o desempenho usando notebooks claros e reproduzíveis.

## Estrutura do projeto

- `data/`
  - `churn.csv` - conjunto de dados original de churn
  - `clear_churn.csv` - versão limpa e pré-processada dos dados
- `models/`
  - `modelo_arvore.pkl` - modelo de árvore de decisão salvo
  - `modelo_onehot.pkl` - modelo com codificação one-hot salvo
- `notebooks/`
  - `main.ipynb` - notebook principal de análise, modelagem e avaliação
  - `data_cleasing.ipynb` - notebook de limpeza e exploração de dados
  - `test_model.ipynb` - notebook de testes e validação de modelo
- `requirements.txt` - lista de dependências Python do projeto
- `setup_env.bat` - script de instalação de dependências no Windows
- `run_notebooks.bat` - script para executar todos os notebooks automaticamente
- `.gitignore` - arquivos e pastas ignorados pelo Git

## Requisitos

- Windows
- Python 3.11
- `py` launcher instalado

## Instalação

1. Abra o terminal no diretório do projeto:
   ```powershell
   cd C:\Projetos\churn_prediction
   ```
2. Execute o script de configuração:
   ```powershell
   setup_env.bat
   ```

Isso instalará as dependências listadas em `requirements.txt` e também `nbconvert` e `ipykernel` necessários para executar os notebooks.

## Execução

### Executar os notebooks

Após instalar as dependências, rode:

```powershell
run_notebooks.bat
```

Isso executará os notebooks em ordem e atualizará os arquivos em `notebooks/` com as saídas geradas.

### Executar individualmente

Se preferir executar um notebook isolado, use:

```powershell
py -3.11 -m nbconvert --execute --ExecutePreprocessor.timeout=600 --inplace notebooks\main.ipynb
```

## Notebooks principais

- `data_cleasing.ipynb`: análise exploratória e transformação dos dados brutos.
- `main.ipynb`: workflow principal de carregamento de dados, pré-processamento, treinamento de modelo e avaliação.
- `test_model.ipynb`: testes de validação e verificação da inferência do modelo.

## Dependências

As principais bibliotecas utilizadas são:

- `pandas`
- `scikit-learn`
- `scipy`
- `matplotlib`
- `plotly`
- `nbformat`
- `nbconvert`
- `ipykernel`

## Observações

- O projeto foi validado com Python 3.11.
- O arquivo `requirements.txt` foi ajustado para compatibilidade entre `numpy`, `pandas`, `scikit-learn` e `scipy`.
- O `.gitignore` está configurado para ignorar ambientes virtuais, caches de Python e arquivos temporários.

## Contato

Para dúvidas ou melhorias, abra uma issue ou contribua com o código do projeto.
