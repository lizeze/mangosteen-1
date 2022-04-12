# 环境搭建

 ## 加速器
   ```shell
   gem sources --add https://gems.ruby-china.com/ --remove https://rubygems.org/
   bundle config mirror.https://rubygems.org https://gems.ruby-china.com
```
  ## 安装依赖

 ```shell
   gem install rails -v 7.0.2.3
   pacman -S postgresql-libs
```
 ## 创建项目

  ```
  cd ~/repos
 rails new --api --database=postgresql --skip-test mangosteen-1

  ```
  ## 启动数据库

  ```
  docker run -d      --name db-for-mangosteen      -e POSTGRES_USER=mangosteen      -e POSTGRES_PASSWORD=123456      -e POSTGRES_DB=mangosteen_dev      -e PGDATA=/var/lib/postgresql/data/pgdata      -v mangosteen-data:/var/lib/postgresql/data      --network=network1      postgres:14

  ```
   # 创建实体

   ```
   bin/rails g model user emial:string age:integer

   rails db:migrate

   rake db:rollback STEP=1   
   ```