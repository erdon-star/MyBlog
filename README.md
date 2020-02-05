# 更新blog1.0
最近学习了一波shiro安全框架，原来是用的拦截器做的登录认证，现在用shiro的登录认证，只是最基础的shiro用法，入门即可，shiro的授权功能还用不到

# blog
blog系统，后台管理系统，前台展示

## 注意
1. 参考b站Yancy02发布的视频，特此感谢
2. 原视频用的jpa，自己用mybatis进行了改写，想学习mybatis的同学可以进行了解参考
3. 由于自己第一次用mybatis做一个项目，代码写的很丑，希望大家能指导指导
4. 后面会陆续添加一些功能，慢慢完善，有兴趣的朋友可以交流

## 错误
记得修改自己的maven home directory配置，不然会报错
![](https://rong-1257752702.cos.ap-chengdu.myqcloud.com/%E5%8D%9A%E5%AE%A2%E9%A1%B9%E7%9B%AE/1.png)


## 我觉得的难点
1. mybatis的一对多，多对一，对于我这个编程小白还是挺难的
2. mybatis的动态sql语句
3. 数据库的设计，为了（范式规范）连表查询，所以在设计数据库时，blog表包含了很多其他表的id


个人联系方式：qq:1437810640(备注来源，可以进行一些问题的交流）


环境：
1. idea
2. mysql 5.7
3. springboot2.2.2
4. shiro1.4.1

技术栈
1. mybatis
2. springMvc
3. springboot
4. thymeleaf模板引擎
5. Semantic Ui
6. shiro
