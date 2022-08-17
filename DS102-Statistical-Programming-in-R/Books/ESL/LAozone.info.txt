These data record the level of atmospheric ozone concentration from
eight daily meteorological measurements made in the Los Angeles basin
in 1976.  Although measurements were made every day that year, some
observations were missing; here we have the 330 complete cases.  The
data were given to us by Leo Breiman; he was a consultant on a project
from which these data are taken.  The response, referred to as ozone,
is actually the log of the daily maximum of the hourly-average ozone
concentrations in Upland, California.

To read into R:
LAozone = read.table("http://www-stat.stanford.edu/~tibs/ElemStatLearn/datasets/LAozone.data",sep=",",head=T)

Detailed variable names:

ozone : Upland Maximum Ozone
vh : Vandenberg 500 mb Height
wind : Wind Speed (mph)
humidity : Humidity (%)
temp : Sandburg AFB Temperature
ibh : Inversion Base Height
dpg : Daggot Pressure Gradient
ibt : Inversion Base Temperature
vis : Visibility (miles)
doy : Day of the Year
