
<!DOCTYPE html>
<html lang="kor">
    <head>
    <title>lightSlider Demo</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <link rel="stylesheet"  type= "text/css" href="../../../resources/css/lightslider.css"/>
    <style>
    	ul{
			list-style: none outside none;
		    padding-left: 0;
            margin: 0;
		}
        .demo .item{
            margin-bottom: 60px;
        }
		.content-slider li{
		    background-color: #ed3020;
		    text-align: center;
		    color: #FFF;
		}
		.content-slider h3 {
		    margin: 0;
		    padding: 70px 0;
		}
		.demo{
			width: 800px;
		}
    </style>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="../../../resources/js/lightslider.js"></script> 
    <script>
    	 $(document).ready(function() {
			$("#content-slider").lightSlider({
                loop:true,
                keyPress:true
            });
            $('#image-gallery').lightSlider({
                gallery:true,
                item:1,
                thumbItem:9,
                slideMargin: 0,
                speed:500,
                auto:true,
                loop:true,
                onSliderLoad: function() {
                    $('#image-gallery').removeClass('cS-hidden');
                }  
            });
		});
    </script>
</head>
<body>
	<div class="demo">
        <div class="item">            
            <div class="clearfix" style="max-width:474px;">
                <ul id="image-gallery" class="gallery list-unstyled cS-hidden">
                    <li data-thumb="img/thumb/cS-1.jpg"> 
                        <img src="img/cS-1.jpg" />
                         </li>
                    <li data-thumb="img/thumb/cS-2.jpg"> 
                        <img src="img/cS-2.jpg" />
                         </li>
                    <li data-thumb="img/thumb/cS-3.jpg"> 
                        <img src="img/cS-3.jpg" />
                         </li>
                    <li data-thumb="img/thumb/cS-4.jpg"> 
                        <img src="img/cS-4.jpg" />
                         </li>
                    <li data-thumb="img/thumb/cS-5.jpg"> 
                        <img src="img/cS-5.jpg" />
                         </li>
                    <li data-thumb="img/thumb/cS-6.jpg"> 
                        <img src="img/cS-6.jpg" />
                         </li>
                    <li data-thumb="img/thumb/cS-7.jpg"> 
                        <img src="img/cS-7.jpg" />
                         </li>
                    <li data-thumb="img/thumb/cS-8.jpg"> 
                        <img src="img/cS-8.jpg" />
                         </li>
                    <li data-thumb="img/thumb/cS-9.jpg"> 
                        <img src="img/cS-9.jpg" />
                         </li>
                    <li data-thumb="img/thumb/cS-10.jpg"> 
                        <img src="img/cS-10.jpg" />
                         </li>
                    <li data-thumb="img/thumb/cS-11.jpg"> 
                        <img src="img/cS-11.jpg" />
                         </li>
                    <li data-thumb="img/thumb/cS-12.jpg"> 
                        <img src="img/cS-12.jpg" />
                         </li>
                    <li data-thumb="img/thumb/cS-13.jpg"> 
                        <img src="img/cS-13.jpg" />
                         </li>
                    <li data-thumb="img/thumb/cS-14.jpg"> 
                        <img src="img/cS-14.jpg" />
                         </li>
                    <li data-thumb="img/thumb/cS-15.jpg"> 
                        <img src="img/cS-15.jpg" />
                         </li>
                </ul>
            </div>
        </div>
        <div class="item">
            <ul id="content-slider" class="content-slider">
                <li>
                    <h3>1</h3>
                </li>
                <li>
                    <h3>2</h3>
                </li>
                <li>
                    <h3>3</h3>
                </li>
                <li>
                    <h3>4</h3>
                </li>
                <li>
                    <h3>5</h3>
                </li>
                <li>
                    <h3>6</h3>
                </li>
            </ul>
        </div>

    </div>	
</body>
