a<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="BrownGirlsCodeUpdated.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
     <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheetAdmin Dashboard</title>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="../../assets/js/plugin/webfont/webfont.min.js"></script>
    <!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	<script>
		WebFont.load({
			google: {"families":["Lato:300,400,700,900"]},
			custom: {"families":["Flaticon", "Font Awesome 5 Solid", "Font Awesome 5 Regular", "Font Awesome 5 Brands", "simple-line-icons"], urls: ['../../assets/css/fonts.min.css']},
			active: function() {
				sessionStorage.fonts = true;
			}
		});
	</script>
    <link rel="stylesheet" type="text/css" href="css/main.css"/>
	<link rel="stylesheet" href="../css/bootstrap.min.css"/>
	<link rel="stylesheet" href="../css/atlantis.min.css"/>
    	<link rel="stylesheet" href="../../assets/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="../../assets/css/atlantis.min.css"/>
	<!-- CSS Just for demo purpose, don't include it in your project -->
	<link rel="stylesheet" href="../../assets/css/demo.css"/>
    <link rel="icon" href="../../assets/img/icon.ico" type="image/x-icon"/>
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

	<!-- CSS Just for demo purpose, don't include it in your project -->
	<link rel="stylesheet" href="../css/demo.css"/>
    <style type="text/css">
   table.mylist input {
      width: 20px;
      display: block;
      float: left;
   }
   table.mylist label {
      width: auto;
      display: block;
      float: left;
   }
		.sidebar, .sidebar[data-background-color="white"] {
		margin-top:0px;
		}
        .notification_drop {
        display: inline-block;
        position: absolute;
        right: 17%;
        top: 11%;
        }
.notification_drop img {
    width:20px;
}
.sidebar .info {
    display:none;
}
.sidebar .avatar-img {
display:none;        
}
.note img {
    margin:auto;
}
input#Button3 {
    margin: auto;
    display: block;
}
div#logoutdiv {
    display: none;
}
        .auto-style1 {
            padding: 5%;
            border: 1px solid #ced4da;
            margin-bottom: 2%;
            width: 1120px;
            height: 163px;
        }
    </style>
<!------ Include the above in your HEAD tag ---------->
</head>
<body>
	
	
	<div class="sidebar" data-background-color="dark2">
			<div class="sidebar-wrapper scrollbar scrollbar-inner">
				<div class="sidebar-content">
					<div class="user">
						<div class="avatar-sm float-left mr-2">
							<img src="../assets/img/profile.jpg" alt="..." class="avatar-img rounded-circle"/>
						</div>
						<div class="info">
							<a data-toggle="collapse" href="#collapseExample" aria-expanded="true">
								<span>
									
									<span class="user-level"></span>
									<span class="caret"></span>
								</span>
							</a>
							<div class="clearfix"></div>

							<div class="collapse in" id="collapseExample">
								<ul class="nav">
									<li>
										<a href="#profile">
											<span class="link-collapse"></span>
										</a>
									</li>
									<li>
										<a href="#edit">
											<span class="link-collapse"></span>
										</a>
									</li>
									<li>
										<a href="#settings">
											<span class="link-collapse"></span>
										</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<ul class="nav nav-primary">
						<li class="nav-item active submenu">
							<div class="collapse show" id="sidebarLayouts">
								<ul class="nav nav-collapse">
									<li class="active">
										<a href="javascript:void(0)" id="dashboardopen" runat="server">
											<span class="sub-item">Dashboard</span>
										</a>
                                	</li>
									<li class="active">
										<a href="javascript:void(0)" id="commentopen">
											<span class="sub-item">Add Commments</span>
										</a>
									</li>
									<li class="active">
										<a href="javascript:void(0)" id="blogopen">
											<span class="sub-item">Add Blogs</span>
										</a>
									</li>
                                   <li class="active">
										<a href="javascript:void(0)" id="logoutbtn">
											<span class="sub-item">Logout</span>
										</a>
									</li>
								</ul>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>


  
