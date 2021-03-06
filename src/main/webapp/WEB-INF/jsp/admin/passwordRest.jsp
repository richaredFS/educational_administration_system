<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <jsp:include page="head.jsp"></jsp:include>
</head>
<body>
<!-- start: Header -->
<jsp:include page="top.jsp"></jsp:include>
<!-- end: Header -->
<div class="container-fluid mimin-wrapper">
    <!-- start:Left Menu -->
    <jsp:include page="menu.jsp"></jsp:include>
    <!-- end: Left Menu -->

    <!-- start: content -->
    <div id="content">
        <div class="panel">
            <div class="panel-body">
                <div class="col-md-12">
                    <h3 class="animated fadeInLeft">重置管理员密码</h3>
                    <p class="animated fadeInDown"> 业务 <span class="fa-angle-right fa"></span> 重置管理员密码页面 </p>
                </div>
            </div>
        </div>
        <div class="form-element">
            <div class="col-md-12 padding-0">
                <div class="col-md-12">
                    <div class="panel form-element-padding">
                        <div class="panel-heading">
                            <h4>基本表单</h4>
                        </div>
                        <div class="panel-body" style="padding-bottom:30px;">
                            <div class="col-md-12">

                                <form name="reset" class="form-horizontal" role="form" action="/passwordRest"
                                      id="editfrom" method="post" onsubmit="return check()">
                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-sm-2 control-label">旧密码</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" name="oldPassword" id="inputEmail3"
                                                   placeholder="请输入旧密码">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputPassword3" class="col-sm-2 control-label">新密码</label>
                                        <div class="col-sm-10">
                                            <input type="password" name="password1" class="form-control"
                                                   id="inputPassword3" placeholder="请输入密码">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputPassword3" class="col-sm-2 control-label">确认密码</label>
                                        <div class="col-sm-10">
                                            <input type="password" name="password2" class="form-control"
                                                   id="inputPassword3" placeholder="请再次输入密码">
                                        </div>
                                    </div>
                                    <div class="form-group" style="text-align: center">
                                        <button class="btn btn-danger btn-sm" type="submit">提交</button>
                                        <button class="btn btn-primary btn-sm" type="reset">重置</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end: content -->

</div>

<!-- start: Javascript -->
<script src="../../../js/jquery.min.js"></script>
<script src="../../../js/jquery.ui.min.js"></script>
<script src="../../../js/bootstrap.min.js"></script>
<!-- plugins -->
<script src="../../../js/plugins/jquery.nicescroll.js"></script>
<!-- custom -->
<script src="../../../js/main.js"></script>
<!-- end: Javascript -->
<script>
    $("#left-menu-3").click();
</script>
</body>
<script>
    $("#nav li:nth-child(5)").addClass("active")

    function check() {
        if (reset.oldPassword.value == "" || reset.oldPassword.value == null) {
            alert("请输入旧账户密码");
            return false;
        }
        if (reset.password1.value == "" || reset.password1.value == null) {
            alert("请输入重置密码");
            return false;
        }
        if (reset.password2.value == "" || reset.password2.value == null) {
            alert("请输入再次输入密码");
            return false;
        }
        if (reset.password1.value != reset.password2.value) {
            alert("两次密码不正确");
            return false;
        }
    }
</script>
</html>