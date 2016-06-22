# Import data, set working directory, libraries
setwd("C:/Users/mcarozzo/Desktop/")
games<-read.csv("boxscores_game_scores.cgi_game_scores.csv", comment.char="#", stringsAsFactors=FALSE)
library(ggplot2)

# Conver to numeric values
games$PtsW<-as.numeric(games$PtsW)
games$PtsL<-as.numeric(games$PtsL)
games$Count<-as.numeric(games$Count)

# Output plot
# Recommended resolution: 1600x900 px
ggplot(games,aes(x=PtsW,y=PtsL))+
  geom_tile(aes(fill=Count),color="black")+
  ggtitle("")+
  ylab("Losing Score")+
  xlab("Winning Score")+
  scale_fill_distiller(palette="BuGn")+
  scale_y_continuous(limits=c(0,60),breaks=0:60)+
  scale_x_continuous(limits=c(0,80),breaks=0:80)+
  theme_bw()+
  theme(axis.text.x = element_text(angle = 90, hjust = 1,vjust=.5))+
  theme(panel.background=element_rect(fill="#000000", color="#F0F0F0"))+
  theme(panel.grid.major=element_line(color="#252525",size=.25))+
  theme(panel.grid.minor=element_blank())