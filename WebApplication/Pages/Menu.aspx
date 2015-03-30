<%@ Page Title="" Language="C#" MasterPageFile="~/App_Master/Menu.master" AutoEventWireup="true"
    CodeBehind="Menu.aspx.cs" Inherits="WebApplication.Pages.Menu" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="cphContent">
    <script type="text/javascript">

        function Update() {
            $('#btnUpdate').click();
        }

    </script>
    <article class="menu">
        <asp:Repeater ID="rptItems" runat="server" OnItemDataBound="rptItems_DataBound">
            <ItemTemplate>
                <asp:HiddenField ID="hdnItem" runat="server" Value='<%# Eval("Id")%>' ClientIDMode="Static" />
                <div class="left">
                    <h3>
                        <%# Eval("Name")%>:
                        <%# Eval("Price")%></h3>
                </div>
                <div class="left star">
                    <img src="../Resources/Images/star_full.png" class="noeffects" alt="">
                    <img src="../Resources/Images/star_full.png" class="noeffects" alt="">
                    <img src="../Resources/Images/star_full.png" class="noeffects" alt="">
                    <img src="../Resources/Images/star_half_full.png" class="noeffects" alt="">
                    <img src="../Resources/Images/star_empty.png" class="noeffects" alt="">
                </div>
                <div class="right menu-order">
                    <asp:Button ID="btnOrder" runat="server" CssClass="button" OnClick="btnOrder_Click"
                        Text="Order" UseSubmitBehavior="false" ClientIDMode="Static" OnClientClick="Update()"/>
                </div>
                <img src="<%# Eval("Image")%>" class="left clear item" width="150" alt="">
                <p class="leftm">
                    <%# Eval("Description")%>
                </p>
                <div class="border3">
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </article>
</asp:Content>
