using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MyFirstBigSmallProject.Data;
using System.Data.Entity;

namespace MyFirstBigSmallProject.Services
{
    public class StatiiServices : IStatiiServices
    {
        private readonly IMyFirstBigSmallProjectDbContext dbcontext;

        public StatiiServices(IMyFirstBigSmallProjectDbContext dbcontext)
        {
            this.dbcontext = dbcontext;
        }

        public IQueryable<Statii> GetAllStatiiSortedById()
        {
            return this.dbcontext.statii.OrderByDescending(x => x.Id);
        }

        public Statii GetById(int id)
        {
            return this.dbcontext.statii.Where(x => x.Id == id).FirstOrDefault();
        }

        public IQueryable<Statii> GetFirst3()
        {
            return this.dbcontext.statii.OrderByDescending(x => x.Id).Skip(4).Take(3);
        }

        public IQueryable<Statii> GetSecond3()
        {
            return this.dbcontext.statii.OrderByDescending(x => x.Id).Skip(7).Take(3);
        }

        public IQueryable<Statii> GetTop4()
        {
            return this.dbcontext.statii.OrderByDescending(x => x.Id).Take(4);
        }

        public int InsertStatiq(Statii statiq)
        {
            this.dbcontext.statii.Add(statiq);
            return this.dbcontext.SaveChanges();
        }

        public int UpdateStatii(Statii category)
        {
            var entry = this.dbcontext.Entry(category);
            entry.State = EntityState.Modified;

            return this.dbcontext.SaveChanges();
        }
    }
}
