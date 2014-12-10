import java.util.StringTokenizer;

import org.apache.pig.EvalFunc;
import org.apache.pig.backend.executionengine.ExecException;
import org.apache.pig.data.Tuple;

public class FORMAT_GENRE extends EvalFunc <String> {

	@Override
	public String exec(Tuple input) {
		try {
			if (input == null || input.size() == 0) {
				return "";
			}

			String str = (String) input.get(0);
			if (str == null || str.equals("")) {
				return "";
			}
			
			StringTokenizer stokens = new StringTokenizer(str,"|");
			StringBuilder result = new StringBuilder();

			int size = stokens.countTokens();
			int i = 0;

			if(size > 1) {
				while(stokens.hasMoreTokens()) {
					result.append(stokens.nextToken());
					i++;

					if(i == size-1)
						break;

					result.append(",");
				}

				result.append(" & ");
			}
			
			result.append(stokens.nextToken());
			result.append("axr120931");

			return result.toString();
		} catch (ExecException ex) {
			System.out.println("Error: " + ex.toString());
		}

		return null;
	}
}