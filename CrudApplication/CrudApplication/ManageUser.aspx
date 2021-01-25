<%@ Page Title="" Language="C#" MasterPageFile="~/Crud.Master" AutoEventWireup="true" CodeBehind="ManageUser.aspx.cs" Inherits="CrudApplication.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContentPlaceHolder" runat="server">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
                <h2>Onboarded user to the system: </h2>
                <p>
                    <asp:GridView ID="grdViewUserList" runat="server" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="name" HeaderText="Name" />
                            <asp:BoundField DataField="email" HeaderText="Email" />
                            <asp:BoundField DataField="gender" HeaderText="Gender" />
                            <asp:BoundField DataField="city" HeaderText="City" />
                            <asp:BoundField DataField="province" HeaderText="Province" />
                            <asp:BoundField DataField="availability" HeaderText="Availability" />
                            <asp:BoundField DataField="comment" HeaderText="Comment" />
                        </Columns>
                    </asp:GridView>
                </p>


         </div>
    </div>
</asp:Content>
