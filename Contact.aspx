<%@ Page Title="" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.vb" Inherits="Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Trang Liên Hệ.</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Điện Thoại:</h3>
        </header>
        <p>
            <span class="label">Hot Line:</span>
            <span>046897635</span>
        </p>
        <p>
            <span class="label">Fax :</span>
            <span>046978365</span></p>
    </section>

    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">Hỗ Trợ 1:</span>
            <span><a href="mailto:Support@example.com">tiennm@gmail.com</a></span>
        </p>
        <p>
            <span class="label">Hỗ Trợ 2:</span>
            <span><a href="mailto:Marketing@example.com">manhld@gmail.com</a></span>
        </p>
        <p>
            <span class="label">Khẩn cấp:</span>
            <span><a href="mailto:General@example.com">hoangnt@gmail.com</a></span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Địa Chỉ:</h3>
        </header>
        <p>
            351 Cầu Giấy,Dịch Vọng,Cầu Giấy,Hà Nội, Việt Nam   
<br />
       <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.914595256293!2d105.78847011388842!3d21.036102992905874!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab4822581f6b%3A0x78e3741c943bb48b!2zVHJ1bmcgVMOibSBUaOG6vyBHaeG7m2kgRGkgxJDhu5luZw!5e0!3m2!1svi!2s!4v1456360456088" width="400" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>    
        </p>
    </section>
</asp:Content>