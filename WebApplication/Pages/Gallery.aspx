<%@ Page Title="" Language="C#" MasterPageFile="~/App_Master/Gallery.master" AutoEventWireup="true"
    CodeBehind="Gallery.aspx.cs" Inherits="WebApplication.Pages.Gallery" %>


<asp:Content ID="Content1" ContentPlaceHolderID="cphContent" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $("a.fancyimage").fancybox({
                'overlayShow': false,
                'transitionIn': 'elastic',
                'transitionOut': 'elastic'
            });
        });
    </script>
    <article class="fullwidth gallery">
        <h3>
            Gallery</h3>
        <a class="fancyimage" href="../Resources/Images/gallery/1.jpeg">
            <img src="../Resources/Images/gallery/1.jpeg" width="200" height="200" alt="" /></a> <a class="fancyimage"
                href="../Resources/Images/gallery/2.jpg">
                <img src="../Resources/Images/gallery/2.jpg" width="200" height="200" alt="" /></a> <a class="fancyimage"
                    href="../Resources/Images/gallery/3.jpeg">
                    <img src="../Resources/Images/gallery/3.jpeg" width="200" height="200" alt="" /></a>
        <a class="fancyimage" href="../Resources/Images/gallery/4.jpg">
            <img src="../Resources/Images/gallery/4.jpg" width="200" height="200" alt="" /></a> <a class="fancyimage"
                href="../Resources/Images/gallery/5.jpeg">
                <img src="../Resources/Images/gallery/5.jpeg" width="200" height="200" alt="" /></a>
        <a class="fancyimage" href="../Resources/Images/gallery/6.jpg">
            <img src="../Resources/Images/gallery/6.jpg" width="200" height="200" alt="" /></a> <a class="fancyimage"
                href="../Resources/Images/gallery/7.jpeg">
                <img src="../Resources/Images/gallery/7.jpeg" width="200" height="200" alt="" /></a>
        <a class="fancyimage" href="../Resources/Images/gallery/8.jpg">
            <img src="../Resources/Images/gallery/8.jpg" width="200" height="200" alt="" /></a>
    </article>
</asp:Content>
