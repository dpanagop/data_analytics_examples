### Preample ####
# Loading libraries
library(ggplot2)
library(cowplot)

# Setting random generator seed
set.seed(42)

### No Outlier ####
# First cluster - cluster 0
x1 = rnorm(20,0,0.5)
y1 = rnorm(20,0,0.5)

# Second cluster - cluster 1
x2 =rnorm(20,2,0.5)
y2 =rnorm(20,2,0.5)

# Dataset creation
d1=data.frame(x=x1,y=y1,c=rep(0,10))
d2=data.frame(x=x2,y=y2,c=rep(1,10))
d=rbind(d1,d2)

# k-means
d_clst=kmeans(d[,-3],2)

g1 = ggplot(d)+
  aes(x=x,y=y,color=c,shape=as.factor(d_clst$cluster))+geom_point()+
  theme(legend.position="none")+ scale_color_gradient(low="blue", high="red")
g1

### Outlier ####

# Data
out=data.frame(x=c(4),y=c(4),c=c(1))
d_out=rbind(d,out)
#k-means
d_out_clst=kmeans(d_out[,-3],2)
# Plot
g2 = ggplot(d_out)+
  aes(x=x,y=y,color=c,shape=as.factor(d_out_clst$cluster))+geom_point()+
  theme(legend.position="none")+ scale_color_gradient(low="blue", high="red")
g2

# Combining two graphs
plot_grid(g1,g2, labels=c("No outlier", "Outlier"), ncol = 2, nrow = 1)
