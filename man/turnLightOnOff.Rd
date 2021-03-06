% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/HueLightFunctions.R
\name{turnLightOnOff}
\alias{turnLightOnOff}
\title{Turn a single light on and off}
\usage{
turnLightOnOff(ip, userName, light, state)
}
\arguments{
\item{ip}{IP address generated by getIP()}

\item{userName}{A username key}

\item{light}{Light number created}
}
\value{
Changes the state of On / Off of a light
}
\description{
Turn a single light on and off
}
\examples{
changeLightOnOff("0.0.0.0", "XXXXXX", 1, "true")

}
