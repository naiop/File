import javax.xml.transform.*;
import javax.xml.transform.stream.*;
import javax.xml.transform.dom.*;
import org.w3c.dom.*;
import javax.xml.parsers.*;
import java.io.*;
public class Example10{
   public static void main(String args[]){
       try{
              DocumentBuilderFactory factory=DocumentBuilderFactory.newInstance();
              DocumentBuilder builder=factory.newDocumentBuilder();
              Document document=builder.parse(new File("Example10.xml"));
              Element root=document.getDocumentElement();

              NodeList nodeList=root.getElementsByTagName("ͼ������");//��������Ľڵ㼯��
              int size=nodeList.getLength();
              for(int k=0;k<size;k++){
                      Node node=nodeList.item(k);
                      if(node.getNodeType()==Node.ELEMENT_NODE){
                      Element elementNode=(Element)node;
                      String str=elementNode.getTextContent();
                      if(str.equals("")){
                         elementNode.setTextContent("���Ӣ�۴�");
                        }
                      if(str.equals("���μ�")){
                         elementNode.setTextContent("Ц������");
                         }
                      }
                  }   

            TransformerFactory transFactory=TransformerFactory.newInstance();
            Transformer transformer=transFactory.newTransformer();
            DOMSource domSource=new DOMSource(document); 
            File file=new File("Example10.xml");
            FileOutputStream out=new FileOutputStream(file);
            StreamResult xmlResult=new StreamResult(out);
            transformer.transform(domSource,xmlResult);
                      }
       catch(Exception e){
            System.out.println(e);
         }
    }
}
