using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyFirstBigSmallProject.Data
{
    public interface IMyFirstBigSmallProjectDbContext
    {
        IDbSet<Statii> statii { get; }

        IDbSet<Komentari> komentari { get; }

        IDbSet<KomentariForTeams> komentariForTeams { get; }

        IDbSet<Machove> machove { get; }

        IDbSet<Purvenstva> Purvenstva { get; }


        DbEntityEntry Entry(object entity);

        int SaveChanges();
    }
}
