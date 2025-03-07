
@api
Feature: Content model: User guides Content Type fields
  In order to enter structured content into my site
  As a content editor
  I want to have content type fields that reflect my content model.

  @dst @field_type @content_type_fields @dstfields
     Scenario: Fields
       Then exactly the following fields should exist for bundles "documentation_page" of entity type node
       | Type | Bundle | Field label | Machine name | Field type | Required | Cardinality | Form widget | Translatable |
| Content type | CMS Knowledge Base Article | Section | field_administration | Entity reference | Required | 1 | Select list | Translatable |
| Content type | CMS Knowledge Base Article | Main content | field_content_block | Entity reference revisions |  | Unlimited | Paragraphs Browser EXPERIMENTAL | Translatable |
| Content type | CMS Knowledge Base Article | Page introduction | field_intro_text | Text (plain, long) | Required | 1 | Text area (multiple rows) | Translatable |
| Content type | CMS Knowledge Base Article | Last Saved by an Editor | field_last_saved_by_an_editor | Timestamp |  | 1 | Datetime Timestamp | Translatable |
| Content type | CMS Knowledge Base Article | Products | field_products | Entity reference | Required | Unlimited | Check boxes/radio buttons |  |
| Content type | CMS Knowledge Base Article | Related | field_related_user_guides | Entity reference |  | 5 | Autocomplete |  |
| Content type | CMS Knowledge Base Article | Generate a table of contents from major headings | field_table_of_contents_boolean | Boolean |  | 1 | -- Disabled -- | Translatable |
| Content type | CMS Knowledge Base Article | Layout | layout_builder__layout | Layout Section |  | Unlimited | -- Disabled -- |  |
