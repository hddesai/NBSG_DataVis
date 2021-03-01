import pandas as pd
from matplotlib import pyplot as plt
import seaborn as sns
df = pd.read_excel (r'X:\Users\hiral.desai\OneDrive - Association of Public Health Laboratories\Desktop\cah_analysis\Timeliness\interval_collection.xlsx')
df.head(1)
print (df)
box = sns.boxplot(x="birth_year", y="initial_specimen_collection",data=df, palette = "Set2")
box.set(xlabel="Year", ylabel="Specimen Collection Time")
plt.ylim(0,90)
plt.show()
