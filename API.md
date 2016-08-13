# 失物招领

### 分页查询
- 请求

|      参数    |      描述        |
|:-------------|:-----------------|
|p_start       | int, 分页起点    |
|p_length      | int, 分页长度    |
|type          | 仅允许有(0,1,2), 分别表示招领和寻物信息,招领信息,寻物信息 |


- 返回(JSON对象数组, 数组内每个对象描述如下)

|      参数    |      描述        |
|:-------------|:-----------------|
|laf_id        | int, 信息id      |
|laf_type      | 0-招领信息, 1-寻物信息 |
|laf_stat      | 信息状态(非必须); 1-有效, 2-已过期, 3-待审核, 4-审核失败, 6-认领成功 |
|laf_laftime   | int, unix时间戳, 物品丢失时间,如果是寻物信息的话非必需 |
|laf_pubtime   | int, unix时间戳, 信息发布时间 |
|laf_name      | string, 联系人姓名 |
|laf_stuid     | string, 学号 |
|laf_phone     | string, 联系电话 |
|laf_qq        | string, 联系qq |
|laf_detail    | string, 信息描述 |
|laf_pic       | array, 数组内单条记录(string)表示图片地址 |

### 详情页查询
- 请求

|      参数    |      描述        |
|:-------------|:-----------------|
|id            | 信息id           |


- 返回(JSON对象)

|      参数    |      描述        |
|:-------------|:-----------------|
|laf_id        | int, 信息id      |
|laf_type      | 0-招领信息, 1-寻物信息 |
|laf_stat      | 信息状态(非必须); 1-有效, 2-已过期, 3-待审核, 4-审核失败, 6-认领成功 |
|laf_laftime   | int, unix时间戳, 物品丢失时间,如果是寻物信息的话非必需 |
|laf_pubtime   | int, unix时间戳, 信息发布时间 |
|laf_name      | string, 联系人姓名 |
|laf_stuid     | string, 学号 |
|laf_phone     | string, 联系电话 |
|laf_qq        | string, 联系qq |
|laf_detail    | string, 信息描述 |
|laf_pic       | array, 数组内单条记录(string)表示图片地址 |


# 未完待续。
