<%@ Page Title="" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.vb" Inherits="About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>Thông Tin.</h1>
        
    </hgroup>

    <article>
        <p>        
Smartphone tầm trung có màn hình Full HD, chip Snapdragon mạnh mẽ


        </p>1. Huawei GR5

        <img src="Images/dtdd.png" style="width: 419px; height: 115px;" />


        <p>        
   2. HTC Desire 826 Selfie
            <img src="Images/htc-desire-826-selfie.png" style="height: 403px; width: 451px" />
  
               </p>

        <p>        
   
     </p>
    </article>

    <aside>
        <h3>Khác</h3>
        <p>        
        </p>
        <ul>
            <li><a runat="server" href="~/">Trang Chủ</a></li>
            <li><a runat="server" href="~/About.aspx">Thông Tin</a></li>
            <li><a runat="server" href="~/Contact.aspx">Liên Hệ</a></li>
        </ul>
    </aside>
</asp:Content>