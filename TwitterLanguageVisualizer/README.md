Twitter Language Visualizer
================
McKinley O’Connor
2021-05-03

This README is derived from Matt Kearney’s excellent \[rtweet\]
(<https://github.com/mkearney/rtweet>) documentation.

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

This package relies on <code>rtweet</code>.

## Usage

To use <code>Twitter-Language-Visualizer</code> there is only one
function. This is how you will use it.

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
my_function("Schitt's Creek", 150, "#a7d5d6")
```

    ## Error in my_function("Schitt's Creek", 150, "#a7d5d6"): could not find function "my_function"

The process of creating the visualization may take a moment. The output
should be a bar graph visualization of the number of languages used on
Twitter based off of the default terms or the user chosen terms for
search value, number of tweets and hexidecimal bar graph color.

Twitter rate limits cap the number of Search results returned to 18,000
every 15 minutes. Thus, excessive use of
<code>Twitter-Language-Visualizer</code> in a short amount of time may
result in a warning and inability to pull results.  
In this event, simply wait 15 minutes and try again.
