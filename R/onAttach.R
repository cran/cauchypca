
.onAttach <- function(lib, pkg) {
	version <- read.dcf(file.path(lib, pkg, "DESCRIPTION"),"Version")
	packageStartupMessage(paste("\n",pkg["name"],": ",version,sep = ""))
	msg <-  paste(
r"(                                                 _)",
r"(  _ _ _ _    _ _ _ _     _     _      _ _ _ _   | |        _     _   _ _ _ _    _ _ _ _    _ _ _ _)",
r"( /   _ _ _\ /  _ _  \   | |   | |    /   _ _ _\ | |_ _ _  | |   | | |  _ _  |  /   _ _ _\ /  _ _  \)",
r"(/  /        | |   | |   | |   | |   /  /        |  _ _  | | |   | | | |   | | /  /        | |   | |)",
r"(\  \ _ _ _  | |_ _| \_  | |_ _| |_  \  \ _ _ _  | |   | | | |_ _| | | |_ _| | \  \ _ _ _  | |_ _| \_)",
r"( \_ _ _ _ / \_ _ _ _ _/ |_ _ _ _ _|  \_ _ _ _ / |_|   |_| |_ _ _  | |  _ _ _|  \_ _ _ _ / \_ _ _ _ _/)",
r"(                                                             _ _| | | |)",
r"(                                                            |_ _ _| |_|)",
	sep="\n")
	packageStartupMessage(msg)
}