using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace TacoBistro.Models
{
    public class Comment
    {
        #region Properties
        public Guid CommentId { get; set; }
        public Guid UserId { get; set; }
        public string Message { get; set; }
        #endregion Properties
    }
}
