using ObjectInterface.Comment;
using ObjectInterface.Image;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ObjectInterface.Post
{
    public class PostInfo
    {
        public int Id { get; set; }
        public int IdUser { get; set; }
        public string DisplayName { get; set; }
        public string Description { get; set; }
        public int TotalLike { get; set; } = 0;
        public DateTime CreatedDate { get; set; }
        public List<Image.Image>? ListImage { get; set; }
        public List<Comment.CommentInPost>? ListComment { get; set; }
    }
}
