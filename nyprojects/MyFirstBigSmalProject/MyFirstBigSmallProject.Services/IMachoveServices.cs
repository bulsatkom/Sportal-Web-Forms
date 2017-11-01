using MyFirstBigSmallProject.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyFirstBigSmallProject.Services
{
    public interface IMachoveServices
    {
        IQueryable<Machove> GetAllMachesForToday();

        IQueryable<Machove> GetAllMachesForTomorrow();

        IQueryable<Machove> GetLatestTop10Results();

    }
}
