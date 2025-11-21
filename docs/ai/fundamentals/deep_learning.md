# Deep Learning

## Layers of AI

- Machine Learning is a subfield of AI
- Deep Learning is a subfield of Machine Learning
- `Artificial Intelligence`(`Machine Learning`(`Deep Learning`))
    - `AI`(`ML`(`DL`))

## Deep Learning

**Deep Learning** uses **deep Artificial Neural Networks** (with multiple hidden layers) to learn and process more complex hierarchical patterns than traditional **Machine Learning** algorithms.

```
Inputs           Hidden Layer                    Outputs
  x1                 h1   h2   h3   h4   h5          y1   y2
   o                  o    o    o    o    o           o    o
   | \               /|\  /|\  /|\  /|\  /|\         / \  / 
   |  \             / | \/ | \/ | \/ | \/ | \       /   \/  
   |   \           /  | /\ | /\ | /\ | /\ |  \     /    /\  
   |    \         /   |/  \|/  \|/  \|/  \|   \   /    /  \ 
   o-----\-------/----o----o----o----o----o----\-/----/----\---
  x2      \     /     |\   |\   |\   |\   |\     X    \     X
           \   /      | \  | \  | \  | \  | \   / \    \   / \
            \ /       |  \ |  \ |  \ |  \ |  \ /   \    \ /   \
             o        |   \|   \|   \|   \|   X     \    X     X
            x3        |    |    |    |    |  / \     \  / \   / \
                      |    |    |    |    | /   \     \/   \ /   \
```

- Inspired by human brain
- Made out of many interconnected nodes/neurons
- Semi Supervised Learning
- Trains on a small amount of labeled data
    - Learns basic concepts of a task
- Trains on a large amount of unlabeled data
    - Generalizes (makes data more widespread) by learning from new examples

### Deep Learning Model Types

Discriminative

- Used to classify or predict
- Typically trained on a dataset of labeled data
- Learns the relationship between the features of the data points and the labels

Generative

- Generates new data that is similar to the data it was trained on
- Understands the distribution of data and how likely a given example is
- Predicts the next word in a sequence

## Large Language Models (LLMs)

- Is a subset of Deep Learning
    - `AI`(`ML`(`DL`(`LLM`)))

## Sources

- [IBM - Deep Learning](https://www.ibm.com/think/topics/deep-learning)
- [Google - Intro to AI](https://youtu.be/G2fqAlgmoPo)