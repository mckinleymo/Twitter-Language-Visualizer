#' Twitter Language Visualizer
#' A function that visualizes languages used on Twitter based off of user chosen
#' terms.
#' A function that visualizes the number of languages used on Twitter in a bar
#' graph based off of user chosen terms for search value, number of tweets and
#' hexidecimal bar graph color.
#' @author McKinley O'Connor
#' @param x Language
#' @param y Count
#' @return The Twitter language count in bar graph form from user chosen search
#' values or default values provided.
#' @examples
#' my_function(search = "pizza", num_tweets = 125, color = "#aecca5")
#' my_function(search "hawaii", num_tweets = 250, color = "#f09cc6")
#' @export

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
