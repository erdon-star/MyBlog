/*
SQLyog Ultimate v12.08 (32 bit)
MySQL - 5.7.28-log : Database - blog
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`blog` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `blog`;

/*Table structure for table `t_blog` */

DROP TABLE IF EXISTS `t_blog`;

CREATE TABLE `t_blog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `first_picture` varchar(255) DEFAULT NULL,
  `flag` varchar(255) DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `appreciation` int(11) NOT NULL DEFAULT '0',
  `share_statement` int(11) NOT NULL DEFAULT '0',
  `commentabled` int(11) NOT NULL DEFAULT '0',
  `published` int(11) NOT NULL DEFAULT '0',
  `recommend` int(11) NOT NULL DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `description` text,
  `tag_ids` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1577879724074 DEFAULT CHARSET=utf8;

/*Data for the table `t_blog` */

insert  into `t_blog`(`id`,`title`,`content`,`first_picture`,`flag`,`views`,`appreciation`,`share_statement`,`commentabled`,`published`,`recommend`,`create_time`,`update_time`,`type_id`,`user_id`,`description`,`tag_ids`) values (1577792888747,'hexo(一)','**参考b站的codesheep的视频**\r\n*win10版*\r\n\r\n<!-- more -->\r\n## 1.安装Node.js\r\n安装官网: [点这里](https://nodejs.org)\r\n安装步骤根据默认即可\r\n\r\n\r\n## 2.安装git\r\n安装官网: [node.js](https://git-scm.com/downloads)\r\n如果安装的很缓慢的话可以进入淘宝镜像网站：[点这里](https://npm.taobao.org/mirrors/git-for-windows/)\r\n安装步骤也是默认\r\n我下载的版本：Git-2.21.0.rc0.windows.1-64-bit.exe\r\n安装完成后可以在开始菜单看到\r\n![](https://rong-1257752702.cos.ap-chengdu.myqcloud.com/hexo/hexo%E6%95%99%E7%A8%8B/2.png)\r\n\r\n## 3.安装Hexo\r\n### (一).创建文件夹\r\n在你的电脑的任意一个盘下创建一个文件夹，这个文件夹是用来储存博客的本地文件的，比如我就在f盘建立了一个blog文件夹，如下：\r\n![](https://rong-1257752702.cos.ap-chengdu.myqcloud.com/hexo/hexo%E6%95%99%E7%A8%8B/3.png)\r\n\r\n### (二)使用Git Bash\r\n在这个空文件夹中右键打开**Git Bash Here**进入如下的界面![](https://rong-1257752702.cos.ap-chengdu.myqcloud.com/hexo/hexo%E6%95%99%E7%A8%8B/4.png)\r\n\r\n输入node -v 和 npm -v 看是否出现版本，检测是否安装顺利\r\n\r\n![](https://rong-1257752702.cos.ap-chengdu.myqcloud.com/hexo/hexo%E6%95%99%E7%A8%8B/5.png)\r\n\r\n### (三)安装cnpm\r\n输入如下的代码：\r\n`npm install -g cnpm --registry=https://registry.npm.taobao.org`\r\n\r\n这玩意主要下载东西快\r\n\r\n安装完输入**cnpm**检测是否安装成功,出现以下内容即为成功\r\n![](https://rong-1257752702.cos.ap-chengdu.myqcloud.com/hexo/hexo%E6%95%99%E7%A8%8B/6.png)\r\n\r\n### (四)安装hexo\r\n\r\n输入代码如下：\r\n`cnpm install -g hexo-cli`\r\n然后再输入`hexo -v`检测是否安装成功\r\n安装成功界面：\r\n![](https://rong-1257752702.cos.ap-chengdu.myqcloud.com/hexo/hexo%E6%95%99%E7%A8%8B/7.png)\r\n\r\n接下来输入`hexo init`初始化这个项目\r\n\r\n![](https://rong-1257752702.cos.ap-chengdu.myqcloud.com/hexo/hexo%E6%95%99%E7%A8%8B/8.png)\r\n\r\n### (五)运行测试\r\n这里有三个代码是进行运行测试的关键\r\n```\r\nhexo g\r\nhexo s\r\nhexo d\r\n```\r\n输入`hexo g`\r\n\r\n![](https://rong-1257752702.cos.ap-chengdu.myqcloud.com/hexo/hexo%E6%95%99%E7%A8%8B/9.png)\r\n\r\n输入`hexo s`\r\n\r\n![](https://rong-1257752702.cos.ap-chengdu.myqcloud.com/hexo/hexo%E6%95%99%E7%A8%8B/10.png)\r\n\r\n这时可以进入`http://localhost:4000`查看博客本地化了\r\n\r\n预览图(这是我修改过主题的，官方初始预览和我这不一样)\r\n\r\n![](https://rong-1257752702.cos.ap-chengdu.myqcloud.com/hexo/hexo%E6%95%99%E7%A8%8B/11.png)\r\n\r\n## 本地内容搭建完成\r\n## 接下来的步骤在下一篇','https://i.picsum.photos/id/1005/5760/3840.jpg','原创',0,1,0,1,1,1,'2019-12-31 11:48:09','2020-01-03 13:52:16',4,1,'搭建hexo博客步骤一','3,2'),(1577793147252,'hexo(二)','\r\n**这一章的内容就是将博客部署到github上**\r\n\r\n## 一.部署github\r\n有github的直接登陆即可，没有的注册一下也很简单\r\n<!-- more -->\r\n### 1.新建厂库\r\n例图：\r\n![](https://rong-1257752702.cos.ap-chengdu.myqcloud.com/hexo/hexo%E4%BA%8C/1.png)\r\n**注意**：仓库命名时一定要是`\"你的用户名\".github.io`\r\n\r\n例图：(我这里已经注册这个厂库了，所以会出现红色的标记)\r\n![](https://rong-1257752702.cos.ap-chengdu.myqcloud.com/hexo/hexo%E4%BA%8C/2.png)\r\n\r\n### 2.部署插件\r\n代码：`cnpm install --save hexo-deployer-git`\r\n\r\n例图：\r\n![](https://rong-1257752702.cos.ap-chengdu.myqcloud.com/hexo/hexo%E4%BA%8C/3.png)\r\n\r\n## 二.设置-config.yml文件\r\n\r\n### 1.用记事本打开文件\r\n找到如下的代码区域：\r\n\r\n![](https://rong-1257752702.cos.ap-chengdu.myqcloud.com/hexo/hexo%E4%BA%8C/4.png)\r\n按照我的修改内容进行添加修改(repo要改成自己的github仓库的地址，冒号后记得要加上空格)\r\n\r\n\r\n\r\n## 三.部署到远端(简单)\r\n\r\n### 1.输入`hexo d`的命令即可\r\n例图：\r\n![](https://rong-1257752702.cos.ap-chengdu.myqcloud.com/hexo/hexo%E4%BA%8C/5.png)\r\n\r\n### 2.设置github的账号和密码\r\n按照下图操作即可：\r\n![](https://rong-1257752702.cos.ap-chengdu.myqcloud.com/hexo/hexo%E4%BA%8C/6.png)\r\n\r\n\r\n![](https://rong-1257752702.cos.ap-chengdu.myqcloud.com/hexo/hexo%E4%BA%8C/7.png)\r\n\r\n\r\n## 四.查看自己的博客\r\n注意：用`hexo d`命令进行远端部署，直到部署成功就可以浏览自己的个人博客\r\n\r\n浏览地址：就是自己之前在-config.yml文件里配置的repo地址\r\n\r\n参考页面：[我的个人博客，点进去逛逛](https://gaohan666.github.io/)\r\n\r\n![](https://rong-1257752702.cos.ap-chengdu.myqcloud.com/hexo/hexo%E4%BA%8C/8.png)','https://i.picsum.photos/id/1005/5760/3840.jpg','原创',0,1,0,1,1,1,'2019-12-31 11:52:27','2020-01-03 13:53:50',4,1,'hexo博客教程第二篇','3,2'),(1577870084710,'springMVC执行原理','官方springMVC执行原理图：\r\n\r\n![](https://rong-1257752702.cos.ap-chengdu.myqcloud.com/spring/springMVC%E5%8E%9F%E7%90%86%E6%89%A7%E8%A1%8C/1.png)\r\n\r\n>1.前端控制器就是DispatcherServlet\r\n>\r\n>2.页面控制器就是Controller\r\n>\r\n>3.模型就是业务层(service)以及下面的Dao层\r\n>\r\n>4.Model就是视图解析器，解析到具体的.jsp或者.html等文件\r\n>\r\n>5.视图就是根据视图解析器获得的具体视图\r\n\r\n<!-- more -->\r\n\r\n具体细节：\r\n\r\n![](https://rong-1257752702.cos.ap-chengdu.myqcloud.com/spring/springMVC%E5%8E%9F%E7%90%86%E6%89%A7%E8%A1%8C/2.png)\r\n\r\n1.  DispatcherServlet表示前置控制器，是整个SpringMVC的控制中心。用户发出请求，DispatcherServlet接收请求并拦截请求。 \r\n\r\n   *  我们假设请求的url为 : [http://localhost](http://localhost/):8080/SpringMVC/hello \r\n\r\n   *  **如上url拆分成三部分：** \r\n\r\n   *  [http://localhost](http://localhost/):8080服务器域名 \r\n\r\n   *  SpringMVC部署在服务器上的web站点 \r\n\r\n   *  hello表示控制器 (Controller)\r\n\r\n   *  通过分析，如上url表示为：请求位于服务器localhost:8080上的SpringMVC站点的hello控制器。 \r\n\r\n2. HandlerMapping为处理器映射。DispatcherServlet调用HandlerMapping,HandlerMapping根据请求url查找Handler。\r\n\r\n3.  HandlerExecution表示具体的Handler,其主要作用是根据url查找控制器，如上url被查找控制器为：hello。 \r\n\r\n4.  HandlerExecution将解析后的信息传递给DispatcherServlet,比如在哪找到了hello控制器等。 \r\n\r\n5.  HandlerAdapter表示处理器适配器，其按照特定的规则去执行Handler。 \r\n\r\n6. Handler让具体的Controller执行。\r\n\r\n7.  Controller将具体的执行信息返回给HandlerAdapter,如ModelAndView。 \r\n\r\n   >在Controller进行业务模块流程的控制。\r\n   >Controller的方法调用Service业务层的指定方法完成业务逻辑，业务层的方法又会调用DAO层指定方法做数据持久化操作，\r\n   >并最终将结果返回到action层，action层的方法 会返回一个ModelAndView \r\n\r\n8.  HandlerAdapter将视图逻辑名或模型传递给DispatcherServlet。 \r\n\r\n9.  DispatcherServlet调用视图解析器(ViewResolver)来解析HandlerAdapter传递的逻辑视图名。 \r\n\r\n   > Dispathcher查询一个或多个ViewResolver视图解析器,找到ModelAndView对象指定的视图对象\r\n   \r\n10.  视图解析器将解析的逻辑视图名传给DispatcherServlet。 \r\n\r\n11.  DispatcherServlet根据视图解析器解析的视图结果，调用具体的视图。 \r\n\r\n12.  最终视图呈现给用户。 \r\n\r\n​    \r\n\r\n>说明：\r\n>\r\n>①：Action对象 业务层的对象 dao层的对象 sqlSessionFactory对象，都由spring容器来创建和销毁，\r\n>spring对对象进行统一管理，根据配置文件对其进行注入实现，\r\n>\r\n>②：业务层的处理方法， 使用spring的aop的声明式事务管理\r\n\r\n\r\n\r\n\r\n','https://i.picsum.photos/id/0/5616/3744.jpg','原创',0,1,0,1,1,1,'2020-01-01 09:14:45','2020-01-03 14:57:28',5,1,'1.前端控制器就是DispatcherServlet\r\n\r\n2.页面控制器就是Controller\r\n\r\n3.模型就是业务层(service)以及下面的Dao层\r\n\r\n4.Model就是视图解析器，解析到具体的.jsp或者.html等文件\r\n\r\n5.视图就是根据视图解析器获得的具体视图','2,3'),(1577879724073,'异常','>转自黑马程序员\r\n## 主要内容\r\n\r\n- 异常、线程\r\n\r\n## 教学目标\r\n<!-- more -->\r\n- [ ] 能够辨别程序中异常和错误的区别\r\n- [ ] 说出异常的分类\r\n- [ ] 说出虚拟机处理异常的方式\r\n- [ ] 列举出常见的三个运行期异常\r\n- [ ] 能够使用try...catch关键字处理异常\r\n- [ ] 能够使用throws关键字处理异常\r\n- [ ] 能够自定义异常类\r\n- [ ] 能够处理自定义异常类\r\n- [ ] 说出进程的概念\r\n- [ ] 说出线程的概念\r\n- [ ] 能够理解并发与并行的区别\r\n- [ ] 能够开启新线程\r\n\r\n# 第一章    异常\r\n\r\n## 1.1 异常概念\r\n\r\n异常，就是不正常的意思。在生活中:医生说,你的身体某个部位有异常,该部位和正常相比有点不同,该部位的功能将受影响.在程序中的意思就是：\r\n\r\n* **异常** ：指的是程序在执行过程中，出现的非正常的情况，最终会导致JVM的非正常停止。\r\n\r\n在Java等面向对象的编程语言中，异常本身是一个类，产生异常就是创建异常对象并抛出了一个异常对象。Java处理异常的方式是中断处理。\r\n\r\n> 异常指的并不是语法错误,语法错了,编译不通过,不会产生字节码文件,根本不能运行.\r\n\r\n## 1.2 异常体系\r\n\r\n异常机制其实是帮助我们**找到**程序中的问题，异常的根类是`java.lang.Throwable`，其下有两个子类：`java.lang.Error`与`java.lang.Exception`，平常所说的异常指`java.lang.Exception`。\r\n\r\n![](https://rong-1257752702.cos.ap-chengdu.myqcloud.com/%E5%BC%82%E5%B8%B8%E5%92%8C%E7%BA%BF%E7%A8%8B/%E5%BC%82%E5%B8%B8%E4%BD%93%E7%B3%BB.png)\r\n\r\n**Throwable体系：**\r\n\r\n* **Error**:严重错误Error，无法通过处理的错误，只能事先避免，好比绝症。\r\n* **Exception**:表示异常，异常产生后程序员可以通过代码的方式纠正，使程序继续运行，是必须要处理的。好比感冒、阑尾炎。\r\n\r\n**Throwable中的常用方法：**\r\n\r\n* `public void printStackTrace()`:打印异常的详细信息。\r\n\r\n  *包含了异常的类型,异常的原因,还包括异常出现的位置,在开发和调试阶段,都得使用printStackTrace。*\r\n\r\n* `public String getMessage()`:获取发生异常的原因。\r\n\r\n  *提示给用户的时候,就提示错误原因。*\r\n\r\n* `public String toString()`:获取异常的类型和异常描述信息(不用)。\r\n\r\n***出现异常,不要紧张,把异常的简单类名,拷贝到API中去查。***\r\n\r\n![](https://rong-1257752702.cos.ap-chengdu.myqcloud.com/%E5%BC%82%E5%B8%B8%E5%92%8C%E7%BA%BF%E7%A8%8B/%E7%AE%80%E5%8D%95%E7%9A%84%E5%BC%82%E5%B8%B8%E6%9F%A5%E7%9C%8B.bmp)\r\n\r\n## 1.3 异常分类\r\n\r\n我们平常说的异常就是指Exception，因为这类异常一旦出现，我们就要对代码进行更正，修复程序。\r\n\r\n**异常(Exception)的分类**:根据在编译时期还是运行时期去检查异常?\r\n\r\n* **编译时期异常**:checked异常。在编译时期,就会检查,如果没有处理异常,则编译失败。(如日期格式化异常)\r\n* **运行时期异常**:runtime异常。在运行时期,检查异常.在编译时期,运行异常不会编译器检测(不报错)。(如数学异常)\r\n\r\n​    ![](https://rong-1257752702.cos.ap-chengdu.myqcloud.com/%E5%BC%82%E5%B8%B8%E5%92%8C%E7%BA%BF%E7%A8%8B/%E5%BC%82%E5%B8%B8%E7%9A%84%E5%88%86%E7%B1%BB.png)\r\n\r\n## 1.4     异常的产生过程解析\r\n\r\n先运行下面的程序，程序会产生一个数组索引越界异常ArrayIndexOfBoundsException。我们通过图解来解析下异常产生的过程。\r\n\r\n 工具类\r\n\r\n~~~java\r\npublic class ArrayTools {\r\n    // 对给定的数组通过给定的角标获取元素。\r\n    public static int getElement(int[] arr, int index) {\r\n        int element = arr[index];\r\n        return element;\r\n    }\r\n}\r\n~~~\r\n\r\n 测试类\r\n\r\n~~~java\r\npublic class ExceptionDemo {\r\n    public static void main(String[] args) {\r\n        int[] arr = { 34, 12, 67 };\r\n        intnum = ArrayTools.getElement(arr, 4)\r\n        System.out.println(\"num=\" + num);\r\n        System.out.println(\"over\");\r\n    }\r\n}\r\n~~~\r\n\r\n上述程序执行过程图解：\r\n\r\n ![](https://rong-1257752702.cos.ap-chengdu.myqcloud.com/%E5%BC%82%E5%B8%B8%E5%92%8C%E7%BA%BF%E7%A8%8B/%E5%BC%82%E5%B8%B8%E4%BA%A7%E7%94%9F%E8%BF%87%E7%A8%8B.png)\r\n\r\n# 第二章 异常的处理\r\n\r\nJava异常处理的五个关键字：**try、catch、finally、throw、throws**\r\n\r\n## 2.1 	抛出异常throw\r\n\r\n在编写程序时，我们必须要考虑程序出现问题的情况。比如，在定义方法时，方法需要接受参数。那么，当调用方法使用接受到的参数时，首先需要先对参数数据进行合法的判断，数据若不合法，就应该告诉调用者，传递合法的数据进来。这时需要使用抛出异常的方式来告诉调用者。\r\n\r\n在java中，提供了一个**throw**关键字，它用来抛出一个指定的异常对象。那么，抛出一个异常具体如何操作呢？\r\n\r\n1. 创建一个异常对象。封装一些提示信息(信息可以自己编写)。\r\n\r\n2. 需要将这个异常对象告知给调用者。怎么告知呢？怎么将这个异常对象传递到调用者处呢？通过关键字throw就可以完成。throw 异常对象。\r\n\r\n   throw**用在方法内**，用来抛出一个异常对象，将这个异常对象传递到调用者处，并结束当前方法的执行。\r\n\r\n**使用格式：**\r\n\r\n~~~\r\nthrow new 异常类名(参数);\r\n~~~\r\n\r\n 例如：\r\n\r\n~~~java\r\nthrow new NullPointerException(\"要访问的arr数组不存在\");\r\n\r\nthrow new ArrayIndexOutOfBoundsException(\"该索引在数组中不存在，已超出范围\");\r\n~~~\r\n\r\n学习完抛出异常的格式后，我们通过下面程序演示下throw的使用。\r\n\r\n~~~java\r\npublic class ThrowDemo {\r\n    public static void main(String[] args) {\r\n        //创建一个数组 \r\n        int[] arr = {2,4,52,2};\r\n        //根据索引找对应的元素 \r\n        int index = 4;\r\n        int element = getElement(arr, index);\r\n\r\n        System.out.println(element);\r\n        System.out.println(\"over\");\r\n    }\r\n    /*\r\n     * 根据 索引找到数组中对应的元素\r\n     */\r\n    public static int getElement(int[] arr,int index){ \r\n       	//判断  索引是否越界\r\n        if(index<0 || index>arr.length-1){\r\n             /*\r\n             判断条件如果满足，当执行完throw抛出异常对象后，方法已经无法继续运算。\r\n             这时就会结束当前方法的执行，并将异常告知给调用者。这时就需要通过异常来解决。 \r\n              */\r\n             throw new ArrayIndexOutOfBoundsException(\"哥们，角标越界了~~~\");\r\n        }\r\n        int element = arr[index];\r\n        return element;\r\n    }\r\n}\r\n~~~\r\n\r\n> 注意：如果产生了问题，我们就会throw将问题描述类即异常进行抛出，也就是将问题返回给该方法的调用者。\r\n>\r\n> 那么对于调用者来说，该怎么处理呢？一种是进行捕获处理，另一种就是继续讲问题声明出去，使用throws声明处理。\r\n\r\n## 2.2 Objects非空判断\r\n\r\n还记得我们学习过一个类Objects吗，曾经提到过它由一些静态的实用方法组成，这些方法是null-save（空指针安全的）或null-tolerant（容忍空指针的），那么在它的源码中，对对象为null的值进行了抛出异常操作。\r\n\r\n* `public static <T> T requireNonNull(T obj)`:查看指定引用对象不是null。\r\n\r\n查看源码发现这里对为null的进行了抛出异常操作：\r\n\r\n~~~java\r\npublic static <T> T requireNonNull(T obj) {\r\n    if (obj == null)\r\n      	throw new NullPointerException();\r\n    return obj;\r\n}\r\n~~~\r\n\r\n## 2.3  声明异常throws\r\n\r\n**声明异常**：将问题标识出来，报告给调用者。如果方法内通过throw抛出了编译时异常，而没有捕获处理（稍后讲解该方式），那么必须通过throws进行声明，让调用者去处理。\r\n\r\n关键字**throws**运用于方法声明之上,用于表示当前方法不处理异常,而是提醒该方法的调用者来处理异常(抛出异常).\r\n\r\n**声明异常格式：**\r\n\r\n~~~\r\n修饰符 返回值类型 方法名(参数) throws 异常类名1,异常类名2…{   }	\r\n~~~\r\n\r\n声明异常的代码演示：\r\n\r\n~~~java\r\npublic class ThrowsDemo {\r\n    public static void main(String[] args) throws FileNotFoundException {\r\n        read(\"a.txt\");\r\n    }\r\n\r\n    // 如果定义功能时有问题发生需要报告给调用者。可以通过在方法上使用throws关键字进行声明\r\n    public static void read(String path) throws FileNotFoundException {\r\n        if (!path.equals(\"a.txt\")) {//如果不是 a.txt这个文件 \r\n            // 我假设  如果不是 a.txt 认为 该文件不存在 是一个错误 也就是异常  throw\r\n            throw new FileNotFoundException(\"文件不存在\");\r\n        }\r\n    }\r\n}\r\n~~~\r\n\r\nthrows用于进行异常类的声明，若该方法可能有多种异常情况产生，那么在throws后面可以写多个异常类，用逗号隔开。\r\n\r\n~~~java\r\npublic class ThrowsDemo2 {\r\n    public static void main(String[] args) throws IOException {\r\n        read(\"a.txt\");\r\n    }\r\n\r\n    public static void read(String path)throws FileNotFoundException, IOException {\r\n        if (!path.equals(\"a.txt\")) {//如果不是 a.txt这个文件 \r\n            // 我假设  如果不是 a.txt 认为 该文件不存在 是一个错误 也就是异常  throw\r\n            throw new FileNotFoundException(\"文件不存在\");\r\n        }\r\n        if (!path.equals(\"b.txt\")) {\r\n            throw new IOException();\r\n        }\r\n    }\r\n}\r\n~~~\r\n\r\n## 2.4  捕获异常try…catch\r\n\r\n如果异常出现的话,会立刻终止程序,所以我们得处理异常:\r\n\r\n1. 该方法不处理,而是声明抛出,由该方法的调用者来处理(throws)。\r\n2. 在方法中使用try-catch的语句块来处理异常。\r\n\r\n**try-catch**的方式就是捕获异常。\r\n\r\n* **捕获异常**：Java中对异常有针对性的语句进行捕获，可以对出现的异常进行指定方式的处理。\r\n\r\n捕获异常语法如下：\r\n\r\n~~~java\r\ntry{\r\n     编写可能会出现异常的代码\r\n}catch(异常类型  e){\r\n     处理异常的代码\r\n     //记录日志/打印异常信息/继续抛出异常\r\n}\r\n~~~\r\n\r\n**try：**该代码块中编写可能产生异常的代码。\r\n\r\n**catch：**用来进行某种异常的捕获，实现对捕获到的异常进行处理。\r\n\r\n> 注意:try和catch都不能单独使用,必须连用。\r\n\r\n演示如下：\r\n\r\n~~~java\r\npublic class TryCatchDemo {\r\n    public static void main(String[] args) {\r\n        try {// 当产生异常时，必须有处理方式。要么捕获，要么声明。\r\n            read(\"b.txt\");\r\n        } catch (FileNotFoundException e) {// 括号中需要定义什么呢？\r\n          	//try中抛出的是什么异常，在括号中就定义什么异常类型\r\n            System.out.println(e);\r\n        }\r\n        System.out.println(\"over\");\r\n    }\r\n    /*\r\n     *\r\n     * 我们 当前的这个方法中 有异常  有编译期异常\r\n     */\r\n    public static void read(String path) throws FileNotFoundException {\r\n        if (!path.equals(\"a.txt\")) {//如果不是 a.txt这个文件 \r\n            // 我假设  如果不是 a.txt 认为 该文件不存在 是一个错误 也就是异常  throw\r\n            throw new FileNotFoundException(\"文件不存在\");\r\n        }\r\n    }\r\n}\r\n~~~\r\n\r\n如何获取异常信息：\r\n\r\nThrowable类中定义了一些查看方法:\r\n\r\n* `public String getMessage()`:获取异常的描述信息,原因(提示给用户的时候,就提示错误原因。\r\n\r\n\r\n* `public String toString()`:获取异常的类型和异常描述信息(不用)。\r\n* `public void printStackTrace()`:打印异常的跟踪栈信息并输出到控制台。\r\n\r\n​            *包含了异常的类型,异常的原因,还包括异常出现的位置,在开发和调试阶段,都得使用printStackTrace。*\r\n\r\n## 2.4 finally 代码块\r\n\r\n**finally**：有一些特定的代码无论异常是否发生，都需要执行。另外，因为异常会引发程序跳转，导致有些语句执行不到。而finally就是解决这个问题的，在finally代码块中存放的代码都是一定会被执行的。\r\n\r\n什么时候的代码必须最终执行？\r\n\r\n当我们在try语句块中打开了一些物理资源(磁盘文件/网络连接/数据库连接等),我们都得在使用完之后,最终关闭打开的资源。\r\n\r\nfinally的语法:\r\n\r\n try...catch....finally:自身需要处理异常,最终还得关闭资源。\r\n\r\n> 注意:finally不能单独使用。\r\n\r\n比如在我们之后学习的IO流中，当打开了一个关联文件的资源，最后程序不管结果如何，都需要把这个资源关闭掉。\r\n\r\nfinally代码参考如下：\r\n\r\n~~~java\r\npublic class TryCatchDemo4 {\r\n    public static void main(String[] args) {\r\n        try {\r\n            read(\"a.txt\");\r\n        } catch (FileNotFoundException e) {\r\n            //抓取到的是编译期异常  抛出去的是运行期 \r\n            throw new RuntimeException(e);\r\n        } finally {\r\n            System.out.println(\"不管程序怎样，这里都将会被执行。\");\r\n        }\r\n        System.out.println(\"over\");\r\n    }\r\n    /*\r\n     *\r\n     * 我们 当前的这个方法中 有异常  有编译期异常\r\n     */\r\n    public static void read(String path) throws FileNotFoundException {\r\n        if (!path.equals(\"a.txt\")) {//如果不是 a.txt这个文件 \r\n            // 我假设  如果不是 a.txt 认为 该文件不存在 是一个错误 也就是异常  throw\r\n            throw new FileNotFoundException(\"文件不存在\");\r\n        }\r\n    }\r\n}\r\n~~~\r\n\r\n> 当只有在try或者catch中调用退出JVM的相关方法,此时finally才不会执行,否则finally永远会执行。\r\n\r\n![](https://rong-1257752702.cos.ap-chengdu.myqcloud.com/%E5%BC%82%E5%B8%B8%E5%92%8C%E7%BA%BF%E7%A8%8B/%E6%AD%BB%E4%BA%86%E9%83%BD%E8%A6%81try.bmp)\r\n\r\n## 2.5   异常注意事项\r\n\r\n* 多个异常使用捕获又该如何处理呢？\r\n\r\n  1. 多个异常分别处理。\r\n  2. 多个异常一次捕获，多次处理。\r\n  3. 多个异常一次捕获一次处理。\r\n\r\n  一般我们是使用一次捕获多次处理方式，格式如下：\r\n\r\n  ```java\r\n  try{\r\n       编写可能会出现异常的代码\r\n  }catch(异常类型A  e){  当try中出现A类型异常,就用该catch来捕获.\r\n       处理异常的代码\r\n       //记录日志/打印异常信息/继续抛出异常\r\n  }catch(异常类型B  e){  当try中出现B类型异常,就用该catch来捕获.\r\n       处理异常的代码\r\n       //记录日志/打印异常信息/继续抛出异常\r\n  }\r\n  ```\r\n\r\n  > 注意:这种异常处理方式，要求多个catch中的异常不能相同，并且若catch中的多个异常之间有子父类异常的关系，那么子类异常要求在上面的catch处理，父类异常在下面的catch处理。\r\n\r\n* 运行时异常被抛出可以不处理。即不捕获也不声明抛出。\r\n\r\n* 如果finally有return语句,永远返回finally中的结果,避免该情况. \r\n\r\n* 如果父类抛出了多个异常,子类重写父类方法时,抛出和父类相同的异常或者是父类异常的子类或者不抛出异常。\r\n\r\n* 父类方法没有抛出异常，子类重写父类该方法时也不可抛出异常。此时子类产生该异常，只能捕获处理，不能声明抛出\r\n\r\n\r\n# 第三章 自定义异常\r\n\r\n## 3.1 概述\r\n\r\n**为什么需要自定义异常类:**\r\n\r\n我们说了Java中不同的异常类,分别表示着某一种具体的异常情况,那么在开发中总是有些异常情况是SUN没有定义好的,此时我们根据自己业务的异常情况来定义异常类。例如年龄负数问题,考试成绩负数问题等等。\r\n\r\n在上述代码中，发现这些异常都是JDK内部定义好的，但是实际开发中也会出现很多异常,这些异常很可能在JDK中没有定义过,例如年龄负数问题,考试成绩负数问题.那么能不能自己定义异常呢？\r\n\r\n**什么是自定义异常类:**\r\n\r\n在开发中根据自己业务的异常情况来定义异常类.\r\n\r\n自定义一个业务逻辑异常: **RegisterException**。一个注册异常类。\r\n\r\n**异常类如何定义:**\r\n\r\n1. 自定义一个编译期异常: 自定义类 并继承于`java.lang.Exception`。\r\n2. 自定义一个运行时期的异常类:自定义类 并继承于`java.lang.RuntimeException`。\r\n\r\n## 3.2 自定义异常的练习\r\n\r\n要求：我们模拟注册操作，如果用户名已存在，则抛出异常并提示：亲，该用户名已经被注册。\r\n\r\n首先定义一个登陆异常类RegisterException：\r\n\r\n~~~java\r\n// 业务逻辑异常\r\npublic class RegisterException extends Exception {\r\n    /**\r\n     * 空参构造\r\n     */\r\n    public RegisterException() {\r\n    }\r\n\r\n    /**\r\n     *\r\n     * @param message 表示异常提示\r\n     */\r\n    public RegisterException(String message) {\r\n        super(message);\r\n    }\r\n}\r\n~~~\r\n\r\n模拟登陆操作，使用数组模拟数据库中存储的数据，并提供当前注册账号是否存在方法用于判断。\r\n\r\n~~~java\r\npublic class Demo {\r\n    // 模拟数据库中已存在账号\r\n    private static String[] names = {\"bill\",\"hill\",\"jill\"};\r\n   \r\n    public static void main(String[] args) {     \r\n        //调用方法\r\n        try{\r\n              // 可能出现异常的代码\r\n            checkUsername(\"nill\");\r\n            System.out.println(\"注册成功\");//如果没有异常就是注册成功\r\n        }catch(RegisterException e){\r\n            //处理异常\r\n            e.printStackTrace();\r\n        }\r\n    }\r\n\r\n    //判断当前注册账号是否存在\r\n    //因为是编译期异常，又想调用者去处理 所以声明该异常\r\n    public static boolean checkUsername(String uname) throws LoginException{\r\n        for (String name : names) {\r\n            if(name.equals(uname)){//如果名字在这里面 就抛出登陆异常\r\n                throw new RegisterException(\"亲\"+name+\"已经被注册了！\");\r\n            }\r\n        }\r\n        return true;\r\n    }\r\n}\r\n~~~\r\n\r\n#  第四章 多线程\r\n\r\n我们在之前，学习的程序在没有跳转语句的前提下，都是由上至下依次执行，那现在想要设计一个程序，边打游戏边听歌，怎么设计？\r\n\r\n要解决上述问题,咱们得使用多进程或者多线程来解决.\r\n\r\n## 4.1 并发与并行\r\n\r\n* **并发**：指两个或多个事件在**同一个时间段内**发生。\r\n* **并行**：指两个或多个事件在**同一时刻**发生（同时发生）。\r\n\r\n![](https://rong-1257752702.cos.ap-chengdu.myqcloud.com/%E5%BC%82%E5%B8%B8%E5%92%8C%E7%BA%BF%E7%A8%8B/%E5%B9%B6%E8%A1%8C%E4%B8%8E%E5%B9%B6%E5%8F%91.bmp)\r\n\r\n在操作系统中，安装了多个程序，并发指的是在一段时间内宏观上有多个程序同时运行，这在单 CPU 系统中，每一时刻只能有一道程序执行，即微观上这些程序是分时的交替运行，只不过是给人的感觉是同时运行，那是因为分时交替运行的时间是非常短的。\r\n\r\n而在多个 CPU 系统中，则这些可以并发执行的程序便可以分配到多个处理器上（CPU），实现多任务并行执行，即利用每个处理器来处理一个可以并发执行的程序，这样多个程序便可以同时执行。目前电脑市场上说的多核 CPU，便是多核处理器，核 越多，并行处理的程序越多，能大大的提高电脑运行的效率。\r\n\r\n> 注意：单核处理器的计算机肯定是不能并行的处理多个任务的，只能是多个任务在单个CPU上并发运行。同理,线程也是一样的，从宏观角度上理解线程是并行运行的，但是从微观角度上分析却是串行运行的，即一个线程一个线程的去运行，当系统只有一个CPU时，线程会以某种顺序执行多个线程，我们把这种情况称之为线程调度。\r\n\r\n## 4.2 线程与进程\r\n\r\n* **进程**：是指一个内存中运行的应用程序，每个进程都有一个独立的内存空间，一个应用程序可以同时运行多个进程；进程也是程序的一次执行过程，是系统运行程序的基本单位；系统运行一个程序即是一个进程从创建、运行到消亡的过程。\r\n\r\n* **线程**：线程是进程中的一个执行单元，负责当前进程中程序的执行，一个进程中至少有一个线程。一个进程中是可以有多个线程的，这个应用程序也可以称之为多线程程序。 \r\n\r\n  简而言之：一个程序运行后至少有一个进程，一个进程中可以包含多个线程 \r\n\r\n我们可以再电脑底部任务栏，右键----->打开任务管理器,可以查看当前任务的进程：\r\n\r\n**进程**\r\n\r\n![](https://rong-1257752702.cos.ap-chengdu.myqcloud.com/%E5%BC%82%E5%B8%B8%E5%92%8C%E7%BA%BF%E7%A8%8B/%E5%B9%B6%E8%A1%8C%E4%B8%8E%E5%B9%B6%E5%8F%91.bmp)\r\n\r\n**线程**\r\n\r\n![](https://rong-1257752702.cos.ap-chengdu.myqcloud.com/%E5%BC%82%E5%B8%B8%E5%92%8C%E7%BA%BF%E7%A8%8B/%E7%BA%BF%E7%A8%8B%E6%A6%82%E5%BF%B5.png)\r\n\r\n**线程调度:**\r\n\r\n- 分时调度\r\n\r\n  所有线程轮流使用 CPU 的使用权，平均分配每个线程占用 CPU 的时间。\r\n\r\n- 抢占式调度\r\n\r\n  优先让优先级高的线程使用 CPU，如果线程的优先级相同，那么会随机选择一个(线程随机性)，Java使用的为抢占式调度。\r\n\r\n  - 设置线程的优先级\r\n\r\n  ![设置线程优先级](https://rong-1257752702.cos.ap-chengdu.myqcloud.com/%E5%BC%82%E5%B8%B8%E5%92%8C%E7%BA%BF%E7%A8%8B/%E8%AE%BE%E7%BD%AE%E7%BA%BF%E7%A8%8B%E4%BC%98%E5%85%88%E7%BA%A7.bmp)\r\n  -  抢占式调度详解\r\n\r\n    大部分操作系统都支持多进程并发运行，现在的操作系统几乎都支持同时运行多个程序。比如：现在我们上课一边使用编辑器，一边使用录屏软件，同时还开着画图板，dos窗口等软件。此时，这些程序是在同时运行，”感觉这些软件好像在同一时刻运行着“。\r\n\r\n    实际上，CPU(中央处理器)使用抢占式调度模式在多个线程间进行着高速的切换。对于CPU的一个核而言，某个时刻，只能执行一个线程，而 CPU的在多个线程间切换速度相对我们的感觉要快，看上去就是在同一时刻运行。\r\n    其实，多线程程序并不能提高程序的运行速度，但能够提高程序运行效率，让CPU的使用率更高。\r\n\r\n    ![抢占式调度](https://rong-1257752702.cos.ap-chengdu.myqcloud.com/%E5%BC%82%E5%B8%B8%E5%92%8C%E7%BA%BF%E7%A8%8B/%E6%8A%A2%E5%8D%A0%E5%BC%8F%E8%B0%83%E5%BA%A6.bmp)\r\n\r\n## 4.3 创建线程类\r\n\r\nJava使用`java.lang.Thread`类代表**线程**，所有的线程对象都必须是Thread类或其子类的实例。每个线程的作用是完成一定的任务，实际上就是执行一段程序流即一段顺序执行的代码。Java使用线程执行体来代表这段程序流。Java中通过继承Thread类来**创建**并**启动多线程**的步骤如下：\r\n\r\n1. 定义Thread类的子类，并重写该类的run()方法，该run()方法的方法体就代表了线程需要完成的任务,因此把run()方法称为线程执行体。\r\n2. 创建Thread子类的实例，即创建了线程对象\r\n3. 调用线程对象的start()方法来启动该线程\r\n\r\n代码如下：\r\n\r\n测试类：\r\n\r\n~~~java\r\npublic class Demo01 {\r\n	public static void main(String[] args) {\r\n		//创建自定义线程对象\r\n		MyThread mt = new MyThread(\"新的线程！\");\r\n		//开启新线程\r\n		mt.start();\r\n		//在主方法中执行for循环\r\n		for (int i = 0; i < 10; i++) {\r\n			System.out.println(\"main线程！\"+i);\r\n		}\r\n	}\r\n}\r\n~~~\r\n\r\n自定义线程类：\r\n\r\n~~~java\r\npublic class MyThread extends Thread {\r\n	//定义指定线程名称的构造方法\r\n	public MyThread(String name) {\r\n		//调用父类的String参数的构造方法，指定线程的名称\r\n		super(name);\r\n	}\r\n	/**\r\n	 * 重写run方法，完成该线程执行的逻辑\r\n	 */\r\n	@Override\r\n	public void run() {\r\n		for (int i = 0; i < 10; i++) {\r\n			System.out.println(getName()+\"：正在执行！\"+i);\r\n		}\r\n	}\r\n}\r\n~~~\r\n','https://i.picsum.photos/id/0/5616/3744.jpg','原创',0,0,0,0,1,1,'2020-01-01 11:55:24','2020-01-02 03:05:56',3,1,'异常详解','2,3,5');

