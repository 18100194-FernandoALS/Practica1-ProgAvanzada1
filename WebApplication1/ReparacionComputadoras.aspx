<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReparacionComputadoras.aspx.cs" Inherits="WebApplication1.ReparacionComputadoras" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Reparación de Computadoras</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="Content/Style1.css" rel="stylesheet" type="text/css" />

    
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    <script type="text/javascript" src="http://codeseven.github.com/toastr/toastr.js"></script>    
    <link rel="stylesheet" type="text/css" href="http://codeseven.github.com/toastr/toastr.css" />
    <link rel="stylesheet" type="text/css" href="http://codeseven.github.com/toastr/toastr-responsive.css" />    
    <script type="text/javascript" src="toastrsample.js"></script>
    <link rel="stylesheet" type="text/css" href="toastrsample.css" />


    <script type="text/javascript">
		function showpop(msg, title) {
			toastr.options = {
				"closeButton": false,
				"debug": false,
				"newestOnTop": false,
				"progressBar": true,
				"positionClass": "toast-bottom-left",
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
			// toastr['success'](msg, title);
			var d = Date();
			toastr.warning(msg, title);
			return false;
		}
	</script>
</head>
<body>
    <form id="form1" runat="server">
        <center> 
            <div style="margin-top:40px;">
                <asp:Label ID="lblMensaje1" runat="server" Text="" CssClass="alert alert-success"></asp:Label>
                <asp:Label ID="lblMensaje2" runat="server" Text="" CssClass="alert alert-danger"></asp:Label>
            </div>
        </center>

        <div class="margen">
            <h1 style="margin-left: 15px;">Solicitud</h1>
            
            <div class="form-group">
                <div style="margin-left: 20px; margin-top:15px;">
                    <div class="pregunta">
                        <asp:Label ID="lblNombre" runat="server" Text="Nombre: "></asp:Label>
		                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                    </div>

                    <div class="pregunta">
                        <asp:Label ID="lblTelefono" runat="server" Text="Telefono: "></asp:Label>
		                <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
                    </div>

                    <div class="pregunta">
                        <asp:Label ID="lblEnciende" runat="server" Text="¿La computadora enciende?"></asp:Label>                        
                        <asp:RadioButtonList ID="radlstEnciende" runat="server" CssClass="rads">
							<asp:ListItem>No</asp:ListItem>
							<asp:ListItem>Si</asp:ListItem>
						</asp:RadioButtonList>
                    </div>

                    <div class="pregunta">
                        <asp:Label ID="lblApaga" runat="server" Text="¿Se apaga?"></asp:Label>
		                <asp:RadioButtonList ID="radlstApaga" runat="server" CssClass="rads">
							<asp:ListItem>No</asp:ListItem>
							<asp:ListItem>Si</asp:ListItem>
						</asp:RadioButtonList>
                    </div>

                    <div class="pregunta">
                        <asp:Label ID="lblLenta" runat="server" Text="¿El dispositivo es lento?"></asp:Label>
		                <asp:RadioButtonList ID="radlstLenta" runat="server" CssClass="rads">
							<asp:ListItem>No</asp:ListItem>
							<asp:ListItem>Si</asp:ListItem>
						</asp:RadioButtonList>
                    </div>

                    <div class="pregunta">
                        <asp:Label ID="lblLimpieza" runat="server" Text="¿Necesita limpieza?"></asp:Label>
		                <asp:RadioButtonList ID="radlstLimpieza" runat="server" CssClass="rads">
							<asp:ListItem>No</asp:ListItem>
							<asp:ListItem>Si</asp:ListItem>
						</asp:RadioButtonList>
                    </div>

                    <div class="pregunta">
                        <asp:Label ID="lblComponente" runat="server" Text="¿Cambiara una pieza?"></asp:Label>
		                <asp:RadioButtonList ID="radlstComponente" runat="server" CssClass="rads">
							<asp:ListItem>No</asp:ListItem>
							<asp:ListItem>Si</asp:ListItem>
						</asp:RadioButtonList>
                    </div>

                    <div class="pregunta">
                        <asp:Label ID="lblPrograma" runat="server" Text="¿Necesita instalar un programa?"></asp:Label>
		                <asp:RadioButtonList ID="radlstPrograma" runat="server" CssClass="rads">
							<asp:ListItem>No</asp:ListItem>
							<asp:ListItem>Si</asp:ListItem>
						</asp:RadioButtonList>
                    </div>

                    <center>
                        <div style="margin-bottom: 10px;">
                            <asp:Button ID="btnGuardar" runat="server" Text="Guardar"  CssClass="btn btn-info guardar" OnClick="btnGuardar_Click" />
                        </div>
                    </center>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
