<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="toastr/toastr.min.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="form1" runat="server" style="margin-top: 100px; " class="form-group">.
        <center>
            <div style="border:1px double black; width: 25%; height: 120%;">
                <br />
                <div style="margin-bottom: 10px;">
                    <asp:Label ID="lblNumeroControl" runat="server" Text="Número de control: "></asp:Label>
		            <asp:TextBox ID="txtNumeroControl" runat="server"></asp:TextBox>
                </div>

                <div style="margin-bottom: 10px; margin-right: 67px;">
                    <asp:Label ID="lblNombre" runat="server" Text="Nombre: "></asp:Label>
                    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                </div>
		
                <div style="margin-bottom: 10px; margin-right: 113px;">
                    <asp:Label ID="lblCarrera" runat="server" Text="Carrera: "></asp:Label>
                    <asp:DropDownList ID="ddlCarrera" runat="server">
			        </asp:DropDownList>
                </div>

                <br />

                <div style="margin-bottom: 10px;">
                    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click"  CssClass="btn btn-info" />
                </div>
            </div>
            <br />
            <br />
            <div>
                <asp:Label ID="lblMensaje" runat="server" Text="" CssClass="alert alert-success"></asp:Label>
            </div>

        </center>
    </form>


    <script src="toastr/toastr.js"></script>
    <script src="toastr/toastr.min.js"></script>
    <script type="text/javascript" src="//cdn.jsdelivr.net/jquery/1/jquery.min.js"></script>
    <link media="screen" rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.css" />
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.0.1/js/toastr.js"></script>
    
    
    <script type="text/javascript">
		function showpop5(msg, title) {
			toastr.options = {
				"closeButton": false,
				"debug": false,
				"newestOnTop": false,
				"progressBar": true,
				"positionClass": "toast-top-left",
				"preventDuplicates": true,
				"onclick": null,
				"showDuration": "300",
				"hideDuration": "1000",
				"timeOut": "12000",
				"extendedTimeOut": "1000",
				"showEasing": "swing",
				"hideEasing": "linear",
				"showMethod": "fadeIn",
				"hideMethod": "fadeOut"
			}
			//toastr['success'](msg);
			var d = Date();
			toastr.success(msg, title);
			return true;
		}
	</script>
</body>
</html>
