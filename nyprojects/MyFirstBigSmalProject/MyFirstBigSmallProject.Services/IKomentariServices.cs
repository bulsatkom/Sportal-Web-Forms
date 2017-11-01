using MyFirstBigSmallProject.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyFirstBigSmallProject.Services
{
    public interface IKomentariServices
    {
        IQueryable<Komentari> GetAllCommentsByStatiiID(int id);

        //IQueryable<Komentari> GetAllCommentsForTeam(string team);

        void AddCommentFromStatii(string user, string message, int statiiId);

        //void AddCommentForTeam(string user, string message, string team);
    }
}