<form id="form1" runat="server" enctype="multipart/form-data">
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnableCdn="True"></asp:ScriptManager>
   <div class="container register-form" id="form-one" >
        <div class="form" id="dashboardform" runat="server">
                <div class="note">
                     <a href="index.aspx"><img src="images/logo.png" class="img-responsive" alt=""/></a>
                    <div class="notification_drop" >
                             <div class="dropdown">
                        <button class=" dropdown-toggle" type="button" data-toggle="dropdown">
                            <%--<asp:Label runat="server" id="notifications" Text="" Font-Bold="true" ForeColor="Red">--%>
								<img src="images/notification.png"  class="img-responsive"  />
							<%--</asp:Label>--%>
                        </button>
                        <ul class="dropdown-menu">
                        <li><a href="#">HTML</a></li>
                        <li><a href="#">CSS</a></li>
                        <li><a href="#">JavaScript</a></li>
                        </ul>
                        </div>
                    </div>
    					<%--<asp:Button ID="btnLogOut" class="btn btn-primary" runat="server" Text="Logout" style="margin-left: 433px; text-align: center;" OnClick="btnLogOut_Click"/>--%>
					</div>
                <div class="auto-style1">
                    <asp:UpdatePanel  ID="UpdatePanel1" runat="server"> 
                    <ContentTemplate>
							  <asp:Panel ID="Panel" runat="server" BorderColor="#993333" BorderStyle="Solid" Height="100px" Width="447px" Visible="False">
                                  <label>User Name: </label> &nbsp;<asp:Label ID="NameLabel" runat="server" Text=""></asp:Label><br />
                                  <label>Comment: </label> &nbsp;<asp:Label ID="CommentLabel" runat="server" Text=""></asp:Label><br />
									<asp:HyperLink ID="HyperLink" runat="server" NavigateUrl="~/index.aspx">Accept</asp:HyperLink><span>&nbsp;&nbsp;&nbsp;</span>
									<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Dashboard.aspx">Decline</asp:HyperLink>
							 </asp:Panel>
                        <asp:Timer ID="Timer1" runat="server" Interval ="3000" OnTick="Timer_Tick"></asp:Timer>
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<asp:DropDownList ID="ddlUrl" onchange="myFunction()" runat="server" class="form-control" AppendDataBoundItems="False" AutoPostBack="true" OnSelectedIndexChanged="ddlUrl_SelectedIndexChanged">
										<asp:ListItem Value="0" Text="----New Url----"></asp:ListItem>
									</asp:DropDownList>
								</div>
                            <div class="form-group">
                                <input type="text" class="form-control" required="required" placeholder="Name*" id="txtname" runat="server"/>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" required="required" placeholder="URL" id="txturl" runat="server"/>
                            </div>
							<div class="form-group">
							<div id="onlyShow" >
								<asp:Label ID="txtShow" runat="server" Text=""></asp:Label>

							</div>
                                <input type="datetime-local" class="form-control" required="required" placeholder="DateTime*" id="txtdate" runat="server"/>
                            </div>
                             <div class="form-group">
                                 <asp:RadioButtonList ID="cbStatus"  class="form-control" runat="server"  CssClass="mylist"  RepeatLayout="Table" RepeatDirection="Horizontal" RepeatColumns="2" >
                                       <asp:ListItem Value="1" Text="Live"></asp:ListItem>
                                        <asp:ListItem Value="0" Text="Not Live"></asp:ListItem>
                                 </asp:RadioButtonList>
                                 </div>
								<div class="form-group">
									<asp:CheckBox ID="CheckBox1" runat="server" Text="New Tab" />
								</div>
                        </div>
                    </div>
                     </ContentTemplate>
                    </asp:UpdatePanel>
                     <asp:FileUpload ID="FileUpload1" runat="server" />

               <%-- <asp:Button ID="Button3" runat="server" Text="Submit" class="btnSubmit" OnClick="Button3_Click"/>--%>
                    <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>

                    	<asp:Button ID="Button3" runat="server" Text="Submit" class="btnSubmit" OnClick="Button2_Click"/>
                </div>
            </div>
        </div>
  
		<div id="commentdiv" runat="server">
		 <div class="container register-form">
             	
			  <div class="form">
			 
			  <div class="form-content">
				  
				  <div class="row">
					    <div class="col-md-12">
							<h3>Add Comments</h3>			
							 <div class="form-group">
                                <input type="text" class="form-control" required="required" placeholder="Name" id="txtcommentname" name="txtcommentname"  runat="server"/>
                            </div>
							
							<div class="form-group">
                                <input type="text" class="form-control" required="required" placeholder="Comments" id="txtcomment" name="txtcomment" runat="server"/>
                            </div>
							
							 <div class="form-group" style="display:none;">
                                <input type="text" class="form-control" placeholder="Created At" id="txtdate" name="txtdate"/>
                            </div>
							
							<div class="form-group" style="display:none;">
								 <asp:RadioButtonList ID="checkactive"  class="mylist" runat="server"  RepeatLayout="Table" RepeatDirection="Horizontal" RepeatColumns="2">
                                       <asp:ListItem Value="1" Text="Active"></asp:ListItem>
                                        <asp:ListItem Value="0" Text="Not Active"></asp:ListItem>
                                 </asp:RadioButtonList>
							</div>
							<asp:Label ID="lblFire" runat="server" Text=""></asp:Label><br/>
							<asp:Button ID="Button1" runat="server" Text="Submit" class="btnSubmit" OnClick="Button1_Click"/>
						  </div>				  
					</div>
				  </div>
			 </div>
		 </div>
  </div>

		
		<div id="blogdiv">
			
			<div class="container register-form">
				
				<div class="form">
					
					<div class="form-content">
						
						 <div class="row">
							 
							 <div class="col-md-12">
								 <h3>Add Blogs</h3>
					
								 <div class="form-group">
                                <input type="text" class="form-control" required="required" placeholder="Title" id="txttitle" name="txttitle"  runat="server"/>
                                </div>
								 
								 
								 <div class="form-group">
                                <input type="text" class="form-control" required="required" placeholder="Post By" id="txtpostby" name="txtpostby"  runat="server"/>
                                </div>
								 
								 
								 <div class="form-group">
                                <input type="text" class="form-control" required="required" placeholder="Post Date" id="txtpostdate" name="txtpostdate"  runat="server"/>
                                </div>
								 
				                      <asp:DropDownList ID="dropdowntype" onchange="" runat="server" class="form-control" AppendDataBoundItems="False" AutoPostBack="false">
                                    <asp:ListItem Value="0" Text="----Select Type----"></asp:ListItem>
								    <asp:ListItem Value="1" Text="Video Archive"></asp:ListItem>
								    <asp:ListItem Value="2" Text="Featured Post 1"></asp:ListItem>
								    <asp:ListItem Value="3" Text="Featured Post 2"></asp:ListItem>
                                </asp:DropDownList>
								 
								 
								 	 		 <div class="form-group">
                                <input type="text" class="form-control" required="required" placeholder="Video Link" id="txtvideolink" name="txtvideolink"  runat="server"/>
                                </div>
								 
								  <div class="form-group">
									  <textarea id="txtdescription" class="form-control" required="required" cols="520" rows="10"  placeholder="Description" runat="server"></textarea>
								 </div>
								 
								 
								 
								  <div class="form-group">
								 <asp:FileUpload ID="FileUpload12" runat="server" />
									<asp:Button runat="server" id="UploadButton" text="" />
								 </div>
								 
								 
								 <div class="form-group">
									      <asp:RadioButtonList ID="status"  class="form-control" runat="server"  CssClass="mylist"  RepeatLayout="Table" RepeatDirection="Horizontal" RepeatColumns="2" >
                                       <asp:ListItem Value="1" Text="Status"></asp:ListItem>
                                 </asp:RadioButtonList>
                                  
								</div>
								 
                            <asp:Label ID="lblResult" runat="server" Text=""></asp:Label><br/>
								 <asp:Label ID="lbl" runat="server" Text="test"></asp:Label><br/>
							<asp:Button ID="Button2" runat="server" Text="Submit" class="btnSubmit" OnClick="Button2_Click"/>
									
								 
								 
							 </div>
							 
						 </div>
						
					</div>
					
				</div>	
					
			</div>
			
	    </div>

    <div id="logoutdiv">
			
			<div class="container register-form">
				
				<div class="form">
					
					<div class="form-content">
						
						 <div class="row">
							 
							 <div class="col-md-12">
	
								
							<%--<asp:Button ID="Button5" runat="server" Text="Submit" class="btnSubmit" OnClick="Button2_Click"/>--%>
									
								 
								 
							 </div>
							 
						 </div>
						
					</div>
					
				</div>	
					
			</div>
			
	    </div>




		
    </form>
	

 


	
		<script type="text/javascript">
		
			/*
			$('#ddlUrl').on('change', function() {				
			  	var fetchDate = $("#txtShow").text();
				$("#txtdate").val(fetchDate);
        	});
			*/
			$("#onlyShow").css("display","none");
			function myFunction() {
			 	var fetchDate = $("#txtShow").text();
				//alert(fetchDate);
				$("#onlyShow").css("display","block");
				$("#txtdate").val(fetchDate);
				
			}
			        	
				
      </script>
	
	<script type="text/javascript">
		$("#commentdiv").hide();
  
			$("#commentopen").click(function(){
				 $("#form-one").hide();
				$("#blogdiv").hide();
				 $("#commentdiv").show();
			});
		
		$("#dashboardopen").click(function(){
				 $("#form-one").show();
				 $("#commentdiv").hide();
			});
			
		
		
			$("#Button1").click(function(){
				
				 $("#txtname").prop("required" , false);
				 $("#txturl").prop("required" , false);
				$("#txtdate").prop("required" , false);
				 $("#txttitle").prop("required" , false);
				$("#txtpostby").prop("required" , false);
				$("#txtpostdate").prop("required" , false);
				$("#dropdowntype").prop("required" , false);
				 $("#txtvideolink").prop("required" , false);
				$("#txtdescription").prop("required" , false);
				
				
			});
			$( document ).ready(function() {
				var _getLabel = $("#lblFire").text();
				if(_getLabel == "Last Comment Submitted"){
					$("#form-one").hide();
				 	$("#commentdiv").show();
				}
				
				if(_getLabel == "Result cannot be save"){
					$("#form-one").hide();
				 	$("#commentdiv").show();
				}
			});
		
		
    </script>
								   
								   
	
	<script type="text/javascript">
	    $("#blogdiv").hide();
	    
  
			$("#blogopen").click(function(){
				 $("#form-one").hide();
				 $("#commentdiv").hide();
				 $("#blogdiv").show();
			});
		
		$("#dashboardopen").click(function(){
				 $("#form-one").show();
				 $("#blogdiv").hide();
			});
		
							 
			$("#Button2").click(function(){

			    
				 $("#txttitle").prop("required" , false);
			     $("#txturl").prop("required" , false);
				 $("#txtpostby").prop("required" , false);
				 $("#txtpostdate").prop("required" , false);
				 $("#dropdowntype").prop("required" , false);
				 $("#txtvideolink").prop("required" , false);
				$("#txtdescription").prop("required" , false);
				$("#txtcommentname").prop("required" , false);
				$("#txtcomment").prop("required" , false);
				$("#txtname").prop("required" , false);
				$("#txtdate").prop("required", false);
				$("#commentdiv").hide();
				
			
			        
																				 
				
			});
			$( document ).ready(function() {
				var _getLabel = $("#lblResult").text();
				if(_getLabel == "Last Blog Submitted"){
					$("#form-one").hide();
				 	$("#blogdiv").show();
				}
				
				if(_getLabel == "Result cannot be save"){
					$("#form-one").hide();
				 	$("#blogdiv").show();
				}
			});				 
							 
							 
	</script>


    <script type="text/javascript">
        $("#form-one").show();
        $("#blogdiv").hide();
        $("#commentdiv").hide();
  
        $("#dashboardopen").click(function () {
                 $("#blogdiv").hide();
				 $("#commentdiv").hide();
				 $("#form-one").show();
			});
		
		$("#dashboardopen").click(function(){
				 $("#form-one").show();
				 $("#blogdiv").hide();
			});
		
	
							 
							 
							 
							 
							 
			$("#Button3").click(function(){

			    $("#commentdiv").hide();
			    $("#blogdiv").hide();
				 $("#txttitle").prop("required" , false);
			     $("#txturl").prop("required" , false);
				 $("#txtpostby").prop("required" , false);
				 $("#txtpostdate").prop("required" , false);
				 $("#dropdowntype").prop("required" , false);
				 $("#txtvideolink").prop("required" , false);
				$("#txtdescription").prop("required" , false);
				$("#txtcommentname").prop("required" , false);
				$("#txtcomment").prop("required" , false);
				$("#txtname").prop("required" , false);
				$("#txtdate").prop("required" , false);
				
			
			        
																				 
				
			});
			$( document ).ready(function() {
				var _getLabel = $("#lblResult").text();
				if(_getLabel == "Last URL Submitted"){
				    $("#blogdiv").hide();
				    $("#commentdiv").hide();
				    $("#form-one").show();
				}
				
				if(_getLabel == "Result cannot be save"){
				    $("#blogdiv").hide();
				    $("#commentdiv").hide();
				    $("#form-one").show();
				}
			});				 
							 
							 
	</script>
	
	
</body>
</html>
