    housing <- read.csv("Rgraphics/dataSets/landdata-states.csv")
    head(housing[1:5])

    ##   State region    Date Home.Value Structure.Cost
    ## 1    AK   West 2010.25     224952         160599
    ## 2    AK   West 2010.50     225511         160252
    ## 3    AK   West 2009.75     225820         163791
    ## 4    AK   West 2010.00     224994         161787
    ## 5    AK   West 2008.00     234590         155400
    ## 6    AK   West 2008.25     233714         157458

    hist(housing$Home.Value)

    library(ggplot2)

![](lab_hw_8_files/figure-markdown_strict/unnamed-chunk-1-1.png)

    ggplot(housing, aes(x = Home.Value)) + geom_histogram()

    ## `stat_bin()` using `bins = 30`. Pick better value with `binwidth`.

![](lab_hw_8_files/figure-markdown_strict/unnamed-chunk-1-2.png)

    plot(Home.Value ~ Date,
         data=subset(housing, State == "MA"))
    points(Home.Value ~ Date, col="red",
           data=subset(housing, State == "TX"))
    legend(1975, 400000,
           c("MA", "TX"), title="State",
           col=c("black", "red"),
           pch=c(1, 1))

![](lab_hw_8_files/figure-markdown_strict/unnamed-chunk-1-3.png)

    ggplot(subset(housing, State %in% c("MA", "TX")),
           aes(x=Date,
               y=Home.Value,
               color=State))+
    geom_point()

![](lab_hw_8_files/figure-markdown_strict/unnamed-chunk-1-4.png)

    help.search("geom_", package = "ggplot2")

    hp2001Q1 <- subset(housing, Date == 2001.25) 
    ggplot(hp2001Q1,
           aes(y = Structure.Cost, x = Land.Value)) +
      geom_point()

![](lab_hw_8_files/figure-markdown_strict/unnamed-chunk-2-1.png)

    ggplot(hp2001Q1,
           aes(y = Structure.Cost, x = log(Land.Value))) +
      geom_point()

![](lab_hw_8_files/figure-markdown_strict/unnamed-chunk-2-2.png)

    hp2001Q1$pred.SC <- predict(lm(Structure.Cost ~ log(Land.Value), data = hp2001Q1))
    p1 <- ggplot(hp2001Q1, aes(x = log(Land.Value), y = Structure.Cost))
    p1 + geom_point(aes(color = Home.Value)) +
      geom_line(aes(y = pred.SC))

![](lab_hw_8_files/figure-markdown_strict/unnamed-chunk-2-3.png)

    p1 +
      geom_point(aes(color = Home.Value)) +
      geom_smooth()

    ## `geom_smooth()` using method = 'loess'

![](lab_hw_8_files/figure-markdown_strict/unnamed-chunk-2-4.png)

    p1 + 
      geom_text(aes(label=State), size = 3)

![](lab_hw_8_files/figure-markdown_strict/unnamed-chunk-2-5.png)

    library("ggrepel")
    p1 + 
      geom_point() + 
      geom_text_repel(aes(label=State), size = 3)

![](lab_hw_8_files/figure-markdown_strict/unnamed-chunk-2-6.png)

    p1 +
      geom_point(aes(size = 2),# incorrect! 2 is not a variable
                 color="red") 

![](lab_hw_8_files/figure-markdown_strict/unnamed-chunk-2-7.png)

    p1 +
      geom_point(aes(color=Home.Value, shape = region))

    ## Warning: Removed 1 rows containing missing values (geom_point).

![](lab_hw_8_files/figure-markdown_strict/unnamed-chunk-2-8.png)

    library(ggplot2)
    #Exercise 1
    dat <- read.csv("Rgraphics/dataSets/EconomistData.csv")
    head(dat)

    ##   X     Country HDI.Rank   HDI CPI            Region
    ## 1 1 Afghanistan      172 0.398 1.5      Asia Pacific
    ## 2 2     Albania       70 0.739 3.1 East EU Cemt Asia
    ## 3 3     Algeria       96 0.698 2.9              MENA
    ## 4 4      Angola      148 0.486 2.0               SSA
    ## 5 5   Argentina       45 0.797 3.0          Americas
    ## 6 6     Armenia       86 0.716 2.6 East EU Cemt Asia

    p1 <- ggplot(dat, aes(x = CPI, y = HDI)) + geom_point() 
    p1 #1. Create a scatter plot with CPI on the x axis and HDI on the y axis.

