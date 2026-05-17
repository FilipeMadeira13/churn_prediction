# Churn Prediction

Projeto de análise e modelagem para previsão de churn de clientes usando aprendizado de máquina em Python.

## Visão geral

Este repositório apresenta um fluxo completo para:
- carregar e limpar os dados de churn;
- codificar variáveis categóricas;
- treinar e avaliar modelos de classificação;
- aplicar validação cruzada e técnicas de balanceamento de classes;
- exportar modelos e pipelines para inferência.

## Estrutura do projeto

- `data/`
  - `churn.csv` - dados originais de churn
  - `clear_churn.csv` - dados limpos e pré-processados
- `models/`
  - `onehot_model.pkl` - codificador OneHotEncoder salvo
  - `tree_model.pkl` - modelo de árvore de decisão salvo
- `notebooks/`
  - `data_cleaning.ipynb` - limpeza e preparação de dados
  - `main.ipynb` - pipeline principal de modelagem e avaliação
  - `test_model.ipynb` - teste de inferência dos modelos salvos
- `requirements.txt` - dependências do projeto
- `setup_env.bat` - cria/usa ambiente virtual e instala dependências
- `run_notebooks.bat` - executa notebooks automaticamente
- `.gitignore` - arquivos e pastas ignorados pelo Git

## Tecnologias

O projeto utiliza:
- `pandas` para manipulação de dados
- `scikit-learn` para modelagem e avaliação
- `imbalanced-learn` para balanceamento de classes via SMOTE e NearMiss
- `matplotlib` para visualização de métricas
- `nbconvert` e `ipykernel` para execução de notebooks

## Como rodar

1. Abra o terminal no diretório do projeto:
   ```powershell
   cd C:\Projetos\churn_prediction
   ```
2. Execute o script de configuração:
   ```powershell
   setup_env.bat
   ```
3. Execute todos os notebooks:
   ```powershell
   run_notebooks.bat
   ```

Se preferir executar um notebook isolado:

```powershell
venv\Scripts\python.exe -m nbconvert --execute --ExecutePreprocessor.timeout=600 --inplace notebooks\main.ipynb
```

## Resultados e métricas

O notebook `main.ipynb` treina diferentes algoritmos comparando:
- Árvore de decisão
- KNN
- Random Forest

A avaliação foca em métricas como recall, matriz de confusão, curva ROC e precision-recall, além de validação cruzada estratificada.

## Notas de melhoria

- Modelos e pré-processadores são exportados para `models/` para facilitar produção ou testes de inferência.
- O notebook principal demonstra como balancear classes com oversampling e undersampling.

## Contato

Abra uma issue para sugestões ou contribuições.
