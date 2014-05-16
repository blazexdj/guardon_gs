package test;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class parsing {
	public static void main (String[] args)throws Exception{
		String url;
		url = "http://www.rail-ro.com/content/railro_1.php";
		Document doc = Jsoup.connect(url).get();
		
		Elements element = doc.getElementsByClass("tableBox");
		String str = element.toString();
		//str = str.replaceAll("<table>", "abc");
		
		str = str.replaceAll("<table>", "");
		str = str.replaceAll("<tbody>", "");
		str = str.replaceAll("<tr>", "");
		str = str.replaceAll("<th>", "");
		str = str.replaceAll("<td>", "");
		str = str.replaceAll("</table>", "");
		str = str.replaceAll("</tbody>", "");
		str = str.replaceAll("</tr>", "");
		str = str.replaceAll("</th>", "");
		str = str.replaceAll("</td>", "");
		str = str.replaceAll("</div>", "");
		str = str.replaceAll(" ", "");
		str = str.replaceAll("\n", "");
		
		System.out.println(str);
		
		}
	} 
