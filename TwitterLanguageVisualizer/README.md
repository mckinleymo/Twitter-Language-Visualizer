Twitter Language Visualizer
================
McKinley O’Connor
2021-04-26

This README is derived from Matt Kearney’s excellent \[rtweet\]
((<https://github.com/mkearney/rtweet>)) documentation.

A function that visualizes the number of languages used on Twitter in a
bar graph based off of user chosen terms for search value, number of
tweets and hexidecimal bar graph color.

## Install

Install from GitHub with the following code:

``` r
if (!requireNamespace("devtools", quietly = TRUE)) {
  install.packages("devtools")
}
devtools::install_github("mckinleymo/Twitter-Language-Visualizer")
```

This package connects <code>Twitter-Language-Visualizer</code> to
<code>rtweet</code>. As a result, each user must have previously
acquired authentication from Twitter and instructions to do that [can be
found here](http://rtweet.info/articles/auth.html). Expect that the
browser will open and ask you to authenticate the app. Press the button
to accept and authenticate rtweet.

## Usage

To use my package there is only one function. This is how you will use
it.

Its first argument takes any Twitter query surrounded by quotation
marks. There is a default query set to search “dogs” if user does not
designate their own search criteria.

The second argument allows the user to specify the number of tweets to
extract. There is a default of 100 tweets if the user does not designate
the number of tweets they wish to search.

The third argument determines the hexidecimal color of the bar graph
visualization. There is a default hexidecimal color of \#4292c6 if the
user does not designate their own.

``` r
my_function = function(search = "dogs", num_tweets = 100, color = "#4292c6"){
  # SEARCH TWITTER WITH QUERY AS SEARCH VALUE AND NUMBER OF TWEETS
  twitter_data = rtweet::search_tweets(q = search, n = num_tweets)
  # CREATE BAR GRAPH OF LANGUAGE COUNT
  twitter_data %>%
    ggplot2::ggplot() +
    ggplot2::aes(x = lang) +
    ggplot2::geom_bar(fill = color) +
    ggplot2::labs(x = "Language", y = "Count", title = "Languages Used On Twitter") +
    ggplot2::theme_minimal()
}
```

The process of creating the visualization may take a moment. The output
should be a bar graph visualization of the number of languages used on
Twitter based off of the default terms or the user chosen terms for
search value, number of tweets and hexidecimal bar graph color.

Twitter rate limits cap the number of Search results returned to 18,000
every 15 minutes. Thus, excessive use of
<code>Twitter-Language-Visualizer</code> in a short amount of time may
result in a warning and inability to pull results.  
In this event, simply wait 15 minutes and try again.
