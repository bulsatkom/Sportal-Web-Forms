using MyFirstBigSmallProject.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyFirstBigSmallProject.Services
{
    public interface IStatiiServices
    {
        IQueryable<Statii> GetAllStatiiSortedById();

        Statii GetById(int id);

        IQueryable<Statii> GetTop4();

        IQueryable<Statii> GetFirst3();

        IQueryable<Statii> GetSecond3();

        int InsertStatiq(Statii statiq);

        int UpdateStatii(Statii category);
    }
}
