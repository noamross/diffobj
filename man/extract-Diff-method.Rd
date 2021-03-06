% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/subset.R
\docType{methods}
\name{[,Diff,numeric,missing,missing-method}
\alias{[,Diff,numeric,missing,missing-method}
\alias{head,Diff-method}
\alias{tail,Diff-method}
\title{Subsetting Methods for Diff Objects}
\usage{
\S4method{[}{Diff,numeric,missing,missing}(x, i)

\S4method{head}{Diff}(x, n, ...)

\S4method{tail}{Diff}(x, n, ...)
}
\arguments{
\item{x}{\code{Diff} object}

\item{i}{subsetting index, must be numeric}

\item{n}{integer(1L), the size for the resulting object}

\item{...}{unused, for compatibility with generics}
}
\value{
\code{Diff} object with subsetting indices recorded for use by
  \code{show}
## `pager="off"` for CRAN compliance; you may omit in normal use
diff <- diffChr(letters, LETTERS, format="raw", pager="off")
diff[5:15]
head(diff, 5)
tail(diff, 5)
head(head(diff, 5), 8)  ## note not 'typical' behavior
}
\description{
Methods to subset the character representation of the diff output.  The
subsetting bears no link to the line numbers in the diffs, only to the actual
displayed diff.
}
\details{
\code{[} only supports numeric indices, and returns without error if you
specify out of bound indices.  If you apply multiple subsetting methods they
will be applied in the following order irrespective of what order you
actually specify them in: \code{[}, then \code{head}, then \code{tail}.
If you use the same subsetting method multiple times on the same object,
the last call will define the outcome.

These methods are implemented by storing the chosen indices in the
\code{Diff} object and using them to subset the \code{as.character} output.
This mechanism explains the seemingly odd behavior documented above.
}
