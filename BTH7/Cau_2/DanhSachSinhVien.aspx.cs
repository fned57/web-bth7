using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTH7.Cau_2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<SinhVien> sinhViens = (List<SinhVien>)Session["sinhviens"];
            //List<SinhVien> sinhViens = new List<SinhVien>()
            //{
            //     new SinhVien() { masv = "2", hoTen = "yen", lop1 = "58k2", tinh = "nghe an", dienThoai = "0396118696", hinhAnh = "sad" },
            //    new SinhVien() { masv = "2", hoTen = "yen", lop1 = "58k2", tinh = "nghe an", dienThoai = "0396118696", hinhAnh = "sad" }
            //};
               
              
            //SinhVien a = new SinhVien();
            //a.masv = "1";
            //a.hoTen = "tuan";
            //a.lop1 = "58k4";
            //a.tinh = "nghe an";
            //a.hinhAnh = "nonam";
            //a.dienThoai = "0396118696";
            //sinhViens.Add(a);
            DataTable dt = new DataTable();
            dt = ToDataTable(sinhViens);

            //dt.Load((IDataReader)sinhViens);

            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
        public DataTable ToDataTable<T>(List<T> items)

        {

            DataTable dataTable = new DataTable(typeof(T).Name);

            //Get all the properties

            PropertyInfo[] Props = typeof(T).GetProperties(BindingFlags.Public | BindingFlags.Instance);

            foreach (PropertyInfo prop in Props)

            {

                //Setting column names as Property names

                dataTable.Columns.Add(prop.Name);

            }
            if (items != null)
            {
                foreach (T item in items)

                {

                    var values = new object[Props.Length];

                    for (int i = 0; i < Props.Length; i++)

                    {

                        //inserting property values to datatable rows

                        values[i] = Props[i].GetValue(item, null);

                    }

                    dataTable.Rows.Add(values);

                }
            }

           

            //put a breakpoint here and check datatable

            return dataTable;

        }

        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ThemSinhVien.aspx");
        }
    }
}