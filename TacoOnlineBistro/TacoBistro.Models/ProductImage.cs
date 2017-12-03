using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TacoBistro.Models
{
    public class ProductImage
    {
        #region Properties
        public Guid ImageId { get; set; }
        public Guid ProductId { get; set; }
        #endregion Properties
    }
}
