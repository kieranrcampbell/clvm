% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/clvm.R
\name{clvm}
\alias{clvm}
\title{Fit a CLVM Model}
\usage{
clvm(y, x, maxiter = 10000, elbo_tol = 0.005, thin = 1, verbose = TRUE,
  pst_init = 1, tau_q = 1, tau_mu = 1, tau_c = 1, a = 2, b = 2,
  tau_alpha = 1, a_beta = 10, b_beta = 1, q = rep(0, nrow(y)),
  model_mu = FALSE, true_beta = NULL, true_alpha = NULL,
  true_chi = NULL, true_c = NULL, true_tau = NULL, scale_y = TRUE,
  update_pst = TRUE)
}
\arguments{
\item{y}{A N-by-G (dynamic) input matrix}

\item{x}{A N-by-P (static) input matrix}

\item{maxiter}{Maximum number of CAVI iterations}

\item{elbo_tol}{The (percent) change in the ELBO below which it is 
considered converged}

\item{thin}{The number of iterations to wait each time before
re-calculating the elbo}

\item{verbose}{Print convergence messages}

\item{pst_init}{KIERAN WRITE}

\item{tau_q}{Hyperparameter tau_q}

\item{tau_mu}{Hyperparameter tau_mu}

\item{tau_c}{Hyperparameter tau_c}

\item{a}{Hyperparameter a}

\item{b}{Hyperparameter b}

\item{tau_alpha}{Hyperparameter tau_alpha}

\item{a_beta}{Hyperparameter a_beta}

\item{b_beta}{Hyperparameter b_beta}

\item{q}{Priors on the latent variables}
}
\value{
A list whose entries correspond to the converged values of the
variational parameters along with the ELBO.
}
\description{
Fit a covariate latent variable model using coordinate ascent
variational inference.
}

