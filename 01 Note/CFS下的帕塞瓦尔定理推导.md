## <center>CFS下的帕塞瓦尔定理</center>



| 文件版本 |    修改内容    |       作者/时间       | 备注 |
| :------: | :------------: | :-------------------: | :--: |
|   V1.0   | 首次编写该文档 | AlimyBreak/2019.08.12 |  -   |



***

+ 已知周期为$T$的周期函数$f(t)$可以通过连续傅立叶级数分解为等式$\tag{1}$:
$$
\tag{1}
f(t)=a_{0}+\sum_{n=1}^{+\infty}\{a_{n}\cos(n\omega_{1}t)+b_{n}\sin(n\omega_{1}t)\}\\
\begin{cases}
a_{0} = \frac{1}{T}\int_{t_0}^{t_0+T}f(t)dt\\
a_{n} = \frac{2}{T}\int_{t_0}^{t_0+T}f(t)\cos(n\omega_{1} t)dt \\
b_{n} = \frac{2}{T}\int_{t_0}^{t_0+T}f(t)\sin(n\omega_{1} t)dt \\
\end{cases}
$$
​	其中:
$$
\omega_1=\frac{2\pi}{T}
$$
+ 根据等式$\tag{1}$,对于$f(t)\overline{f(t)}$我们可以分解为：
  $$
  \begin{eqnarray}
  {f(t)\overline{f(t)}}&=&\{a_{0}+\sum_{n=1}^{+\infty}\{a_{n}\cos(n\omega_{1}t)+b_{n}\sin(n\omega_{1}t)\}\}\{a_{0}+\sum_{n=1}^{+\infty}\{a_{n}\cos(n\omega_{1}t)+b_{n}\sin(n\omega_{1}t)\}\} \\
  &=&a_{0}^{2}+2a_0\sum_{n=1}^{+\infty}\{a_{n}\cos(n\omega_{1}t)+b_{n}\sin(n\omega_{1}t)\}\}+\{\sum_{n=1}^{+\infty}\{a_{n}\cos(n\omega_{1}t)+b_{n}\sin(n\omega_{1}t)\}\}^2
  \end{eqnarray}
  $$
  显然上式的前两项在一个周期$T$内非常好积分,第三项我们记作如下$L(t)$，可以展开:
  $$
  \begin{eqnarray}
  L(t)&=&\{\sum_{n=1}^{+\infty}\{a_{n}\cos(n\omega_{1}t)+b_{n}\sin(n\omega_{1}t)\}\}^2\\
  &=&Cross1+\sum_{n=1}^{+\infty}\{\{a_n\cos(n\omega_1t)\}^2+\{b_n\sin(n\omega_1t)\}^2\}\\
  &=&Cross1 +\sum_{n=1}^{+\infty}\{a_n^2\cos^2(n\omega_1t)+b_n^2\sin^2(n\omega_1t)\}\\
  &=&Cross1 + \sum_{n=1}^{+\infty}\{a_n^2\frac{1+\cos(2n\omega_1t)}{2}+b_n^2\frac{1-\cos(2n\omega_1t)}{2}\}\\
  &=&Cross1+\sum_{n=1}^{+\infty}{\{\frac{a_n^2}{2}\cos(2n\omega_1t)+\frac{b_n^2}{2}\sin(2n\omega_1t)\}}+\sum_{n=1}^{+\infty}\{\frac{a_n^2}{2}+\frac{b_n^2}{2} \}\\
  &=&Cross+\sum_{n=1}^{+\infty}\{\frac{a_n^2}{2}+\frac{b_n^2}{2}\}
  \end{eqnarray}
  $$
  根据三角函数基的正交性，众多非同频分量的交叉项构成的$Cross$在一个周期$T$内的积分一定为0，此处不证明，请读者(如果有读者的话)自行推导并理解三角函数基的正交性质。

+ 记$CROSS=Cross+2a_0\sum_{n=1}^{+\infty}\{a_{n}\cos(n\omega_{1}t)+b_{n}\sin(n\omega_{1}t)\}\}$
  
+ 由此可得$f(t)\overline{f(t)}$在一个周期$T$的积分可以表示为
  $$
  \tag{2}
  \begin{eqnarray}
  \int_0^T{f(t)\overline{f(t)}}dt&=&\int_0^T\{a_0^2+CROSS+\sum_{n=1}^{+\infty}\{\frac{a_n^2}{2}+\frac{b_n^2}{2}\}\}dt\\
  &=&T\{a_0^2+\sum_{n=1}^{+\infty}{\{\frac{a_n^2}{2}+\frac{b_n^2}{2}\}}\}
  \end{eqnarray}
$$
  
+ 推导完毕。



***



