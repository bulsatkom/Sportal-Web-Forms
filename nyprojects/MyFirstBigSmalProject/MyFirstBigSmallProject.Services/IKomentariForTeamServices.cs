using MyFirstBigSmallProject.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyFirstBigSmallProject.Services
{
    public interface IKomentariForTeamServices
    {
        IQueryable<KomentariForTeams> GetAllCommentsForTeam(string team);

        void AddCommentForTeam(string user, string message, string team);
    }
}
