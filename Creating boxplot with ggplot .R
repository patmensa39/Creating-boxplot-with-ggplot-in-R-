# Creating boxplot with ggplot in R programming
### make sure to install all the packages below. 
pacman::p_load(datasets, pacman, psych, rio, tidyverse)

### Using the iris dataset 
?iris
view(iris)
glimpse(iris)

### Base Graph 
### Viewing all graphs at ones 
iris %>% boxplot(main = "Box plot")

### Viewing one variable, all groups together 
iris %>% select(Petal.Length) %>% 
  boxplot(main = "Boxplot of Sepal.Length",
          horizontal = TRUE, notch = TRUE, col = "red")
iris %>% select(Petal.Length) %>% boxplot(main = "Boxplot of Sepal.Length", 
                                          horizontal = FALSE, notch = TRUE)

### One variable  all group together 
boxplot(Petal.Length~Species, data = iris, horizontal = TRUE)

###Using qplot 
### dotplot by group
qplot(Species, Petal.Length, data = iris)

### Dotplot, colored by group 
qplot(Species, Petal.Length, col = Species, data = iris)

### Dotplot, colored by group, jittered with boxplot
qplot(Species, Petal.Length, col = Species, data = iris,
      geom = c("boxplot", "jitter"))

### Dotplot, colored by group with boxplot
qplot(Species, Petal.Length, col = Species, data = iris,
      geom = c("boxplot"))

### Using ggplot 
iris %>% ggplot(mapping = aes(x= Species, y = Petal.Length, fill = Species)) +
  geom_boxplot() +
  coord_flip() + 
  xlab("") + 
  theme(legend.position = "none")
  




