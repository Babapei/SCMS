# 项目启动指南

## 📋 环境要求

- Java 8+
- MySQL 5.7+
- Maven 3.6+

## 🚀 快速启动

### 1. 数据库配置

1. 在 MySQL 中创建数据库：
   ```sql
   CREATE DATABASE fitness_club;
   ```

2. 导入数据库结构和初始数据：
   ```bash
   mysql -u root -p fitness_club < gym.sql
   ```

### 2. 配置文件设置

1. 复制示例配置文件：
   ```bash
   cp src/main/resources/application-example.yml src/main/resources/application-local.yml
   ```

2. 修改 `application-local.yml` 中的数据库密码：
   ```yaml
   spring:
     datasource:
       password: 你的MySQL密码
   ```

3. 或者设置环境变量：
   ```bash
   export DB_PASSWORD=你的MySQL密码
   ```

### 3. 启动项目

1. 编译项目：
   ```bash
   mvn clean compile
   ```

2. 启动应用：
   ```bash
   mvn spring-boot:run
   ```

3. 访问系统：
   - 管理员登录: http://localhost:8080
   - 用户登录: http://localhost:8080/toUserLogin

### 4. 默认账户

**管理员账户**：
- 账号：1001
- 密码：123456

**会员账户**：
- 账号：202145417
- 密码：123456

## ⚠️ 注意事项

- 首次使用需要根据你的MySQL配置修改数据库连接信息
- 确保 MySQL 服务正在运行
- 如遇到端口冲突，可在配置文件中修改端口号 