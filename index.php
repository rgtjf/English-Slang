<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <script src="js/jquery-2.1.4.min.js"></script>
        <script src="js/jquerysession.js"></script>
        <script src="js/alertify.min.js"></script>    
        <link rel="stylesheet" href="css/alertify.core.css" />
        <link rel="stylesheet" href="css/alertify.default.css" />
        <script src="js/function.js"></script>
        <link rel="stylesheet" href="css/stylesheet.css">
        <link rel="stylesheet" href="css/jquery.bootstrap.dialog.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="main">
            <h2>Oral English Class E</h2>
            <!-- <div class="row">
                <div class="name form-group col-xs-6">
                    <input type="text" name="chinesename" class=".form-control"placeholder="Chinese Name">
                </div>
                <div class="name form-group col-xs-6">
                    <input type="text" name="englishname" class=".form-control" placeholder="English Name">

                </div>
                <button class="btn btn-primary" type="button">submit</button>
            </div> -->
            <blockquote class="note">
              <p><strong>Note:</strong></p>

              <ul>
                  <li>This is the homework for your speech to introduce some slang words.</li>
                  <li>You can only choose <strong>4</strong> slang words.</li>
                  <li>You can use ctrl-f (command-f on Mac) to search the slang you want to choose.</li>
                  <!--li style="color: red;">由于某个小问题来不及修复，勾选后不可更改！</li-->
                  <li>If you have any questions, please contact Mario(51151201048@ecnu.cn) or Flora(51151201049@ecnu.cn) or Liam(51151201057@ecnu.cn). </li>
                  <li><a href='./res/Slang Word List.docx' download>Downloads: Slang words list.docx</a></li>  
                  <li><a href='./res/1st Speech-Thursday.docx' download>Downloads: 1st Speech-Thursday.docx</a></li>  
                  <li style="color: red">Update to <strong>11:00:00 03/23</strong></li>
            </ul>
            </blockquote>
            <div class="dialog" data-toggle="modal">
            </div>
            <div class="slanglist">
                    <?php 
                        require_once('utils.php');
                        $results = all();              
                        $chineseName = 'chineseName:TIAN JunFeng';
                        $englishName = 'englishName: MArio';
                        if (isset($_SESSION["chineseName"]) && isset($_SESSION["englishName"])) {
                            $chineseName = $_SESSION["chineseName"];
                            $englishName = $_SESSION["englishName"];
                            //echo 'xxxxx', $chieseName, $englishName;
                        }else {
                            //echo 'asdfsadf';
                        }    
                        echo '<strong>List of American Slang Words (pick 4)<br/><br/></strong>';
                        foreach ( $results as $row ) {
                            if($row['slangID'] == 142) {
                                echo '<br/><br/><strong>Very Very Modern words (used among 20 year olds, not older generations)</strong>';
                            }
                            else if($row['slangID'] == 166) {
                                echo '<br/><br/><strong>Internet abbreviations/ acronyms ( almost all can be capitals or lowercase)</strong>';
                            }
                            else if($row['slangID'] == 181) {
                                echo '<br/><br/><strong>Body Parts:</strong>';
                            }
                            else if($row['slangID'] == 195) {
                                echo '<br/><br/><strong>Longer Idiomatic Sayings</strong>';
                            }
                            echo "<div id=\"item_{$row['slangID']}\" class=\"singleitem\">";
                                    
                                if($row['checked'] == 0) {
                                    echo "<input type=\"checkbox\" id=\"checkid\" class=\"UnChecked\" >";
                                    echo "<span id=\"words\" class=\"black\"> {$row['slang']}  </span>";
                                    echo "<p id=\"pp\" class=\"p_hidden\"> {$row['chineseName']} &nbsp &nbsp &nbsp {$row['englishName']} </p> ";
                                }
                                else if($row['checked'] == 1 && $chineseName == $row['chineseName'] && $englishName == $row['englishName']){
                                    echo "<input type=\"checkbox\" id=\"checkid\"  class=\"Checked\", checked>";
                                    echo "<span id=\"words\" class=\"grey\"> {$row['slang']} </span> ";
                                    echo "<p id=\"pp\" class=\"p_show\"> {$row['chineseName']} &nbsp &nbsp &nbsp {$row['englishName']} </p> ";
                                }
                                else {
                                    echo "<input type=\"checkbox\" id=\"checkid\"  class=\"Checked\", checked disabled=\"disabled\">";
                                    echo "<span id=\"words\" class=\"grey\"> {$row['slang']} </span> ";
                                    echo "<p id=\"pp\" class=\"p_show\"> {$row['chineseName']} &nbsp &nbsp &nbsp {$row['englishName']} </p> ";
                                }
                            echo "</div>";
                        }
                    ?>
            </div>
        </div>
        <!-- 模态框（Modal） -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog"  aria-labelledby="myModalLabel" aria-hidden="true">
              <div class="modal-dialog">
                      <div class="modal-content">
                         <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                      &times;
                                </button>
                                <h4 class="modal-title" id="myModalLabel">
                                   Please input your information first!
                                </h4>
                         </div>
                     <div class="modal-body">
                        <form>
                        	<input id="englishinput" type="text" name="englishname" class=".form-control" placeholder="English Name">
                        	<input id="chineseinput" type="text" name="chinesename" class=".form-control" placeholder="Pin Yin">
                    	</form>
                     </div>
                     <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">
                        		close
                            </button>
                            <button type="button" class="btn btn-primary" id="submit">
                            	submit
                            </button>
                     </div>
                  </div><!-- /.modal-content -->
        </div><!-- /.modal -->
    </body>
</html>
