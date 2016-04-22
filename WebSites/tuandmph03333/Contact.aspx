<%@ Page Title="Liên Hệ" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.vb" Inherits="Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <style>
        .gmap {
            
            border: 5px solid #f6f5f0;
            width: 100%;
            box-shadow: 0px 0px 3px 3px #e7e4dc;
            overflow: hidden;
            position: relative;
            margin: 0 auto;
        }
        h5 {
            color:#00c1c6;
        font-size:15px;
        }
      
    </style>
    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                  
                    <h3 class="section-subheading text-muted">Liên hệ nhanh với PigShop</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <form name="sentMessage" id="contactForm" novalidate>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Họ và Tên *" id="name" required data-validation-required-message="Hãy nhập tên của bạn!">
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control" placeholder="Địa chỉ Email *" id="email" required data-validation-required-message="Hãy nhập email của bạn!">
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="form-group">
                                    <input type="tel" class="form-control" placeholder="Số điện thoại *" id="phone" required data-validation-required-message="Hãy nhập số điện thoại">
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <textarea class="form-control" style="height:132px" placeholder="Nội dung *" id="message" required data-validation-required-message="Hãy nhập nội dung!"></textarea>
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="col-lg-12 text-center">
                                <div id="success"></div>
                                <button type="submit" class="btn btn-success">Send Message</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
<section id="contact-info" style="margin-top:50px;color:#777">
        <div class="center" align="center">                
            <h3>Địa chỉ các cơ sở PigShop</h3>
            <br />
        </div>
        <div class="gmap-area">
            <div class="container">
                <div class="row">
                    <div class="col-sm-5 text-center" style="padding-right:5%;">
                        <div class="gmap">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7450.057047640431!2d105.75971933785549!3d20.991493700498268!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3134533fae9768c5%3A0xf517d62926e85a89!2zxJDhuqFpIE3hu5csIEjDoCBO4buZaSwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1460613800373" width="600" height="260"  frameborder="0" style="border:0" allowfullscreen></iframe>
                        </div>
                    </div>
                    <div class="col-sm-7 map-content">
                        <ul class="row">
                            <li class="col-sm-6">
                                <address>
                                    <h5>Hà Nội</h5>
                                    <p>68 Đại Mỗ, Nam Từ Liêm <br>
                                    TP. Hà Nội</p>
                                    <p>Phone: 0169.265.8008 <br>
                                    Email Address: Tuandmph03333@fpt.vn</p>
                                </address>
                            </li>
                            <li class="col-sm-6">
                                <address>
                                    <h5>Hồ Chí Minh</h5>
                                    <p>189A Cống Quỳnh, P. Nguyễn Cư Trinh <br>
                                    Quận 1, TP.Hồ Chí Minh </p>                                
                                    <p>Phone: 0909.517.975 <br>
                                    Email Address: pigshophcm@gmail.com</p>
                                </address>
                            </li>


                            <li class="col-sm-6">
                                <address>
                                    <h5>Đà Nẵng</h5>
                                    <p>116 Lê Duẩn, Hải Châu <br>
                                   TP. Đà Nẵng</p>
                                    <p>Phone: 0911.187.346 <br>
                                    Email Address: pigshopdn@gmail.com</p>
                                </address>
                            </li>
                             <li class="col-sm-6">
                                <address>
                                    <h5>Cần Thơ</h5>
                                    <p>98/1C Trần Hưng Đạo, P.An Nghiệp <br>
                                    TP. Cần Thơ</p>
                                    <p>Phone: 0975 045 020 <br>
                                    Email Address:pigshopct@gmail.com</p>
                                </address>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>