{*
 +--------------------------------------------------------------------+
 | CiviCRM version 4.7                                                |
 +--------------------------------------------------------------------+
 | Copyright CiviCRM LLC (c) 2004-2015                                |
 +--------------------------------------------------------------------+
 | This file is a part of CiviCRM.                                    |
 |                                                                    |
 | CiviCRM is free software; you can copy, modify, and distribute it  |
 | under the terms of the GNU Affero General Public License           |
 | Version 3, 19 November 2007 and the CiviCRM Licensing Exception.   |
 |                                                                    |
 | CiviCRM is distributed in the hope that it will be useful, but     |
 | WITHOUT ANY WARRANTY; without even the implied warranty of         |
 | MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.               |
 | See the GNU Affero General Public License for more details.        |
 |                                                                    |
 | You should have received a copy of the GNU Affero General Public   |
 | License and the CiviCRM Licensing Exception along                  |
 | with this program; if not, contact CiviCRM LLC                     |
 | at info[AT]civicrm[DOT]org. If you have questions about the        |
 | GNU Affero General Public License or the licensing of CiviCRM,     |
 | see the CiviCRM license FAQ at http://civicrm.org/licensing        |
 +--------------------------------------------------------------------+
*}
<div class="crm-block crm-form-block crm-miscellaneous-form-block">
  <div class="crm-submit-buttons">{include file="CRM/common/formButtons.tpl" location="top"}</div>
    <table class="form-layout">
        <tr class="crm-miscellaneous-form-block-dashboardCacheTimeout">
            <td class="label">{$form.dashboardCacheTimeout.label}</td>
            <td>{$form.dashboardCacheTimeout.html}<br />
                <span class="description">{ts}The number of minutes to cache dashlet content on dashboard.{/ts}</span></td>
        </tr>
    </table>

    <table class="form-layout">
        <tr class="crm-miscellaneous-form-block-checksum_timeout">
            <td class="label">{$form.checksum_timeout.label}</td>
            <td>{$form.checksum_timeout.html}<br />
                <span class="description">{ts}The number of days before a personalized (hashed) link will expire.{/ts}</span></td>
        </tr>
    </table>

    <table class="form-layout">
        <tr class="crm-miscellaneous-form-block-contact_undelete">
          <td class="label">{$form.contact_undelete.label}</td>
          <td>
            {$form.contact_undelete.html}<br />
            <p class="description">{ts}{$contact_undelete_description}{/ts}</p>
          </td>
        </tr>
        <tr class="crm-miscellaneous-form-block-logging">
          <td class="label">{$form.logging.label}</td>
          <td>
            {$form.logging.html}<br />
          {if $validTriggerPermission}
            <p class="description">{ts}If enabled, all actions will be logged with a complete record of changes.{/ts}</p>
          {else}
            <p class="description">{ts}In order to use this functionality, the installation's database user must have privileges to create triggers (in MySQL 5.0 – and in MySQL 5.1 if binary logging is enabled – this means the SUPER privilege). This install either does not seem to have the required privilege enabled.{/ts}&nbsp;{ts}This functionality cannot be enabled on multilingual installations.{/ts}</p>
           {/if}
          </td>
        </tr>
        <tr class="crm-miscellaneous-form-block-doNotAttachPDFReceipt">
            <td class="label">{$form.doNotAttachPDFReceipt.label}</td>
            <td>{$form.doNotAttachPDFReceipt.html}<br />
                <p class="description">{ts}If enabled, CiviCRM sends PDF receipt as an attachment during event signup or online contribution.{/ts}</p>
            </td>
        </tr>
        <tr class="crm-miscellaneous-form-block-wkhtmltopdfPath">
            <td class="label">{$form.wkhtmltopdfPath.label}</td>
            <td>{$form.wkhtmltopdfPath.html}<br />
                <p class="description">{ts 1="http://wkhtmltopdf.org/"}<a href="%1">wkhtmltopdf is an alternative utility for generating PDF's</a> which may provide better performance especially if you are generating a large number of PDF letters or receipts. Your system administrator will need to download and install this utility, and enter the executable path here.{/ts}</p>
            </td>
        </tr>
        <tr class="crm-miscellaneous-form-block-versionCheck">
            <td class="label">{$form.versionCheck.label}</td>
            <td>{$form.versionCheck.html}<br />
                <p class="description">{ts}When enabled, statistics about your CiviCRM installation are reported anonymously to the CiviCRM team to assist in prioritizing ongoing development efforts. The following information is gathered: CiviCRM version, versions of PHP, MySQL and framework (Drupal/Joomla/standalone), and default language. Counts (but no actual data) of the following record types are reported: contacts, activities, cases, relationships, contributions, contribution pages, contribution products, contribution widgets, discounts, price sets, profiles, events, participants, tell-a-friend pages, grants, mailings, memberships, membership blocks, pledges, pledge blocks and active payment processor types.{/ts}</p></td>
        </tr>
        <tr class="crm-miscellaneous-form-block-versionCheckIgnoreDate">
            <td class="label">{$form.versionCheckIgnoreDate.label}</td>
            <td>{$form.versionCheckIgnoreDate.html|crmReplace:type:date}<br />
                <p class="description">{ts}If you wish to stop receiving alerts about a current update (for example, if you have applied a security patch manually), set this to today's date.{/ts}</p></td>
        </tr>
        <tr class="crm-miscellaneous-form-block-securityUpdateAlert">
          <td class="label">{$form.securityUpdateAlert.label}</td>
          <td>{$form.securityUpdateAlert.html}<br />
            <p class="description">{ts}Alert site admins about security advisories. <strong>Strongly recommended.</strong>{/ts}</p></td>
        </tr>
        <tr class="crm-miscellaneous-form-block-versionAlert">
          <td class="label">{$form.versionAlert.label}</td>
          <td>{$form.versionAlert.html}<br />
            <p class="description">{ts}Alert site admins about all new CiviCRM releases.{/ts}</p></td>
        </tr>
        <tr class="crm-miscellaneous-form-block-empoweredBy">
            <td class="label">{$form.empoweredBy.label}</td>
            <td>{$form.empoweredBy.html}<br />
                <p class="description">{ts}When enabled, "empowered by CiviCRM" is displayed at the bottom of public forms.{/ts}</p></td>
        </tr>
        <tr class="crm-miscellaneous-form-block-max_attachments">
            <td class="label">{$form.max_attachments.label}</td>
            <td>{$form.max_attachments.html}<br />
                <span class="description">{ts}Maximum number of files (documents, images, etc.) which can attached to emails or activities.{/ts}</span></td>
        </tr>
  <tr class="crm-miscellaneous-form-block-maxFileSize">
      <td class="label">{$form.maxFileSize.label}</td>
            <td>{$form.maxFileSize.html}<br />
                <span class="description">{$maxFileSize_description}</span></td>
        </tr>
        <tr class="crm-miscellaneous-form-block-secondDegRelPermissions">
            <td class="label">{$form.secondDegRelPermissions.label}</td>
            <td>{$form.secondDegRelPermissions.html}<br />
                <p class="description">{ts}If enabled, contacts with the permission to edit a related contact will inherit that contact's permission to edit other related contacts.{/ts}</p>
            </td>
        </tr>

    </table>