![](lab_hw_8_files/figure-markdown_strict/unnamed-chunk-3-1.png)

    p1 + geom_point(color="blue") #2. Color the points blue.

![](lab_hw_8_files/figure-markdown_strict/unnamed-chunk-3-2.png)

    p1 + geom_point(aes(color = Region)) #3. Map the color of the the points to Region.

![](lab_hw_8_files/figure-markdown_strict/unnamed-chunk-3-3.png)

    p1 + geom_point(aes(color = Region), size =2) #4. Make the points bigger by setting size to 2

![](lab_hw_8_files/figure-markdown_strict/unnamed-chunk-3-4.png)

    ggplot(dat, aes(x = CPI, y = HDI, size = HDI.Rank)) + geom_point(aes(shape = Region), color = "blue") #5. Map the size of the points to HDI.Rank

![](lab_hw_8_files/figure-markdown_strict/unnamed-chunk-3-5.png)

    #Statistical Transformations
    args(geom_histogram)

    ## function (mapping = NULL, data = NULL, stat = "bin", position = "stack", 
    ##     ..., binwidth = NULL, bins = NULL, na.rm = FALSE, show.legend = NA, 
    ##     inherit.aes = TRUE) 
    ## NULL

    args(stat_bin)

    ## function (mapping = NULL, data = NULL, geom = "bar", position = "stack", 
    ##     ..., binwidth = NULL, bins = NULL, center = NULL, boundary = NULL, 
    ##     breaks = NULL, closed = c("right", "left"), pad = FALSE, 
    ##     na.rm = FALSE, show.legend = NA, inherit.aes = TRUE) 
    ## NULL

    p2 <- ggplot(housing, aes(x = Home.Value))
    p2 + geom_histogram()

    ## `stat_bin()` using `bins = 30`. Pick better value with `binwidth`.

![](lab_hw_8_files/figure-markdown_strict/unnamed-chunk-4-1.png)

    p2 + geom_histogram(stat = "bin", binwidth=4000)

![](lab_hw_8_files/figure-markdown_strict/unnamed-chunk-4-2.png)

    housing.sum <- aggregate(housing["Home.Value"], housing["State"], FUN=mean)
    rbind(head(housing.sum), tail(housing.sum))

    ##    State Home.Value
    ## 1     AK  147385.14
    ## 2     AL   92545.22
    ## 3     AR   82076.84
    ## 4     AZ  140755.59
    ## 5     CA  282808.08
    ## 6     CO  158175.99
    ## 46    VA  155391.44
    ## 47    VT  132394.60
    ## 48    WA  178522.58
    ## 49    WI  108359.45
    ## 50    WV   77161.71
    ## 51    WY  122897.25

    ggplot(housing.sum, aes(x=State, y=Home.Value)) + 
      geom_bar(stat="identity")

![](lab_hw_8_files/figure-markdown_strict/unnamed-chunk-4-3.png)

    #Exercise 2
    p1 <- ggplot(dat, aes(x = CPI, y = HDI)) + geom_point() # 1. Re-create a scatter plot with CPI on the x axis and HDI on the y axis (as you did in the previous exercise).
    p1 + geom_smooth() #2. Overlay a smoothing line on top of the scatter plot using geom_smooth.

    ## `geom_smooth()` using method = 'loess'

![](lab_hw_8_files/figure-markdown_strict/unnamed-chunk-4-4.png)

    p1 + geom_smooth(method = "lm") #3. Overlay a smoothing line on top of the scatter plot using geom_smooth, but use a linear model for the predictions. 

![](lab_hw_8_files/figure-markdown_strict/unnamed-chunk-4-5.png)

    p1 + geom_line(stat = "smooth", method = "loess") #4. Overlay a smoothing line on top of the scatter plot using geom_line. Hint: change the statistical transformation.

![](lab_hw_8_files/figure-markdown_strict/unnamed-chunk-4-6.png)

    p1 + geom_smooth(span = 0.2) #5. BONUS: Overlay a smoothing line on top of the scatter plot using the default loess method, but make it less smooth. 

    ## `geom_smooth()` using method = 'loess'

