using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using app.Models;
using Dapper;
using Microsoft.Data.SqlClient;

namespace app.Persistence
{
	public class PersistenceConfig
	{
		public string ConnectionString { get; set; }
	}
	
	public class ExampleRepository
	{
		private readonly PersistenceConfig _config;

		public ExampleRepository(PersistenceConfig config)
		{
			_config = config;
		}

		public async Task<IReadOnlyList<Example>> GetExamplesAsync()
		{
			using (var connection = new SqlConnection(_config.ConnectionString))
			{
				IEnumerable<Example> result = await connection.QueryAsync<Example>("SELECT * FROM [dbo].[Examples]");

				return result.ToList();
			}
		}
	}
}