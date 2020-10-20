#!/bin/bash

# undo scientific notation for coordinates
options(scipen = 999)

# Map = http://geojson.io/#map=22/42.05855/-87.86555
lng_left  = -87.86563519388437
lng_right = -87.8654819726944
lat_top   = 42.05861521902086
lat_bot   = 42.05848975864131

# calculated values
lng_calc = ( lng_left - lng_right ) / 3
lat_mid  = ( lat_top + lat_bot ) / 2
lng_1st  = lng_left - lng_calc
lng_2nd  = lng_1st - lng_calc

# coordinate data frame
sq1_bot_left  <- c(lng_left,  lat_mid)
sq1_bot_right <- c(lng_1st,   lat_mid)
sq1_top_right <- c(lng_1st,   lat_top)
sq1_top_left  <- c(lng_left,  lat_top)
sq2_bot_left  <- c(lng_1st,   lat_mid)
sq2_bot_right <- c(lng_2nd,   lat_mid)
sq2_top_right <- c(lng_2nd,   lat_top)
sq2_top_left  <- c(lng_1st,   lat_top)
sq3_bot_left  <- c(lng_2nd,   lat_mid)
sq3_bot_right <- c(lng_right, lat_mid)
sq3_top_right <- c(lng_right, lat_top)
sq3_top_left  <- c(lng_2nd,   lat_top)
sq4_bot_left  <- c(lng_left,  lat_bot)
sq4_bot_right <- c(lng_1st,   lat_bot)
sq4_top_right <- c(lng_1st,   lat_mid)
sq4_top_left  <- c(lng_left,  lat_mid)
sq5_bot_left  <- c(lng_1st,   lat_bot)
sq5_bot_right <- c(lng_2nd,   lat_bot)
sq5_top_right <- c(lng_2nd,   lat_mid)
sq5_top_left  <- c(lng_1st,   lat_mid)
sq6_bot_left  <- c(lng_2nd,   lat_bot)
sq6_bot_right <- c(lng_right, lat_bot)
sq6_top_right <- c(lng_right, lat_mid)
sq6_top_left  <- c(lng_2nd,   lat_mid)

coordDF <- data.frame(sq1_bot_left, sq1_bot_right, sq1_top_right, sq1_top_left, sq1_bot_left,
                      sq2_bot_left, sq2_bot_right, sq2_top_right, sq2_top_left, sq2_bot_left,
                      sq3_bot_left, sq3_bot_right, sq3_top_right, sq3_top_left, sq3_bot_left,
                      sq4_bot_left, sq4_bot_right, sq4_top_right, sq4_top_left, sq4_bot_left,
                      sq5_bot_left, sq5_bot_right, sq5_top_right, sq5_top_left, sq5_bot_left,
                      sq6_bot_left, sq6_bot_right, sq6_top_right, sq6_top_left, sq6_bot_left)
coordDF <- t(coordDF)
write.csv(coordDF, 'coordDF.csv')

