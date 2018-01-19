
library(dplyr)
library(ggplot2)

trip_length_act <- 
  read.table("data/McCormickEtAl2013_TripLengths.txt", header = T) %>%
  rename(day = DCEID, 
         angler_id = AID, 
         start = Start, 
         end = End, 
         length = TripLength)


trip_length_act %>%
ggplot(aes(x = length)) +
  geom_histogram()

