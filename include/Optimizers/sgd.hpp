#ifndef SGD_OPTIMIZER_H
#define SGD_OPTIMIZER_H

#include "../optimizer.hpp"
#include "../network.hpp"

namespace CPPML {

/*
 * Implements standard stochastic gradient descent
 */
class SGD : public Optimizer {
public:
	float learning_rate;
	
	SGD(float learning_rate_=0.01f);

	virtual void update_params();
	virtual void compile_();
};

}

#endif