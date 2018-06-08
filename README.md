# Transport model

This example was adapted from 

Dantzig, G B. In Linear Programming and Extensions.
Princeton University Press, Princeton, New Jersey, 1963.

Rosenthal, R E. A User's Guide. The Scientific Press, 
Redwood City, California, 1988.

# Running the model 

The model depends on [GAMS](https://www.gams.com/). 

Run version v1.0 - Data and model in the same file.

	gams main.gms gdx=output

Run version v2.0 - Split data and model.

	gams main.gms gdx=output

Run version v3.0 - Generalized model to input CSV files. A small dataset for testing is available in the data folder.

	gams main.gms gdx=output

