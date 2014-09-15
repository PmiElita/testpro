package user.action;
import java.io.File;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import java.io.IOException; 
import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
public class UploadPhoto {
	private File myFile;
	   private String myFileContentType;
	   private String myFileFileName="dddd";
	   private String destPath;

	   public String execute(HttpServletRequest request)
	   {
	      /* Copy file to a safe location */
		  
	      destPath = request.getServletContext().getRealPath("");

	      try{
	     	 System.out.println("Src File name: " + myFile);
	     	 System.out.println("Dst File name: " + myFileFileName);
	     	    	 
	     	 File destFile  = new File(destPath, myFileFileName);
	    	 FileUtils.copyFile(myFile, destFile);
	  
	      }catch(IOException e){
	         e.printStackTrace();
	         return "error";
	      }

	      return "success";
	   }
	   public File getMyFile() {
	      return myFile;
	   }
	   public void setMyFile(File myFile) {
	      this.myFile = myFile;
	   }
	   public String getMyFileContentType() {
	      return myFileContentType;
	   }
	   public void setMyFileContentType(String myFileContentType) {
	      this.myFileContentType = myFileContentType;
	   }
	   public String getMyFileFileName() {
	      return myFileFileName;
	   }
	   public void setMyFileFileName(String myFileFileName) {
	      this.myFileFileName = myFileFileName;
	   }
}
