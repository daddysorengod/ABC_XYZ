using CommoLib;
using DataAccessLayer;
using ObjectInterface;
using ObjectInterface.Image;
using ObjectInterface.Post;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer
{
    public interface IPostBL
    {
        Task<Response<dynamic>> AddNewPostOnNewFeed(PostInsertReq post);
        Task<Response<SearchRes<PostInfo>>> GetPostOption(PostSearchOption post, int pTotalRecordInPage, int pBeginRecord);
        Task<Response<dynamic>> DeletePost(PostDeleteByUserReq del);
    }
    public class PostBL : IPostBL
    {
        ImgeDA _imageDA = new ImgeDA();
        PostDA _postDA = new PostDA();
        CommentDA _commentDA = new CommentDA();
        public async Task<Response<dynamic>> AddNewPostOnNewFeed(PostInsertReq post)
        {
            Response<dynamic> res = new();
            try
            {
                res = _postDA.AddPostOnNewFeed(post);

                if (post.UrlImages.Count > 0 && res.Code > 0)
                {
                    foreach (string item in post.UrlImages)
                    {
                        ImageReq img = new ImageReq();
                        img.Url = item;
                        img.IdPost = res.Code;
                        img.CreatedDate = DateTime.Now;
                        img.IdUser = post.IdUser;
                        var rs = _imageDA.AddNewImage(img);
                        if (rs.Code < 0)
                        {
                            // vao day phai xoa trongdb 
                            Logger.log.Error("Khong them duco anh");
                            var rs_1 = _postDA.DeletePostFromSystem(res.Code);
                            res.Code = -1;
                            res.Message = "Khong them duco anh";
                            res.Source = null;
                            return res;
                        }
                    }
                }

                return res;
            }
            catch (Exception ex)
            {
                Logger.log.Error(ex.ToString());
                return res;
            }
        }

        public async Task<Response<dynamic>> DeletePost(PostDeleteByUserReq del)
        {
            Response<dynamic> res = new();
            try
            {
                res = _postDA.DeletePostFromAuthUser(del);
                return res;
            }
            catch (Exception ex)
            {
                Logger.log.Error(ex.ToString());
                return res;
            }
        }

        public async Task<Response<SearchRes<PostInfo>>> GetPostOption(PostSearchOption post, int pTotalRecordInPage, int pBeginRecord)
        {
            Response<SearchRes<PostInfo>> res = new Response<SearchRes<PostInfo>>(); 
            try
            {
                res = _postDA.GetPostOption(post, pTotalRecordInPage, pBeginRecord);
                if (res.Source.Datas is not null)
                {
                    foreach (PostInfo item in res.Source.Datas)
                    {
                        var rsImg = _imageDA.GetImages(item.IdUser, item.Id);
                        if (rsImg.Code > 0)
                        {
                            item.ListImage = rsImg.Source;
                        }
                        var rsCmt = _commentDA.GetCommentByPostId(item.Id);
                        {
                            item.ListComment = rsCmt.Source;
                        }
                        
                    }
                }
                
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
