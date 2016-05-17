library(stringr)

#' Parse parameters from a single directory path
#'
#' Takes a string that represents a parameter and value
#' Typically this comes from the folder name, e.g., a250 would mean 250 agents
#' Returns a list where the name is the string, and value is the numer
#' For example, 'a250' would return a list where 'a' is 250
#'
parse_single_param_from_dir_name <- function(single_param_string){
    values <- list()
    characters <- stringr::str_extract(string = single_param_string,
                                       pattern = "[a-zA-Z]+")

    numbers <- as.numeric(stringr::str_replace(string = single_param_string,
                                               pattern = "[a-zA-Z]+",
                                               replacement = ''))

    values[[characters]] <- numbers
    return(values)
}

#' Parse simulation parameters from a batch run
#'
#' Multiple calls to `parse_single_param_from_dir_name`.
#' Usually ran on a batch/sweep MANN run.
#'
parse_sim_params_from_dir_name <- function(dir_param_string, param_split = '_'){
    params <- stringr::str_split(string = dir_param_string, pattern = param_split)[[1]]
    parsed_params <- sapply(X = params, FUN = parse_single_param_from_dir_name, USE.NAMES = FALSE)
    return(parsed_params)
}
