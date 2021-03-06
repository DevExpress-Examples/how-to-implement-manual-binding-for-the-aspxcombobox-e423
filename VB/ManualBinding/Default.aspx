<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="ManualBinding._Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxDataView" TagPrefix="dxdv" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
	<title>Untitled Page</title>
</head>
<body>
	<form id="form1" runat="server">
	<div>
		<dxe:ASPxComboBox ID="ASPxComboBox1" runat="server" DataSourceID="dsRegions" TextField="RegionDescription"
			ValueField="RegionID" ValueType="System.Int32" Width="187px" AutoPostBack="True" OnPreRender="ASPxComboBox1_PreRender" OnValueChanged="ASPxComboBox1_ValueChanged">
		</dxe:ASPxComboBox>
		<dxe:ASPxButton ID="ASPxButton1" runat="server" OnClick="ASPxButton1_Click" Text="Reload This Page (sends a post back)">
		</dxe:ASPxButton>
		&nbsp;</div>
		<asp:SqlDataSource ID="dsRegions" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
			SelectCommand="SELECT * FROM [Region]"></asp:SqlDataSource>
	</form>
</body>
</html>
