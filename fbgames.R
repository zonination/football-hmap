# Import data, set working directory, libraries
# setwd("~/Dropbox/R/Football")
games<-read.csv("games.csv", stringsAsFactors=FALSE)
library(ggplot2)
library(viridis)

# Output plot
ggplot(games,aes(x=PtsW,y=PtsL))+
  geom_tile(aes(fill=Count),color="black")+
  scale_fill_viridis(option="viridis")+ # Alternate `option="plasma"`
#  scale_fill_distiller(palette="BuGn")+ # Uncomment to change palette to ColorBrewer
  scale_y_continuous(limits=c(-1,60),breaks=0:60)+
  scale_x_continuous(limits=c(-1,80),breaks=0:80)+
  labs(title="Game Scores in Pro Football History",
       subtitle="Using the results of 15,741 American Football Games", # Change this if you update the data
       y="Winning Score",
       x="Losing Score",
       caption="created by /u/zonination")+
  coord_fixed()+
  theme_bw()+
  theme(axis.text.x = element_text(angle = 90, hjust = 1,vjust=.5))+
  theme(panel.background=element_rect(fill="#000000", color="#F0F0F0"))+
  theme(panel.grid.major=element_line(color="#252525",size=.25))+
  theme(panel.grid.minor=element_blank())
ggsave("football-hmap.png", height=9, width=12, dpi=120, type="cairo-png")