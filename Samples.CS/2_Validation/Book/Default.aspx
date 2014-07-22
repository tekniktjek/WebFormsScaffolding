﻿<%@ Page Title="BookList" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.cs" Inherits="Samples._2_Validation.Book.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <h2>Books List</h2>
    <p>
        <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Create new" />
    </p>
    <div>
        <asp:ListView id="ListView1" runat="server"
            DataKeyNames="Id" 
			ItemType="Samples.Validation.Book"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                There are no entries found for Books
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table class="table">
                    <thead>
                        <tr>
                            <th>
								<asp:DynamicControl runat="server" DataField="Id" Mode="ReadOnly" UIHint="FieldLabel" />
							</th>
                            <th>
								<asp:DynamicControl runat="server" DataField="Title" Mode="ReadOnly" UIHint="FieldLabel" />
							</th>
                            <th>
								<asp:DynamicControl runat="server" DataField="UnitsInStock" Mode="ReadOnly" UIHint="FieldLabel" />
							</th>
                            <th>
								<asp:DynamicControl runat="server" DataField="Comments" Mode="ReadOnly" UIHint="FieldLabel" />
							</th>
                            <th>
								<asp:DynamicControl runat="server" DataField="InStock" Mode="ReadOnly" UIHint="FieldLabel" />
							</th>
                            <th>&nbsp;</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr runat="server" id="itemPlaceholder" />
                    </tbody>
                </table>
				<asp:DataPager PageSize="5"  runat="server">
					<Fields>
                        <asp:NextPreviousPagerField ShowLastPageButton="False" ShowNextPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                        <asp:NumericPagerField ButtonType="Button"  NumericButtonCssClass="btn" CurrentPageLabelCssClass="btn disabled" NextPreviousButtonCssClass="btn" />
                        <asp:NextPreviousPagerField ShowFirstPageButton="False" ShowPreviousPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                    </Fields>
				</asp:DataPager>
            </LayoutTemplate>
            <ItemTemplate>
                <tr>
							<td>
								<asp:DynamicControl runat="server" DataField="Id" ID="Id" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Title" ID="Title" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="UnitsInStock" ID="UnitsInStock" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Comments" ID="Comments" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="InStock" ID="InStock" Mode="ReadOnly" />
							</td>
                    <td>
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/2_Validation/Book/Edit", Item.Id) %>' Text="Edit" /> | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/2_Validation/Book/Delete", Item.Id) %>' Text="Delete" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>

