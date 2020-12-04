<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="BrownGirlsCodeUpdated.index" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="#">
    <title>All-Over Print Crop Tee &#8211; MJSTY</title>
    <!-- Bootstrap core CSS -->
    <link href="css/all.css" rel="stylesheet">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link href="css/custom.css" rel="stylesheet">
    <link href="css/slick.css" rel="stylesheet">
    <link href="css/slick.scss.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.5.7/jquery.fancybox.min.css" type="text/css" media="screen" />
      <style type="text/css">
          .auto-style1 {
              margin-left: 47px;
              margin-top: 0px;
          }
      </style>
  </head>
  <!-- NAVBAR
    ================================================== -->
  <body>
      <form id="form1" runat="server">
    <!-- END-SIDEBAR: LOGIN SIDEBAR -->
    <div class="bg">
    <header class="header_" id="header">
      <!-- Begin: Top Row -->
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-sm-6 col-xs-6">
            <div class="main-logo">
              <div class="logowow fadeIn" data-wow-delay="1s" data-wow-duration="1s">
                <a href="index.aspx"><img src="images/logo.png" class="img-responsive" alt=""></a>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-sm-6 col-xs-6">
            <div class="sidenav" id="mySidenav">
              <a class="closebtn" href="javascript:void(0)" onclick="closeNav()">&times;</a>
            </div>
            <div class="mobilecontainer hidden-lg hidden-md">
              <span class="pull-right" onclick="openNav()" style="font-size:30px;cursor:pointer">&#9776;</span>
            </div>
            <div class="main-navigate menuSec">
              <div class="navigation" id="navbar">
                <ul class="navbar-set hidden-xs">
                  <li><a href="#" class="live">Live In</a></li>
		       <li>
                    <a href="#">
                      <h5 id="days"><span>Days</span></h5>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <h5 id="hours"><span>Hours</span></h5>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <h5 id="minutes"><span>Minutes</span></h5>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <h5 id="seconds"><span>Seconds</span></h5>
                    </a>
                  </li>
					
					
            
                 
         
				
                 
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </header>
    <!-- header-ends -->
    <!-- twitter section start -->
    <section class="twitter-sec">
      <div class="container">
        <div class="video-box">
          <div class="row">
            <div class="col-md-8 col-xs-12 col-sm-8">
              <div class="video-sec">
                <!--<img src="images/video.jpg" class="img-responsive" alt="">-->
				  
					<asp:Label ID="txturl"
							   runat="server">
					</asp:Label>
                <div class="overlay wow bounceIn" data-wow-delay="0.5s" data-wow-duration="1s">
                  <h5 class="py-3 font-weight-bold">
					  <!--<span class="live data">Live on : 
						  <span class="date-text"></span> | 
						  <span class="badge badge-warning p-2" id="ct"></span>
					  </span>
						-->
					  <asp:Label ID="txtname"
							   runat="server">
					</asp:Label>
					<input type="hidden" id="setting-time">
                  </h5>
					
					
                </div>
				  	<h3>
				  	<asp:Label ID="txtTab"
							   runat="server">
					</asp:Label>
					</h3>
              </div>
            </div>
            <div class="col-md-4 col-xs-12 col-sm-4">
              <div class="tabing-box">
                <div class="media">
                  <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab"><img src="images/twiter-1.png">Twitter</a></li>
                    <li role="presentation"><a href="#bag" aria-controls="bag" role="tab" data-toggle="tab"><img src="images/twitter-2.png">Facebook</a></li>
                    <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab" class="empty">Blog</a></li>
                  </ul>
                </div>
                <div class="tab-content">
                  <div role="tabpanel" class="tab-pane active" id="home">
                    <div class="twitter-text">
                      <h3>Tweets    <span><b>by</b> @CAHFHMemorials</span></h3>
                      <div class="line"></div>
                    </div>
                    <div class="twitter-img">
                      <img src="images/twiiter.png" class="img-responsive" alt="">
                      <h6>Bible Promises<br><span>@biblepromises</span></h6>
                    </div>
                    <a href="#" class="pull-right"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                    <p class="lord">Depression:The name of the LORD is a strong tower; the righteous run to it and are safe.(Prv 18:10) <span>http://j.mp/d14iIi</span> </p>
                    <span class="pull-right">Sep 5, 2013</span>
                    <div class="line"></div>
                    <div class="clearfix"></div>
                    <div class="twitter-img">
                      <img src="images/twiiter.png" class="img-responsive" alt="">
                      <h6>Bible Promises<br><span>@biblepromises</span></h6>
                    </div>
                    <div class="icon">
                      <a href="#" class="pull-right"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                    </div>
                    <p class="lord">Depression:The name of the LORD is a strong tower; the righteous run to it and are safe.(Prv 18:10) <span>http://j.mp/d14iIi</span> </p>
                    <span class="pull-right">Sep 5, 2013</span>
                    <div class="line"></div>
                  </div>
                  <div role="tabpanel" class="tab-pane" id="bag">
                    <div class="twitter-text">
                      <h3>Tweets    <span><b>by</b> @CAHFHMemorials</span></h3>
                      <div class="line"></div>
                    </div>
                    <div class="twitter-img">
                      <img src="images/twiiter.png" class="img-responsive" alt="">
                      <h6>Bible Promises<br><span>@biblepromises</span></h6>
                    </div>
                    <a href="#" class="pull-right"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                    <p class="lord">Depression:The name of the LORD is a strong tower; the righteous run to it and are safe.(Prv 18:10) <span>http://j.mp/d14iIi</span> </p>
                    <span class="pull-right">Sep 5, 2013</span>
                    <div class="line"></div>
                    <div class="clearfix"></div>
                    <div class="twitter-img">
                      <img src="images/twiiter.png" class="img-responsive" alt="">
                      <h6>Bible Promises<br><span>@biblepromises</span></h6>
                    </div>
                    <div class="icon">
                      <a href="#" class="pull-right"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                    </div>
                    <p class="lord">Depression:The name of the LORD is a strong tower; the righteous run to it and are safe.(Prv 18:10) <span>http://j.mp/d14iIi</span> </p>
                    <span class="pull-right">Sep 5, 2013</span>
                    <div class="line"></div>
                  </div>
				
                  <div role="tabpanel" class="tab-pane " id="profile" runat="server">
                    <div id="mytxt" class="social" runat="server">
						
                     <!--
                      <h6 id="title" runat="server"></h6>
                      <p id="txt" runat="server"></p>

                      <h6>Mysql UNION way to differ from which table result row is</h6>
                      <p>Lets say I have below query. SELECT City FROM Customers UNION SELECT City FROM Suppliers ORDER BY City; Lest say there is one same city NY in both tables witch will give me: | City | | -------...</p>
                      <h6>case insensitive issue while fetching records from child table using HQL</h6>
                      <p>I have parent table and child table where only getting 1 record from child table but not getting case in sensitive matched record which is mixed string and expecting it should return 2 records. Below ...</p>
                      <h6>Delete item for todo app in with $emit 2 level up or 1 level up?</h6>
                      <p>I have 3 .vue here: App.vue (default), Todos.vue and Todoitem.vue. I am following the tutorial from https://www.youtube.com/watch?v=Wy9q22isx3U&t=2458. May I know why the author in TodoItem.vue ..</p>
                      <h6>Problem with node-sass on create-react-app</h6>
                      <p>Before I post this question, I have tried all of the solution offered down below : ERROR in Cannot find module 'node-sass' I use create-react-app to create project1. My node version : node -...</p>
                      <h6>How do I fix this intelliJ issue?</h6>
                      <p>In trying to change the intelliJ font from 13 to 12, I accident plugged in 1312, and instead of giving an error, IntelliJ actually made the font 1312 and it's freezing. I was not able to open ...</p>
                      <h6>GUI Error: You are pushing more GUIClips than you are popping</h6>
                      <p>I have the following problem with my current code: GUI Error: You are pushing more GUIClips than you are popping. Make sure they are balanced. UnityEngine.GUIUtility:ProcessEvent(Int32, IntPtr) I can ...</p>
                      <h6>Relate Outlook message inline attachment to element in HTML body</h6>
                      <p>When using Office.js to retrieve the body of an email that has inline attachments, we receive HTML like this:</p>
