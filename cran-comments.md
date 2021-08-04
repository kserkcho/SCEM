## Third submission

This is a resubmission. In this version I have:

Fixed:

Problem: $\delta^{18}O$ This does not work in the description text, please omit such markups.
Solution: removed it

Problem: Please always make sure to reset to user's options(), working directory or par() after you changed it in examples and vignettes and demos.
e.g.:
oldpar2= par(mfrow = c(1,2),mar = c(4,4,1,1))
...
par(oldpar2)
Solution: revised it

Comments: Regarding the references: You can just add your reference in the form <doi:prefix/suffix> to the description field and it should work. Maybe you forgot the period "." after the reference?
Solution: added the reference

Remains unfixed:

Comments: If you use a package which is only needed in examples, please list it in
'Suggests' and wrap these examples in if(requireNamespace("pkgname")){}
instead.

Response: I am only using the proposed package (SCEM) in the example, do I still need to wrap it? Thank you.


## Third submission

This is a resubmission. In this version I have:

Fixed:
Problem: Found the following (possibly) invalid file URIs, 
Solution: removed URIs

Problem: Please use only undirected quotation marks in the description text.
Solution: changed to undirected quotation marks

Problem: But for function names in the description text please omit quotes and
".R" and add  () behind them. e.g. example()
Solution: Omitted quotes and added ()

Problem: Please always make sure to reset to user's options()
Solution: reset to user's options()

Remains unfixed:

Problem: If there are references describing the methods in your package, please
add these in the description field of your DESCRIPTION file in the form
Response: Unable to do so as the check() gives me an error, telling me to provide full sentences. Any suggestions on how I can fix this?

Problem: \dontrun{} should only be used if the example really cannot be executed
Response: The examples are executed in > 5 sec, hence had \dontrun{}. Should I not have it?

Problem: Please do not install packages in your functions
Response: I was not able to run examples without installing my package. Any guidance or example on how I can fix this?

## Second submission

Status: 2 NOTEs

Note: New submission

Solution: NA

Note:Examples with CPU (user + system) or elapsed time > 10s
           user system elapsed
SCalgo    47.58   0.00   48.22
SCEM      47.02   0.03   47.55
iteration 10.27   0.02   10.46

Solution: I inserted dontrun for the examples

## Test environments

* local OS X install, R 3.6.2
* rhub check_for_cran

## R CMD check results

0 errors|0 warnings| 1 notes

New submission

## Downstream dependencies

There are currently no downstream dependencies for this package
