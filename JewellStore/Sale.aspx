<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sale.aspx.cs" Inherits="JewellStore.Sale" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
                    <AlternatingItemTemplate>
                        <tr style="background-color: #FFFFFF; color: #284775;">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                            </td>
                            <td>
                                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                            </td>
                            <td>
                                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                            </td>
                            <td>
                                <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                            </td>
                            <td>
                                <asp:Label ID="contactLabel" runat="server" Text='<%# Eval("contact") %>' />
                            </td>
                            <td>
                                <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' />
                            </td>
                            <td>
                                <asp:Label ID="WeightLabel" runat="server" Text='<%# Eval("Weight") %>' />
                            </td>
                            <td>
                                <asp:Label ID="billLabel" runat="server" Text='<%# Eval("bill") %>' />
                            </td>
                            <td>
                                <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
                            </td>
                        </tr>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <tr style="background-color: #999999;">
                            <td>
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                            </td>
                            <td>
                                <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="contactTextBox" runat="server" Text='<%# Bind("contact") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="WeightTextBox" runat="server" Text='<%# Bind("Weight") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="billTextBox" runat="server" Text='<%# Bind("bill") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
                            </td>
                        </tr>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                            <tr>
                                <td>No data was returned.</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                            </td>
                            <td>&nbsp;</td>
                            <td>
                                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="contactTextBox" runat="server" Text='<%# Bind("contact") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="WeightTextBox" runat="server" Text='<%# Bind("Weight") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="billTextBox" runat="server" Text='<%# Bind("bill") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
                            </td>
                        </tr>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <tr style="background-color: #E0FFFF; color: #333333;">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                            </td>
                            <td>
                                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                            </td>
                            <td>
                                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                            </td>
                            <td>
                                <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                            </td>
                            <td>
                                <asp:Label ID="contactLabel" runat="server" Text='<%# Eval("contact") %>' />
                            </td>
                            <td>
                                <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' />
                            </td>
                            <td>
                                <asp:Label ID="WeightLabel" runat="server" Text='<%# Eval("Weight") %>' />
                            </td>
                            <td>
                                <asp:Label ID="billLabel" runat="server" Text='<%# Eval("bill") %>' />
                            </td>
                            <td>
                                <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                                        <tr runat="server" style="background-color: #E0FFFF; color: #333333;">
                                            <th runat="server"></th>
                                            <th runat="server">id</th>
                                            <th runat="server">Name</th>
                                            <th runat="server">Address</th>
                                            <th runat="server">contact</th>
                                            <th runat="server">ProductName</th>
                                            <th runat="server">Weight</th>
                                            <th runat="server">bill</th>
                                            <th runat="server">Date</th>
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style="text-align: center; background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif; color: #FFFFFF">
                                    <asp:DataPager ID="DataPager1" runat="server">
                                        <Fields>
                                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                        </Fields>
                                    </asp:DataPager>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <tr style="background-color: #E2DED6; font-weight: bold; color: #333333;">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                            </td>
                            <td>
                                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                            </td>
                            <td>
                                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                            </td>
                            <td>
                                <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                            </td>
                            <td>
                                <asp:Label ID="contactLabel" runat="server" Text='<%# Eval("contact") %>' />
                            </td>
                            <td>
                                <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' />
                            </td>
                            <td>
                                <asp:Label ID="WeightLabel" runat="server" Text='<%# Eval("Weight") %>' />
                            </td>
                            <td>
                                <asp:Label ID="billLabel" runat="server" Text='<%# Eval("bill") %>' />
                            </td>
                            <td>
                                <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JewellConnectionString3 %>" DeleteCommand="DELETE FROM [Sale] WHERE [id] = @id" InsertCommand="INSERT INTO [Sale] ([Name], [Address], [contact], [ProductName], [Weight], [bill], [Date]) VALUES (@Name, @Address, @contact, @ProductName, @Weight, @bill, @Date)" SelectCommand="SELECT * FROM [Sale] ORDER BY [id] DESC" UpdateCommand="UPDATE [Sale] SET [Name] = @Name, [Address] = @Address, [contact] = @contact, [ProductName] = @ProductName, [Weight] = @Weight, [bill] = @bill, [Date] = @Date WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="contact" Type="String" />
                        <asp:Parameter Name="ProductName" Type="String" />
                        <asp:Parameter Name="Weight" Type="String" />
                        <asp:Parameter Name="bill" Type="String" />
                        <asp:Parameter Name="Date" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="contact" Type="String" />
                        <asp:Parameter Name="ProductName" Type="String" />
                        <asp:Parameter Name="Weight" Type="String" />
                        <asp:Parameter Name="bill" Type="String" />
                        <asp:Parameter Name="Date" Type="String" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>

            </div>


        </div>

    </div>
</asp:Content>
