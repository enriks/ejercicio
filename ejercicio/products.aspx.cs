using System;

namespace ejercicio
{
    public partial class products : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            switch (drpTipo.SelectedValue)
            {
                case "Favoritos":
                    lstFav.Items.Clear();
                    SiteMaster.productosfav.Add(new Producto(Int32.Parse(txtprecio.Text), txtnombre.Text));
                    lstFav.DataSource = SiteMaster.productosfav;
                    lstFav.DataBind();
                    break;
                case "Carrito":
                    lstCarrito.Items.Clear();
                    SiteMaster.productoscarrito.Add(new Producto(Int32.Parse(txtcantidad.Text), Int32.Parse(txtprecio.Text), txtnombre.Text));
                    lstCarrito.DataSource = SiteMaster.productoscarrito;
                    lstCarrito.DataBind();

                    break;
            }
            int total = 0;
            foreach(Producto prod in SiteMaster.productoscarrito)
            {
                total += prod.Cantidad * prod.Precio;
            }
            textoTotal.Text = "Total = " + total;
            txtcantidad.Text = "";
            txtnombre.Text = "";
            txtprecio.Text = "";

        }
    }
}