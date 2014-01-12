<?php
  require "../../../vendor/autoload.php";

  (new \Staq\Server)
    ->addApplication( 'Macuisine\\Back', '/admin' )
    ->addApplication( 'Macuisine\\Front' )
    ->addPlatform( 'local' )
    ->getCurrentApplication()
    ->run();
?>
