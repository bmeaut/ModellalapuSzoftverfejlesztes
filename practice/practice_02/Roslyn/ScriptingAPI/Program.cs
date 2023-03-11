using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.CodeAnalysis;
using Microsoft.CodeAnalysis.CSharp;
using Microsoft.CodeAnalysis.CSharp.Scripting;
using Microsoft.CodeAnalysis.Scripting;

namespace ScriptingAPI
{
    internal class Program
    {
        static void Main(string[] args)
        //static async Task Main(string[] args)
        {
            var person = new Person
            {
                Name = "Superman",
                Age = 30
            };

            Console.WriteLine(person);

            //await Scripting1();
            //await Scripting2();
            //await Scripting3();
            //await Scripting4();
            //await Scripting5();

            Console.ReadLine();
        }

        static async Task Scripting1()
        {
            var result = await CSharpScript.EvaluateAsync("5+4*2");
            Console.WriteLine(result);
        }

        static async Task Scripting2()
        {
            while (true)
            {
                var codeToEval = Console.ReadLine();
                var result = await CSharpScript.EvaluateAsync(codeToEval);
                }
        }

        static async Task Scripting3()
        {

            while (true)
            {
                    var codeToEval = Console.ReadLine();
                    var result = await CSharpScript.EvaluateAsync(codeToEval, ScriptOptions.Default.WithImports("System"));
                    Console.WriteLine(result);
            }
        }

        static async Task Scripting4()
        {
            while (true)
            {
                try
                {

                    var codeToEval = Console.ReadLine();
                    var result = await CSharpScript.EvaluateAsync(codeToEval, ScriptOptions.Default.WithImports("System"));
                    Console.WriteLine(result);
                }
                catch (CompilationErrorException e)
                {
                    Console.WriteLine(string.Join(Environment.NewLine, e.Diagnostics));
                }
            }
        }

        static async Task Scripting5()
        {
            var state = await CSharpScript.RunAsync("int a = 1;");
            state = await state.ContinueWithAsync("int b = 2;");
            state = await state.ContinueWithAsync("int c = a + b;");
            state = await state.ContinueWithAsync("c");
            Console.WriteLine(state.ReturnValue);
        }

    }
}
