
Partial Class Contact
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        lblCopyC.Text = DateTime.Now.Year
    End Sub
End Class
