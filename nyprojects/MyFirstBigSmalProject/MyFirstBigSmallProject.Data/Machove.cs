using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyFirstBigSmallProject.Data
{
    public class Machove
    {
        public int Id { get; set; }

        [Required]
        public string HomeTeam { get; set; }

        [Required]
        public string AwayTeam { get; set; }

        [Required]
        public string Date { get; set; }

        [Required]
        public string Timeofmatch { get; set; }

        public string Result { get; set; }
    }
}
