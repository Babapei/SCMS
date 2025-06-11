# 🏃‍♂️ 运动中心管理系统

[![Spring Boot](https://img.shields.io/badge/Spring%20Boot-2.7.3-brightgreen.svg)](https://spring.io/projects/spring-boot)
[![Java](https://img.shields.io/badge/Java-1.8-orange.svg)](https://www.oracle.com/java/)
[![MySQL](https://img.shields.io/badge/MySQL-8.0-blue.svg)](https://www.mysql.com/)
[![Thymeleaf](https://img.shields.io/badge/Thymeleaf-3.0-green.svg)](https://www.thymeleaf.org/)
[![MyBatis](https://img.shields.io/badge/MyBatis-2.2.0-red.svg)](https://mybatis.org/)

> 一个基于Spring Boot的现代化运动中心综合管理系统，提供会员管理、员工管理、课程管理和设备管理等全方位功能。

## 📋 项目简介

运动中心管理系统是一个功能完善的健身房管理平台，采用B/S架构设计，实现了管理员和会员的双角色管理模式。系统界面简洁美观，操作便捷，能够有效提升运动中心的管理效率和用户体验。

### ✨ 核心特性

- 🎯 **双角色系统**: 管理员端和会员端分离设计
- 📊 **数据可视化**: 直观的数据统计和图表展示
- 🔐 **安全登录**: 独立的管理员和会员登录系统
- 📱 **响应式设计**: 适配多种设备屏幕
- 🎨 **现代UI**: 基于Bootstrap 5的简洁界面设计

## 🛠️ 技术栈

### 后端技术
- **Spring Boot 2.7.3** - 主框架
- **Spring Web** - Web层框架
- **MyBatis 2.2.0** - 持久层框架
- **MySQL 8.0** - 数据库
- **Maven** - 项目构建工具
- **Java 1.8** - 开发语言

### 前端技术
- **Thymeleaf** - 模板引擎
- **Bootstrap 5.0.2** - UI框架
- **SB Admin 7.0.2** - 管理后台模板
- **Font Awesome 5.15.3** - 图标库
- **JavaScript** - 交互逻辑
- **CSS3** - 样式设计

## 🏗️ 系统架构

```
gym-management-system/
├── src/main/java/com/milotnt/          # Java源码
│   ├── controller/                      # 控制层
│   │   ├── LoginController.java         # 登录控制器
│   │   ├── MemberController.java        # 会员管理
│   │   ├── EmployeeController.java      # 员工管理
│   │   ├── EquipmentController.java     # 设备管理
│   │   ├── ClassController.java         # 课程管理
│   │   └── UserController.java          # 用户功能
│   ├── service/                         # 业务层
│   ├── mapper/                          # 数据访问层
│   └── pojo/                           # 实体类
├── src/main/resources/
│   ├── templates/                       # Thymeleaf模板
│   │   ├── adminLogin.html             # 管理员登录
│   │   ├── userLogin.html              # 会员登录
│   │   ├── adminMain.html              # 管理员主页
│   │   └── userMain.html               # 会员主页
│   ├── static/                         # 静态资源
│   │   ├── css/                        # 样式文件
│   │   ├── js/                         # JavaScript文件
│   │   └── img/                        # 图片资源
│   ├── mapper/                         # MyBatis映射文件
│   └── application.yml                 # 配置文件
└── gym.sql                            # 数据库脚本
```

## 🎮 功能模块

### 👨‍💼 管理员功能
- **🏠 仪表盘**: 系统概览、数据统计、快捷操作
- **👥 会员管理**: 会员信息的增删改查、会员卡查询
- **👨‍💻 员工管理**: 员工档案管理、工号自动生成
- **🏋️ 设备管理**: 健身器材管理、状态监控
- **📅 课程管理**: 课程安排、教练分配、报名管理
- **🔍 快速查询**: 根据会员卡号快速查询会员信息

### 👤 会员功能
- **📋 个人中心**: 个人信息查看与修改
- **📚 我的课程**: 已报名课程管理、退课功能
- **📝 课程报名**: 浏览可选课程、在线报名
- **💳 会员信息**: 卡片信息、课时余量查看

## 📊 数据库设计

### 核心数据表
- **admin** - 管理员账户信息
- **member** - 会员基本信息和卡片信息
- **employee** - 员工档案信息
- **equipment** - 健身设备信息
- **class_table** - 课程基本信息
- **class_order** - 课程报名记录

## 🚀 快速开始

### 环境要求
- JDK 1.8+
- Maven 3.6+
- MySQL 8.0+
- IDE (推荐使用Eclipse或IntelliJ IDEA)

### 安装步骤

1. **克隆项目**
   ```bash
   git clone https://github.com/yourusername/gym-management-system.git
   cd gym-management-system
   ```

2. **创建数据库**
   ```sql
   CREATE DATABASE fitness_club CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
   ```

3. **导入数据**
   ```bash
   mysql -u root -p fitness_club < gym.sql
   ```

4. **配置数据库连接**
   编辑 `src/main/resources/application.yml`:
   ```yaml
   spring:
     datasource:
       url: jdbc:mysql://localhost:3306/fitness_club
       username: your_username
       password: your_password
   ```

5. **运行项目**
   ```bash
   mvn spring-boot:run
   ```

6. **访问系统**
   - 管理员登录: http://localhost:8080
   - 会员登录: http://localhost:8080/toUserLogin

### 默认账户
**管理员账户:**
- 账号: `1001`
- 密码: `123456`

**测试会员账户:**
- 账号: `202145417`
- 密码: `123456`

## 🎨 界面预览

### 登录界面
- 简洁的卡片式登录设计
- 区分管理员和会员登录入口
- 优雅的背景图片和毛玻璃效果

### 管理员后台
- 现代化的仪表盘设计
- 直观的数据统计卡片
- 侧边导航栏，操作便捷
- GitHub风格的简洁设计

### 会员界面
- 用户友好的个人中心
- 清晰的课程管理界面
- 简单易用的报名流程

## 📈 系统特色

### 🔥 亮点功能
1. **智能账号生成**: 自动生成唯一的会员卡号和员工工号
2. **课程冲突检测**: 防止重复报名同一课程
3. **实时数据统计**: 动态显示会员、员工、设备数量
4. **状态管理**: 设备状态监控(正常/损坏/维修中)
5. **时间管理**: 自动记录办卡时间和入职时间

### 🎯 设计理念
- **简洁优先**: 采用GitHub/Apple风格的简洁设计
- **用户体验**: 注重界面的易用性和美观性
- **功能完整**: 覆盖健身房管理的核心业务流程
- **扩展性强**: 模块化设计，便于功能扩展

## 🔧 配置说明

### 应用配置
```yaml
spring:
  thymeleaf:
    cache: false          # 开发环境关闭缓存
  
mybatis:
  mapper-locations: mapper/*.xml
  configuration:
    map-underscore-to-camel-case: true
  type-aliases-package: com.milotnt.pojo
```

### 端口配置
默认端口: `8080`  
如需修改，请在 `application.yml` 中添加:
```yaml
server:
  port: 8888
```

## 🤝 贡献指南

欢迎提交Issue和Pull Request来完善这个项目！

### 开发规范
1. 遵循Java编码规范
2. 提交前请进行代码格式化
3. 添加必要的注释和文档
4. 提交信息使用中文，格式清晰

## 📄 许可证

本项目仅供学习交流使用，请勿用于商业用途。

## 👨‍💻 开发者

- **项目作者**: [您的姓名]
- **开发时间**: 大二上学期Java课程设计
- **开发工具**: Eclipse IDE
- **项目性质**: 学习项目

## 🙏 致谢

感谢以下开源项目的支持：
- [Spring Boot](https://spring.io/projects/spring-boot)
- [MyBatis](https://mybatis.org/)
- [Bootstrap](https://getbootstrap.com/)
- [SB Admin](https://startbootstrap.com/theme/sb-admin)
- [Font Awesome](https://fontawesome.com/)

---

⭐ 如果这个项目对您有帮助，请给个星标支持一下！
