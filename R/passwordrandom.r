pwr_url_base <- "http://www.passwordrandom.com/query"

#' Generate random integers
#'
#' @param count number of random integers to generate
#' @param min minimum val of random range
#' @param max maximum val of random range
#' @return vector of random integers
#' @seealso \url{http://www.passwordrandom.com/api}
#' @export
#' @examples
#' random_ints(count=100)
random_ints <- function(count=10, min=0, max=100) {

  res <- GET(pwr_url_base, query=list(command="int",
                                      min=min,
                                      max=max,
                                      count=count))
  stop_for_status(res)
  as.numeric(readLines(textConnection(content(res))))

}

#' Generate random doubles
#'
#' @param count number of random integers to generate
#' @param min minimum val of random range
#' @param max maximum val of random range
#' @return vector of random doubles
#' @seealso \url{http://www.passwordrandom.com/api}
#' @export
#' @examples
#' random_doubles(count=100)
random_doubles <- function(count=10, min=0.0, max=100.0) {

  res <- GET(pwr_url_base, query=list(command="double",
                                      min=min,
                                      max=max,
                                      count=count))
  stop_for_status(res)
  as.numeric(readLines(textConnection(content(res))))

}

#' Generate random characters
#'
#' @param count number of random characters to generate
#' @param fmt \code{ul} == uppercase or lowercase, \code{u} == uppercase,
#'        \code{l} == lowercase
#' @return vector of random characters
#' @seealso \url{http://www.passwordrandom.com/api}
#' @export
#' @examples
#' random_chars(count=100)
random_chars <- function(count=10, fmt="ul") {

  cmd <- switch(fmt, ul="char", l="char_lower", u="char_upper")

  res <- GET(pwr_url_base, query=list(command=cmd,
                                      min=min,
                                      max=max,
                                      count=count))
  stop_for_status(res)
  readLines(textConnection(content(res)))

}

#' Generate random guids
#'
#' @param count number of random guids to generate
#' @return vector of random guids
#' @export
#' @seealso \url{http://www.passwordrandom.com/api}
#' @examples
#' random_guids(count=100)
random_guids <- function(count=10) {

  res <- GET(pwr_url_base, query=list(command="guid",
                                      min=min,
                                      max=max,
                                      count=count))
  stop_for_status(res)
  readLines(textConnection(content(res)))

}

#' Generate random passwords
#'
#' @param count number of random passwords to generate
#' @param complexity format string \code{L} - upper case letter;
#'        \code{l} - lower case letter; \code{R} or \code{r} - random case letter;
#'        \code{N} or \code{n} - number (\code{0}-\code{9}); \code{#} - symbol (!@@#$.+);
#'        \code{!} - all symbols; \code{C} - upper case consonant letter;
#'        \code{c} - lower case consonant letter; \code{V} - upper case vowel letter;
#'        \code{v} - lower case vowel letter;
#' @return vector of random passwords
#' @export
#' @seealso \url{http://www.passwordrandom.com/pronounceable-password-generator}
#' @examples
#' random_passwords(count=100)
random_passwords <- function(count=10, scheme="CvvCVN#NNcc") {

  res <- GET(pwr_url_base, query=list(command="password",
                                      min=min,
                                      max=max,
                                      count=count))
  stop_for_status(res)
  readLines(textConnection(content(res)))

}



