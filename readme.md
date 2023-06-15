># This is the test title

## correlation
In our code we defined the shrink correlation function. This code was designed with neuroscience data in mind, and in the regime of high dimensionality/samples, the correlation can bias towards the extreme. To control this we use the method defined in to control this using the julia package, CovarianceEstimation.jl using the letsdoit algorithm defined in http://www.ledoit.net/honey.pdf