# **Galvanize-DSI-Capstone-Project-3**


## **Mechanisms of Action (MoA) Prediction**

![](images/moa.jpg)

This project is a Kaggle competition organized by MIT and Harvard. The goal is to advance drug development through MoA prediction.

MoA represents the Mechanism of Action of a drug. It classifies a drug’s type based on its underlying biological mechanism to treat a disease. 

The approach is to treat human cells with a drug and then analyze the cellular responses, such as gene expression or cell viability patterns, then classify its MoA based on these measurements. It will in turn help scientists with the drug discovery process.

The task is to use the provided training dataset to develop a model that automatically labels any new drug as one or more MoA types. 

## **Data Source**

**[https://www.kaggle.com/c/lish-moa](https://www.kaggle.com/c/lish-moa)**



## **My Objective** 

Build all kinds of classification models and compare their performances.


## **The Challenges**

1. Since a drug can belong to a single, or multiple, or even several tens of MoA types, this project is a multi-label classification problem. There are as many as 206 labels in total. 
2. The competition required to use a custom metric to evaluate the accuracy of the model, namely the average value of the log loss function. The formula for calculating the log loss was provided.
 
<math xmlns="http://www.w3.org/1998/Math/MathML" display="block">
  <mtext>score</mtext>
  <mo>=</mo>
  <mo>&#x2212;<!-- − --></mo>
  <mfrac>
    <mn>1</mn>
    <mi>M</mi>
  </mfrac>
  <munderover>
    <mo>&#x2211;<!-- ∑ --></mo>
    <mrow class="MJX-TeXAtom-ORD">
      <mi>m</mi>
      <mo>=</mo>
      <mn>1</mn>
    </mrow>
    <mrow class="MJX-TeXAtom-ORD">
      <mi>M</mi>
    </mrow>
  </munderover>
  <mfrac>
    <mn>1</mn>
    <mi>N</mi>
  </mfrac>
  <munderover>
    <mo>&#x2211;<!-- ∑ --></mo>
    <mrow class="MJX-TeXAtom-ORD">
      <mi>i</mi>
      <mo>=</mo>
      <mn>1</mn>
    </mrow>
    <mrow class="MJX-TeXAtom-ORD">
      <mi>N</mi>
    </mrow>
  </munderover>
  <mrow>
    <mo>[</mo>
    <mrow>
      <msub>
        <mi>y</mi>
        <mrow class="MJX-TeXAtom-ORD">
          <mi>i</mi>
          <mo>,</mo>
          <mi>m</mi>
        </mrow>
      </msub>
      <mi>log</mi>
      <mo>&#x2061;<!-- ⁡ --></mo>
      <mo stretchy="false">(</mo>
      <msub>
        <mrow class="MJX-TeXAtom-ORD">
          <mover>
            <mi>y</mi>
            <mo stretchy="false">&#x005E;<!-- ^ --></mo>
          </mover>
        </mrow>
        <mrow class="MJX-TeXAtom-ORD">
          <mi>i</mi>
          <mo>,</mo>
          <mi>m</mi>
        </mrow>
      </msub>
      <mo stretchy="false">)</mo>
      <mo>+</mo>
      <mo stretchy="false">(</mo>
      <mn>1</mn>
      <mo>&#x2212;<!-- − --></mo>
      <msub>
        <mi>y</mi>
        <mrow class="MJX-TeXAtom-ORD">
          <mi>i</mi>
          <mo>,</mo>
          <mi>m</mi>
        </mrow>
      </msub>
      <mo stretchy="false">)</mo>
      <mi>log</mi>
      <mo>&#x2061;<!-- ⁡ --></mo>
      <mo stretchy="false">(</mo>
      <mn>1</mn>
      <mo>&#x2212;<!-- − --></mo>
      <msub>
        <mrow class="MJX-TeXAtom-ORD">
          <mover>
            <mi>y</mi>
            <mo stretchy="false">&#x005E;<!-- ^ --></mo>
          </mover>
        </mrow>
        <mrow class="MJX-TeXAtom-ORD">
          <mi>i</mi>
          <mo>,</mo>
          <mi>m</mi>
        </mrow>
      </msub>
      <mo stretchy="false">)</mo>
    </mrow>
    <mo>]</mo>
  </mrow>
</math>
 
3. Many of the features are highly correlated to each other.

**(Please see the PowerPoint slides and all the jupyter notebooks for codes and details)**




