function sigma=updateSigma(count, sigma, a,b)
 %% change the sigma with respect to convergence speed 
  if (count > 10)  
        sigma = a*sigma; 
  else 
        sigma = b*sigma;
  end
end 


