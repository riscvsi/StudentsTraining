#! /bin/tclsh

set fp [open "fileName.txt" w]
puts $fp "data"
close $fp


set rfp [open "logFile.log" r]
set fileData [read $rfp]

foreach line [split $fileData "\n"] {
	puts $line
}
close $rfp

### regular expression

set string1 "ERROR: the design has 126% congestion and will not be routable"
regexp {ERROR:.*?(\d+%)\scongestion.*} $string1 err congestion
if {[info exists err]} {
	puts "$congestion"
} else {
	puts "pattern not exists"
}

