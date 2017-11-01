using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyFirstBigSmallProject.Data
{
    public class MyFirstBigSmallProjectDbContext : DbContext, IMyFirstBigSmallProjectDbContext
    {
        public MyFirstBigSmallProjectDbContext()
            : base("DefaultConnection")
        {
        }

        public IDbSet<Komentari> komentari { get; set; }

        public IDbSet<KomentariForTeams> komentariForTeams { get; set; }

        public IDbSet<Machove> machove { get; set; }

        public IDbSet<Purvenstva> Purvenstva { get; set; }

        public IDbSet<Statii> statii { get; set; }
    }
}
