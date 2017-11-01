using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MyFirstBigSmallProject.Data;

namespace MyFirstBigSmallProject.Services
{
    public class MachoveServices : IMachoveServices
    {
        private readonly IMyFirstBigSmallProjectDbContext dbcontext;

        public MachoveServices(IMyFirstBigSmallProjectDbContext dbcontext)
        {
            this.dbcontext = dbcontext;
        }

        public IQueryable<Machove> GetAllMachesForToday()
        {
            var date = string.Format("{0:dd/MM/yyyy}", DateTime.UtcNow);
            return this.dbcontext.machove.Where(x => x.Date == date).OrderBy(x => x.Timeofmatch);
        }

        public IQueryable<Machove> GetAllMachesForTomorrow()
        {
            var date = string.Format("{0:dd/MM/yyyy}", DateTime.UtcNow.AddDays(1));
            return this.dbcontext.machove.Where(x => x.Date == date).OrderBy(x => x.Timeofmatch);
        }

        public IQueryable<Machove> GetLatestTop10Results()
        {
            return this.dbcontext.machove
                .Where(x => x.Result != null)
                .OrderByDescending(x => x.Date)
                .ThenByDescending(x => x.Timeofmatch).Take(10);
        }
    }
}
