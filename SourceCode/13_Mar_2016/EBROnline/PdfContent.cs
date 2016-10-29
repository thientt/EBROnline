using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Web.Mvc;

namespace EBROnline
{
    public class PdfContent : ActionResult
    {
        public MemoryStream MemoryStream { get; set; }
        public string FileName { get; set; }

        public override void ExecuteResult(ControllerContext context)
        {
            if (context == null)
            {
                throw new ArgumentNullException("context");
            }

            byte[] bytes = MemoryStream.ToArray();

            //Now we just need to do something with those bytes.
            //Here I'm writing them to disk but if you were in ASP.Net you might Response.BinaryWrite() them.
            //You could also write the bytes to a database in a varbinary() column (but please don't) or you
            //could pass them to another function for further PDF processing.
            var response = context.HttpContext.Response;

            File.WriteAllBytes(FileName, bytes);

            response.Clear();
            response.AddHeader("Content-Disposition", string.Format("inline; filename=\"{0}\"", "EBROnline.pdf"));
            response.ContentType = "application/pdf";
            response.BinaryWrite(bytes);
            response.Flush();
            response.End();

            TryDelete(filename: FileName);
        }

        private void TryDelete(string filename)
        {
            try
            {
                File.Delete(filename);
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}