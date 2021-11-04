using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ejercicio
{
    public class Producto
    {
        public int Cantidad { get; set; }
        public String Nombre { get; set; }
        public int Precio { get; set; }
        

        public Producto(int precio, String nombre)
        {
            this.Precio = precio;
            this.Nombre = nombre;
        }

        public Producto(int cantidad, int precio, String nombre)
        {
            this.Precio = precio;
            this.Nombre = nombre;
            this.Cantidad = cantidad;
        }
    }
}