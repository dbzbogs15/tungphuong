<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <%@include file="component/header.jsp"%>
</head><!--/head-->

<body>

<%@include file="component/navbar.jsp"%>

<section id="form"><!--form-->
    <div class="container">
        <div class="row">
            <span class="error">${message}</span>
            <div class="col-sm-4 col-sm-offset-1">
                <div class="login-form"><!--login form-->
                    <h2>Đăng nhập</h2>
                    <form action="${pageContext.request.contextPath}/user/login" method="post">
                        <input type="email" name="email" placeholder="Email" />
                        <input type="password" name="password" placeholder="Mật khẩu" />
                        <span>
								<input type="checkbox" class="checkbox"> 
								Giữ đăng nhập
							</span>
                        <button type="submit" class="btn btn-default">Đăng nhập</button>
                    </form>
                </div><!--/login form-->
            </div>
            <div class="col-sm-1">
                <h2 class="or">HOẶC</h2>
            </div>
            <div class="col-sm-4">
                <div class="signup-form"><!--sign up form-->
                    <h2>Đăng ký tài khoản mới!</h2>
                    <form action="${pageContext.request.contextPath}/user/register" method="post" id="register_form">
                        <input type="email" name="email" autocomplete="off" placeholder="Email đăng ký"/>
                        <input type="password" name="password" id="pwd" autocomplete="off" placeholder="Mật khẩu"/>
                        <input type="password" name="repwd" autocomplete="off" placeholder="Xác nhận mật khẩu"/>
                        <input type="text" name="name" autocomplete="off" placeholder="Họ và tên"/>
                        <input type="text" name="address" autocomplete="off" placeholder="Địa chỉ(Phường xã, Quận Huyện, Tỉnh/TP)"/>
                        <input type="text" name="phone" autocomplete="off" placeholder="Số điện thoại"/>
                        <select style="height: 38px" name="gender">
                            <option value="">--Giới tính--</option>
                            <option value="1">Nam</option>
                            <option value="2">Nữ</option>
                        </select>
                        <hr>
                        <button type="submit" class="btn btn-default">Đăng ký</button>
                    </form>
                </div><!--/sign up form-->
            </div>
        </div>
    </div>
</section><!--/form-->

<%@include file="component/footer.jsp"%>
<script src="${pageContext.request.contextPath}/resources/dist/jquery.validate.min.js"></script>
<script>
    $('#register_form').validate({
        rules: {
            email: {
                required: true,
                email: true,
                remote: {
                    url: '${pageContext.request.contextPath}/user/checkEmail',
                    type: 'GET',
                    data: {
                        email: function () {
                            return $('#register_form :input[name="email"]').val();
                        }
                    }
                }
            },
            password: {
                required: true,
                minlength: 6
            },
            repwd: {
                equalTo: '#pwd'
            },
            address: 'required',
            phone: {
                required: true,
                number: true,
                minlength: 10,
                maxlength: 11
            },
            gender: 'required',
            name: 'required'
        },
        messages: {
            email: {
                required: 'Vui lòng nhập email đăng ký',
                email: 'Email không đúng định dạng',
                remote: 'Email đã có người đăng ký'
            },
            pwd: {
                required: 'Vui lòng nhập mật khẩu',
                minlength: 'Mật khẩu tối thiểu 6 kí tự'
            },
            repwd: {
                equalTo: 'Xác nhận mật khẩu không trùng khớp!'
            },
            address: 'Vui lòng nhập địa chỉ hiện tại',
            phone: {
                required: 'Vui lòng nhập số điện thoại',
                number: 'Số điện thoại không hợp lệ',
                minlength: 'Số điện thoại không hợp lệ',
                maxlength: 'Số điện thoại không hợp lệ'
            },
            gender: 'Vui lòng chọn giới tính',
            name: 'Vui lòng nhập họ tên'
        }
    })
</script>
</html>