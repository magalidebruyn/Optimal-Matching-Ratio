# Optimal-Matching-Ratio
Investigates the optimization of matching ratio (M = 1, M = 2, M=3, ...) for (genetic) matching for causal inference

As of now, it seems most data scientists use M = 1 as a default and a starting point for matching, under the assumption that it usually provides the best balance on covariates.  However, this may not always be the case.  We will seek to explore scenarios where one-to-multiple matching provides better balance (than one-to-one matching)—and, by nature, a larger sample size—by coming up with our own very small fake data set(s). 

Specifically, we hope to address the question: what is the optimal matching ratio for a dataset?  This is a function of both (a) maximizing balance on covariates and (b) maximizing sample size i.e. using the highest number of control units (because it is the most representative of the population).  

Does the MatchBalance function validate and reward effectively (i.e. produces a higher minimum p-value for) increased balance thanks to multiple matches?  Or does it discredit this better balance because of the weights on the matches?  Based on our experimentation, we aim to address implications and consider potential algorithmic implementation to address the case scenarios we explored and generally find the optimal value for M to achieve maximum balance.

The final report will be presented as a blog post (which we hope to actually publish), including explanations and accompanying code example(s).  We will inform our analysis with a literature review on the subject.
