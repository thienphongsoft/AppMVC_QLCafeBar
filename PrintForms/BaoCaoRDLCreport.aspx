<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BaoCaoRDLCreport.aspx.cs" Inherits="WebAppMVC.PrintForms.BaoCaoRDLCreport" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
             <rsweb:ReportViewer ID="ReportViewer1" runat="server" 
                 AsyncRendering="false" ProcessingMode="Remote" SizeToReportContent="true" Font-Names="Verdana" 
                Font-Size="8pt" InteractiveDeviceInfos="(Collection)"
                WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt">
             </rsweb:ReportViewer>
        </div>
       
    </form>
</body>
</html>
