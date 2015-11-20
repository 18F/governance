Feature: Ensure all AcqStack employees have met required trainings
  GSA requires mandatory training T for employees. When there is T, there are due dates that apply to an employee E, there should be automated notices of the due dates. If an E has not completed a T by the due date, the E should be flagged for noncompliance with a supervisor.

Scenario: Mandatory trainings must be announced to affected employees 2 weeks before due dates
  Given a mandatory training (T) covering an affected employee (E)
  When today is 10 business days before the T due date
  Then send a message to E that describes T and the T due date
