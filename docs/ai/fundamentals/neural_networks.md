# Neural Networks

## Neural Network Structure

```mermaid
graph LR
    subgraph Input["Input Layer"]
        I1[Input 1]
        I2[Input 2]
        I3[Input 3]
        I4[Input n]
    end
    
    subgraph Hidden1["Hidden Layer 1"]
        H1_1[Neuron 1]
        H1_2[Neuron 2]
        H1_3[Neuron 3]
        H1_4[Neuron m]
    end
    
    subgraph Hidden2["Hidden Layer 2"]
        H2_1[Neuron 1]
        H2_2[Neuron 2]
        H2_3[Neuron 3]
    end
    
    subgraph Output["Output Layer"]
        O1[Output 1]
        O2[Output 2]
    end
    
    I1 --> H1_1 & H1_2 & H1_3 & H1_4
    I2 --> H1_1 & H1_2 & H1_3 & H1_4
    I3 --> H1_1 & H1_2 & H1_3 & H1_4
    I4 --> H1_1 & H1_2 & H1_3 & H1_4
    
    H1_1 --> H2_1 & H2_2 & H2_3
    H1_2 --> H2_1 & H2_2 & H2_3
    H1_3 --> H2_1 & H2_2 & H2_3
    H1_4 --> H2_1 & H2_2 & H2_3
    
    H2_1 --> O1 & O2
    H2_2 --> O1 & O2
    H2_3 --> O1 & O2
    
    style Input fill:#4a90e2,color:#fff
    style Hidden1 fill:#7b68ee,color:#fff
    style Hidden2 fill:#9370db,color:#fff
    style Output fill:#2d8a8a,color:#fff
```

## How Neural Networks Work

```mermaid
flowchart TD
    A[Input Data] --> B[Input Layer]
    B --> C[Hidden Layers]
    C --> D{Activation Function}
    D --> E[Weighted Sum]
    E --> F[Forward Propagation]
    F --> G[Output Layer]
    G --> H[Prediction/Result]
    
    H --> I{Compare with Actual}
    I --> J[Calculate Loss/Error]
    J --> K[Backpropagation]
    K --> L[Update Weights & Biases]
    L --> M{Training Complete?}
    M -->|No| B
    M -->|Yes| N[Trained Model]
    
    style A fill:#4a90e2,color:#fff
    style H fill:#2d8a8a,color:#fff
    style J fill:#e74c3c,color:#fff
    style N fill:#27ae60,color:#fff
```

## Neural Network Components

- **Input Layer**: Receives raw data (features)
- **Hidden Layers**: Process and transform data through weighted connections
- **Output Layer**: Produces final prediction or classification
- **Weights**: Determine strength of connections between neurons
- **Bias**: Allows shifting of activation function
- **Activation Function**: Introduces non-linearity (ReLU, Sigmoid, Tanh)
- **Forward Propagation**: Data flows from input to output
- **Backpropagation**: Error flows backward to update weights
- **Loss Function**: Measures prediction error

## Types of Neural Networks

```mermaid
graph TD
    A[Neural Networks] --> B[Feedforward NN]
    A --> C[Convolutional NN]
    A --> D[Recurrent NN]
    A --> E[Transformer]
    
    B --> B1[Simple Classification]
    C --> C1[Image Recognition]
    C --> C2[Computer Vision]
    D --> D1[Time Series]
    D --> D2[Natural Language]
    E --> E1[LLMs]
    E --> E2[Translation]
    
    style A fill:#333,color:#fff
    style B fill:#4a90e2,color:#fff
    style C fill:#7b68ee,color:#fff
    style D fill:#e74c3c,color:#fff
    style E fill:#27ae60,color:#fff
```

# Source

- [IBM - Neural Networks](https://www.ibm.com/think/topics/neural-networks)