# Machine Learning Types

### Supervised Learning

model is trained on a labeled dataset (i.e., the target or outcome variable is known)

Examples:

- Image classification (cat vs dog)
- Spam detection

### Unsupervised Learning

The model learns from unlabeled data (it finds patterns on its own)

Examples:

- Clustering (grouping similar items together)
- Anomaly detection (identifying unusual in data)
- Dimensionality reduction (reducing number of features(variables) while keeping the important information)

### Self-Supervised Learning (SSL)

Models to train themselves on unlabeled data, creates its own labels automatically from the data itself.

Explanation:

- Instead of humans labeling data (like “this is a cat”), the model takes part of the data, hides it, and learns to predict the missing part.

### Reinforcement Learning

Model learns by trial and error using rewards and penalties.

Examples:

- Robotics (robot learns to navigate environment)
- Game playing agents (Chess, Atari games)

### Semi-Supervised Learning

combination between supervised and unsupervised learning.

Example:

Imagine you have:

- 500 labeled images (you know the correct category)
- 50,000 unlabeled images (no labels)

A semi-supervised model:

- Learns structure from all 50,000 images.
- Uses the 500 labeled examples to fine-tune the decision boundaries.

Result:

- You get performance close to a fully supervised model without labeling everything.

Why it matters:

- Labeling data is expensive and time-consuming. Semi-supervised learning leverages the alot of unlabeled data to improve model performance with minimal labeled data.

sources:

- [IBM](https://www.ibm.com/think/topics/machine-learning-types)
- [Geeks for Geeks](https://www.geeksforgeeks.org/machine-learning/types-of-machine-learning/)