using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataControlFlowDemo
{
    public class DemoClass
    {
        private const int DummyConst = 10;

        public void DataFlowAnalysis()
        {
            string x = "5";
            int y = 10;
            int z = 25;
            x = "30";
            y = 20;
            y = 50;
        }

        public int ControlFlowAnalysis()
        {
            var random = new Random().Next(1, 100);
            if (random >= 50)
            {
                return 5;
            }

            if (random >= 75)
            {
                return DummyConst;
            }
            
            return random;
        }
    }
}
