using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyFirstBigSmallProject.Data
{
    public class Purvenstva
    {
        public int Id { get; set; }

        [Required]
        [MaxLength(50)]
        public string Name { get; set; }

        [Required]
        public int Matches { get; set; }

        [Required]
        public int Wins { get; set; }

        [Required]
        public int Draws { get; set; }

        [Required]
        public int Losses { get; set; }

        [Required]
        public int ScoredGoals { get; set; }

        [Required]
        public int DefeatGoals { get; set; }

        [Required]
        public int Points { get; set; }

        [Required]
        public string Purvenstvo { get; set; }


    }
}