<h3>{ts}reCAPTCHA Keys{/ts}</h3>
    <div class="description">
        {ts 1="https://www.google.com/recaptcha"}reCAPTCHA is a free service that helps prevent automated abuse of your site. To use reCAPTCHA on public-facing CiviCRM forms: sign up at <a href="%1" "target=_blank">Google's reCaptcha site</a>; enter the provided public and private reCAPTCHA keys here; then enable reCAPTCHA under Advanced Settings in any Profile.{/ts}
    </div>
    <table class="form-layout">
        <tr class="crm-miscellaneous-form-block-recaptchaPublicKey">
            <td class="label">{$form.recaptchaPublicKey.label}</td>
            <td>{$form.recaptchaPublicKey.html}</td>
        </tr>
        <tr class="crm-miscellaneous-form-block-recaptchaPrivateKey">
            <td class="label">{$form.recaptchaPrivateKey.label}</td>
            <td>{$form.recaptchaPrivateKey.html}</td>
        </tr>
        <tr class="crm-miscellaneous-form-block-recaptchaOptions">
            <td class="label">{$form.recaptchaOptions.label}</td>
            <td>{$form.recaptchaOptions.html}<br />
              <span class="description">
                {ts}You can specify the reCAPTCHA theme options as comma separated data.(eg: theme:'blackglass', lang : 'fr' ).{/ts}
                <br />
                {ts 1='href="https://developers.google.com/recaptcha/docs/display#config" target="_blank"'}Check the available options at <a %1>Customizing the Look and Feel of reCAPTCHA</a>.{/ts}
              </span>
            </td>
        </tr>
        </table>
           <div class="crm-submit-buttons">{include file="CRM/common/formButtons.tpl" location="bottom"}</div>
</div>
{literal}
<script type="text/javascript">
  CRM.$(function($) {
    'use strict';
    $('input[name=versionCheck][value=0]').change(function() {
      if ($(this).is(':checked')) {
        CRM.confirm({message: {/literal}"{ts escape='js'}Disabling this option will prevent CiviCRM from checking for important security updates. Are you sure?{/ts}"{literal}})
          .on('crmConfirm:no', function() {
            $('input[name=versionCheck][value=0]').prop('checked', false);
            $('input[name=versionCheck][value=1]').prop('checked', true);
          })
      }
    });
    $('select[name=securityUpdateAlert]').change(function() {
      if ($(this).val() == '0') {
        CRM.confirm({message: {/literal}"{ts escape='js'}Disabling this option will prevent CiviCRM from checking for important security updates. Are you sure?{/ts}"{literal}})
          .on('crmConfirm:no', function() {
            $('select[name=securityUpdateAlert]').val('3');
          })
      }
    });
  });
</script>
{/literal}