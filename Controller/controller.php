<?php
if(isset($_POST['submit'])){
  include_once("Model/loginmodel.php");
  //Class For Controller
  class Controller {
      public $model;
      public function __construct()
          {
              $this->model = new Model();
          }
      public function invoke()
      {
        $result = $this->model->getlogin();    
        if($result == 'login')
        {
        header("Location:View/afterlogin.php");
        }
        else
        {
        echo  "Incorrect Details";
        }
      }
      }
      $controller = new Controller();
 $controller->invoke();
}
?>