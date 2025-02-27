@api
Feature: Content model: Custom Block fields
  In order to enter structured content into my site
  As a content editor
  I want to have custom block fields that reflect my content model.

  @dst @field_type @custom_block_fields @dstfields
     Scenario: Fields
       Then exactly the following fields should exist for entity type block_content
       | Type | Bundle | Field label | Machine name | Field type | Required | Cardinality | Form widget | Translatable |
| Custom block type | Alert | Alert body | field_alert_content | Entity reference revisions | Required | 1 | Paragraphs Legacy |  |
| Custom block type | Alert | Alert title | field_alert_title | Text (plain) | Required | 1 | Textfield |  |
| Custom block type | Alert | Alert Type | field_alert_type | List (text) | Required | 1 | Select list |  |
| Custom block type | Alert | Section | field_owner | Entity reference | Required | 1 | Select list |  |
| Custom block type | Alert | Reusability | field_reusability | List (text) | Required | 1 | -- Disabled -- |  |
| Custom block type | Benefit Promo | Section | field_administration | Entity reference | Required | 1 | Select list | Translatable |
| Custom block type | Benefit Promo | Promo CTA | field_promo_cta | Entity reference revisions | Required | 1 | Paragraphs Legacy |  |
| Custom block type | Benefit Promo | Promo Headline | field_promo_headline | Text (plain) | Required | 1 | Textfield with counter |  |
| Custom block type | Benefit Promo | Promo Text | field_promo_text | Text (plain, long) | Required | 1 | Textarea (multiple rows) with counter |  |
| Custom block type | CMS Announcement | Type | field_announcement_type | List (text) | Required | 1 | Check boxes/radio buttons |  |
| Custom block type | CMS Announcement | Alert body | field_body | Text (formatted, long) |  | 1 | Textarea (multiple rows) with counter |  |
| Custom block type | CMS Announcement | Submission Guidelines | field_submission_guidelines | Markup |  | 1 | Markup |  |
| Custom block type | CMS Announcement | Alert heading | field_title | Text (plain) |  | 1 | Textfield |  |
| Custom block type | News Promo | Section | field_administration | Entity reference | Required | 1 | Select list |  |
| Custom block type | News Promo | Image | field_image | Entity reference | Required | 1 | Media library | Translatable |
| Custom block type | News Promo | Link | field_link | Link | Required | 1 | Link |  |
| Custom block type | News Promo | Link Text | field_link_label | List (text) | Required | 1 | Select list |  |
| Custom block type | News Promo | Promo Headline | field_promo_headline | Text (plain) | Required | 1 | Textfield with counter | Translatable |
| Custom block type | News Promo | Promo Text | field_promo_text | Text (plain, long) | Required | 1 | Textarea (multiple rows) with counter | Translatable |
| Custom block type | Promo | Image | field_image | Entity reference | Required | 1 | Media library |  |
| Custom block type | Promo | Section | field_owner | Entity reference | Required | 1 | Select list | Translatable |
| Custom block type | Promo | Link | field_promo_link | Entity reference revisions |  | 1 | Inline entity form - Simple |  |
