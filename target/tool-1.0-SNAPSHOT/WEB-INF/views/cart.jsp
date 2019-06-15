<%@ taglib
        prefix="fmt"
        uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page
        contentType="text/html;charset=UTF-8"
        language="java" %>
<%@ page
        contentType="text/html;charset=UTF-8"
        language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@include
            file="component/header.jsp" %>
</head>
<!--/head-->

<body>
<%@include
        file="component/navbar.jsp" %>

<section id="cart_items">
    <div class="container">
        <div class="breadcrumbs">
            <ol class="breadcrumb">
                <li><a href="#">Home</a></li>
                <li class="active">Giỏ hàng</li>
            </ol>
        </div>
        <div class="table-responsive cart_info">
            <table class="table table-condensed">
                <thead>
                <tr class="cart_menu">
                    <td width="10%" class="image">Sản phẩm</td>
                    <td width="20%" class="description" style="width: 35%"></td>
                    <td width="10%" class="price" style="text-align: right">Giá</td>
                    <td width="15%" class="quantity" style="text-align: center">Số lượng</td>
                    <td width="20%" class="total">Tổng</td>
                    <td></td>
                </tr>
                </thead>
                <tbody>
                <c:choose>
                    <c:when test="${cart eq null}">
                        <h2>Không có sản phẩm trong giỏ hàng</h2>
                    </c:when>
                    <c:otherwise>
                        <c:forEach var="elt" items="${cart.itemList}">
                            <tr id="cart_items_${elt.product.id}">
                                <td class="cart_product">
                                    <a href="">
                                        <img src="${pageContext.request.contextPath}/${elt.product.image}"
                                             style="width: 50px"
                                             alt="">
                                    </a>
                                </td>
                                <td class="cart_description">
                                    <h5><a href="">${elt.product.name}</a></h5>
                                    <p>Web ID: 1089772</p>
                                </td>
                                <td class="cart_price" style="text-align: right">
                                    <p>
                                        <fmt:formatNumber pattern="###,###" value="${elt.product.price}" />đ
                                    </p>
                                </td>
                                <td class="cart_quantity">
                                    <div class="cart_quantity_button"  style="margin-left: 40%">
                                        <%--<a class="cart_quantity_up" href=""> + </a>--%>
                                        <input class="cart_quantity_input" type="text"
                                               name="quantity"
                                               value="${elt.quantity}"
                                               autocomplete="off"
                                               size="2">
                                        <%--<a class="cart_quantity_down" href=""> - </a>--%>
                                    </div>
                                </td>
                                <td class="cart_total">
                                    <p class="cart_total_price">
                                        <fmt:formatNumber pattern="###,###" value="${elt.product.price * elt.quantity}" />đ
                                    </p>
                                </td>
                                <td class="cart_delete">
                                    <button class="cart_quantity_delete btn-warning btn"
                                            onclick="deleteItem(${elt.product.id})"
                                            >
                                        <i class="fa fa-times"></i>
                                    </button>
                                </td>
                            </tr>
                        </c:forEach>
                    </c:otherwise>
                </c:choose>
                </tbody>
            </table>
        </div>
    </div>
</section> <!--/#cart_items-->
<section id="do_action">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
            </div>
            <div class="col-sm-6">
                <div class="total_area">
                    <ul>
                        <li>Tổng tiền <span>
                            <fmt:formatNumber value="${cart.totalPrice}" pattern="###,###" />đ
                        </span></li>
                        <li>Shipping Cost <span>Free</span></li>
                    </ul>
                    <a class="btn btn-default update" href="">Xác nhận mua hàng</a>
                    <%--<a class="btn btn-default check_out" href="">Check Out</a>--%>
                </div>
            </div>
        </div>
    </div>
</section>

<%@include
        file="component/footer.jsp" %>
<script>
    function deleteItem(productId) {
        console.log(productId)
        $.ajax({
            url:'${pageContext.request.contextPath}/cart/'+productId+'',
            method: 'DELETE',
            success: function (data) {
                if(data == true) {
                    $('#cart_items_'+productId+'').empty();
                    loadCart()
                }
            }
        })
    }
</script>
</body>
</html>