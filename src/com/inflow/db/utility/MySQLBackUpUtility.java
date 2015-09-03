package com.inflow.db.utility;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;

public class MySQLBackUpUtility {
    public static void main(String[] args) {
	MySQLBackUpUtility backupUtility = new MySQLBackUpUtility();
	backupUtility.backUpMyDB();
    }

    private Properties properties;

    private String dbUser;
    private String dbPass;
    private String dbName;
    private String outputFileLocation;
    private SimpleDateFormat simpleDateFormat;
    private String outputFileName;
    private String server;
    // private String mysqldumpUtilityLocation;
    private String executeCmd;

    public MySQLBackUpUtility() {

	dbUser = "root";
	dbPass = "root";
	dbName = "skillsdb";
	server = "localhost";
	outputFileLocation = "C:/Virtual Drive/";
	simpleDateFormat = new SimpleDateFormat("dd-MMM-yyyy");
	outputFileName = dbName + "-" + simpleDateFormat.format(new Date())
		+ ".sql"; // file name
	// mysqldumpUtilityLocation =
	// "C:/Program Files/MySQL/MySQL Server 5.5/bin";
	/*
	 * executeCmd = mysqldumpUtilityLocation + "/mysqldump -hlocalhost -u "
	 * + dbUser + " -p" + dbPass + " " + dbName;
	 */

	this.properties = new Properties();
	try {
	    this.properties.load(new FileInputStream("config.properties"));
	} catch (FileNotFoundException e) {
	    System.err.println("config.properties not found");
	    e.printStackTrace();
	} catch (IOException e) {
	    System.err.println("Some problem during IO");
	    e.printStackTrace();
	}
    }

    public boolean backUpMyDB() {
	if (createBackUpFile(outputFileLocation, outputFileName)) {
	    configureFromProperties();
	    processBackup();
	}
	return true;

    }

    private void processBackup() {
	try {
	    FileOutputStream fos = new FileOutputStream(this.outputFileLocation
		    + this.outputFileName);
	    Runtime rt = Runtime.getRuntime();
	    System.out.println("Executing command :- " + executeCmd);
	    Process process = rt.exec(executeCmd);
	    InputStream procInputStream = process.getInputStream();
	    writeSQLFile(procInputStream, fos);

	    if (process.waitFor() == 0) {
		System.out.println("Backup taken successfully in " + this.outputFileLocation+this.outputFileName);
	    } else {
		System.out.println("Could not take mysql backup!!");
		System.out.println("Please check username, password or database name in config file");
	    }

	    fos.flush();
	    fos.close();

	} catch (FileNotFoundException e1) {
	    // TODO Auto-generated catch block
	    e1.printStackTrace();
	} catch (IOException e1) {
	    // TODO Auto-generated catch block
	    e1.printStackTrace();
	} catch (InterruptedException e) {
	    // TODO Auto-generated catch block
	    e.printStackTrace();
	}
    }

    private void configureFromProperties() {
	if (!this.properties.containsKey("dbName")
		|| this.properties.getProperty("dbName").isEmpty()) {
	    System.err
		    .println("<dbName> key is required in config file");
	    System.exit(0);
	}

	if (!this.properties.containsKey("dbUser")
		|| this.properties.getProperty("dbUser").isEmpty()) {
	    System.err
		    .println("<dbUser> key is required in config file");
	    System.exit(0);
	}

	if (!this.properties.containsKey("dbPass")
		|| this.properties.getProperty("dbPass").isEmpty()) {
	    System.err
		    .println("<dbPass> key is required in config file");
	    System.exit(0);
	}
	
	if (!this.properties.containsKey("server")
		|| this.properties.getProperty("server").isEmpty()) {
	    System.err
		    .println("<server> key is not available in config file so default localhost will be considered");
	}

	if (!this.properties.containsKey("outputFileLocation")) {
	    System.err
		    .println("<outputFileLocation> key is required in config file");
	    System.exit(0);
	}

	this.dbUser = this.properties.getProperty("dbUser").trim();
	this.dbPass = this.properties.getProperty("dbPass").trim();
	if (this.properties.containsKey("server")
		|| !this.properties.getProperty("server").isEmpty()) {
	    this.server = this.properties.getProperty("server");
	}
	this.dbName = this.properties.getProperty("dbName").trim();

	this.outputFileLocation = this.properties.getProperty(
		"outputFileLocation").trim();
	executeCmd = "mysqldump -h" + this.server + " -u " + this.dbUser + " -p" + this.dbPass
		+ " " + this.dbName;
    }

    private boolean createBackUpFile(String folderPath, String fileName) {
	File backUpFile = new File(folderPath + fileName);
	// File backUpFile = new File(fileName);
	boolean isFileCreate = true;
	if (!backUpFile.exists()) {
	    try {
		System.out.println("file doesn't exist so creating new one !!");
		isFileCreate = backUpFile.createNewFile();
	    } catch (IOException e) {
		isFileCreate = false;
		System.err.println("File Could not be created!!!");
		e.printStackTrace();
	    }
	}
	return isFileCreate;
    }

    private void writeSQLFile(InputStream procInputStream, FileOutputStream fos) {

	PrintWriter pw = null;
	try {

	    if (fos != null)
		pw = new PrintWriter(fos);

	    InputStreamReader isr = new InputStreamReader(procInputStream);
	    BufferedReader br = new BufferedReader(isr);
	    String line = null;
	    while ((line = br.readLine()) != null) {
		if (pw != null)
		    pw.println(line);
		// System.out.println(type + ">" + line);
	    }
	    if (pw != null)
		pw.flush();
	} catch (IOException ioe) {
	    ioe.printStackTrace();
	} finally {
	    pw.close();

	}

    }

}
