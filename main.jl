# calculate the stability metric given data
function get_stability(window=30)

end

#bins 2 data (ignores last bin if not evenly divisable)
function bin_window(data, window=30)
    # calculate the number of bins for a window size
    dim = size(data)
    n_window = Int(floor(dim[2]/window))

    #reshape array for bins
    return (reshape(data[:,1:n_window*window], dim[1],window,:))
end


# not fully convinced this is working correctly need to more rigoursly test
function shrink_cor(data)
    target = DiagonalUnitVariance()
    shrinkage = :lw # Ledoit-Wolf optimal shrinkage
    method = LinearShrinkage(target, shrinkage)
    cov_matrix = cov(method, data)

    # Extract the diagonal (variances)
    variances = diag(cov_matrix)

    # Calculate the square root of the variances
    sqrt_variances = sqrt.(variances)
    
    # Normalize the covariance matrix by dividing each entry by the square root of variances
    normalized_cov_matrix = cov_matrix ./ (sqrt_variances * sqrt_variances')

    return(normalized_cov_matrix, cov_matrix, sqrt_variances * sqrt_variances')
end