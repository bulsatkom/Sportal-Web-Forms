using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MyFirstBigSmallProject.Data;

namespace MyFirstBigSmallProject.Services
{
    public class KomentariServices : IKomentariServices
    {
        private readonly IMyFirstBigSmallProjectDbContext dbcontext;

        public KomentariServices(IMyFirstBigSmallProjectDbContext dbcontext)
        {
            this.dbcontext = dbcontext;
        }

        public void AddCommentFromStatii(string user, string message, int statiiId)
        {
            var kommentar = new Komentari();
            kommentar.User = user;
            kommentar.Message = message;
            kommentar.StatiiId = statiiId;
            kommentar.Date = DateTime.Now;
            this.dbcontext.komentari.Add(kommentar);
            this.dbcontext.SaveChanges();
        }

        public IQueryable<Komentari> GetAllCommentsByStatiiID(int id)
        {
            return this.dbcontext.komentari.Where(x => x.StatiiId == id);
        }
    }
}
