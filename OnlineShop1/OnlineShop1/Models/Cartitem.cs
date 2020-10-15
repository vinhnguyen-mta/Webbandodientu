using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlineShop1.Models
{
    [Serializable]
    public class Cartitem
    {

        public Product Product{ get; set; }
        public int Quantity { set; get; }
    }
}