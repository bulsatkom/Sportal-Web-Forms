using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MyFirstBigSmallProject.Data;

namespace MyFirstBigSmallProject.Services
{
    public class KomentariForTeamServices : IKomentariForTeamServices
    {
        private readonly IMyFirstBigSmallProjectDbContext dbcontext;

        public KomentariForTeamServices(IMyFirstBigSmallProjectDbContext dbcontext)
        {
            this.dbcontext = dbcontext;
        }

        public void AddCommentForTeam(string user, string message, string team)
        {
            var kommentar = new KomentariForTeams();
            kommentar.User = user;
            kommentar.Message = message;
            kommentar.team = team;
            kommentar.Date = DateTime.Now;
            this.dbcontext.komentariForTeams.Add(kommentar);
            this.dbcontext.SaveChanges();
        }

        public IQueryable<KomentariForTeams> GetAllCommentsForTeam(string team)
        {
            return this.dbcontext.komentariForTeams.Where(x => x.team == team);
        }
    }
}
