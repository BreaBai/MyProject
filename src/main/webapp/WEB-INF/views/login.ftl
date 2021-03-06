




    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin</title>

    <!-- Bootstrap Core CSS -->
    <link href="/res/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="/res/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="/res/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="/res/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">


    <!-- Custom CSS -->

    <!-- Morris Charts CSS -->
    <link href="/res/vendor/morrisjs/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- jQuery -->
    <script src="/res/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/res/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="/res/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="/res/dist/js/sb-admin-2.js"></script>
    <script type="text/javascript" src="/res/js/layer/layer.js"></script>


<body>

<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <div class="login-panel panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Please Sign In</h3>
                </div>
                <div class="panel-body">
                    <form role="form"  id="useForm">
                        <fieldset>
                            <div class="form-group">
                                <input class="form-control" placeholder="E-mail" name="name" type="email" autofocus>
                            </div>
                            <div class="form-group">
                                <input class="form-control" placeholder="Password" name="passWord" type="password" value="">
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input name="remember" type="checkbox" value="Remember Me">Remember Me
                                </label>
                            </div>
                            <!-- Change this to a button or input when using this as a form -->
                            <a href="javaScript:void(0)" id="submitButton" class="btn btn-lg btn-success btn-block">Login</a>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>




</body>
<#--登录事件-->
<script>

    $("#submitButton").click(function(){
        layer.load(2, {shade: [0.2, '#999999'] });//0.1透明度的白色背景

        $.ajax({
            url:"/index/loginSubmit",
            data: $('#useForm').serialize(),
            /* error:function(){
                 layer.msg('通信失败', {icon:2});
             },*/
            dataType:'',
            type: "POST",
            contentType:"application/x-www-form-urlencoded; charset=utf-8",

            success: function(data){
                $("body").html(data);

//                alert(data.success);
////                $(".container").html(data);
//
//
//                if (data.success) {
//                    layer.msg("操作成功",{icon:1});
//                    window.location.href = "/loginSuccess";
//                } else {
//                    layer.msg('操作失败',{icon:2});
//                }
//                if(data.isSuccess){
//                    window.location.href="/loginSuccess";
//                }
//                html.data(data);
                layer.closeAll("loading");
            }

        });
    });


</script>