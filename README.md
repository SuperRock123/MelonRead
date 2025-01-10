## 项目简介

**西瓜阅读**🍉是一款专注于优质阅读体验的应用，集阅读、互动和推荐于一体。通过个性化推荐与互动设计，为用户提供了舒适的阅读界面和多样化的功能，让每一位用户都能高效地获取知识，并与其他读者交流思想。

西瓜阅读”包含用户信息模块、搜索模块、评论模块、文章详情模块、首页模块、阅读模块。

**前端技术栈**

o  **框架**：使用 Vue 2 （vue-cli+vue-router+cookie）进行前端开发，采用组件化开发模式，提高代码复用性和可维护性。

o  **UI**组件库：使用 Vant 组件库，专注于移动端适配，提升用户体验。

o  **样式库**：集成 **Animate.css** 实现动态效果，为页面交互增添生动性。

o  **请求处理**：通过 **Axios** 实现前端请求逻辑封装，支持请求拦截、错误处理与统一数据响应。

**后端技术栈**

o  **框架**：采用 SSM 框架（Spring + Spring MVC + MyBatis Plus）实现业务逻辑与数据交互。

o  **数据库**：基于 MySQL 8 管理用户、文章、评论等核心数据。

o  **服务部署**：后端服务通过 Tomcat 运行，支持稳定的 API 接口服务。

**部署与运行**

o  **前端**：通过 Node.js 提供本地开发与生产环境支持，生产环境可部署至 Nginx 等静态资源服务器。

o  **后端**：基于 Tomcat 部署，可在本地或服务器环境稳定运行。

o  **接口通信**：统一响应结果封装设计，确保前后端通信高效可靠。

## 预览效果

1. 用户信息模块：用户注册、用户登录、浏览个人信息、编辑个人信息、用户对喜欢的文章点赞

2. 首页模块：根据用户的阅读历史和偏好推荐文章，可以按发布时间或浏览量筛选文章

3. 评论模块：浏览评论、文章发布者在可以删除自己文章下的评论

4. 文章详情模块：提供舒适的阅读界面,用户可以查看其他读者的评论，或发表自己的看法、提供文章的信息、作者介绍，以及对文章点赞。作者可以编辑或删除自己的文章

5. 搜索模块：用户可以通过文章标题、作者等关键词搜索文章、根据浏览量条件等进行筛选

    <div style="color:#4df;text-align:center;font-weight:bold;font-size:2em;background-color:#ffc">idea工程文件</div>

   <img src="images\ideaProject.png" alt="ideaProject" style="zoom: 33%;" />

    <div style="color:#4df;text-align:center;font-weight:bold;font-size:2em;background-color:#ffc">vue工程文件</div>

   ![vsProject](D:\GitHub\MelonRead\images\vsProject.png)

    <div style="color:#4df;text-align:center;font-weight:bold;font-size:2em;background-color:#ffc">实现效果</div>

   <img src="images\屏幕截图 2025-01-10 103506.png" alt="屏幕截图 2025-01-10 103506" />

   

   ![屏幕截图 2025-01-10 103555](D:\GitHub\MelonRead\images\屏幕截图 2025-01-10 103555.png)

   ![屏幕截图 2025-01-10 103619](images\屏幕截图 2025-01-10 103619.png)

![屏幕截图 2025-01-10 103816](D:\GitHub\MelonRead\images\屏幕截图 2025-01-10 103816.png)



✨其它图片放在images文件夹里面的

## 如何运行

1. 你将会使用三个主要文件

   > dist前端打包文件
   >
   > initDataBase包含数据库初始化sql
   >
   > MelonRead基于idea的后端工程文件

2. 使用initDataBase中的`createMelonReadDB.sql`建立数据库

3. 使用initDataBase中的`initMelonReadDb.sql`为数据库插入数据

4. 运行后端

   > 使用idea打开MelonRead工程文件，点击运行
   >
   > 你可以在`application.yml`修改数据库及运行端口的配置

5. 运行前端，使用你喜欢的方式运行，网上有很多教程

6. 浏览器查看效果

   > 注意图片信息是通过vue脚手架配置的代理请求的