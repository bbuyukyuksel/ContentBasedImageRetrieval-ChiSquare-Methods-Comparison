# Content Based Image Retrieval (CBIR) and Chi Square Methods Comparison

It's aimed to observe histogram comparison results when use different methods

## Gama Effect
 s=r<sup>γ</sup>
 s: output pixel value
 r: input pixel value
 γ: gama value
 
`Gama Effect`
![image_1](SS/1B.jpg)

## Gama Effect into [0:255] vector
`Gama Effect into [0:255] vector`
![image_2](SS/1C.jpg)

## Normalized Histogram
`Normalized Histogram`
![image_3](SS/2A.jpg)

## Histogram Comparison Using 2 Gray Scale Images
`Histogram Comparison Using 2 Gray Scale Images`
![image_4](SS/3A.jpg)

## Histogram Comparison Using 2 RGB Images
`Histogram Comparison Using 2 RGB Images`
![BG 4](SS/3B.jpg)

<br />

## Results
<table>
  <tr>
    <th>Method</th>
    <th>I<sub>1</sub> - I<sub>1</sub></th>
    <th>I<sub>1</sub> - I<sub>2</sub></th>
    <th>I<sub>1</sub> - I<sub>3</sub></th>
    <th>I<sub>1</sub> - I<sub>4</sub></th>
  </tr>
  <tr>
    <td>CBIR</td>
    <td>1</td>
    <td>0.85326</td>
    <td style='color:red;'>0.24936</td>
    <td>0.63625</td>
  </tr>
  <tr>
    <td>Chi Square</td>
    <td>0</td>
    <td>0.17551</td>
    <td>5.3196</td>
    <td>0.87289</td>
  </tr>
</table>
