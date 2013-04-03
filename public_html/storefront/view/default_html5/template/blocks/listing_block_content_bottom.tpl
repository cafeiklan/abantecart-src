<!-- Popular Brands-->
<section id="popularbrands" class="container mt40">
    <div class="container">
<?php if ( $block_framed ) { ?>
      <h1 class="heading1"><span class="maintext"><?php echo $heading_title; ?></span><span class="subtext"><?php echo $heading_subtitle; ?></span></h1>
<?php } ?>
    <div class="brandcarousalrelative">
    <ul id="brandcarousal">
	<?php
		foreach ($content as $item) {
		echo '<li>';
		if ($item[ 'resource_code' ]) {
		    echo $item[ 'resource_code' ];
		} else {
		
		    if(!$item['resource_code']){
		    	$image = '<img src="'. $item['image']['thumb_url']. '" alt="'. $item['name'] . '" />';
		    	$image = '<a href="'. $item['image']['main_url']. '">' . $image . '</a>';
		    	echo '<div class="image">'. $image .'</div><div style="clear: both;"></div>';
		    	if($item['image']['title']){
		    		echo '<div class="title"><a href="'.$item['image']['main_url'].'">'.$item['image']['title'].'</a></div>';
		    	}
		    }				
		}
		echo '</li>';
		}

   ?>  
   </ul>
   <div class="clearfix"></div>
   <a id="prev" class="prev" href="#">&lt;</a>
   <a id="next" class="next" href="#">&gt;</a>  
   </div> 
<?php if ( $block_framed ) { ?>
<?php } ?>
	</div>
</section>
<!-- End Popular Brands-->