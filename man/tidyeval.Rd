% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils-tidy-eval.R
\name{tidyeval}
\alias{tidyeval}
\alias{quo}
\alias{quos}
\alias{enquo}
\alias{enquos}
\alias{quo_name}
\alias{sym}
\alias{ensym}
\alias{syms}
\alias{ensyms}
\alias{expr}
\alias{exprs}
\alias{enexpr}
\alias{enexprs}
\alias{:=}
\title{Tidy eval helpers}
\description{
\itemize{
\item \code{\link[rlang:sym]{rlang::sym()}} creates a symbol from a string and
\code{\link[rlang:sym]{rlang::syms()}} creates a list of symbols from a
character vector.
\item \code{\link[rlang:expr]{rlang::expr()}} and \code{\link[rlang:defusing-advanced]{rlang::quo()}} quote
one expression. \code{quo()} wraps the quoted expression in a quosure.

The plural variants \code{\link[rlang:defusing-advanced]{rlang::exprs()}} and
\code{\link[rlang:defusing-advanced]{rlang::quos()}} return a list of quoted expressions or
quosures.
\item \code{\link[rlang:defusing-advanced]{rlang::enexpr()}} and \code{\link[rlang:enquo]{rlang::enquo()}}
capture the expression supplied as argument by the user of the
current function (\code{enquo()} wraps this expression in a quosure).

\code{\link[rlang:defusing-advanced]{rlang::enexprs()}} and \code{\link[rlang:enquo]{rlang::enquos()}}
capture multiple expressions supplied as arguments, including
\code{...}.
}

\code{exprs()} is not exported to avoid conflicts with \code{Biobase::exprs()},
therefore one should always use \code{rlang::exprs()}.

To learn more about tidy eval and how to use these tools, visit
\url{https://rlang.r-lib.org/} and the \href{https://adv-r.hadley.nz/metaprogramming.html}{Metaprogramming section} of \href{https://adv-r.hadley.nz}{Advanced R}.
}
\keyword{internal}
