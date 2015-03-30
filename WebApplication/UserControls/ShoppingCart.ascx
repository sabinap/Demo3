<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ShoppingCart.ascx.cs"
    Inherits="WebApplication.UserControls.ShoppingCart" %>
<script type="text/javascript">
    function UpdateShoppingCart() {
        //alert("updated");
    }
</script>

<script language="C#" runat="server">
    void PostbackBtnClick_Command(object sender, CommandEventArgs e)
    {
        UpdateShoppingCart();
    }

</script>
<aside class="sidebar">
    <h3>
        Shopping Cart</h3>
    <asp:UpdatePanel runat="server" ID="pnlShoppingCart" UpdateMode="Conditional" ClientIDMode="Static">
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="btnUpdate" EventName="click" />
        </Triggers>
        <ContentTemplate>
            <asp:Button ID="btnUpdate" runat="server" Text="Update" ClientIDMode="Static" CommandName="PostbackBtnClick" OnCommand="PostbackBtnClick_Command" Style=""/>
            <asp:Repeater runat="server" ID="rptItems" OnItemDataBound="rptItems_DataBound">
                <ItemTemplate>
                    <li><a href="#">
                        <asp:HiddenField ID="hdnId" runat="server" />
                        <asp:Literal runat="server" ID="ltName"></asp:Literal></a><br />
                        <asp:Literal runat="server" ID="ltDescription"></asp:Literal>
                    </li>
                </ItemTemplate>
                <FooterTemplate>
                </FooterTemplate>
            </asp:Repeater>
            
        </ContentTemplate>
    </asp:UpdatePanel>
    <asp:Button ID="btnProceed" runat="server" OnClick="btnProceed_Click" Text="Order" ClientIDMode="Static" />

    <!--
        <ul class="blog">
         <li><a href="#">Lorem Ipsum Dolor</a><br />
                    Orciint erdum condimen terdum nulla mcorper elit nam curabitur... </li>
                <li><a href="#">Praesent Et Eros</a><br />
                    Orciint erdum condimen terdum nulla mcorper elit nam curabitur... </li>
                <li><a href="#">Suspendisse In Neque</a><br />
                    Orciint erdum condimen terdum nulla mcorper elit nam curabitur... </li>
                <li><a href="#">Suspendisse In Neque</a><br />
                    Orciint erdum condimen terdum nulla mcorper elit nam curabitur... </li>
                     </ul>
                    -->
    <div class="border3">
    </div>
    <!--<h3>
                Sidebar Widget</h3>
            <img src="../Resources/Images/home/1.jpg" width="280" alt="" />
            <p>
                <strong>Pellentesque habitant morbi tristique</strong> senectus et netus et malesuada
                fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget,
                tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. <em>Aenean ultricies
                    mi vitae est.</em> Mauris placerat eleifend leo. Quisque sit amet est et sapien
                ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, <code>commodo vitae</code>,
                ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum
                rutrum orci, sagittis tempus lacus enim ac dui. In turpis pulvinar facilisis. Ut
                felis.<br>
                <a href="" class="right" style="padding-top: 7px"><strong>Continue Reading &raquo;</strong></a></p>-->
</aside>
