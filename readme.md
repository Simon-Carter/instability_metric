># This is the test title

THis algorithm implements the stability metric used in https://www.pnas.org/doi/10.1073/pnas.1913042117 largely defined in for julia. Much of the methods used here are based of the python version of this metric found in https://github.com/bbantal/PAgB_network_instability
 

## correlation
In our code we defined the shrink correlation function. This code was designed with neuroscience data in mind, and in the regime of high dimensionality/samples, the correlation can bias towards the extreme. To control this we use the method defined in to control this using the julia package, CovarianceEstimation.jl using the letsdoit algorithm defined in http://www.ledoit.net/honey.pdf