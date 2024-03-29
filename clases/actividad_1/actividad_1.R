# Ej 2
# Se busca graficar la función f(p) = p(1 − p), p ∈ (0, 1). Usar la funci´on seq() para
# crear un vector p con n´umeros de 0 a 1, espaciados por un paso de 0,2. Luego usar la
# función plot() para graficar f(p) en funci´on del vector p generado. Repetir cambiando
# el espaciado de la grilla para p.

p <- seq(0, 1, by=0.1)
f<- p * (1-p)

plot(p, f, type='l', col='red')

# Ej 3
# Generar una grilla de valores entre -50 y 50 de longitud 100 y graficar, sobre un mismo
# gráfico, las funciones sen(x), cos(x) y cos(x^2). 
# Cambiar los nombres de los ejes y agregar título al gráfico.

g<- seq(-pi,pi,len=100)

plot(g, sin(g), type='l', col='red', xlab='Eje x', ylab='Eje y', main='sen(x), cos(x) y cos(x^2)')
lines(g, cos(g), col='blue')
lines(g, cos(g^2), col='darkgreen')


# Ej 4
autos<-read.table('autos.txt', header = TRUE)

# a)
tercera_fila<-autos[3,]

# b)
segunda_columna<-autos[,2]

# c)
calidad_del_mas_barat<- autos$calidad[autos$precio==min(autos$precio)]

# d)
print(sum(autos$precio[1:4]))

# e)
apply(autos,2,sum)

# f)
plot(autos$precio, autos$calidad, xlab='Precio', ylab='Calidad')

# g)
autos_ordenados_por_precio <- autos[order(autos$precio),]


# Ej 5
mtcars <- mtcars

# a)
rownames(mtcars[mtcars$gear == 4, ])

# b) 
rownames(mtcars[mtcars$gear==4 & mtcars$am==1, ])

# d)
mtcars$am <- as.factor(mtcars$am)


# Ej 6

x <- rnorm(1000, mean = 0)

hist(x)
boxplot(x)
qqnorm(x)
