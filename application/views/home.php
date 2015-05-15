<?php
if($content == false)
{
?>
<div class="wrapper">
  <div id="slider">
    <div id="slide-wrapper" class="rounded clear"> 
      <figure id="slide-1"><a class="view" href="#"><img src="images/demo/slider/1.png" alt=""></a></figure>
      <figure id="slide-2"><a class="view" href="#"><img src="images/demo/slider/2.png" alt=""></a></figure>
      <figure id="slide-3"><a class="view" href="#"><img src="images/demo/slider/3.png" alt=""></a></figure>
      <figure id="slide-4"><a class="view" href="#"><img src="images/demo/slider/4.png" alt=""></a></figure>
      <figure id="slide-5"><a class="view" href="#"><img src="images/demo/slider/5.png" alt=""></a></figure>
      <ul id="slide-tabs">
        <li><a href="#slide-1">slide-1</a></li>
        <li><a href="#slide-2">slide-2</a></li>
        <li><a href="#slide-3">slide-3</a></li>
        <li><a href="#slide-4">slide-4</a></li>
        <li><a href="#slide-5">slide-5</a></li>
      </ul>
    </div>
  </div>
</div>
<?php
}
else
{
?>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
     <?php echo $content;?>
      <div class="clear"></div>
    </main>
  </div>
</div>
<?php
}
?>