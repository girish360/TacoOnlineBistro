using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TacoOnlineBistro.Models
{
    public class CategoryModel
    {
        #region Properties
        public Guid CategId { get; set; }
        public string Category { get; set; }
        #endregion Properties
    }
}