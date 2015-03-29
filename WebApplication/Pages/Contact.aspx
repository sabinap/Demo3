<%@ Page Title="" Language="C#" MasterPageFile="~/App_Master/Contact.master" AutoEventWireup="true"
    CodeBehind="Contact.aspx.cs" Inherits="WebApplication.Pages.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphContent" runat="server">
    <article>
        <h3>
            Contact Us</h3>
        <iframe width="625" height="250" src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=701+1st+Ave,+Sunnyvale,+CA+94089,+USA&amp;aq=0&amp;oq=701+&amp;sll=37.0625,-95.677068&amp;sspn=45.418852,93.076172&amp;t=v&amp;ie=UTF8&amp;hq=&amp;hnear=701+1st+Ave,+Sunnyvale,+California+94089&amp;z=14&amp;ll=37.417222,-122.02511&amp;output=embed">
        </iframe>
        <br />
        <p>
            Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis
            egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet,
            ante.</p>
        <form action="#" method="post">
        <label for="name">
            Name:</label>
        <br>
        <input type="text" name="name" id="name" value="" tabindex="1" />
        <br>
        <br>
        <label for="name">
            Subject:</label>
        <br>
        <input type="text" name="name" id="subject" value="" tabindex="1" />
        <br>
        <br>
        <label for="name">
            Email:</label>
        <br>
        <input type="text" name="name" id="email" value="" tabindex="1" />
        <br>
        <br>
        <label for="textarea">
            Message:</label>
        <br>
        <textarea cols="40" rows="8" name="textarea" id="textarea"></textarea>
        <br>
        <br>
        <input type="submit" value="Submit" class="button" />
        </form>
        <br>
        <br>
        <br>
    </article>
</asp:Content>
