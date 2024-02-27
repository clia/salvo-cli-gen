# 介绍
这是一个由 [salvo-cli](https://github.com/salvo-rs/salvo-cli) 生成的项目,你可以按照以下命令来运行程序以及测试(非sqlite数据库的请先按照教程修改数据库连接串,完成数据的初始工作)。
😄 最新版的 Salvo 依赖 Rust 版本 1.75。如果编译失败，请尝试使用 `rustup update` 来升级版本。
``` shell
//运行项目
cargo run 
//运行测试
cargo test
```
# 小贴士
- 如果你选择的sqlite或者已经初始化了users表的数据,请使用账号 zhangsan 密码123 来登录。
- 程序数据库连接串在config/config.toml里,但是如果你使用的是sqlx或者seaorm,库本身读取.env文件的配置来生成实体,运行迁移,验证。所以当你修改数据库连接串时,需要同时修改两个地方。
# orm 的文档或主页链接
🐚 您选择了sea-orm，文档可以在这里查看:https://www.sea-ql.org/SeaORM/docs/index/
## sea_orm_cli
SeaOrm-cli的相关数据库迁移,自动创建实体等命令请查看文档:https://www.sea-ql.org/SeaORM/docs/migration/running-migration/#command-line-interface-cli
## 数据初始化
- 请先修改.env和config/config.toml中的数据库连接字符串 
- 确保数据库存在，然后运行sea-orm migration还原数据库，在数据库中运行/data文件中的sql文件以添加默认数据。 
- 运行后，您可以使用默认用户名:zhangsan和密码:123访问/login。 
- 更多sea-orm-cli功能，请查看/migration/README.md。
# 项目目录说明
# salvo-cli-gen
- **目录:** salvo-cli-gen 
- *文件:* Cargo.toml         (Rust项目的依赖和配置信息)
- **目录:** config         (包含所有配置文件的文件夹)
    - **目录:** certs         (存放证书文件的目录)
        - *文件:* key.pem 
        - *文件:* cert.pem 
    - *文件:* config.yml 
- *文件:* .env         (存储数据库连接串的配置文件)
- **目录:** data         (包含数据库文件或初始化数据sql文件的目录)
    - *文件:* init_sql.sql 
- **目录:** assets         (静态资源如图片、JavaScript脚本和CSS样式表)
    - *文件:* favicon.ico 
- **目录:** migration         (数据库迁移脚本的存放位置)
    - *文件:* Cargo.toml 
    - **目录:** src 
        - *文件:* lib.rs 
        - *文件:* m20220101_000001_create_table.rs 
        - *文件:* main.rs 
- **目录:** src         (源代码目录)
    - **目录:** routers         (包含路由处理函数的模块)
        - *文件:* static_routers.rs 
        - *文件:* user.rs 
        - *文件:* mod.rs 
        - *文件:* demo.rs 
    - **目录:** middleware         (包含中间件模块)
        - *文件:* handle_404.rs 
        - *文件:* cors.rs 
        - *文件:* mod.rs 
        - *文件:* jwt.rs 
    - *文件:* config.rs         (读取和处理应用配置的模块)
    - *文件:* app_error.rs         (提供统一错误处理的功能)
    - **目录:** utils         (包含工具函数的模块)
        - *文件:* mod.rs 
        - *文件:* rand_utils.rs 
    - *文件:* db.rs 
    - **目录:** dtos         (定义数据传输对象(DTOs)的模块,用于封装和传输数据)
        - *文件:* user.rs 
        - *文件:* mod.rs 
    - *文件:* app_response.rs         (规范化返回请求)
    - *文件:* main.rs         (程序的入口点,设置和启动服务)
    - **目录:** services         (包含业务逻辑服务的模块)
        - *文件:* user.rs 
        - *文件:* mod.rs 
    - **目录:** entities         (定义实体和与数据库交互的模块)
        - *文件:* users.rs 
        - *文件:* mod.rs 
        - *文件:* prelude.rs 

# 关于赛风(salvo)
你可以在 https://salvo.rs/ 📖查看salvo的文档以及更多例子,如果我们的工具帮到你,欢迎start [salvo](https://github.com/salvo-rs/salvo) 和 [salvo-cli](https://github.com/salvo-rs/salvo-cli),这将给我们很大激励。❤️