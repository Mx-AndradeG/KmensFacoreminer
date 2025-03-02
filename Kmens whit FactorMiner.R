
?iris

# Cargando el dataframe de flores llamado "iris"

###RECOLECTANDO LOS DATOS
data("iris")

#Generando los clusters para el dataset iris(DATASET de la plataforma R), 
#tomando en cuenta la especie
#kmeans es la funci�n que realiza la clusterizaci�n, el segundo par�metro es el n�mero de 
#clusters, ese valor se puede modificar a 2,3, 4, etc.

modelo_kmeans <- kmeans(iris[, -5], 3, iter.max = 1000)#-5, indica que se descarte la variable 5

#Muestra a qu� cluster asign� cada individuo del 1 al 50
show(modelo_kmeans$cluster)

#Muestra la cantidad de elementos por cada cluster.
show(modelo_kmeans$size)

#Muestra los centros elegidos para cada variable y cada cluster.
show(modelo_kmeans$centers)

#
show(modelo_kmeans$withinss)
show(modelo_kmeans$betweenss)

# comparing iris Species with generated cluster points
#kmeans retorna una clase "kmeans"
iris[, 2]
modelo_kmeans$cluster
Comp <- table(iris[, 2], modelo_kmeans$cluster)

show(Comp)

 
plot(iris, modelo_kmeans$cluster)

#ggplot2(iris, kmeans$cluster)
#�Qu� pasa si modificarmos el n�mero de centroides k=2 � k=4 o m�s?

