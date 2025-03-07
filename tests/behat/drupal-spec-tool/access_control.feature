@api
Feature: Access control
  In order to protect my site and its content
  As a site owner
  I want to control access with user roles and permissions.

  @dst @access
     Scenario: User roles
       Then exactly the following roles should exist
       | Name | Machine name |
| Administrator | administrator |
| CMS account admin | admnistrator_users |
| Anonymous user | anonymous |
| Authenticated user | authenticated |
| Content admin | content_admin |
| Content API Consumer | content_api_consumer |
| Content creator - Benefits hubs | content_creator_benefits_hubs |
| Content creator - Resources and support | content_creator_resources_and_support |
| Content creator - Vet Center | content_creator_vet_center |
| Content editor | content_editor |
| Content publisher | content_publisher |
| Content reviewer | content_reviewer |
| Content creator - Outreach Hub | office_content_creator |
| Redirect admin | redirect_administrator |
| Content creator - VAMC | vamc_content_creator |
