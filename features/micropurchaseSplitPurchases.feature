Feature: Avoid split purchases
  The micro-purchase platform should automatically flag situations that pose a risk of split purchases
  The primary concerns are related to similarly scoped requirements or multiple requirements in a short time frame
  To help address, require a review and/or require a heightened "power user" level

Scenario: Multiple requirements within a month get flagged for review
  Given a requirement R for a project repository P
    And R was opened within the past 28 days
  When there is a request to open a new requirement N for P
  Then flag N for review by power user

Scenario: Multiple requirements by non-power-user within 48 hours get flagged for review
  Given a requester Q is not a power user
    And Q has submitted a requirement within the past 48 hours
  When Q requests to open a new requirement N
  Then flag N for review by power user
