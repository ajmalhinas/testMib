Zeen is a command line Data Driven Test automation tool that facilitates writing tests only using csv files
This framework has several limitations now
1. Getting large number of blank rows after valid rows (limitation of XSSFSheet.getLastRowNum()). A remedy is to delete all rows exist after the valid rows - no longer use this function so solved
2. Page objects are only identified by their ids. Software which does not have unique ids for elements cannot be tested.
3. Only support single DB. Restart is required to change DB



Todo:
1. Use different data file for each test case - done
2. Add additional actions 
3. Create a delay action or add support of delay parameter to all action which can be specified in an extra column - done
4. Moving pass fail status to log file (Make log file csv compatible). Remove start and end test case message from log file and print only in console using System.out
5. Show test case failures in command line not in individual tests it can be traced from logs - no need 
6. Run mode using 1 and 0 instead of yes and no - done
7. Add run mode and break in test steps - no need
8. Run mode in data-done
10.Stop when fail mode for ignore or stop when a failure occurs -done
11. A one time only action to initialize test with parameters such as headless mode, browser, database setting- no it would be better to make some of them as test params
12. Smart waitafter if the value is -1. Can be implemented by multiple attempts up to a timeout period



ISSUES:
1. The non blocking user input feature not portable across internal IDE or non linux consoles as a result it introduces double output in unsupported consoles
2. Colored console output feature not portable across non linux consoles
3. ANSI escape color codes are printed as unreadable characters  in test.log file. As a remedy log4j.appender.fileAppender.layout.PatternLayout.disableAnsi=true was used but it is not working 

HELP
1. stp actions only run at the first row of the data in a test case
2. fnly actions only run at the last row of the data in a test case