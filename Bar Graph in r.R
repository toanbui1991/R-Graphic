# a basic bar graph (geom_bar(stat = "destination)).
library(ggplot2)
library(gcookbook)
pg_mean
ggplot(pg_mean, aes(x = group, y = weight)) + geom_bar(stat = "identity")
# x as continuos and x as factor.
BOD
str(BOD)
ggplot(BOD, aes(x = Time, y = demand)) + geom_bar(stat = "identity")
ggplot(BOD, aes(x = factor(Time), y = demand)) + geom_bar(stat = "identity")
# change fill colour (fill) and outline (colour)
ggplot(pg_mean, aes(x = group, y = weight))+ geom_bar(stat = "identity", fill = "lightblue", colour = "black")
# Grouping bar together (fill and position = "dodge").
ggplot(cabbage_exp, aes(x=Date, y=Weight, fill=Cultivar)) +
  geom_bar(position="dodge")
# Change the colour templete (scale_fill_brewer(palette="Pastel1"))
ggplot(cabbage_exp, aes(x=Date, y=Weight, fill=Cultivar)) +
  geom_bar(stat = "identity", position="dodge", colour="black") +
  scale_fill_brewer(palette="Pastel1")
# Marking a graphing of count ( x only)
head(diamonds)
str(diamonds)
ggplot(diamonds, aes(x = cut)) + geom_bar()
# Using Colour in Bar Chart.
ggplot(upc, aes(x = Abb, y = Change, fill = Region)) +
  geom_bar(stat = "identity", position = "dodge")
# Using Colour in Bar Chart scale_fill_manual(values=c("#669933", "#FFCC66"))
# + reorder the column (reorder(Abb, Change))
ggplot(upc, aes(x=reorder(Abb, Change), y=Change, fill=Region)) +
  geom_bar(stat="identity", colour="black") +
  scale_fill_manual(values=c("#669933", "#FFCC66")) +
  xlab("State")
# Colouring Negative and Positive Bar differently.
#Solution: Create a new variable to lable positive and negative.
ggplot(csub, aes(x=Year, y=Anomaly10y, fill=pos)) +
  geom_bar(stat="identity", position="identity")
# Colouring Nagative and Positive
# + set size =  + colour theme (scale_fill_manual(values=c("#CCEEFF", "#FFDDDD")) +  guide=FALSE
ggplot(csub, aes(x=Year, y=Anomaly10y, fill=pos)) +
  geom_bar(stat="identity", position="identity", colour="black", size=0.25) +
  scale_fill_manual(values=c("#CCEEFF", "#FFDDDD"), guide=FALSE)
# Adjust the bar width and Spacing
#Solution: change the width 