-->
                    </div>
                  </div>
                </div>
                <!--  <div class="twiit-button">
                  <a href="#" class="btn-1 wow bounceIn" data-wow-delay="0.5s""><i class="fa fa-twitter" aria-hidden="true"></i>Twitter</a>
                  <a href="#" class="btn-2 wow bounceIn" data-wow-delay="0.5s""><i class="fa fa-facebook-square" aria-hidden="true"></i>Facebook</a>
                  </div>
                  <div class="twitter-text">
                  <h3>Tweets    <span><b>by</b> @CAHFHMemorials</span></h3>
                  <div class="line"></div>
                  </div>
                  <div class="twitter-img">
                  <img src="images/twiiter.png" class="img-responsive" alt="">
                  <h6>Bible Promises<br><span>@biblepromises</span></h6>
                  </div>
                  <a href="#" class="pull-right"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                  <p class="lord">Depression:The name of the LORD is a strong tower; the righteous run to it and are safe.(Prv 18:10) <span>http://j.mp/d14iIi</span> </p>
                  <span class="pull-right">Sep 5, 2013</span>
                  <div class="line"></div>
                  <div class="clearfix"></div>
                  <div class="twitter-img">
                  <img src="images/twiiter.png" class="img-responsive" alt="">
                  <h6>Bible Promises<br><span>@biblepromises</span></h6>
                  </div>
                  <div class="icon">
                  <a href="#" class="pull-right"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                  </div>
                  <p class="lord">Depression:The name of the LORD is a strong tower; the righteous run to it and are safe.(Prv 18:10) <span>http://j.mp/d14iIi</span> </p>
                  <span class="pull-right">Sep 5, 2013</span>
                  <div class="line"></div> -->
              </div>
            </div>
          </div>
        </div>
          </div>
    </section>
    <!-- twitter section end -->
    <!-- product section start -->
    <section class="product-sec">
    <div class="container">
    <div class="multiple-items">
    <div>
    <div class="item-1">
    <a data-fancybox="gallery" href="images/pro-1.jpg"><img src="images/pro-1.jpg" class="img-responsive" alt=""></a>
    </div>
    </div>
    <div>
    <div class="item-1">
    <a data-fancybox="gallery" href="images/pro-2.jpg"><img src="images/pro-2.jpg" class="img-responsive" alt=""></a>
    </div>
    </div>
    <div>
    <div class="item-1">
    <a data-fancybox="gallery" href="images/pro-3.jpg"><img src="images/pro-3.jpg" class="img-responsive" alt=""></a>
    </div>
    </div>
    <div>
    <div class="item-1">
    <a data-fancybox="gallery" href="images/pro-4.jpg"><img src="images/pro-5.jpg" class="img-responsive" alt=""></a>
    </div>
    </div>
    <div>
    <div class="item-1">
    <a data-fancybox="gallery" href="images/pro-5.jpg"><img src="images/pro-5.jpg" class="img-responsive" alt=""></a>
    </div>
    </div>
    <div>
    <div class="item-1">
    <a data-fancybox="gallery" href="images/video.jpg"><img src="images/video.jpg" class="img-responsive" alt=""></a>
    </div> 
    </div>
    </div>
    </div>
    </section>
    <!-- product section ends -->
    <!-- video-list start -->
    <section class="video">
    <div class="container">
    <div class="video-box-1">
    <div class="col-md-8 col-xs-12 col-sm-8">
    <div class="video-listing-tab">
    <ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active"><a href="#Div1" aria-controls="Div1" role="tab" data-toggle="tab">Video Archive</a></li>  	
    <li role="presentation"><a href="#Div2" aria-controls="Div2" role="tab" data-toggle="tab">Featured Page/post 1</a></li>
    <li role="presentation"><a href="#Div3" aria-controls="Div3" role="tab" data-toggle="tab">Featured Page/post 2</a></li>
    </ul>
    <div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="Div1">
    <div class="row">
		<asp:Label ID="txtimg1" 
							   runat="server">
	</asp:Label>
		
   
    </div>
  
    </div>
    <div role="tabpanel" class="tab-pane " id="Div2">
    <div class="row">
     		<asp:Label ID="txtimg2" 
							   runat="server">
	</asp:Label>
    </div>

    </div>
    <div role="tabpanel" class="tab-pane" id="Div3">
    <div class="row">
	<asp:Label ID="txtimg3" 
							   runat="server">
	</asp:Label>	

    </div>

    </div>
    </div>
    </div>
    </div>
    <div class="col-md-4 col-xs-12 col-sm-4">
   
    <div class="recent">
    <input type="text" name="" placeholder="search..." id="myInput">
    <a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
    </div>
    
    <div class="recent-text">
    <h3>Recent Comments</h3>
    <div class="line-1"></div>
    <ul style="overflow-y: scroll; height: 470px;" id="myComments" >
			<asp:Label ID="Label1"
							   runat="server"></asp:Label>
            <asp:GridView ID="GridView" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style1" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="414px" OnSelectedIndexChanged="GridView_SelectedIndexChanged" Width="987px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="comments" HeaderText="Comments" SortExpression="comments">
                    <HeaderStyle BorderStyle="Solid" Font-Bold="True" HorizontalAlign="Center" />
                    <ItemStyle BorderStyle="Solid" HorizontalAlign="Left" />
                    </asp:BoundField>
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:browngirlscodetooConnectionString %>" SelectCommand="SELECT name, comments FROM designproficien.Comments"></asp:SqlDataSource>
    </ul>
		<asp:BulletedList ID="BulletedList1" runat="server"></asp:BulletedList>
    </div>
    </div>
    </div>
    </div>
    </section>
    <!-- video-list end -->
    <!-- product section 2 start -->
    <section class="product-sec-2">
    <div class="container">
    <div class="row wow zoomIn" data-wow-delay="0.5s" data-wow-duration="2s">
    <div class="col-md-4 col-sm-4 col-xs-12">
    <div class="pro-img">
    <!--<img src="images/pros-1.jpg" class="img-responsive" alt="">-->
	<asp:Label ID="txturl2"
							   runat="server">
	</asp:Label>
	<h5>
		<asp:Label ID="txtTab2" runat="server">
		</asp:Label>
	</h5>
    </div>
    </div>
    <div class="col-md-4 col-sm-4 col-xs-12">
    <div class="pro-img">
    <!--<img src="images/pros-2.jpg" class="img-responsive" alt="">-->
	<asp:Label ID="txturl3"	   runat="server">
	</asp:Label>
	<h5>
		<asp:Label ID="txtTab3" runat="server">
		</asp:Label>
	</h5>
    </div>
    </div>
    <div class="col-md-4 col-sm-4 col-xs-12">
    <div class="pro-img">
    <!--<img src="images/pros-3.jpg" class="img-responsive" alt="">-->
	<asp:Label ID="txturl4"	   runat="server">
	</asp:Label>
	<h5>
		<asp:Label ID="txtTab4" runat="server">
		</asp:Label>
	</h5>
    </div>
    </div>
    </div>
    </div>
    </section>
    <!-- product section 2 end -->
    <!-- copy section start -->
    <section class="cop-sec">
    <div class="container">
    <div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
    <div class="copy-text">
    <p>©Copywrite 2020 Brown Girls Code Too!  |  Powered By Live Theme</p>
    </div>
    </div>
    </div>
    </div>
    </section>
    <!-- copy section end -->
    </div>
    <div id="search">
      <button type="button" class="close">×</button>
        <input type="search" value="" placeholder="type keyword(s) here" />
        <button type="submit" class="btn btn-primary">Search</button>
    </div>
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/all.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/custom.js"></script>
    <script src="js/slick.js"></script>
    <script src="js/slick.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.5.7/jquery.fancybox.min.js"></script>
    <script>
        $('.multiple-items').slick({
            infinite: true,
            slidesToShow: 5,
            slidesToScroll: 2,
            dots: true,
            arrows: false,
            autoplay: true,
            autoplaySpeed: 1500,
        });
    </script>
    <script>
        new WOW().init();
    </script>
    <script>
        function display_c() {
            var refresh = 1000; // Refresh rate in milli seconds
            mytime = setTimeout('display_ct()', refresh)
        }

        function display_ct() {
            var timex = new Date();
            var time = timex.getHours() + ":" + timex.getMinutes() + ":" + timex.getSeconds();
            document.getElementById('ct').innerHTML = time;
            display_c();
        }


        var today = new Date();
        var month = new Array();
        month[0] = "January"; month[1] = "February"; month[2] = "March"; month[3] = "April"; month[4] = "May"; month[5] = "July";
        month[6] = "July"; month[7] = "August"; month[8] = "September"; month[9] = "October"; month[10] = "November"; month[11] = "December";
        var date = today.getDate() + ' ' + (month[today.getMonth()]) + ' , ' + today.getFullYear();
        jQuery(document).ready(function () { display_ct(); jQuery(".date-text").text(date); });
    </script>

