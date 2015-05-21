<div id="banner<?php echo $module; ?>" class="banner row">
  <?php foreach ($banners as $banner) { ?>
  <?php if ($banner['link']) { ?>
  <div class="col-sm-4"><a href="<?php echo $banner['link']; ?>"><img style="margin-left: -70px;" src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /><div class="s-desc" style="top: -142px; left: 40px;"><?php echo $banner['description']; ?></div></a></div>
  <?php } else { ?>
  <div class="col-sm-4"><img style="margin-left: -70px;" src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /><div class="s-desc" style="top: -142px; left: 40px;"><?php echo $banner['description']; ?></div></div>
  <?php } ?>
  <?php } ?>
</div>
