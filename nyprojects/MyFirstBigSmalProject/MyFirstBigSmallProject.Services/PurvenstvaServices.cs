using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MyFirstBigSmallProject.Data;

namespace MyFirstBigSmallProject.Services
{
    public class PurvenstvaServices : IPurvenstvaServices
    {
        private readonly IMyFirstBigSmallProjectDbContext dbcontext;

        public PurvenstvaServices(IMyFirstBigSmallProjectDbContext dbcontext)
        {
            this.dbcontext = dbcontext;
        }

        public IQueryable<Purvenstva> GetAllTeamsById(string purvenstvo)
        {
            return this.dbcontext.Purvenstva.Where(x => x.Purvenstvo == purvenstvo).OrderByDescending(x => x.Points).ThenByDescending(x => x.ScoredGoals).ThenBy(x => x.DefeatGoals);
        }
    }
}
