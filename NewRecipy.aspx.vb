
Partial Class DetailsView
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted

        Response.Redirect("./gridview.aspx")

        lblCopyN.Text = DateTime.Now.Year

    End Sub
End Class
