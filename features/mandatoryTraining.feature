Feature: Ensure all AcqStack employees have met required trainings
  GSA requires mandatory training T for employees. When there is T, there are due dates that apply to an employee E, there should be automated notices of the due dates. If an E has not completed a T by the due date, the E should be flagged for noncompliance with a supervisor.

Scenario: Mandatory trainings get announced to affected employees 2 weeks before due dates
  Given a mandatory training T 
   And an affected employee E
  When the date is 10 business days before the T due date
   And the daily check for due training runs
  Then a message is sent to E 
   And the message body describes T and the T due date
