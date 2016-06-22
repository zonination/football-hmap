# Football Scores

## About

Inspired by [this post on Reddit](https://np.reddit.com/r/dataisbeautiful/comments/4p71fe/every_nfl_score_that_hashas_never_occurred_ocos/), I decided to make the following improvements:

* Invert colors (based on [this comment chain](https://np.reddit.com/r/dataisbeautiful/comments/4p71fe/every_nfl_score_that_hashas_never_occurred_ocos/d4iln7i))
* Convert from colored cells to heatmap.

## Graphic

![Football heatmap](https://raw.githubusercontent.com/zonination/football-hmap/master/football-hmap.png)

Last updated 2016-06-22

## Source:

[Pro Football Reference](http://www.pro-football-reference.com/boxscores/game_scores.cgi). Export using the `CSV` button to get the latest data.

## Tools Used:

* Rstudio
* ggplot2
