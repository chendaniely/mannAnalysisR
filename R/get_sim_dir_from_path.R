
#' Get the sim directory name from a full path
#'
#' Returns just the final folder name of the simulation given its full path name.
#' This is really a convenience function that can then be used to parse the folder
#' name to get the parameteres used for a simulation
get_sim_dir_from_path <- function(path,
                                        dir_split_pattern = '/',
                                        param_split_pattern = '_'){
    folders <- stringr::str_split(string = path, pattern = dir_split_pattern)

    sim_param_dir_name <- folders[[1]][length(folders[[1]])]
    if (sim_param_dir_name == '') {
        return(folders[[1]][length(folders[[1]]) - 1])
    } else{
        return(sim_param_dir_name)
    }

}
