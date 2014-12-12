<?php
    /* check for and loop through uploaded files */
    foreach ($_FILES as $name => $info) {
        /* chekc the file has a valid name */
        if (($info['name'] != 'ht.access' &&
            substr($info['name'], 0,1) != '.' &&
            $info['name'] != 'allowed_files')) {

            /* attempt to move the file to the uploaded_files directory */
            if (@move_uploaded_file($info['tmp_name'], "uploaded_files/files/{$info['name']}")) {
                /* get the contenst of the array of files */
                $file_arrays = @unserialize(@file_get_contents('uploaded_files/allowed_files'));        
    
                /* if there are more already 5 files, remove the oldest item fomr the array
                 * and delete it
                 */
                if (count(@$file_arrays['files']) == 5) {
                    $name = array_shift($file_arrays['files']);
            
                    unset($file_arrays['types'][$name]);
                    @unlink('uploaded_files/files/' . $name);
                }

                /* add the new item to the arrays */
                $file_arrays['files'][] = $info['name'];
                $file_arrays['types'][$info['name']] = $info['type'];

                /* serialize the array and write it back to the file */
                if ($fhwnd = @fopen('uploaded_files/allowed_files', 'wb+')) {
                    fwrite($fhwnd, serialize($file_arrays));
                    fclose($fhwnd);
                }
            }          
        }   
    }
?>
<html>
    <head>
        <title>Form Post Dump</title>
    </head>
    <body>
        <?php if ($_POST): ?>
            <p>You submitted the following POST variables with the following names:</p>
            <ul><?php foreach($_POST as $name => $var) : ?>
                <li><?php echo(htmlspecialchars($name)) ?> = <?php echo(htmlspecialchars($var)) ?></li>
            <?php endforeach; ?></ul>
        <?php endif; ?>
        <?php if ($_GET): ?>
            <p>You submitted the following fariables with the query string:</p>
            <ul><?php foreach($_GET as $name => $var) : ?>
                <li><?php echo(htmlspecialchars($name)) ?> = <?php echo(htmlspecialchars($var)) ?></li>
            <?php endforeach; ?></ul>
        <?php endif; ?>
        <?php if ($_FILES): ?>
            <p>You submitted the following FILES:</p>
            <ul><?php foreach($_FILES as $name => $info): ?>
                <li>File name: <?php echo(htmlspecialchars($name)) ?>
            <ul>
                <li>Client file name: <?php echo(htmlspecialchars($info['name'])) ?></li>
                <li>File MIME type: <?php echo(htmlspecialchars($info['type'])) ?></li>
                <li>File size: <?php echo(htmlspecialchars($info['size'])) ?></li>
                <li>Download link: <a href="uploaded_files.php?file=<?php echo(htmlspecialchars($info['name'])) ?>"><?php echo(htmlspecialchars($info['name'])) ?></a></li>
            </ul>
            </li>
        </ul>
            <?php endforeach; ?></ul>
        <?php endif; ?>
        <form enctype="multipart/form-data" action="<?php echo($_SERVER['PHP_SELF']) ?>" method="post">
            <p>Variable1: <input type="text" name="variable1" /></p>
            <p>Variable2: <input type="text" name="variable2" /></p>
            <p>Variable3: <input type="text" name="variable3" /></p>
            <p>File: <input type="file" name="file1" /></p>
            <p><input type="submit" value="Post" /></p>
        </form>
    </body>
</html>