![](lab_hw_8_files/figure-markdown_strict/unnamed-chunk-4-7.png)

    #Scales

    p3 <- ggplot(housing,
                 aes(x = State,
                     y = Home.Price.Index)) + 
            theme(legend.position="top",
                  axis.text=element_text(size = 6))
    (p4 <- p3 + geom_point(aes(color = Date),
                           alpha = 0.5,
                           size = 1.5,
                           position = position_jitter(width = 0.25, height = 0)))

![](lab_hw_8_files/figure-markdown_strict/unnamed-chunk-5-1.png)

    p4 + scale_x_discrete(name="State Abbreviation") +
      scale_color_continuous(name="",
                             breaks = c(1976, 1994, 2013),
                             labels = c("'76", "'94", "'13"))

![](lab_hw_8_files/figure-markdown_strict/unnamed-chunk-5-2.png)

    p4 +
      scale_x_discrete(name="State Abbreviation") +
      scale_color_continuous(name="",
                             breaks = c(1976, 1994, 2013),
                             labels = c("'76", "'94", "'13"),
                             low = "blue", high = "red")

![](lab_hw_8_files/figure-markdown_strict/unnamed-chunk-5-3.png)

    p4 +
      scale_color_continuous(name="",
                             breaks = c(1976, 1994, 2013),
                             labels = c("'76", "'94", "'13"),
                             low = ("blue"), high = ("red"))

![](lab_hw_8_files/figure-markdown_strict/unnamed-chunk-5-4.png)

    p4 +
      scale_color_gradient2(name="",
                            breaks = c(1976, 1994, 2013),
                            labels = c("'76", "'94", "'13"),
                            low = "blue",
                            high = "red",
                            mid = "gray60",
                            midpoint = 1994)

![](lab_hw_8_files/figure-markdown_strict/unnamed-chunk-5-5.png)

    #Exercise 3
    p1 <- ggplot(dat, aes(x = CPI, y = HDI)) + geom_point(aes(color = Region))
    p1 #1. Create a scatter plot with CPI on the x axis and HDI on the y axis. Color the points to indicate region.

![](lab_hw_8_files/figure-markdown_strict/unnamed-chunk-5-6.png)

    p1 + scale_x_continuous(name = "Corruption Perception Index") + scale_y_continuous(name = "Human Development Index") #2. Modify the x, y, and color scales so that they have more easily-understood names (e.g., spell out "Human development Index" instead of "HDI").

![](lab_hw_8_files/figure-markdown_strict/unnamed-chunk-5-7.png)

    ggplot(dat, aes(x=CPI, y=HDI, color="Region")) + geom_point() + scale_x_continuous(name = "Corruption Perception Index") + scale_y_continuous(name = "Human Development Index") + scale_colour_manual(values = c("blue")) #3. Modify the color scale to use specific values of your choosing.

![](lab_hw_8_files/figure-markdown_strict/unnamed-chunk-5-8.png)

    p5 <- ggplot(housing, aes(x = Date, y = Home.Value))
    p5 + geom_line(aes(color = State))

![](lab_hw_8_files/figure-markdown_strict/unnamed-chunk-6-1.png)

    (p5 <- p5 + geom_line() +
       facet_wrap(~State, ncol = 10))

![](lab_hw_8_files/figure-markdown_strict/unnamed-chunk-6-2.png)

    p5 + theme_linedraw()

![](lab_hw_8_files/figure-markdown_strict/unnamed-chunk-6-3.png)

    p5 + theme_light()

![](lab_hw_8_files/figure-markdown_strict/unnamed-chunk-6-4.png)

    p5 + theme_minimal() +
      theme(text = element_text(color = "turquoise"))

![](lab_hw_8_files/figure-markdown_strict/unnamed-chunk-6-5.png)

    theme_new <- theme_bw() +
      theme(plot.background = element_rect(size = 1, color = "blue", fill = "black"),
            text=element_text(size = 12, family = "Serif", color = "ivory"),
            axis.text.y = element_text(colour = "purple"),
            axis.text.x = element_text(colour = "red"),
            panel.background = element_rect(fill = "pink"),
            strip.background = element_rect(fill = "orange"))

    p5 + theme_new

