import pandas as pd
import joblib
from sklearn.linear_model import LogisticRegression

data = pd.read_csv("/Users/sanghamitramatta/Documents/Data_Science/portfolio/ml_deployement_project/data/diabetes.csv")
X = data.drop('Outcome', axis =1)
y = data['Outcome']
model = LogisticRegression(max_iter=1000)

model.fit(X, y)
joblib.dump(model, '/Users/sanghamitramatta/Documents/Data_Science/portfolio/ml_deployement_project/models/logreg_model.joblib')
