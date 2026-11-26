# 异地照护结算的跨分片提交与一致查询

本项目的本地资料保存各方使用的原始关系、接入操作及外部观察。记录里的人员、机构和凭据均为合成。各资料目录独立使用。

## 原始关系及接入约定

home_budget 按住户与当地业务日给授权额，visit_budget 按接待点和业务日给服务额。关系 care_links 提供双方共同认可的关系号和有效日期。币值单位是整数分，left_node 代表居民端，right_node 代表接待端。各节点有各自联调数据库文件。每个请求带稳定的 settlement_id，协议日志中的 prepared、decision 和 apply 可发生在不同节点，不同记录携带的本地位置不可跨节点直接比较。业务请求按日期和关系约束，两端的承诺只有实际持久后才可报告。时轴只记录输入及节点观察，不是既定处理方案。

catalog.json 列出各数据库文件的角色、源表及运行限额。timeline.json 中的 at 是操作或观察到达的顺序，同一时刻按数组内的位置排列。args 是相应动作携带的字段，各记录里的其他位点使用该记录的业务含义。SQL 文件中只有开始联调前的行和表定义。

## 装载资料

Python 3.11.2 自带 SQLite 3.40.1。以下命令从合成资料生成独立数据库，目标文件须尚未存在。可用 sqlite3 打开生成的文件并读取源表。

~~~sh
python3 load_sample.py fixtures/in-doubt-and-cross-region-read home-local.db --role home
python3 load_sample.py fixtures/in-doubt-and-cross-region-read visit-local.db --role visit
python3 load_sample.py fixtures/in-doubt-and-cross-region-read meta-local.db --role meta
~~~

执行 python3 -m unittest -v 可核对各份资料的 SQL 是否可装载、基础表行数，以及普通 SQLite 读写连接能否并行打开。
