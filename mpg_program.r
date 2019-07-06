
#color
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy,color = class))

#size
ggplot(data = mpg) + geom_point( aes(x = displ, y = hwy,size = class))

#alpha
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy,alpha = class))

#shape
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy,shape = class))
#SUV not allocated shapes because ggplot2 uses only six shapes.

# The name of a color as a character string.

# The size of a point in mm.
 
# The shape of a point as a number, as shown in Figure.

#won't show blue
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, color = "blue"))


#facet wrap
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy)) + facet_wrap(~ class, nrow = 2)

#facet grid
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy)) + facet_grid(drv ~ cyl)

#simple geom smooth
ggplot(data = mpg) + geom_smooth(mapping = aes(x = displ, y = hwy))

#geom_smooth
ggplot(data = mpg) + geom_smooth(mapping = aes(x = displ, y = hwy,color = class)) + geom_point(mapping = aes(x = displ, y = hwy,color = class))

# different lines in geom smooth
ggplot(data = mpg) + geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv))

#jitter
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy))
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy), position = "jitter")
