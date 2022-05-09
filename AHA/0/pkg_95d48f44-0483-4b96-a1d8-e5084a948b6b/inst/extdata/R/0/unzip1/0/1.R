function (
		zip ,
		filename ,
		targetDir ,
		block = 1024 ) {
	Infile <- unz (
		description = zip ,
		filename = filename ,
		open = "rb" )
	Outfile <- file (
		description = paste0 ( targetDir , "/" , filename ) ,
		open = "wb" )
	repeat {
		Raw <- readBin ( Infile , "raw" , block )
		writeBin ( Raw , Outfile )
		if ( length ( Raw ) < block ) break }
	close ( Outfile )
	close ( Infile )
	invisible ( NULL ) }
