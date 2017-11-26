using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TacoOnlineBistro.Models
{
    public class CommentModel
    {
        #region Properties
        public Guid CommentId { get; set; }
        public Guid UserId { get; set; }
        public string Message { get; set; }
        #endregion Properties
    }
}