<!--
	<script>
var dateTime = document.getElementById("timeset").innerHTML;
function makeTimer() {
var dateTime = document.getElementById("timeset").innerHTML;
	dateTime--;
	$("#timeset").html(dateTime);
}
setInterval(function() { makeTimer(); }, 1000);
</script>
-->
	
	
 <script language="javascript" type="text/javascript"> 
        function fireServerButtonEvent(){ 
			console.log("seetay");
	document.getElementById("AnchorButton_Click").click();
								   console.log("OKKKK");
        } 
    </script> 
	
	
	
	<script>
		
		var myTime = $("#timeset1").html();
		$("#setting-time").val(myTime);
		function makeTimer() {

	///		var endTime = new Date("29 April 2018 9:56:00 GMT+01:00");
		var myTime = $("#setting-time").val();
			///alert(myTime);
		var endTime = new Date(Date.parse(myTime));
			
			endTime = endTime.toUTCString()
			///$("#timeset1").html(endTime);
			///return;
			endTime = (Date.parse(endTime) / 1000);

			//var now = new Date();
			var now = new Date().toLocaleString("en-US", {timeZone: "America/Phoenix"});
			//console.log('USA time: '+ (new Date(usaTime)).toISOString())
			///console.log(now);
			now = (Date.parse(now) / 1000);
			
			var timeLeft = endTime - now;

			var days = Math.floor(timeLeft / 86400); 
			var hours = Math.floor((timeLeft - (days * 86400)) / 3600);
			var minutes = Math.floor((timeLeft - (days * 86400) - (hours * 3600 )) / 60);
			var seconds = Math.floor((timeLeft - (days * 86400) - (hours * 3600) - (minutes * 60)));
  			if(days == "0" && hours == "00" && minutes == "00" && seconds == "00"){
				location.reload(true);
			}
			if (days < "10") { days = "0" + days; }
			if (hours < "10") { hours = "0" + hours; }
			if (minutes < "10") { minutes = "0" + minutes; }
			if (seconds < "10") { seconds = "0" + seconds; }

          
			
			
			$("#timeset1").html( days + "<span> Days | </span>" + hours + "<span> Hours | </span>" + minutes + "<span> Minutes | </span>" + seconds + "<span> Seconds</span>");	
			
			$("#days").html(days + "<span> Days </span>")
			
			$('#hours').html(hours + "<span> Hours </span>")
			
			$('#minutes').html(minutes + "<span> Minutes </span>")
			
			$('#seconds').html(seconds + "<span> Seconds </span>")
			

	}

	setInterval(function() { makeTimer(); }, 1000);
		
		$(document).ready(function(){
		  $("#myInput").on("keyup", function() {
			var value = $(this).val().toLowerCase();
			$("#Label1 li").filter(function() {
			  $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
			});
		  });
		});
	</script>
 
      </form>
 
  </body>
</html>
