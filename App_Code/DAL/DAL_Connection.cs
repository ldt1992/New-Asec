using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

/// <summary>
/// Summary description for DAL_Connection
/// </summary>
public class DAL_Connection
{
    #region
    private string _connString;
    private SqlConnection _conn;

    public string ConnString
    {
        get
        {
            return _connString;
        }

        set
        {
            _connString = value;
        }
    }

    public SqlConnection Conn
    {
        get
        {
            return _conn;
        }

        set
        {
            _conn = value;
        }
    }
    #endregion
    public DAL_Connection()
    {
        this.ConnString = WebConfigurationManager.ConnectionStrings["ManagerCenter"].ToString();
        this.Conn = new SqlConnection(this.ConnString);
    }

    //Open Connect
    public bool OpenConnect()
    {
        try
        {
            if (this.Conn.State == ConnectionState.Closed)
            {
                this.Conn.Open();
                return true;
            }
        }
        catch (Exception)
        {
        }
        return false;
    }

    //Close Connect
    public void CloseConnect()
    {
        this.Conn.Close();
    }

    //Get Datatable
    public DataTable GetDataTable(string query)
    {
        try
        {
            SqlDataAdapter da = new SqlDataAdapter(query, this.Conn);
            DataSet ds = new DataSet();
            da.Fill(ds);

            return ds.Tables[0];
        }
        catch (Exception)
        {
        }
        return null;
    }

    //Execute query CRUD Create Read Update Delete
    public int ExecQuery(string query, List<SqlParameter> Parameters)
    {
        try
        {
            SqlCommand cmd = new SqlCommand(query, this.Conn);
            foreach (SqlParameter param in Parameters)
            {
                cmd.Parameters.Add(param);
            }
            return cmd.ExecuteNonQuery();
        }
        catch (Exception)
        {
        }
        return -1;
    }
}