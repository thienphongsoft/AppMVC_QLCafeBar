<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InRDLCPhieu.aspx.cs" Inherits="WebAppMVC.PrintForms.InRDLCPhieu" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>In phiếu</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="../AdminLTE310/plugins/fontawesome-free/css/all.min.css" />
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" />
    <!-- Theme style -->
    <link rel="stylesheet" href="../AdminLTE310/dist/css/adminlte.min.css" />
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
         <div class="form-group" style="display:none;">
            <button id="btnPrintFooter" name="btnPrintFooter" type="button" class="btn btn-primary" onclick="PrintFooter()"><i class="fas fa-print"></i> In phiếu</button>
            <asp:Button ID="btnInNgay" Text="btnInNgay" runat="server" OnClick="InNgay" />
       
         </div>
        <div id="dvReport">
             <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            
        </div>
        <asp:Panel ID="pnlContents" runat="server">
              <rsweb:ReportViewer ID="ReportViewer1" runat="server"
                AsyncRendering="false" ProcessingMode="Remote" SizeToReportContent="true" Font-Names="Verdana" 
                Font-Size="8pt" InteractiveDeviceInfos="(Collection)"
                WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt">
            
            </rsweb:ReportViewer>
         </asp:Panel>
     
    </form>
</body>
</html>
<!-- jQuery -->
<script src="../AdminLTE310/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../AdminLTE310/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="../AdminLTE310/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../AdminLTE310/dist/js/demo.js"></script>
<script type="text/javascript">
    //Print();
   
    function Print() {
        var dvReport = document.getElementById("dvReport");
        var frame1 = dvReport.getElementsByTagName("iframe")[0];
        if (navigator.appName.indexOf("Internet Explorer") != -1 || navigator.appVersion.indexOf("Trident") != -1) {
            frame1.name = frame1.id;
            window.frames[frame1.id].focus();
            window.frames[frame1.id].print();
            //window.close();
        } else {
            var frameDoc = frame1.contentWindow ? frame1.contentWindow : frame1.contentDocument.document ? frame1.contentDocument.document : frame1.contentDocument;
            frameDoc.print();
            window.close();
        }
    }
    function PrintFooter() {
        <%--var report = document.getElementById("<%=ReportViewer1.ClientID %>");
        var div = report.getElementsByTagName("DIV");
        var reportContents;
        for (var i = 0; i < div.length; i++) {
            if (div[i].id.indexOf("VisibleReportContent") != -1) {
                reportContents = div[i].innerHTML;
                break;
            }
        }
        var frame1 = document.createElement('iframe');
        frame1.name = "frame1";
        frame1.style.position = "absolute";
        frame1.style.top = "-1000000px";
        document.body.appendChild(frame1);
        var frameDoc = frame1.contentWindow ? frame1.contentWindow : frame1.contentDocument.document ? frame1.contentDocument.document : frame1.contentDocument;
        frameDoc.document.open();
        frameDoc.document.write('<html><head><title>RDLC Report</title>');
        frameDoc.document.write('</head><body style = "font-family:arial;font-size:10pt;">');
        frameDoc.document.write(reportContents);
        frameDoc.document.write('</body></html>');
        frameDoc.document.close();
        setTimeout(function () {
            window.frames["frame1"].focus();
            window.frames["frame1"].print();
            document.body.removeChild(frame1);
        }, 500);--%>

        var viewerReference = $find("ReportViewer1");
        var stillonLoadState = viewerReference.get_isLoading();
        if (!stillonLoadState) {
            var reportArea = viewerReference.get_reportAreaContentType();
            if (reportArea == Microsoft.Reporting.WebFormsClient.ReportAreaContent.ReportPage) {
                $find("ReportViewer1").invokePrintDialog();
                
            }
        }
        return true;





    }

</script>