<?php
return array(
	//'配置项'=>'配置值'
	
	'DB_TYPE'               =>  'mysql',     // 数据库类型
    'DB_HOST'               =>  '127.0.0.1', // 服务器地址
    'DB_NAME'               =>  'animal',          // 数据库名
    'DB_USER'               =>  'root',      // 用户名
    'DB_PWD'                =>  'primary',          // 密码
    'DB_PORT'               =>  '3306',        // 端口
    'LOG_RECORD'            =>  true,   // 默认不记录日志
    'DB_DEBUG'  			=>  TRUE, // 数据库调试模式 
    'salt'                  => 'Imlovelysalt'
    
    
    // 0 (普通模式); 1 (PATHINFO 模式); 2 (REWRITE  模式); 3 (兼容模式)  默认为PATHINFO 模式
    

);