![](lab_hw_8_files/figure-markdown_strict/unnamed-chunk-6-6.png)

    library(tidyr)
    housing.byyear <- aggregate(cbind(Home.Value, Land.Value) ~ Date, data = housing, mean)
    ggplot(housing.byyear,
           aes(x=Date)) +
      geom_line(aes(y=Home.Value), color="red") +
      geom_line(aes(y=Land.Value), color="blue")

![](lab_hw_8_files/figure-markdown_strict/unnamed-chunk-6-7.png)

    home.land.byyear <- gather(housing.byyear,
                               value = "value",
                               key = "type",
                               Home.Value, Land.Value)
    ggplot(home.land.byyear,
           aes(x=Date,
               y=value,
               color=type)) +
      geom_line()

![](lab_hw_8_files/figure-markdown_strict/unnamed-chunk-6-8.png)

    #challenge - recreating the graph
    dat <- read.csv("Rgraphics/dataSets/EconomistData.csv")
    p1 <- ggplot(dat, aes(x=CPI, y=HDI, color=Region)) + geom_point(shape = 1, size = 3, stroke = 1) #changed the colored circles to open circles 
    p1 + geom_line(stat = "smooth", method = "loess", color = "red", span = 1) #added trendline

![](lab_hw_8_files/figure-markdown_strict/unnamed-chunk-6-9.png)

    p2 <- p1 + geom_line(stat = "smooth", method = "loess", color = "red", span = 1)
    library("ggrepel")
    p2 + geom_text_repel(aes(label = Country), size = 3, color = "black", data = subset(dat, Country %in% c("Congo", "Afghanistan", "Sudan", "Myanmar", "Iraq", "Venezuela", "Russia", "Argentina", "Greece", "Brazil", "Italy", "India", "China", "South Africa", "Rwanda", "Cape Verde", "Bhutan", "Botswana", "Spain", "France", "US", "Britain", "Germany", "Japan", "Brabados", "Norway", "Singapore", "New Zealand"))) #added country labels

![](lab_hw_8_files/figure-markdown_strict/unnamed-chunk-6-10.png)

    p3 <- p2 + geom_text_repel(aes(label = Country), size = 3, color = "black", data = subset(dat, Country %in% c("Congo", "Afghanistan", "Sudan", "Myanmar", "Iraq", "Venezuela", "Russia", "Argentina", "Greece", "Brazil", "Italy", "India", "China", "South Africa", "Rwanda", "Cape Verde", "Bhutan", "Botswana", "Spain", "France", "US", "Britain", "Germany", "Japan", "Brabados", "Norway", "Singapore", "New Zealand")))
    p3 + scale_x_continuous(name = "Corruption Perceptions Index, 2011 (10=least corrupt)") + scale_y_continuous(name = "Human Development Index, 2011 (1=Best)") + scale_colour_manual(name = "", labels = c("OECD", "Americas", "Asia &\nOceania", "Central &\nEastern Europe", "Middle East &\nNorth Africa", "Sub-Saharan\nAfrica"), values = c("darkblue", "blue", "lightblue", "green", "orange", "brown")) + ggtitle("Corruption and Human development") #added x,y labels and changed labels of the color scale, also assigning different regions different colors

![](lab_hw_8_files/figure-markdown_strict/unnamed-chunk-6-11.png)

    p4 <- p3 + scale_x_continuous(name = "Corruption Perceptions Index, 2011 (10=least corrupt)") + scale_y_continuous(name = "Human Development Index, 2011 (1=Best)") + scale_colour_manual(name = "", labels = c("OECD", "Americas", "Asia &\nOceania", "Central &\nEastern Europe", "Middle East &\nNorth Africa", "Sub-Saharan\nAfrica"), values = c("darkblue", "blue", "lightblue", "green", "orange", "brown")) + ggtitle("Corruption and Human development")
    p4 + theme_minimal() + theme(legend.position = c("top"), legend.direction = "horizontal", axis.title.x = element_text(face = "italic"), axis.title.y = element_text(face = "italic")) #changed the position of the legend and italicized the axis titles

![](lab_hw_8_files/figure-markdown_strict/unnamed-chunk-6-12.png)