/*Table structure for table `t_blog_tags` */

DROP TABLE IF EXISTS `t_blog_tags`;

CREATE TABLE `t_blog_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` bigint(20) DEFAULT NULL,
  `blog_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

/*Data for the table `t_blog_tags` */

insert  into `t_blog_tags`(`id`,`tag_id`,`blog_id`) values (36,2,'1577792888747'),(37,3,'1577792888747'),(38,5,'1577792888747'),(39,2,'1577793147252'),(40,3,'1577793147252'),(41,3,'1577869935491'),(42,2,'1577869935491'),(43,5,'1577869935491'),(44,1,'1577870084710'),(45,2,'1577870084710'),(46,3,'1577870084710'),(47,2,'1577879724073'),(48,3,'1577879724073'),(49,5,'1577879724073');

/*Table structure for table `t_comment` */

DROP TABLE IF EXISTS `t_comment`;

CREATE TABLE `t_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `blog_id` bigint(20) DEFAULT NULL,
  `parent_comment_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `t_comment` */

insert  into `t_comment`(`id`,`nickname`,`email`,`content`,`avatar`,`create_time`,`blog_id`,`parent_comment_id`) values (16,'小黑','ghaabbccdd@163.com','测试','/image/1.jpg','2020-01-03 07:26:40',1577792888747,-1),(17,'666','1437810640@qq.com','不错','/image/1.jpg','2020-01-03 07:27:23',1577879724073,-1),(18,'戎靖','1437810640@qq.com','爱您','https://unsplash.it/100/100?image=1005','2020-01-03 14:58:11',1577870084710,-1);

/*Table structure for table `t_tag` */

DROP TABLE IF EXISTS `t_tag`;

CREATE TABLE `t_tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `t_tag` */

insert  into `t_tag`(`id`,`name`) values (1,'生活'),(2,'学习'),(3,'知识'),(5,'java基础');

/*Table structure for table `t_type` */

DROP TABLE IF EXISTS `t_type`;

CREATE TABLE `t_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `t_type` */

insert  into `t_type`(`id`,`name`) values (3,'java基础'),(4,'hexo'),(5,'ssm框架'),(6,'算法');

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `type` int(10) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `t_user` */

insert  into `t_user`(`id`,`nickname`,`username`,`password`,`email`,`avatar`,`type`,`create_time`,`update_time`) values (1,'GH','gao','e10adc3949ba59abbe56e057f20f883e','1437810640@qq.com','https://unsplash.it/100/100?image=1005',1,'2019-12-20 16:03:24','2019-12-22 16:04:07');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
