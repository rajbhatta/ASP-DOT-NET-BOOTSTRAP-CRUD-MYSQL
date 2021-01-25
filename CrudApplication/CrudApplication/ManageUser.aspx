<%@ Page Title="" Language="C#" MasterPageFile="~/Crud.Master" AutoEventWireup="true" CodeBehind="ManageUser.aspx.cs" Inherits="CrudApplication.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContentPlaceHolder" runat="server">
                <div class="container">
                    <div class="row">
                        <h2>List of users: </h2>
                    </div>
                    <div class="row">
                    <asp:GridView ID="grdViewUserList" runat="server" CssClass="table table-responsive table-striped" AllowSorting="True" AllowPaging="True" AutoGenerateColumns="False" OnRowEditing="grdViewUserList_RowEditing1" OnRowUpdating="grdViewUserList_RowUpdating" DataKeyNames="id" OnRowCancelingEdit="grdViewUserList_RowCancelingEdit" OnRowDeleting="grdViewUserList_RowDeleting">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="S.No" ReadOnly="True" />
                            <asp:BoundField DataField="name" HeaderText="Name" />
                            <asp:BoundField DataField="email" HeaderText="Email" />
                            <asp:BoundField DataField="gender" HeaderText="Gender" />
                            <asp:BoundField DataField="city" HeaderText="City" />
                            <asp:BoundField DataField="province" HeaderText="Province" />
                            <asp:BoundField DataField="availability" HeaderText="Availability" />
                            <asp:BoundField DataField="comment" HeaderText="Comment" />
                            <asp:CommandField ButtonType="Button" ShowEditButton="True" >
                            <ControlStyle BackColor="#99FF33" />
                            </asp:CommandField>
                            <asp:CommandField ButtonType="Button" ShowDeleteButton="True">
                            <ControlStyle BackColor="Red" />
                            </asp:CommandField>
                        </Columns>
                    </asp:GridView>
           
                   </div>
                </div>
</asp:Content>
