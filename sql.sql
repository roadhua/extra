
-- 商品图片
create table shop_picture(
  id int not null auto_increment,
  name varchar (50) not null comment  '商品主图片名',
  pic_addr varchar (100) not null comment  '商品图地址',
  upload_time int (11) not null comment  '上传时间',
  primary key(id)
)engine = innodb default charset = 'utf8' comment '商品主图表';

create table shop_goods(
  id int not null auto_increment comment '商品id',
  goods_name varchar (50) not null comment '商品名称',
  description text (100) not null comment '商品描述',
  category_id int(50) not null comment '商品分类id',
  keywords varchar (255) not null comment 'SEO搜索',
  size varchar(30) not null comment '尺码(中号  大号XL 2XL 3XL)',
  goods_brand varchar(100) not null comment '商品品牌',
  market_price decimal(10, 2) not null comment '市场价',
  cost decimal(10, 2) not null comment '成本价',
  price decimal(10, 2) not null comment '销售价格',
  stock int(10) not null comment '商品库存',
  shipping_fee decimal(10, 2) not null comment '物流运费',
  is_shelf int(11) not null comment '是否上架(1是，0否)',
  is_recommend tinyint(4) not null comment '是否推荐(1是，0否)',
  is_host tinyint(4) not null comment '是否热销产品(1是，0否)',
  provider varchar(100) not null comment '提供商',
  shop_clicks int(11) not null comment '商品点击数量',
  like_clicks int(11) not null comment '用户点赞数量',
  sales int(11) not null comment '销售数量',
  picture varchar(100) not null comment '商品主图',
  img_id_array varchar(100) not null comment '商品副图',
  details text(255)not null comment '商品详情(以反斜杠分段)',
  create_time int(11) not null comment '入库时间',
  primary key (`id`)
)engine = innodb default charset = 'utf8' comment '商品信息表';