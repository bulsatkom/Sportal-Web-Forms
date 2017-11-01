using MyFirstBigSmallProject.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyFirstBigSmallProject.Services
{
    public interface IPurvenstvaServices
    {
        IQueryable<Purvenstva> GetAllTeamsById(string purvenstvo);
    }
}
