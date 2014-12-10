import org.apache.hadoop.hive.ql.exec.UDF;
import org.apache.hadoop.io.Text;

public class FORMAT_GENRE_HIVE extends UDF {

	public Text evaluate(Text genre) {
		StringBuilder final_String = new StringBuilder();
		String[] split_Genre =  genre.toString().split("\\|");
		final_String.append(split_Genre[0]);
		if (split_Genre.length>1)
		{
			for (int i=1;i < split_Genre.length;i++)
			{
				final_String.append(", ");
				if (i == split_Genre.length - 1)
					final_String.append("& ");
				final_String.append(split_Genre[i]);
			}

		}
		
		final_String.append("-axr120931");
		
		return new Text(final_String.toString());
	}
}
