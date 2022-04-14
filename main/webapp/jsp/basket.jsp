<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../CSS/css/bootstrap.css">
    <link rel="stylesheet" href="../CSS/basketStyle.css">

    <title>Каталог</title>

    <script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script>
        function testFunction() {
            var x = document.getElementById("testInput").value;
            document.getElementById("info").innerHTML = x;
        }
    </script>

</head>
<body>
    <!--Меню -->
    <div class="navbar navbar-inverse fixed-top navbar-expand-md">
        <div class="container navi">
            <a class="navbar-brand logotip" href="/">Sombrero</a>
            <a class="btn btn-navbar" data-bs-toggle="collapse" data-bs-target=".navbar-collapse">
                <span class="navbar-toggler-icon"></span>
            </a>
            <div class="navbar-collapse collapse"> <!--Меню сворачивается в выпадающий btn-->
                <ul class="navbar-nav"> <!--меню, которое будет придвинуто к правой стороне -->
                    <li class="nav-item"><a onclick="location.href='/catalog'" class="nav-link nav_li">Каталог</a></li>
                    <li class="nav-item"><a onclick="location.href='/basket'" class="nav-link nav_li">Корзина</a></li>
                </ul>
            </div>
            <div class="row">
                <div class="col-8">
                    <input type="text" id="yourLog3" readonly="true" class="yourLog" style="display:none;">
                </div>
                <div class="col-4">
                    <input type="submit" id="vihod3" style="display:none; margin-right: 200px" value="Выйти" onclick="ext()" style="text-align:center" class="list-group-item list-group-item-action list-group-item-primary btn btn-large vihod">
                    <input type="submit" id="vhod3" style="display:block; margin-right: 200px;" value="Войти" onclick="location.href='/logOn'" class="list-group-item list-group-item-success btn btn-large btn-success vhod" >
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-1"></div>
            <div class="col-10" id="heading">
                <div id="about">
                    <h3> Корзина </h3>
                    <p> Здесь Вы можете просмотреть свой заказ.
                    Также можете удалить заказ, нажав на кнопку удалить рядом с заказом.
                    Для оформления заказа нажмите на кнопку "Оплатить".</p>
            </div>
            <div class="col-1"></div>

            <div class="divider"></div>

            <h3> Ваш заказ </h3>
            <div class="row">
                <div class="col-1"></div>
                <div class="col-10" id="spisok_basket">
                    <table border="2" cellspacing="0" cellpadding="2" width="100%" align="center" class="spisok">
                        <tr>
                            <p id = "info" ></p>
                        </tr>
                    </table>
                </div>
                <div class="col-1"></div>
            </div>
            <br>

            <div id='payInfo' class="payNow" style="display:none;">
                <p style= "font-weight:bold; font-size:24px;"> Введите данные банковской карты </p>
                <input type="int" id="cart_number" name="card_number" pattern=".{3,}" title="Минимум 3 символа" placeholder="Введите номер карты">
                <input type="text" id="cart_name" name="card_name" pattern=".{2,}" title="Минимум 3 символа" placeholder="Имя владельца">
                <input type="text" id="time_number" name="time_number" pattern=".{3,}" title="Минимум 3 символа" placeholder="Срок действия">
                <div class="row">
                    <div class="col-5"></div>
                    <div class="col-2">
                        <input id="payNow" type="submit" value="Оплатить" onclick="payNow()" class="list-group-item list-group-item-action list-group-item-primary btn btn-large payNowBtn">
                    </div>
                    <div class="col-5"></div>
                </div>
            </div>
            <div class="row">
                <div class="col-5"></div>
                <div class="col-2" style="text-align:center;">
                    <input id="sum_pay0" type="text" readonly="true" class="sum_pay">
                    <input id="pay" type="submit" value="Оплатить" onclick="pay()" style="display:block;" class="list-group-item list-group-item-success btn btn-large btn-success">
                </div>
                <div class="col-5"></div>
            </div>
        </div>
    </div>

    <script src="../js/basket1.js"></script>
    <script src="../js/js/bootstrap.js"></script>
</body>