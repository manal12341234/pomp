% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/package.R
\docType{package}
\name{pomp-package}
\alias{pomp-package}
\alias{pomp,package}
\title{Inference for partially observed Markov processes}
\description{
The \pkg{pomp} package provides facilities for inference on time series
data using partially-observed Markov process (\acronym{POMP}) models.
These models are also known as state-space models, hidden Markov models, or
nonlinear stochastic dynamical systems.  One can use \pkg{pomp} to fit
nonlinear, non-Gaussian dynamic models to time-series data.  The package is
both a set of tools for data analysis and a platform upon which statistical
inference methods for \acronym{POMP} models can be implemented.
}
\section{Data analysis using \pkg{pomp}}{

\pkg{pomp} provides algorithms for:
\enumerate{
\item Simulation of stochastic dynamical systems;
see \code{\link{simulate}}.
\item Particle filtering (AKA sequential Monte Carlo or sequential importance sampling);
see \code{\link{pfilter}} and \code{\link{wpfilter}}.
\item The iterated filtering methods of Ionides et al. (2006, 2011, 2015);
see \code{\link{mif2}}.
\item The nonlinear forecasting algorithm of Kendall et al. (2005);
see \link{nonlinear forecasting}.
\item The particle MCMC approach of Andrieu et al. (2010);
see \code{\link{pmcmc}}.
\item The probe-matching method of Kendall et al. (1999, 2005);
see \link{probe matching}.
\item Synthetic likelihood a la Wood (2010);
see \code{\link{probe}}.
\item A spectral probe-matching method (Reuman et al. 2006, 2008);
see \link{spectrum matching}.
\item Approximate Bayesian computation (Toni et al. 2009);
see \code{\link{abc}}.
\item The approximate Bayesian sequential Monte Carlo scheme of Liu & West (2001);
see \code{\link{bsmc2}}.
\item Ensemble and ensemble adjusted Kalman filters;
see \code{\link{kalman}}.
\item Simple trajectory matching;
see \link{trajectory matching}.
}
The package also provides various tools for plotting and extracting information on models and data.
}

\section{Structure of the package}{


\pkg{pomp} algorithms are arranged on several levels.
At the top level, \link[=estimation algorithms]{estimation algorithms} estimate model parameters and return information needed for other aspects of inference.
\link[=elementary algorithms]{Elementary algorithms} perform common operations on \acronym{POMP} models, including simulation, filtering, and application of diagnostic probes;
these functions may be useful in inference, but they do not themselves perform estimation.
At the lowest level, \link[=workhorses]{workhorse functions} provide the interface to \link[=basic components]{basic POMP model components}.
Beyond these, \pkg{pomp} provides a variety of auxiliary functions for manipulating and extracting information from \sQuote{pomp} objects, producing diagnostic plots, \link[=bake]{facilitating reproducible computations}, and so on.
}

\section{Implementing a model}{


The basic structure at the heart of the package is the \sQuote{pomp object}.
This is a container holding a time series of data (possibly multivariate) and a model.
The model is specified by specifying some or all of its \link[=basic components]{basic model components}.
One does this using the \link[=basic components]{basic component arguments} to the \code{\link{pomp}} constructor.
One can also add, modify, or delete basic model components \dQuote{on the fly} in any \pkg{pomp} function that accepts them.
}

\section{Documentation and examples}{


The package contains a number of examples.
Some of these are included in the help pages.
In addition, \link[=pomp examples]{several pre-built POMP models} are included with the package.
Tutorials and other documentation, including a \href{https://kingaa.github.io/pomp/FAQ.html}{package FAQ}, are available from the \href{https://kingaa.github.io/pomp/}{package website}.
}

\section{Useful links}{

\itemize{
 \item{\pkg{pomp} homepage: \url{https://kingaa.github.io/pomp/}}
 \item{Report bugs to: \url{https://github.com/kingaa/pomp/issues}}
 \item{Frequently asked questions: \url{https://kingaa.github.io/pomp/FAQ.html}}
 \item{User guides and tutorials: \url{https://kingaa.github.io/pomp/docs.html}}
 \item{\pkg{pomp} news: \url{https://kingaa.github.io/pomp/blog.html}}
}
}

\section{Citing \pkg{pomp}}{

Execute \code{citation("pomp")} to view the correct citation for publications.
}

\references{
\King2016

See \href{https://kingaa.github.io/pomp/biblio.html}{the package website for more references}, including many publications that use \pkg{pomp}.
}
\seealso{
More on implementing POMP models: 
\code{\link{Csnippet}},
\code{\link{accumulator variables}},
\code{\link{basic components}},
\code{\link{covariates}},
\code{\link{distributions}},
\code{\link{dmeasure specification}},
\code{\link{dprocess specification}},
\code{\link{emeasure specification}},
\code{\link{parameter transformations}},
\code{\link{pomp}},
\code{\link{prior specification}},
\code{\link{rinit specification}},
\code{\link{rmeasure specification}},
\code{\link{rprocess specification}},
\code{\link{skeleton specification}},
\code{\link{transformations}},
\code{\link{userdata}},
\code{\link{vmeasure specification}}

More on \pkg{pomp} workhorse functions: 
\code{\link{dmeasure}()},
\code{\link{dprior}()},
\code{\link{dprocess}()},
\code{\link{emeasure}()},
\code{\link{flow}()},
\code{\link{partrans}()},
\code{\link{rinit}()},
\code{\link{rmeasure}()},
\code{\link{rprior}()},
\code{\link{rprocess}()},
\code{\link{skeleton}()},
\code{\link{vmeasure}()},
\code{\link{workhorses}}

More on \pkg{pomp} estimation algorithms:
\code{\link{approximate Bayesian computation}},
\code{\link{bsmc2}()},
\code{\link{estimation algorithms}},
\code{\link{mif2}()},
\code{\link{nonlinear forecasting}},
\code{\link{pmcmc}()},
\code{\link{probe matching}},
\code{\link{spectrum matching}}

More on \pkg{pomp} elementary algorithms: 
\code{\link{elementary algorithms}},
\code{\link{kalman}},
\code{\link{pfilter}()},
\code{\link{probe}()},
\code{\link{simulate}()},
\code{\link{spect}()},
\code{\link{trajectory}()},
\code{\link{wpfilter}()}
}
\author{
Aaron A. King
}
\concept{elementary algorithms}
\concept{estimation methods}
\concept{implementation information}
\concept{pomp workhorses}
\keyword{models}
\keyword{multivariate}
\keyword{ts}
