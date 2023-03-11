using Microsoft.CodeAnalysis.CSharp.Scripting;
using Microsoft.CodeAnalysis.Scripting;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ScriptingAPI
{
    public abstract class ToStringAwareObject
    {
        public override string ToString()
        {
            var sb = new StringBuilder();
            foreach (var propertyInfo in GetType().GetProperties())
            {
                sb.Append("\"Property " + propertyInfo.Name + ": \" + ");
                sb.Append(propertyInfo.Name + ".ToString() + Environment.NewLine + ");
            }


            var strToEval = sb.ToString();
            strToEval = strToEval.Substring(0, strToEval.LastIndexOf('+'));
            return
                CSharpScript.EvaluateAsync<string>(strToEval, ScriptOptions.Default.AddImports(typeof(Environment).Namespace),
                    this).Result;
        }
    }

}
