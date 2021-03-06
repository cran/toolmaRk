% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/distance-threshold.R
\name{fixed_width_no_modeling}
\alias{fixed_width_no_modeling}
\title{Distance/threshold test for toolmarks}
\usage{
fixed_width_no_modeling(dat1, dat2, coarse = 0.25, fine = 0.01,
  window.size = 0.6, M = 500)
}
\arguments{
\item{dat1}{a one column matrix representing a digitized tool mark}

\item{dat2}{a one column matrix representing a second digitized tool mark}

\item{coarse}{normalization smoothing parameter}

\item{fine}{decomposition smoothing parameter}

\item{window.size}{desired window size for the correlations to compute}

\item{M}{search area restriction}
}
\value{
list with 
\itemize{
 \item{"max_corr"}{maximized indiviudal component correlation}
 \item{"Smooth_offset"}{optimal Class offset}
 \item{"Resid_offset"}{optimal individual offset}
 \item{"dist_pval"} distance p-value
 \item{"thresh_pval"} threshold p-value
 \item{"Above"} Number of offsets with correlation bigger than threshold
 \item{"total_thresh"} 2*M+1
 \item{"mark1_decompostion"} plot of decomposition d1
 \item{"mark2_decompostion"} plot of decomposition d2
 \item{"class_correlations"} plot of class correlation
 \item{"individual_correlations"} plot of individual correlation
 \item{"distance_plot"} distance_plot
 \item{"threshold_plot"} threshold_plot
 }
}
\description{
Compute all possible correlations for windows of length n between the class components.
Determine the location of the maximized correlation.
Given this location, create a diamond around it in the individual matrix of correlations
For each offset in this diamond, compute the maximized correlation
(1) Determine the distance between the offset for the class and indiviudal components
(2) Compute the Threshold test statistics
}
