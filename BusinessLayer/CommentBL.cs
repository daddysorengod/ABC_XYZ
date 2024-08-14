using CommoLib;
using DataAccessLayer;
using ObjectInterface;
using ObjectInterface.Comment;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;

namespace BusinessLayer
{
    public interface ICommentBL
    {
        Task<Response<dynamic>> CreateComment(CommentCreateReq comment);
        Task<Response<dynamic>> EditComment(CommentEditReq comment, int pId);
        Task<Response<dynamic>> DeleteComment(int pId);
    }
    public class CommentBL : ICommentBL
    {
        CommentDA _commentDA = new CommentDA();
        public async Task<Response<dynamic>> CreateComment(CommentCreateReq comment)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                res = _commentDA.CreateComment(comment);
                return res;
            }
            catch (Exception ex)
            {
                Logger.log.Error(ex.ToString());
                return res;
            }
        }

        public async Task<Response<dynamic>> DeleteComment(int pId)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                res =  _commentDA.DeleteComment( pId);
                return res;
            }
            catch (Exception ex)
            {
                Logger.log.Error(ex.ToString());
                return res;
            }
        }

        public async Task<Response<dynamic>> EditComment(CommentEditReq comment, int pId)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                res = _commentDA.EditComment(comment, pId);
                return res;
            }
            catch (Exception ex)
            {
                Logger.log.Error(ex.ToString());
                return res;
            }
        }
    }
}
