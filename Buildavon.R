
Buildavon <- function(n_ver)
	{
	
	try (library(roxygen2))
	try (library(tools))
	try (library(inlinedocs))
	try (library(devtools))


	dirtop <- "/home/sjparker/sp/"

	dirpackagetop     <-  paste( dirtop, "Rpackage/", sep = "")
	packagename <- "avon"

	dirpackage <- paste(dirpackagetop, packagename, sep = "")


	setwd ( dirpackagetop)


	c_check <-  paste ( "R CMD check      ", dirpackage )
	system (c_check)
 
	c_build <-  paste ( "R CMD build --resave-data      ", dirpackage )
	system (c_build)

	install_string <- paste ( 'install.packages ( paste ( dirdmp, "/", packagename, "_", n_ver, ".tar.gz", sep = ""), type = "source" )')

	return (install_string)
	}

#setwd(dirpackagetop)
#install.packages ( paste (packagename, "_", n_ver, ".tar.gz", sep = ""), type = "source" )
#install.packages ( 'avon_1.3.tar.gz', type = "source" )

#x1 <- Buildavon (1.0)
#dirpackagetop     <-  paste( dirtop, "Rpackage/", sep = ""); packagename <- "avon" ; dirpackage <- paste(dirpackagetop, packagename, sep = "")
