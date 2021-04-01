#' METATDATA

my_function = function(search = "dogs", num_tweets = 100, color = "#4292c6"){
  # COMMENT EXPLAINING WHAT BELOW LINE DOES
  twitter_data = rtweet::search_tweets(q = search, n = num_tweets)
  # COMMENT EXPLAINING WHAT BELOW LINE DOES
  twitter_data %>%
    ggplot2::ggplot() +
    ggplot2::aes(x = lang) +
    ggplot2::geom_bar(fill = color) +
    ggplot2::labs(x = "Language", y = "Count", title = "Languages Used On Twitter") +
    ggplot2::theme_minimal()
}
