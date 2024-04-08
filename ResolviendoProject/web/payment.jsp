<%-- 
    Document   : payment
    Created on : 27 oct. 2023, 12:50:54 a. m.
    Author     : Ramses
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@include file="referencias.jsp" %>
        <!--Titulo -->
        <title>Resolviendo</title>
    </head>
    <body class="bg-primario">
        <%@include file="header.jsp" %>
        <div class="container-fluid mb-5">
            <div class="row justify-content-center pt-5">
                <div
                    class="col-xs-12 col-md-4 col-md-offset-4 border border-primario border-2 p-5 rounded-5"
                >
                    <div class="panel panel-default text-white">
                        <div class="panel-heading">
                            <div class="row pb-3">
                                <h3 class="text-center text-primario">
                                    Detalles de Pago
                                </h3>
                                <img
                                    class="img-responsive cc-img"
                                    src="https://www.prepbootstrap.com/Content/images/shared/misc/creditcardicons.png"
                                />
                            </div>
                        </div>
                        <div class="panel-body">
                            <form role="form ">
                                <div class="row pb-3">
                                    <div class="col-xs-12">
                                        <div class="form-group">
                                            <label>Número de tarjeta</label>
                                            <div class="input-group">
                                                <input
                                                    type="tel"
                                                    class="form-control"
                                                    placeholder="Valid Card Number"
                                                />
                                                <span class="input-group-addon"
                                                    ><span
                                                        class="fa fa-credit-card"
                                                    ></span
                                                ></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row pb-3">
                                    <div class="col-xs-7 col-md-7">
                                        <div class="form-group">
                                            <label> Fecha de expiración </label>
                                            <input
                                                type="tel"
                                                class="form-control"
                                                placeholder="MM / YY"
                                            />
                                        </div>
                                    </div>
                                    <div class="col-xs-5 col-md-5 pull-right">
                                        <div class="form-group">
                                            <label>CVV</label>
                                            <input
                                                type="tel"
                                                class="form-control"
                                                placeholder="CVC"
                                            />
                                        </div>
                                    </div>
                                </div>
                                <div class="row pb-4">
                                    <div class="col-xs-12">
                                        <div class="form-group">
                                            <label
                                                >Nombre del propietario</label
                                            >
                                            <input
                                                type="text"
                                                class="form-control"
                                                placeholder="Card Owner Names"
                                            />
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="panel-footer">
                            <div class="row">
                                <div class="col-xs-12">
                                    <button
                                        class="btn btn-warning btn-lg btn-block"
                                    >
                                        Pagar
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>
