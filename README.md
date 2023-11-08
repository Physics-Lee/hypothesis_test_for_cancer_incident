# 起因

2023年11月7日，有人说，中山大学附属第二医院的乳腺外科的科研团队多人患癌症。[参考链接](https://www.google.com/search?q=%E4%B8%AD%E5%B1%B1%E5%A4%A7%E5%AD%A6%E9%99%84%E5%B1%9E%E7%AC%AC%E4%BA%8C%E5%8C%BB%E9%99%A2%E7%9A%84%E4%B9%B3%E8%85%BA%E5%A4%96%E7%A7%91%E7%9A%84%E7%A7%91%E7%A0%94%E5%9B%A2%E9%98%9F%E5%A4%9A%E4%BA%BA%E6%82%A3%E7%99%8C%E7%97%87&oq=%E4%B8%AD%E5%B1%B1%E5%A4%A7%E5%AD%A6%E9%99%84%E5%B1%9E%E7%AC%AC%E4%BA%8C%E5%8C%BB%E9%99%A2%E7%9A%84%E4%B9%B3%E8%85%BA%E5%A4%96%E7%A7%91%E7%9A%84%E7%A7%91%E7%A0%94%E5%9B%A2%E9%98%9F%E5%A4%9A%E4%BA%BA%E6%82%A3%E7%99%8C%E7%97%87&gs_lcrp=EgZjaHJvbWUyBggAEEUYOdIBBzM0MGowajeoAgCwAgA&sourceid=chrome&ie=UTF-8)。

2023年11月8日，02:22，院方回应，乳腺外科有3人患癌症。从2009年至今，乳腺外科培养了200人。[参考链接](http://edu.people.com.cn/BIG5/n1/2023/1108/c1006-40113493.html#:~:text=%E4%B8%AD%E5%B1%B1%E5%A4%A7%E5%AD%B8%E5%AD%AB%E9%80%B8%E4%BB%99%E7%B4%80%E5%BF%B5%E9%86%AB%E9%99%A2%E8%A1%A8%E7%A4%BA%EF%BC%8C%E7%B6%93%E7%B5%84%E7%B9%94%E8%AA%BF%E6%9F%A5%E6%A0%B8%E5%AF%A6,%E5%B7%B2%E5%9B%9E%E5%8E%9F%E5%96%AE%E4%BD%8D%E5%B7%A5%E4%BD%9C%E3%80%82)。

2023年11月8日，早晨，我在返朴看到了这个[推送](https://mp.weixin.qq.com/s/5qBzVSUKvivrNQAjMSZlDw)。我不喜欢作者行文的方式，一是，他没有给出任何参考链接，哪怕是对于这么敏感的事件；二是，从字里行间，我感到他对病人缺乏关怀。



# p-value

不管这个作者到底是好是坏，我们考虑另一个问题。

我突然在想，如果R.A. Fisher，统计学之父，看到这个新闻，他会如何做？

我相信，他会延续他女士品茶的思路。

我查了一下，[40岁以下患癌症的频率大约是千分之一](https://www.vbdata.cn/newsDetail/3388798c3fbe11eea53d00163e0cb09b)。

我们假设每个人是否患癌症是独立同分布的，于是
$$
X \sim B(1,\frac{1}{1000})
$$
定义$H_0$
$$
H_0: 该团队成员是否患癌完全随机
$$


用$p(n|H_0)$代表$H_0$成立的条件下，有n人患癌症的概率。

那么
$$
p(get \ current \ data \ and \ more \ extreme \ data|H_0) & = & p(3|H_0) + p(4|H_0) + \cdots  + p(200|H_0) \\
& = & 1 - p(0|H_0) - p(1|H_0) - p(2|H_0) \\
& = & 0.0011
$$
也就是说，p-value = 0.0011。

**换成自然语言，在该团队成员是否患癌完全随机的情况下，3人或更多人患癌症的概率仅有0.0011。**



# 多重假设检验矫正

这个问题中是否需要考虑多重假设检验矫正呢？

p-value = 0.0011，意思是，每1千个这样的团队，依照概率，会有1.1个有3人或更多人患癌症。

中国的确可以有1千个这样的团队。不过，在此处，我们并没有收集其它团队的数据，只收了一个团队的数据，因此，**此问题中可以不考虑多重假设检验矫正**。如果你真的收集了1千个团队的数据，那你必须考虑多重假设检验矫正。