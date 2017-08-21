BayesBDbinary <- function(obs, inimean, nrun, nburn, J, ordering, mask = rep(1,length(obs$intensity)), slice, outputAll) {
	obs$r.obs = obs$r.obs[mask==1]
	obs$theta.obs = obs$theta.obs[mask==1]	    
	obs$intensity = obs$intensity[mask==1]
	.Call(BayesBD_BayesBDbinary,  obs, inimean, nrun, nburn, J, ordering, slice, outputAll)
}

BayesBDnormal <- function(obs, inimean, nrun, nburn, J, ordering_mu, ordering_sigma, mask = rep(1,length(obs$intensity)), slice, outputAll) {
    	obs$r.obs = obs$r.obs[mask==1]
	obs$theta.obs = obs$theta.obs[mask==1]	    
	obs$intensity = obs$intensity[mask==1]
	.Call(BayesBD_BayesBDnormal, obs, inimean, nrun, nburn, J, ordering_mu, ordering_sigma, slice, outputAll)
}

eigenfun <- function(n,x) {
    .Call(BayesBD_eigenfun, n,x)
}

unisliceL <- function(x0, gx0, i_J, tauini, anini, alphalambda, betalambda, lambdaini) {
    .Call(BayesBD_unisliceL, x0, gx0, i_J, tauini, anini, alphalambda, betalambda, lambdaini)
}


