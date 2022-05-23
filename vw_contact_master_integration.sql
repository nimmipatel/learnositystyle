create or replace view DEV_RIVERSIDE_TRUSTED_DATASETS.ENTERPRISE_PLATFORM_SERVICES.VW_CONTACT_MASTER_LIST_INTEGRATION(
	CUSTOMER_NAME COMMENT 'The preferred customer name. Preference is decided based on the source in the following order: MDR, NetSuite, Clinical, Datamanager, Hubspot, BDI, Freshdesk',
	CUSTOMER_ADDRESS COMMENT 'The preferred customer address. Preference is decided based on the source in the following order: MDR, NetSuite, Clinical, Datamanager, Hubspot, BDI, Freshdesk',
	CUSTOMER_CITY COMMENT 'The preferred customer city. Preference is decided based on the source in the following order: MDR, NetSuite, Clinical, Datamanager, Hubspot, BDI, Freshdesk',
	CUSTOMER_COUNTY COMMENT 'The preferred customer county. Preference is decided based on the source in the following order: MDR, NetSuite, Clinical, Datamanager, Hubspot, BDI, Freshdesk',
	CUSTOMER_STATE COMMENT 'The preferred customer state. Preference is decided based on the source in the following order: MDR, NetSuite, Clinical, Datamanager, Hubspot, BDI, Freshdesk',
	CUSTOMER_ZIPCODE COMMENT 'The preferred customer zipcode. Preference is decided based on the source in the following order: MDR, NetSuite, Clinical, Datamanager, Hubspot, BDI, Freshdesk',
	CUSTOMER_COUNTRY COMMENT 'The preferred customer country. Preference is decided based on the source in the following order: MDR, NetSuite, Clinical, Datamanager, Hubspot, BDI, Freshdesk',
	CONTACT_FIRST_NAME COMMENT 'The preferred contact first name. Preference is decided based on the source in the following order: MDR, NetSuite, Clinical, Datamanager, Hubspot, BDI,  Freshdesk',
	CONTACT_LAST_NAME COMMENT 'The preferred contact last name. Preference is decided based on the source in the following order: MDR, NetSuite, Clinical, Datamanager, Hubspot, BDI, Freshdesk',
	CONTACT_PHONE COMMENT 'The preferred contact phone. Preference is decided based on the source in the following order: MDR, NetSuite, Clinical, Datamanager, Hubspot, BDI,  Freshdesk',
	CONTACT_EMAIL COMMENT 'The preferred contact email. Preference is decided based on the source in the following order: MDR, NetSuite, Clinical, Datamanager, Hubspot, BDI, Freshdesk',
	CONTACT_LAST_UPDATED_DATE COMMENT 'The last time the contact was updated in any of the sources: MDR, NetSuite, Clinical, Datamanager, Hubspot, BDI, Freshdesk, Big Commerce, GoToWebinar',
	CONTACT_IS_ACTIVE COMMENT 'the most recent last updated value from netsuite and hubspot',
	NETSUITE_CUSTOMER_ID COMMENT 'The NetSuite internal ID of the customer',
	NETSUITE_CUSTOMER_NAME COMMENT 'The customer name from NetSuite',
	NETSUITE_CUSTOMER_ADDRESS COMMENT 'The customer address from NetSuite',
	NETSUITE_CUSTOMER_CITY COMMENT 'The customer city from NetSuite',
	NETSUITE_CUSTOMER_COUNTY COMMENT 'The customer county from NetSuite',
	NETSUITE_CUSTOMER_STATE COMMENT 'The customer state from NetSuite',
	NETSUITE_CUSTOMER_ZIPCODE COMMENT 'The customer zipcode from NetSuite',
	NETSUITE_CUSTOMER_COUNTRY COMMENT 'The customer country from NetSuite',
	NETSUITE_CUSTOMER_STATUS COMMENT 'The customer status from NetSuite',
	NETSUITE_CUSTOMER_IS_PROSPECT COMMENT 'Indicates if the customer is a prospect in NetSuite',
	NETSUITE_CUSTOMER_IS_ACTIVE COMMENT 'Indicates if the customer is active in NetSuite',
	NETSUITE_MDR_CUSTOMER_ID COMMENT 'NetSuite Foreign key from NetSuite to MDR',
	NETSUITE_CONTACT_FAX COMMENT 'The contact fax from NetSuite',
	NETSUITE_CONTACT_TITLE COMMENT 'The contact title from NetSuite',
	NETSUITE_CONTACT_SUBSIDIARY COMMENT 'The contact subsidiary from NetSuite',
	NETSUITE_BDI_CLINICAL_ISA_CUSTOMER_ID COMMENT 'NetSuite Foreign key from NetSuite to BDI, Clinical, or ISA',
	NETSUITE_CONTACT_SEND_TO_WEBSITE COMMENT 'NetSuite contact send to website',
	NETSUITE_CONTACT_ID COMMENT 'The NetSuite internal ID of the contact',
	NETSUITE_CONTACT_FIRST_NAME COMMENT 'The contact first name from NetSuite',
	NETSUITE_CONTACT_LAST_NAME COMMENT 'The contact last name from NetSuite',
	NETSUITE_CONTACT_PHONE COMMENT 'The contact phone from NetSuite',
	NETSUITE_CONTACT_IS_ACTIVE COMMENT 'Indicates if the contact is active in NetSuite',
	NETSUITE_CONTACT_LAST_UPDATED_DATE COMMENT 'The last time the contact was updated in Netsuite',
	NETSUITE_CUSTOMER_HUBSPOT_COMPANY_ID COMMENT 'Hubspot company id for netsuite customer matched using property external id to the customer id from netsuite',
	MDR_CUSTOMER_ID COMMENT 'The MDR internal ID of the customer',
	MDR_CUSTOMER_NAME COMMENT 'The customer name from MDR',
	MDR_CUSTOMER_ADDRESS COMMENT 'The customer address from MDR',
	MDR_CUSTOMER_CITY COMMENT 'The customer city from MDR',
	MDR_CUSTOMER_COUNTY COMMENT 'The customer county from MDR',
	MDR_CUSTOMER_STATE COMMENT 'The customer state from MDR',
	MDR_CUSTOMER_ZIPCODE COMMENT 'The customer zipcode from MDR',
	MDR_CUSTOMER_COUNTRY COMMENT 'The customer country from MDR',
	MDR_CONTACT_ID COMMENT 'The MDR internal ID of the contact',
	MDR_CONTACT_FIRST_NAME COMMENT 'The contact first name from MDR',
	MDR_CONTACT_LAST_NAME COMMENT 'The contact last name from MDR',
	MDR_CONTACT_PHONE COMMENT 'The contact phone from MDR',
	MDR_CONTACT_TITLE COMMENT 'The contact title from MDR',
	MDR_CONTACT_JOB_CODE COMMENT 'Contact job code from job code view',
	MDR_CONTACT_DESCRIPTION COMMENT 'Contact job description from job code view',
	MDR_CONTACT_ADDITIONAL_DESCRIPTION COMMENT 'Contact job additional description from job code view',
	MDR_CONTACT_JOB_GROUP COMMENT 'Contact job group from job code view',
	MDR_CONTACT_HUBSPOT_TITLE COMMENT 'Contact hubspot title from hubspot mapping view',
	MDR_CONTACT_HUBSPOT_GROUP_ROLE_TITLE COMMENT 'Contact hubspot group role title from hubspot mapping view',
	MDR_CONTACT_HUBSPOT_CLINICAL_ROLE_TITLE COMMENT 'Contact hubspot clinical role title from hubspot mapping view',
	MDR_CUSTOMER_DISTRICT_SCHOOLS_CNT COMMENT 'Customer district schools count from building decoded view',
	MDR_CONTACT_LAST_UPDATED_DATE COMMENT 'The last time the contact was updated in MDR',
	CLINICAL_CUSTOMER_ID COMMENT 'The Clinical internal ID of the customer',
	CLINICAL_CUSTOMER_NAME COMMENT 'The customer name from Clinical',
	CLINICAL_CUSTOMER_ADDRESS COMMENT 'The customer address from Clinical',
	CLINICAL_CUSTOMER_CITY COMMENT 'The customer city from Clinical',
	CLINICAL_CUSTOMER_COUNTY COMMENT 'The customer county from Clinical',
	CLINICAL_CUSTOMER_STATE COMMENT 'The customer state from Clinical',
	CLINICAL_CUSTOMER_ZIPCODE COMMENT 'The customer zipcode from Clinical',
	CLINICAL_CUSTOMER_COUNTRY COMMENT 'The customer country from Clinical',
	CLINICAL_CUSTOMER_IS_ACTIVE COMMENT 'Indicates if the customer is active in Clinical',
	CLINICAL_CONTACT_ID COMMENT 'The Clinical internal ID of the contact',
	CLINICAL_CONTACT_FIRST_NAME COMMENT 'The contact first name from Clinical',
	CLINICAL_CONTACT_LAST_NAME COMMENT 'The contact last name from Clinical',
	CLINICAL_CONTACT_PHONE COMMENT 'The contact phone from Clinical',
	CLINICAL_CONTACT_IS_ACTIVE COMMENT 'Indicates if the contact is active in Clinical',
	CLINICAL_CONTACT_USERNAME COMMENT 'The Username used by the Clinical Contact in the platform',
	CLINICAL_CONTACT_ROLE_ADMIN COMMENT '1/0 Flag that indicates if the contact has the role Admin',
	CLINICAL_CONTACT_ROLE_EXAMINER COMMENT '1/0 Flag that indicates if the contact has the role Examiner',
	CLINICAL_CONTACT_ROLE_STAFF COMMENT '1/0 Flag that indicates if the contact has the role Staff',
	CLINICAL_CONTACT_ROLE_ACCOUNT_HOLDER COMMENT '1/0 Flag that indicates if the contact has the role Account Holder',
	CLINICAL_CONTACT_ROLE_SECONDARY_ACCOUNT_HOLDER COMMENT '1/0 Flag that indicates if the contact has the role Secondary Account Holder',
	CLINICAL_CONTACT_ROLE_ADMIN_LAST_LOGIN_DATE COMMENT 'Indicates the last login timestamp from the contact with the Admin role',
	CLINICAL_CONTACT_ROLE_EXAMINER_LAST_LOGIN_DATE COMMENT 'Indicates the last login timestamp from the contact with the Examiner role',
	CLINICAL_CONTACT_ROLE_STAFF_LAST_LOGIN_DATE COMMENT 'Indicates the last login timestamp from the contact with the Staff role',
	CLINICAL_CONTACT_ROLE_ACCOUNT_HOLDER_LAST_LOGIN_DATE COMMENT 'Indicates the last login timestamp from the contact with the Account Holder role',
	CLINICAL_CONTACT_ROLE_SECONDARY_ACCOUNT_HOLDER_LAST_LOGIN_DATE COMMENT 'Indicates the last login timestamp from the contact with the Secondary Account Holder role',
	CLINICAL_CONTACT_LAST_UPDATED_DATE COMMENT 'The last time the contact was updated in Clinical Platform',
	CLINICAL_CONTACT_LAST_RIVERSIDE_SCORE_LOGIN_DATE COMMENT 'The last time the contact has logged in Clinical Platform',
	HUBSPOT_CUSTOMER_ID COMMENT 'The HubSpot internal ID of the customer',
	HUBSPOT_CUSTOMER_NAME COMMENT 'The customer name from HubSpot',
	HUBSPOT_CUSTOMER_ADDRESS COMMENT 'The customer address from HubSpot',
	HUBSPOT_CUSTOMER_CITY COMMENT 'The customer city from HubSpot',
	HUBSPOT_CUSTOMER_COUNTY COMMENT 'The customer county from HubSpot',
	HUBSPOT_CUSTOMER_STATE COMMENT 'The customer state from HubSpot',
	HUBSPOT_CUSTOMER_ZIPCODE COMMENT 'The customer zipcode from HubSpot',
	HUBSPOT_CUSTOMER_COUNTRY COMMENT 'The customer country from HubSpot',
	HUBSPOT_NETSUITE_CUSTOMER_ID COMMENT 'HubSpot Foreign key from HubSpot to NetSuite',
	HUBSPOT_CONTACT_ID COMMENT 'The HubSpot internal ID of the contact',
	HUBSPOT_CONTACT_FIRST_NAME COMMENT 'The contact first name from HubSpot',
	HUBSPOT_CONTACT_LAST_NAME COMMENT 'The contact last name from HubSpot',
	HUBSPOT_CONTACT_PHONE COMMENT 'The contact phone from HubSpot',
	HUBSPOT_CONTACT_EMAILS_DELIVERED COMMENT 'Number of emails delivered to the Hubspot contact',
	HUBSPOT_CONTACT_EMAILS_CLICKED COMMENT 'Number of emails clicked by the Hubspot contact',
	HUBSPOT_CONTACT_EMAILS_OPEN COMMENT 'Number of emails opened by the Hubspot contact',
	HUBSPOT_CONTACT_EMAILS_REPLIED COMMENT 'Number of emails replied by the Hubspot contact',
	HUBSPOT_CONTACT_EMAIL_LAST_SEND_DATE COMMENT 'Last time an email was sent to the Hubspot contact',
	HUBSPOT_CONTACT_EMAIL_LAST_OPEN_DATE COMMENT 'Last time an email was opened by the Hubspot contact',
	HUBSPOT_CONTACT_IS_INACTIVE COMMENT 'Flag that is True when the contact is Inactive in Hubspot',
	HUBSPOT_CONTACT_LAST_UPDATED_DATE COMMENT 'The last time the contact was updated in Hubspot',
	HUBSPOT_CONTACTS_PROPERTY_ANNUALREVENUE COMMENT 'The property annual revenue in Hubspot',
	HUBSPOT_CONTACTS_PROPERTY_INDUSTRY COMMENT 'The industry in Hubspot',
	HUBSPOT_CONTACT_PROPERTY_FAX COMMENT 'The property fax in Hubspot',
	DATAMANAGER_CUSTOMER_ID COMMENT 'The Datamanager internal ID of the customer',
	DATAMANAGER_CUSTOMER_NAME COMMENT 'The customer name from Datamanager',
	DATAMANAGER_CUSTOMER_ADDRESS COMMENT 'The customer address from Datamanager',
	DATAMANAGER_CUSTOMER_CITY COMMENT 'The customer city from Datamanager',
	DATAMANAGER_CUSTOMER_COUNTY COMMENT 'The customer county from Datamanager',
	DATAMANAGER_CUSTOMER_STATE COMMENT 'The customer state from Datamanager',
	DATAMANAGER_CUSTOMER_ZIPCODE COMMENT 'The customer zipcode from Datamanager',
	DATAMANAGER_CUSTOMER_COUNTRY COMMENT 'The customer country from Datamanager',
	DATAMANAGER_CUSTOMER_IS_ACTIVE COMMENT 'Indicates if the customer is active in Datamanager',
	DATAMANAGER_CONTACT_ID COMMENT 'The Datamanager internal ID of the contact',
	DATAMANAGER_CONTACT_FIRST_NAME COMMENT 'The contact first name from Datamanager',
	DATAMANAGER_CONTACT_LAST_NAME COMMENT 'The contact last name from Datamanager',
	DATAMANAGER_CONTACT_PHONE COMMENT 'The contact phone from Datamanager',
	DATAMANAGER_CONTACT_LAST_LOGIN_DATE COMMENT 'Indicates the last login timestamp from the contact in Datamanager',
	DATAMANAGER_CONTACT_FIRST_LOGIN_DATE COMMENT 'Indicates the first login timestamp from the contact in Datamanager',
	DATAMANAGER_CONTACT_TOTAL_LOGIN_CNT COMMENT 'Total Count of logins by the contact in Datamanager',
	DATAMANAGER_CONTACT_ROLE_AC_HOLDER COMMENT '1/0 Flag that indicates if the contact has the A/C Holder role in Datamanager',
	DATAMANAGER_CONTACT_ROLE_AOT COMMENT '1/0 Flag that indicates if the contact has the AOT role in Datamanager',
	DATAMANAGER_CONTACT_ROLE_ADMINISTRATOR COMMENT '1/0 Flag that indicates if the contact has the Administrator role in Datamanager',
	DATAMANAGER_CONTACT_ROLE_DIGITAL_RESOURCE_ACCESS COMMENT '1/0 Flag that indicates if the contact has the Digital Resource Access role in Datamanager',
	DATAMANAGER_CONTACT_ROLE_DIGITAL_RESOURCE_AND_REPORTING_ACCESS COMMENT '1/0 Flag that indicates if the contact has the Digital Resource and Reporting Access role in Datamanager',
	DATAMANAGER_CONTACT_ROLE_HMH_ADMIN COMMENT '1/0 Flag that indicates if the contact has the HMH Admin role in Datamanager',
	DATAMANAGER_CONTACT_ROLE_HMH_ADMIN_MANAGER COMMENT '1/0 Flag that indicates if the contact has the HMH Admin Manager role in Datamanager',
	DATAMANAGER_CONTACT_ROLE_HMH_SUPERVISOR COMMENT '1/0 Flag that indicates if the contact has the HMH Supervisor role in Datamanager',
	DATAMANAGER_CONTACT_ROLE_PROCTOR COMMENT '1/0 Flag that indicates if the contact has the Proctor role in Datamanager',
	DATAMANAGER_CONTACT_ROLE_RPC_ADMIN COMMENT '1/0 Flag that indicates if the contact has the RPC Admin role in Datamanager',
	DATAMANAGER_CONTACT_ROLE_SCHOOL_COORDINATOR COMMENT '1/0 Flag that indicates if the contact has the School Coordinator role in Datamanager',
	DATAMANAGER_CONTACT_ROLE_SUPER_ADMIN COMMENT '1/0 Flag that indicates if the contact has the Super Admin role in Datamanager',
	DATAMANAGER_CONTACT_ROLE_TEACHER COMMENT '1/0 Flag that indicates if the contact has the Teacher role in Datamanager',
	DATAMANAGER_CONTACT_LAST_UPDATED_DATE COMMENT 'The last time the contact was updated in DataManager',
	BDI_CUSTOMER_ID COMMENT 'The BDI internal ID of the customer',
	BDI_CUSTOMER_NAME COMMENT 'The customer name from BDI',
	BDI_CUSTOMER_ADDRESS COMMENT 'The customer address from BDI',
	BDI_CUSTOMER_CITY COMMENT 'The customer city from BDI',
	BDI_CUSTOMER_COUNTY COMMENT 'The customer county from BDI',
	BDI_CUSTOMER_STATE COMMENT 'The customer state from BDI',
	BDI_CUSTOMER_ZIPCODE COMMENT 'The customer zipcode from BDI',
	BDI_CUSTOMER_COUNTRY COMMENT 'The customer country from BDI',
	BDI_CUSTOMER_IS_ACTIVE COMMENT 'Indicates if the customer is active in BDI',
	BDI_CONTACT_ID COMMENT 'The BDI internal ID of the contact',
	BDI_CONTACT_FIRST_NAME COMMENT 'The contact first name from BDI',
	BDI_CONTACT_LAST_NAME COMMENT 'The contact last name from BDI',
	BDI_CONTACT_PHONE COMMENT 'The contact phone from BDI',
	BDI_CONTACT_LAST_UPDATED_DATE COMMENT 'The last time the contact was updated in BDI',
	BDI_CUSTOMER_FAX COMMENT 'The customer fax in BDI',
	FRESHDESK_CUSTOMER_ID COMMENT 'The Freshdesk internal ID of the customer',
	FRESHDESK_CUSTOMER_NAME COMMENT 'The customer name from Freshdesk',
	FRESHDESK_CUSTOMER_ADDRESS COMMENT 'The customer address from Freshdesk',
	FRESHDESK_CUSTOMER_CITY COMMENT 'The customer city from Freshdesk',
	FRESHDESK_CUSTOMER_COUNTY COMMENT 'The customer county from Freshdesk',
	FRESHDESK_CUSTOMER_STATE COMMENT 'The customer state from Freshdesk',
	FRESHDESK_CUSTOMER_ZIPCODE COMMENT 'The customer zipcode from Freshdesk',
	FRESHDESK_CUSTOMER_COUNTRY COMMENT 'The customer country from Freshdesk',
	FRESHDESK_CONTACT_ID COMMENT 'The Freshdesk internal ID of the contact',
	FRESHDESK_CONTACT_FIRST_NAME COMMENT 'The contact first name from Freshdesk',
	FRESHDESK_CONTACT_LAST_NAME COMMENT 'The contact last name from Freshdesk',
	FRESHDESK_CONTACT_PHONE COMMENT 'The contact phone from Freshdesk',
	FRESHDESK_CONTACT_TICKETS_CLOSED_COUNT COMMENT 'The number of closed tickets for this contact in Freshdesk',
	FRESHDESK_CONTACT_TICKETS_RESOLVED_COUNT COMMENT 'The number of resolved tickets for this contact in Freshdesk',
	FRESHDESK_CONTACT_TICKETS_CUSTOMER_RESPONDED_COUNT COMMENT 'The number of customer responded tickets for this contact in Freshdesk',
	FRESHDESK_CONTACT_TICKETS_PENDING_COUNT COMMENT 'The number of pending tickets for this contact in Freshdesk',
	FRESHDESK_CONTACT_TICKETS_PENDING_INTERNAL_COUNT COMMENT 'The number of pending internal tickets for this contact in Freshdesk',
	FRESHDESK_CONTACT_TICKETS_OPEN_COUNT COMMENT 'The number of open tickets for this contact in Freshdesk',
	FRESHDESK_CONTACT_LAST_UPDATED_DATE COMMENT 'The last time the contact was updated in Freshdesk',
	BIG_COMMERCE_CUSTOMER_ID COMMENT 'The Big Commerce internal ID of the customer',
	BIG_COMMERCE_CUSTOMER_NAME COMMENT 'The customer name from Big Commerce',
	BIG_COMMERCE_CUSTOMER_ADDRESS COMMENT 'The customer address from Big Commerce',
	BIG_COMMERCE_CUSTOMER_CITY COMMENT 'The customer city from Big Commerce',
	BIG_COMMERCE_CUSTOMER_COUNTY COMMENT 'The customer county from Big Commerce',
	BIG_COMMERCE_CUSTOMER_STATE COMMENT 'The customer state from Big Commerce',
	BIG_COMMERCE_CUSTOMER_ZIPCODE COMMENT 'The customer zipcode from Big Commerce',
	BIG_COMMERCE_CUSTOMER_COUNTRY COMMENT 'The customer country from Big Commerce',
	BIG_COMMERCE_CONTACT_ID COMMENT 'The Big Commerce internal ID of the contact',
	BIG_COMMERCE_CONTACT_FIRST_NAME COMMENT 'The contact first name from Big Commerce',
	BIG_COMMERCE_CONTACT_LAST_NAME COMMENT 'The contact last name from Big Commerce',
	BIG_COMMERCE_CONTACT_PHONE COMMENT 'The contact phone from Big Commerce',
	BIG_COMMERCE_CONTACT_LAST_UPDATED_DATE COMMENT 'The last time the contact was updated in Big Commerce',
	GOTOWEBINAR_CONTACT_FIRST_NAME COMMENT 'The contact first name from GoToWebinar',
	GOTOWEBINAR_CONTACT_LAST_NAME COMMENT 'The contact last name from GoToWebinar',
	GOTOWEBINAR_CONTACT_LAST_WEBINAR_ATTENDED_NAME COMMENT 'The last webinar attended by the contact from GoToWebinar',
	GOTOWEBINAR_CONTACT_LAST_WEBINAR_ATTENDED_DATETIME COMMENT ' The date and time of the last webinar attended by the contact from GoToWebinar',
	GOTOWEBINAR_CONTACT_LAST_UPDATED_DATE COMMENT 'The last time the contact was updated in GoToWebinar',
	CONTACT_EMAIL_STATUS COMMENT 'The status of the contact email from the email validation output',
	CONTACT_EMAIL_SUB_STATUS COMMENT 'The sub-status of the contact email from the email validation output',
	CONTACT_FREE_EMAIL COMMENT 'The free email of the contact email from the email validation output',
	CONTACT_EMAIL_DID_YOU_MEAN COMMENT 'The did-you-mean value of the contact email from the email validation output',
	CONTACT_EMAIL_ACCOUNT COMMENT 'The email account of the contact email from the email validation output',
	CONTACT_EMAIL_DOMAIN COMMENT 'The email domain of the contact email from the email validation output',
	CONTACT_EMAIL_DOMAIN_AGE_IN_DAYS COMMENT 'The email domain age in days of the contact email from the email validation output',
	CONTACT_EMAIL_PROVIDER COMMENT 'The email provider of the contact email from the email validation output',
	CONTACT_EMAIL_MX_FOUND COMMENT 'The mail exchange found value of the contact email from the email validation output',
	CONTACT_EMAIL_MX_RECORD COMMENT 'The mail exchange record value of the contact email from the email validation output',
	CONTACT_EMAIL_LAST_VALIDATION_DATETIME COMMENT 'The date and time of the last validation of the contact email',
	RN
) COMMENT='Contains all known customers and contacts across MDR, NetSuite, HubSpot, Clinical, Freshdesk, BDI, Datamanager, Big Commerce, GoToWebinar sources.'
 as

WITH

GOTOWEBINAR_CONTACTS AS
(SELECT * FROM
   (SELECT  gtw.ATTENDEE_FIRST_NAME AS GOTOWEBINAR_CONTACT_FIRST_NAME,
            gtw.ATTENDEE_LAST_NAME AS GOTOWEBINAR_CONTACT_LAST_NAME,
            gtw.ATTENDEE_EMAIL AS GOTOWEBINAR_CONTACT_EMAIL,
            TRIM(UPPER(gtw.ATTENDEE_EMAIL), ' \t') AS GOTOWEBINAR_CONTACT_CLEAN_EMAIL,
            gtw.SESSION_WEBINAR_NAME AS GOTOWEBINAR_CONTACT_LAST_WEBINAR_ATTENDED_NAME,
            gtw.SESSION_DATETIME AS GOTOWEBINAR_CONTACT_LAST_WEBINAR_ATTENDED_DATETIME,
            gtw.GOTOWEBINAR_CONTACT_LAST_UPDATED_DATE,
            CASE WHEN gtw.ATTENDEE_EMAIL IS NOT NULL 
            THEN ROW_NUMBER() OVER(PARTITION BY gtw.ATTENDEE_EMAIL ORDER BY GOTOWEBINAR_CONTACT_LAST_UPDATED_DATE DESC)
            ELSE NULL END  AS RN
FROM        (
            SELECT          att.FIRST_NAME AS ATTENDEE_FIRST_NAME,
                            att.LAST_NAME AS ATTENDEE_LAST_NAME,
                            att.EMAIL AS ATTENDEE_EMAIL,
                            ses.WEBINAR_NAME AS SESSION_WEBINAR_NAME,
                            ses.START_TIME AS SESSION_DATETIME,
                            att._FIVETRAN_SYNCED,
                            ROW_NUMBER() OVER(PARTITION BY att.EMAIL ORDER BY ses.START_TIME DESC) AS SEQUENCE_NUMBER,
                            GREATEST(   IFNULL(ses._FIVETRAN_SYNCED, TO_TIMESTAMP(0)), 
                                        IFNULL(att._FIVETRAN_SYNCED, TO_TIMESTAMP(0)) ) AS GOTOWEBINAR_CONTACT_LAST_UPDATED_DATE
            FROM            DEV_RIVERSIDE_DATA_LAKE.GOTOWEBINAR.VW_ATTENDEES att
            INNER JOIN      DEV_RIVERSIDE_DATA_LAKE.GOTOWEBINAR.VW_SESSIONS ses
                        ON  ses.SESSION_KEY = att.SESSION_KEY
            WHERE           COALESCE(TRIM(att.EMAIL), '') <> ''
            ) gtw
WHERE       gtw.SEQUENCE_NUMBER = 1 ) WHERE RN = 1
),

DATAMANAGER_CONTACTS AS
(Select * from (
SELECT          DISTINCT
                dmc.CONTRACTID AS DATAMANAGER_CUSTOMER_ID,
                dmc.DESCRIPTION AS DATAMANAGER_CUSTOMER_NAME,
                dmc.ADDRESS1 AS DATAMANAGER_CUSTOMER_ADDRESS,
                dmc.CITY AS DATAMANAGER_CUSTOMER_CITY,
                NULL AS DATAMANAGER_CUSTOMER_COUNTY,
                dms.STATEACRONYM AS DATAMANAGER_CUSTOMER_STATE,
                dmc.ZIPCODE AS DATAMANAGER_CUSTOMER_ZIPCODE,
                NULL AS DATAMANAGER_CUSTOMER_COUNTRY,
                dmu.USERID AS DATAMANAGER_CONTACT_ID,
                dmu.LOGONID AS DATAMANAGER_CONTACT_EMAIL,
                TRIM(UPPER(dmu.LOGONID), ' \t') AS DATAMANAGER_CONTACT_CLEAN_EMAIL,
                dmu.FIRSTNAME AS DATAMANAGER_CONTACT_FIRST_NAME,
                dmu.LASTNAME AS DATAMANAGER_CONTACT_LAST_NAME,
                dmu.PHONENUMBER AS DATAMANAGER_CONTACT_PHONE,
                CASE WHEN UPPER(dmc.CONTRACTSTATUS) = 'A' THEN TRUE ELSE FALSE END AS DATAMANAGER_CUSTOMER_IS_ACTIVE,
                dmut.LAST_LOGIN_DATE AS DATAMANAGER_CONTACT_LAST_LOGIN_DATE,
                dmut.FIRST_LOGIN_DATE AS DATAMANAGER_CONTACT_FIRST_LOGIN_DATE,
                dmut.TOTAL_LOGIN_CNT AS DATAMANAGER_CONTACT_TOTAL_LOGIN_CNT,
                dmur.USERROLE_AC_HOLDER AS DATAMANAGER_CONTACT_ROLE_AC_HOLDER,  
                dmur.USERROLE_AOT AS DATAMANAGER_CONTACT_ROLE_AOT, 
                dmur.USERROLE_ADMINISTRATOR AS DATAMANAGER_CONTACT_ROLE_ADMINISTRATOR, 
                dmur.USERROLE_DIGITAL_RESOURCE_ACCESS AS DATAMANAGER_CONTACT_ROLE_DIGITAL_RESOURCE_ACCESS, 
                dmur.USERROLE_DIGITAL_RESOURCE_AND_REPORTING_ACCESS AS DATAMANAGER_CONTACT_ROLE_DIGITAL_RESOURCE_AND_REPORTING_ACCESS,   
                dmur.USERROLE_HMH_ADMIN AS DATAMANAGER_CONTACT_ROLE_HMH_ADMIN, 
                dmur.USERROLE_HMH_ADMIN_MANAGER AS DATAMANAGER_CONTACT_ROLE_HMH_ADMIN_MANAGER, 
                dmur.USERROLE_HMH_SUPERVISOR AS DATAMANAGER_CONTACT_ROLE_HMH_SUPERVISOR,
                dmur.USERROLE_PROCTOR AS DATAMANAGER_CONTACT_ROLE_PROCTOR,
                dmur.USERROLE_RPC_ADMIN AS DATAMANAGER_CONTACT_ROLE_RPC_ADMIN, 
                dmur.USERROLE_SCHOOL_COORDINATOR AS DATAMANAGER_CONTACT_ROLE_SCHOOL_COORDINATOR, 
                dmur.USERROLE_SUPER_ADMIN AS DATAMANAGER_CONTACT_ROLE_SUPER_ADMIN, 
                dmur.USERROLE_TEACHER AS DATAMANAGER_CONTACT_ROLE_TEACHER,
                GREATEST(   IFNULL(dmu._FIVETRAN_SYNCED, TO_TIMESTAMP(0)), 
                            IFNULL(dmul._FIVETRAN_SYNCED, TO_TIMESTAMP(0)),
                            IFNULL(dml._FIVETRAN_SYNCED, TO_TIMESTAMP(0)),
                            IFNULL(dmls._FIVETRAN_SYNCED, TO_TIMESTAMP(0)),
                            IFNULL(dmc._FIVETRAN_SYNCED, TO_TIMESTAMP(0)),
                            IFNULL(dms._FIVETRAN_SYNCED, TO_TIMESTAMP(0)) ) AS DATAMANAGER_CONTACT_LAST_UPDATED_DATE,
                ROW_NUMBER() OVER(PARTITION BY dmu.LOGONID ORDER BY dms._FIVETRAN_SYNCED  DESC) AS rn
FROM            DEV_RIVERSIDE_DATA_LAKE.DATA_MANAGER_DBO.VW_USERS dmu
LEFT OUTER JOIN DEV_RIVERSIDE_DATA_LAKE.DATA_MANAGER_DBO.VW_USERLOCATION dmul
            ON  dmul.USERID = dmu.USERID
LEFT OUTER JOIN DEV_RIVERSIDE_DATA_LAKE.DATA_MANAGER_DBO.VW_LOCATION dml
            ON  dml.LOCATIONID = dmul.LOCATIONID
LEFT OUTER JOIN DEV_RIVERSIDE_DATA_LAKE.DATA_MANAGER_DBO.VW_LOCATIONSCHEMA dmls 
            ON  dmls.LOCATIONSCHEMAID = dml.LOCATIONSCHEMAID
LEFT OUTER JOIN DEV_RIVERSIDE_DATA_LAKE.DATA_MANAGER_DBO.VW_CONTRACT dmc
            ON  dmc.CONTRACTID = dmls.CONTRACTID
LEFT OUTER JOIN DEV_RIVERSIDE_DATA_LAKE.DATA_MANAGER_DBO.VW_STATE dms
            ON  dms.STATEID = dmc.STATEID
LEFT OUTER JOIN
                (-- LAST/FIRST LOGIN DATE AND TOTAL LOGIN COUNT
                    SELECT       USERID
                                ,MAX(LOGINDATE) AS LAST_LOGIN_DATE
                                ,MIN(LOGINDATE) AS FIRST_LOGIN_DATE
                                ,SUM(COUNTER) AS TOTAL_LOGIN_CNT
                    FROM        DEV_RIVERSIDE_DATA_LAKE.DATA_MANAGER_DBO.VW_USERUSAGETRACKER
                    GROUP       BY USERID
                ) dmut
                ON dmut.USERID = dmu.USERID
LEFT OUTER JOIN
                (-- USER ROLES PIVOT TABLE WITH FLAGS
                    SELECT
                          u.USERID,
                          MAX(CASE WHEN sr.ROLENAME = 'A/C Holder'                            THEN  1 ELSE 0 END) AS USERROLE_AC_HOLDER,  
                          MAX(CASE WHEN sr.ROLENAME = 'AOT'                                   THEN  1 ELSE 0 END) AS USERROLE_AOT, 
                          MAX(CASE WHEN sr.ROLENAME = 'Administrator'                         THEN  1 ELSE 0 END) AS USERROLE_ADMINISTRATOR, 
                          MAX(CASE WHEN sr.ROLENAME = 'Digital Resource Access'               THEN  1 ELSE 0 END) AS USERROLE_DIGITAL_RESOURCE_ACCESS, 
                          MAX(CASE WHEN sr.ROLENAME = 'Digital Resource and Reporting Access' THEN  1 ELSE 0 END) AS USERROLE_DIGITAL_RESOURCE_AND_REPORTING_ACCESS,   
                          MAX(CASE WHEN sr.ROLENAME = 'HMH Admin'                             THEN  1 ELSE 0 END) AS USERROLE_HMH_ADMIN, 
                          MAX(CASE WHEN sr.ROLENAME = 'HMH Admin Manager'                     THEN  1 ELSE 0 END) AS USERROLE_HMH_ADMIN_MANAGER, 
                          MAX(CASE WHEN sr.ROLENAME = 'HMH Supervisor'                        THEN  1 ELSE 0 END) AS USERROLE_HMH_SUPERVISOR,
                          MAX(CASE WHEN sr.ROLENAME = 'Proctor'                               THEN  1 ELSE 0 END) AS USERROLE_PROCTOR,
                          MAX(CASE WHEN sr.ROLENAME = 'RPC Admin'                             THEN  1 ELSE 0 END) AS USERROLE_RPC_ADMIN, 
                          MAX(CASE WHEN sr.ROLENAME = 'School Coordinator'                    THEN  1 ELSE 0 END) AS USERROLE_SCHOOL_COORDINATOR, 
                          MAX(CASE WHEN sr.ROLENAME = 'Super Admin'                           THEN  1 ELSE 0 END) AS USERROLE_SUPER_ADMIN, 
                          MAX(CASE WHEN sr.ROLENAME = 'Teacher'                               THEN  1 ELSE 0 END) AS USERROLE_TEACHER
                          FROM       DEV_RIVERSIDE_DATA_LAKE.DATA_MANAGER_DBO.VW_USERS u
                          INNER      JOIN DEV_RIVERSIDE_DATA_LAKE.DATA_MANAGER_DBO.USERROLE ur
                                     ON ur.USERID = u.USERID
                          INNER      JOIN DEV_RIVERSIDE_DATA_LAKE.DATA_MANAGER_DBO.SHIELDROLE sr
                                     ON sr.SHIELDROLEID = ur.SHIELDROLEID
                          GROUP BY  u.USERID
                ) dmur
                ON dmur.USERID = dmu.USERID
WHERE           UPPER(dmu.USERTYPECODE) IN ('S', 'W')
            AND dmc.DEMO = 0
            AND (dmc.ISQACONTRACT IS NULL OR dmc.ISQACONTRACT = 0)
            AND COALESCE(TRIM(dmu.LOGONID), '') <> '') where rn = 1
),


BDI_CONTACTS AS
(
SELECT          bc.CUSTOMERID AS BDI_CUSTOMER_ID,
                bc.CUSTOMERNAME AS BDI_CUSTOMER_NAME,
                bc.ADDRESS1 AS BDI_CUSTOMER_ADDRESS,
                bc.CITY AS BDI_CUSTOMER_CITY,
                NULL AS BDI_CUSTOMER_COUNTY,
                bc.STATE AS BDI_CUSTOMER_STATE,
                bc.ZIPCODE AS BDI_CUSTOMER_ZIPCODE,
                bct.COUNTRYNAME AS BDI_CUSTOMER_COUNTRY,
                bc.USERID AS BDI_CONTACT_ID,
                bc.EMAIL AS BDI_CONTACT_EMAIL,
                TRIM(UPPER(bc.EMAIL), ' \t') AS BDI_CONTACT_CLEAN_EMAIL,
                COALESCE(bs.FIRSTNAME, SUBSTRING(bcu.ADMINNAME, 1, CHARINDEX(' ', bcu.ADMINNAME) - 1)) AS BDI_CONTACT_FIRST_NAME,
                COALESCE(bs.LASTNAME, SUBSTRING(bcu.ADMINNAME, CHARINDEX(' ', bcu.ADMINNAME) + 1, LEN(bcu.ADMINNAME) - CHARINDEX(' ', bcu.ADMINNAME))) AS BDI_CONTACT_LAST_NAME,
                CAST(COALESCE(bs.PHONENUMBER, bcu.ADMINPHONE) AS VARCHAR) AS BDI_CONTACT_PHONE,
                BDI_CUSTOMER_IS_ACTIVE,
                GREATEST(   IFNULL(bc.LAST_UPDATED_DATE, TO_TIMESTAMP(0)), 
                            IFNULL(bct._FIVETRAN_SYNCED, TO_TIMESTAMP(0)),
                            IFNULL(bs._FIVETRAN_SYNCED, TO_TIMESTAMP(0)),
                            IFNULL(bcu._FIVETRAN_SYNCED, TO_TIMESTAMP(0)) ) AS BDI_CONTACT_LAST_UPDATED_DATE,
                FAX AS BDI_CUSTOMER_FAX
FROM            (
                    SELECT          
                                    CUSTOMERID, CUSTOMERNAME, MAX(USERID) AS USERID, EMAIL, ADDRESS1, COUNTRYID, CITY, STATE, ZIPCODE, BDI_CUSTOMER_IS_ACTIVE, MAX(LAST_UPDATED_DATE) AS LAST_UPDATED_DATE
                    FROM            (
                                        SELECT          c.CUSTOMERID, c.CUSTOMERNAME, s.STAFFID AS USERID, LOWER(s.EMAIL) AS EMAIL, 0 AS IS_CUSTOMER_CONTACT,
                                                        c.ADDRESS1, c.COUNTRYID, c.CITY, c.STATE, c.ZIPCODE,
                                                        CASE WHEN c.DELETEDATE IS NOT NULL THEN FALSE ELSE TRUE END AS BDI_CUSTOMER_IS_ACTIVE,
                                                        s._FIVETRAN_SYNCED AS LAST_UPDATED_DATE
                                        FROM            DEV_RIVERSIDE_DATA_LAKE.BDI2_DBO.VW_STAFF s
                                        INNER JOIN      DEV_RIVERSIDE_DATA_LAKE.BDI2_DBO.VW_CUSTOMER c
                                                    ON  c.CUSTOMERID = s.CUSTOMERID
                                        
                                        UNION ALL
                                        
                                        SELECT          c.CUSTOMERID, c.CUSTOMERNAME, NULL AS USERID, LOWER(c.ADMINEMAIL) AS EMAIL, 1 AS IS_CUSTOMER_CONTACT,
                                                        c.ADDRESS1, c.COUNTRYID, c.CITY, c.STATE, c.ZIPCODE,
                                                        CASE WHEN c.DELETEDATE IS NOT NULL THEN FALSE ELSE TRUE END AS BDI_IS_CUSTOMER_ACTIVE,
                                                        c._FIVETRAN_SYNCED AS LAST_UPDATED_DATE
                                        FROM            DEV_RIVERSIDE_DATA_LAKE.BDI2_DBO.VW_CUSTOMER c
                                        
                                    ) a
                    GROUP BY        CUSTOMERID, CUSTOMERNAME, EMAIL, ADDRESS1, COUNTRYID, CITY, STATE, ZIPCODE, BDI_CUSTOMER_IS_ACTIVE
                ) bc
LEFT OUTER JOIN DEV_RIVERSIDE_DATA_LAKE.BDI2_DBO.VW_COUNTRY bct
            ON  bct.COUNTRYID = bc.COUNTRYID
LEFT OUTER JOIN DEV_RIVERSIDE_DATA_LAKE.BDI2_DBO.VW_STAFF bs
            ON  bs.STAFFID = bc.USERID
LEFT OUTER JOIN DEV_RIVERSIDE_DATA_LAKE.BDI2_DBO.VW_CUSTOMER bcu
            ON  bcu.CUSTOMERID = bc.CUSTOMERID
WHERE           COALESCE(TRIM(bc.EMAIL), '') <> ''
),

FRESHDESK_CONTACTS AS
(
SELECT          fd.ID AS FRESHDESK_CUSTOMER_ID,
                fd.NAME AS FRESHDESK_CUSTOMER_NAME,
                TRIM(SPLIT(fd.CUSTOM_DEFAULT_BILLING_ADDRESS, '\n')[0]) || ', ' || TRIM(SPLIT(fd.CUSTOM_DEFAULT_BILLING_ADDRESS, '\n')[1]) AS FRESHDESK_CUSTOMER_ADDRESS,
                TRIM(SPLIT(TRIM(SPLIT(fd.CUSTOM_DEFAULT_BILLING_ADDRESS, '\n')[2]), ',')[0]) AS FRESHDESK_CUSTOMER_CITY,
                NULL AS FRESHDESK_CUSTOMER_COUNTY,
                TRIM(SPLIT(TRIM(TRIM(SPLIT(TRIM(SPLIT(fd.CUSTOM_DEFAULT_BILLING_ADDRESS, '\n')[2]), ',')[1]) ), ' ')[0]) AS FRESHDESK_CUSTOMER_STATE,
                TRIM(SPLIT(TRIM(TRIM(SPLIT(TRIM(SPLIT(fd.CUSTOM_DEFAULT_BILLING_ADDRESS, '\n')[2]), ',')[1]) ), ' ')[1]) AS FRESHDESK_CUSTOMER_ZIPCODE,
                TRIM(SPLIT(fd.CUSTOM_DEFAULT_BILLING_ADDRESS, '\n')[3]) AS FRESHDESK_CUSTOMER_COUNTRY,
                fc.ID AS FRESHDESK_CONTACT_ID,
                fc.EMAIL AS FRESHDESK_CONTACT_EMAIL,
                TRIM(UPPER(fc.EMAIL), ' \t') AS FRESHDESK_CONTACT_CLEAN_EMAIL,
                SUBSTRING(fc.NAME, 1, CHARINDEX(' ', fc.NAME) - 1) AS FRESHDESK_CONTACT_FIRST_NAME,
                SUBSTRING(fc.NAME, CHARINDEX(' ', fc.NAME) + 1, LEN(fc.NAME) - CHARINDEX(' ', fc.NAME)) AS FRESHDESK_CONTACT_LAST_NAME,
                fc.PHONE AS FRESHDESK_CONTACT_PHONE,
                fd_tk.FRESHDESK_CONTACT_TICKETS_CLOSED_COUNT,
                fd_tk.FRESHDESK_CONTACT_TICKETS_RESOLVED_COUNT,
                fd_tk.FRESHDESK_CONTACT_TICKETS_CUSTOMER_RESPONDED_COUNT,
                fd_tk.FRESHDESK_CONTACT_TICKETS_PENDING_COUNT,
                fd_tk.FRESHDESK_CONTACT_TICKETS_PENDING_INTERNAL_COUNT,
                fd_tk.FRESHDESK_CONTACT_TICKETS_OPEN_COUNT,
                GREATEST( IFNULL(fc.UPDATED_AT, TO_TIMESTAMP(0))/*, 
                          IFNULL(fd.UPDATED_AT, TO_TIMESTAMP(0))*/ ) AS FRESHDESK_CONTACT_LAST_UPDATED_DATE
                
FROM            DEV_RIVERSIDE_DATA_LAKE.FRESHDESK_LAMBDA.VW_CONTACT fc
LEFT OUTER JOIN DEV_RIVERSIDE_DATA_LAKE.FRESHDESK.VW_COMPANY fd
            ON  fd.ID = fc.COMPANY_ID
LEFT OUTER JOIN (
                SELECT      REQUESTER_EMAIL,
                            SUM(CASE WHEN UPPER(TICKET_STATUS) = 'CLOSED' THEN 1 ELSE 0 END) AS FRESHDESK_CONTACT_TICKETS_CLOSED_COUNT,
                            SUM(CASE WHEN UPPER(TICKET_STATUS) = 'RESOLVED' THEN 1 ELSE 0 END) AS FRESHDESK_CONTACT_TICKETS_RESOLVED_COUNT,
                            SUM(CASE WHEN UPPER(TICKET_STATUS) = 'CUSTOMER RESPONDED' THEN 1 ELSE 0 END) AS FRESHDESK_CONTACT_TICKETS_CUSTOMER_RESPONDED_COUNT,
                            SUM(CASE WHEN UPPER(TICKET_STATUS) = 'PENDING' THEN 1 ELSE 0 END) AS FRESHDESK_CONTACT_TICKETS_PENDING_COUNT,
                            SUM(CASE WHEN UPPER(TICKET_STATUS) = 'PENDING INTERNAL' THEN 1 ELSE 0 END) AS FRESHDESK_CONTACT_TICKETS_PENDING_INTERNAL_COUNT,
                            SUM(CASE WHEN UPPER(TICKET_STATUS) = 'OPEN' THEN 1 ELSE 0 END) AS FRESHDESK_CONTACT_TICKETS_OPEN_COUNT
                FROM        DEV_RIVERSIDE_TRUSTED_DATASETS.CUSTOMER_EXPERIENCE.VW_TICKET_SUMMARY fd_tk
                GROUP BY    REQUESTER_EMAIL
                ) fd_tk
            ON  fd_tk.REQUESTER_EMAIL = fc.EMAIL
WHERE           COALESCE(TRIM(fc.EMAIL), '') <> ''
),

BIG_COMMERCE_CONTACTS AS
(
SELECT          CAST(TRIM(SPLIT(bc.COMPANY, '|')[1]) AS NUMBER) AS BIG_COMMERCE_CUSTOMER_ID,
                TRIM(SPLIT(bc.COMPANY, '|')[2]) AS BIG_COMMERCE_CUSTOMER_NAME,
                bca.ADDRESS_1 AS BIG_COMMERCE_CUSTOMER_ADDRESS,
                bca.CITY AS BIG_COMMERCE_CUSTOMER_CITY,
                NULL AS BIG_COMMERCE_CUSTOMER_COUNTY,
                bca.STATE_OR_PROVINCE AS BIG_COMMERCE_CUSTOMER_STATE,
                bca.POSTAL_CODE AS BIG_COMMERCE_CUSTOMER_ZIPCODE,
                bca.COUNTRY AS BIG_COMMERCE_CUSTOMER_COUNTRY,
                CAST(bc.ID AS VARCHAR) AS BIG_COMMERCE_CONTACT_ID,
                bc.EMAIL AS BIG_COMMERCE_CONTACT_EMAIL,
                TRIM(UPPER(bc.EMAIL), ' \t') AS BIG_COMMERCE_CONTACT_CLEAN_EMAIL,
                bc.FIRST_NAME AS BIG_COMMERCE_CONTACT_FIRST_NAME,
                bc.LAST_NAME AS BIG_COMMERCE_CONTACT_LAST_NAME,
                bc.PHONE AS BIG_COMMERCE_CONTACT_PHONE,
                GREATEST(   IFNULL(bca._FIVETRAN_SYNCED, TO_TIMESTAMP(0)), 
                            IFNULL(bc.DATE_MODIFIED, TO_TIMESTAMP(0)) ) AS BIG_COMMERCE_CONTACT_LAST_UPDATED_DATE
FROM            DEV_RIVERSIDE_DATA_LAKE.BIG_COMMERCE.VW_CUSTOMER_ADDRESSES bca
LEFT OUTER JOIN DEV_RIVERSIDE_DATA_LAKE.BIG_COMMERCE_INCREMENTAL.VW_CUSTOMERS bc
            ON  bc.ID = bca.ID
WHERE           COALESCE(TRIM(bc.EMAIL), '') <> ''
),

NETSUITE_CONTACTS AS
(
SELECT          CAST(ns.CUSTOMER_ID AS NUMBER) AS NETSUITE_CUSTOMER_ID,
                ns.COMPANYNAME AS NETSUITE_CUSTOMER_NAME,
                ns.LINE1 AS NETSUITE_CUSTOMER_ADDRESS,
                ns.CITY AS NETSUITE_CUSTOMER_CITY,
                ns.COUNTY AS NETSUITE_CUSTOMER_COUNTY,
                ns.STATE AS NETSUITE_CUSTOMER_STATE,
                ns.ZIPCODE AS NETSUITE_CUSTOMER_ZIPCODE,
                ns.COUNTRY AS NETSUITE_CUSTOMER_COUNTRY,
                ns.STATUS AS NETSUITE_CUSTOMER_STATUS,
                CASE UPPER(ns.CATEGORY_0) WHEN 'PROSPECT' THEN 1 ELSE 0 END AS NETSUITE_CUSTOMER_IS_PROSPECT,
                CAST(nc.CONTACT_ID AS NUMBER) AS NETSUITE_CONTACT_ID,
                nce.EMAIL AS NETSUITE_CONTACT_EMAIL,
                TRIM(UPPER(nce.EMAIL), ' \t') AS NETSUITE_CONTACT_CLEAN_EMAIL,
                nc.FIRSTNAME AS NETSUITE_CONTACT_FIRST_NAME,
                nc.LASTNAME AS NETSUITE_CONTACT_LAST_NAME,
                CAST(nc.PHONE AS VARCHAR) AS NETSUITE_CONTACT_PHONE,
                CASE WHEN ns.ISINACTIVE IS NULL OR UPPER(ns.ISINACTIVE) <> 'YES' THEN TRUE ELSE FALSE END AS NETSUITE_CUSTOMER_IS_ACTIVE,
                CASE WHEN nc.ISINACTIVE IS NULL OR UPPER(nc.ISINACTIVE) <> 'YES' THEN TRUE ELSE FALSE END AS NETSUITE_CONTACT_IS_ACTIVE,
                GREATEST(   IFNULL(nc.LAST_MODIFIED_DATE, TO_TIMESTAMP(0))/*, 
                            IFNULL(ns.LAST_MODIFIED_DATE, TO_TIMESTAMP(0))*/ ) AS NETSUITE_CONTACT_LAST_UPDATED_DATE,
                -- FKs
                ns.MDR_PID AS NETSUITE_MDR_CUSTOMER_ID,
                nc.FAX AS NETSUITE_CONTACT_FAX,
                nc.TITLE AS NETSUITE_CONTACT_TITLE,
                nc.SUBSIDIARY AS NETSUITE_CONTACT_SUBSIDIARY,
                ns.NAME AS NETSUITE_BDI_CLINICAL_ISA_CUSTOMER_ID,
                nc.SEND_TO_WEBSITE AS NETSUITE_CONTACT_SEND_TO_WEBSITE,
                hc.id as NETSUITE_CUSTOMER_HUBSPOT_COMPANY_ID
            
FROM            DEV_RIVERSIDE_DATA_LAKE.NETSUITE.VW_CONTACTS nc
LEFT OUTER JOIN DEV_RIVERSIDE_DATA_LAKE.NETSUITE.VW_CUSTOMERS ns
            ON  ns.CUSTOMER_ID = nc.COMPANY_ID
  
inner JOIN  (select * from (              
                
  select  EMAIL
        ,CONTACT_ID
        ,isinactive
        ,count(email) over (partition by email) as email_cnt
        ,case when email_cnt > 1 and isinactive = 'Yes' then 1 end as multiple_emails_inactive_flag
from dev_riverside_data_lake.netsuite.vw_contacts
order by email_cnt desc) 
where multiple_emails_inactive_flag is null ) nce
ON nce.CONTACT_ID = nc.CONTACT_ID
LEFT OUTER JOIN DEV_RIVERSIDE_DATA_LAKE.HUBSPOT.VW_COMPANY hc
on ns.CUSTOMER_ID = hc.PROPERTY_EXTERNAL_ID

WHERE           COALESCE(TRIM(nce.EMAIL), '') <> ''),

MDR_CONTACTS AS
(SELECT * FROM
      (SELECT   mdr.MDR_PID AS MDR_CUSTOMER_ID,
                mdr.INSTITUTION_NAME AS MDR_CUSTOMER_NAME,
                mdr.MAILING_ADDRESS_LINE_1 AS MDR_CUSTOMER_ADDRESS,
                mdr.MAILING_ADDRESS_CITY AS MDR_CUSTOMER_CITY,
                mdr.COUNTY_NAME AS MDR_CUSTOMER_COUNTY,
                mdr.MAILING_ADDRESS_STATE AS MDR_CUSTOMER_STATE,
                mdr.MAILING_ADDRESS_POSTAL_CODE AS MDR_CUSTOMER_ZIPCODE,
                NULL AS MDR_CUSTOMER_COUNTRY,
                NULL AS MDR_CONTACT_ID, --CAST(mc.PERSON_PIDNID AS INT)
                mc.EMAIL AS MDR_CONTACT_EMAIL,
                TRIM(UPPER(mc.EMAIL), ' \t') AS MDR_CONTACT_CLEAN_EMAIL,
                mc.FIRST AS MDR_CONTACT_FIRST_NAME,
                mc.LAST AS MDR_CONTACT_LAST_NAME,
                NULL AS MDR_CONTACT_PHONE,
                mc.TITLE AS MDR_CONTACT_TITLE,
                J.JOB_CODE AS MDR_CONTACT_JOB_CODE,
	            J.DESCRIPTION AS MDR_CONTACT_DESCRIPTION,
	            J.ADDITIONAL_DESCRIPTION AS MDR_CONTACT_ADDITIONAL_DESCRIPTION,
	            J.JOB_GROUP AS MDR_CONTACT_JOB_GROUP,
                HM.TITLE AS MDR_CONTACT_HUBSPOT_TITLE,
                HM.GROUP_ROLE_TITLE AS MDR_CONTACT_HUBSPOT_GROUP_ROLE_TITLE,
                HM.CLINICAL_ROLE_TITLE AS MDR_CONTACT_HUBSPOT_CLINICAL_ROLE_TITLE,
                mdr.DISTRICT_SCHOOLS_CNT AS MDR_CUSTOMER_DISTRICT_SCHOOLS_CNT,
                mc._FIVETRAN_SYNCED AS MDR_CONTACT_LAST_UPDATED_DATE,
                ROW_NUMBER() OVER(PARTITION BY MDR_CONTACT_EMAIL ORDER BY mc._FIVETRAN_SYNCED  DESC) AS mdr_row_NUMBER
FROM            DEV_RIVERSIDE_DATA_LAKE.SFTP.VW_MDR_CONTACT mc
LEFT OUTER JOIN DEV_RIVERSIDE_DATA_LAKE.MDR.VW_BUILDING_DECODED mdr
            ON  CAST(mdr.MDR_PID AS NUMBER) = mc.PID
LEFT OUTER JOIN DEV_RIVERSIDE_DATA_LAKE.SFTP.VW_MDR_JOB_CODE AS J
            ON J.JOB_CODE = MC.JOB_1
LEFT OUTER JOIN DEV_RIVERSIDE_DATA_LAKE.SFTP.VW_MDR_HUBSPOT_MAPPING AS HM 
            ON J.DESCRIPTION = HM.TITLE
WHERE           COALESCE(TRIM(mc.EMAIL), '') <> '') where mdr_row_NUMBER = 1
),

HUBSPOT_CONTACTS AS
(
SELECT          hs.ID AS HUBSPOT_CUSTOMER_ID,
                hs.PROPERTY_NAME AS HUBSPOT_CUSTOMER_NAME,
                hs.PROPERTY_ADDRESS AS HUBSPOT_CUSTOMER_ADDRESS,
                hs.PROPERTY_CITY AS HUBSPOT_CUSTOMER_CITY,
                hs.PROPERTY_CUSTENTITY_RS_CUST_COUNTY AS HUBSPOT_CUSTOMER_COUNTY,
                hs.PROPERTY_STATE AS HUBSPOT_CUSTOMER_STATE,
                hs.PROPERTY_ZIP AS HUBSPOT_CUSTOMER_ZIPCODE,
                hs.PROPERTY_COUNTRY AS HUBSPOT_CUSTOMER_COUNTRY,
                hc.ID AS HUBSPOT_CONTACT_ID,
                hc.PROPERTY_EMAIL AS HUBSPOT_CONTACT_EMAIL,
                TRIM(UPPER(hc.PROPERTY_EMAIL), ' \t') AS HUBSPOT_CONTACT_CLEAN_EMAIL,
                hc.PROPERTY_FIRSTNAME AS HUBSPOT_CONTACT_FIRST_NAME,
                hc.PROPERTY_LASTNAME AS HUBSPOT_CONTACT_LAST_NAME,
                CAST(hc.PROPERTY_PHONE AS VARCHAR) AS HUBSPOT_CONTACT_PHONE,
                -- FKs
                hs.PROPERTY_NS_INTERNAL_ID AS HUBSPOT_NETSUITE_CUSTOMER_ID,
                -- EMAIL SUMMARY
                hc.PROPERTY_HS_EMAIL_DELIVERED AS HUBSPOT_CONTACT_EMAILS_DELIVERED,
                hc.PROPERTY_HS_EMAIL_CLICK AS HUBSPOT_CONTACT_EMAILS_CLICKED,
                hc.PROPERTY_HS_EMAIL_OPEN AS HUBSPOT_CONTACT_EMAILS_OPEN,
                hc.PROPERTY_HS_EMAIL_REPLIED AS HUBSPOT_CONTACT_EMAILS_REPLIED,
                hc.PROPERTY_HS_EMAIL_LAST_SEND_DATE AS HUBSPOT_CONTACT_EMAIL_LAST_SEND_DATE,
                hc.PROPERTY_HS_SALES_EMAIL_LAST_OPENED AS HUBSPOT_CONTACT_EMAIL_LAST_OPEN_DATE,
                CASE hc.PROPERTY_IS_INACTIVE_IN_NS WHEN 'true' THEN TRUE WHEN 'false' THEN FALSE END AS HUBSPOT_CONTACT_IS_INACTIVE,
                GREATEST(   IFNULL(hc.PROPERTY_LASTMODIFIEDDATE, TO_TIMESTAMP(0)), 
                            IFNULL(hs.PROPERTY_HS_LASTMODIFIEDDATE, TO_TIMESTAMP(0)) ) AS HUBSPOT_CONTACT_LAST_UPDATED_DATE,
                hc.PROPERTY_ANNUALREVENUE AS HUBSPOT_CONTACTS_PROPERTY_ANNUALREVENUE,
                hc.PROPERTY_INDUSTRY    AS HUBSPOT_CONTACTS_PROPERTY_INDUSTRY,
                hc.PROPERTY_FAX   AS HUBSPOT_CONTACT_PROPERTY_FAX
FROM            DEV_RIVERSIDE_DATA_LAKE.HUBSPOT.VW_CONTACT hc
LEFT OUTER JOIN DEV_RIVERSIDE_DATA_LAKE.HUBSPOT.VW_COMPANY hs
            ON  CAST(hs.ID AS VARCHAR) = CAST(hc.PROPERTY_ASSOCIATEDCOMPANYID AS VARCHAR)
WHERE           COALESCE(TRIM(hc.PROPERTY_EMAIL), '') <> ''
),

CLINICAL_CONTACTS AS
(
SELECT * FROM(
SELECT          cc.ORGANIZATIONID AS CLINICAL_CUSTOMER_ID,
                cc.NAME AS CLINICAL_CUSTOMER_NAME,
                cc.ADDRESS1 AS CLINICAL_CUSTOMER_ADDRESS,
                cc.CITY AS CLINICAL_CUSTOMER_CITY,
                NULL AS CLINICAL_CUSTOMER_COUNTY,
                cc.STATE AS CLINICAL_CUSTOMER_STATE,
                cc.ZIPCODE AS CLINICAL_CUSTOMER_ZIPCODE,
                cct.COUNTRYNAME AS CLINICAL_CUSTOMER_COUNTRY,
                cc.USERID AS CLINICAL_CONTACT_ID,
                cc.EMAILADDRESS AS CLINICAL_CONTACT_EMAIL,
                TRIM(UPPER(cc.EMAILADDRESS), ' \t') AS CLINICAL_CONTACT_CLEAN_EMAIL,
                cc.FIRSTNAME AS CLINICAL_CONTACT_FIRST_NAME,
                cc.LASTNAME AS CLINICAL_CONTACT_LAST_NAME,
                CAST(cc.PHONE AS VARCHAR) AS CLINICAL_CONTACT_PHONE,
                CASE WHEN cc.ISDELETED = 1 THEN FALSE ELSE TRUE END AS CLINICAL_CUSTOMER_IS_ACTIVE,
                CASE WHEN cc.DELETETYPEID = 1 THEN FALSE ELSE TRUE END AS CLINICAL_CONTACT_IS_ACTIVE,
                cc.USERNAME AS CLINICAL_CONTACT_USERNAME,
                rl.USERROLE_ADMIN AS CLINICAL_CONTACT_ROLE_ADMIN, 
                rl.USERROLE_EXAMINER AS CLINICAL_CONTACT_ROLE_EXAMINER,
                rl.USERROLE_STAFF AS CLINICAL_CONTACT_ROLE_STAFF,
                rl.USERROLE_ACCOUNT_HOLDER AS CLINICAL_CONTACT_ROLE_ACCOUNT_HOLDER,
                rl.USERROLE_SECONDARY_ACCOUNT_HOLDER AS CLINICAL_CONTACT_ROLE_SECONDARY_ACCOUNT_HOLDER,
                rl.USERROLE_ADMIN_LAST_LOGIN_DATE AS CLINICAL_CONTACT_ROLE_ADMIN_LAST_LOGIN_DATE, 
                rl.USERROLE_EXAMINER_LAST_LOGIN_DATE AS CLINICAL_CONTACT_ROLE_EXAMINER_LAST_LOGIN_DATE,
                rl.USERROLE_STAFF_LAST_LOGIN_DATE AS CLINICAL_CONTACT_ROLE_STAFF_LAST_LOGIN_DATE,
                rl.USERROLE_ACCOUNT_HOLDER_LAST_LOGIN_DATE AS CLINICAL_CONTACT_ROLE_ACCOUNT_HOLDER_LAST_LOGIN_DATE,
                rl.USERROLE_SECONDARY_ACCOUNT_HOLDER_LAST_LOGIN_DATE AS CLINICAL_CONTACT_ROLE_SECONDARY_ACCOUNT_HOLDER_LAST_LOGIN_DATE,
                GREATEST( IFNULL(CLINICAL_CONTACT_ROLE_ADMIN_LAST_LOGIN_DATE, TO_TIMESTAMP(0)), 
                          IFNULL(CLINICAL_CONTACT_ROLE_EXAMINER_LAST_LOGIN_DATE, TO_TIMESTAMP(0)), 
                          IFNULL(CLINICAL_CONTACT_ROLE_STAFF_LAST_LOGIN_DATE, TO_TIMESTAMP(0)), 
                          IFNULL(CLINICAL_CONTACT_ROLE_ACCOUNT_HOLDER_LAST_LOGIN_DATE, TO_TIMESTAMP(0)),
                          IFNULL(CLINICAL_CONTACT_ROLE_SECONDARY_ACCOUNT_HOLDER_LAST_LOGIN_DATE, TO_TIMESTAMP(0)) ) AS CLINICAL_CONTACT_LAST_LOGIN_DATE,
                ROW_NUMBER() OVER (PARTITION BY CLINICAL_CONTACT_CLEAN_EMAIL ORDER BY CLINICAL_CONTACT_LAST_LOGIN_DATE DESC) CLINICAL_CONTACT_LAST_LOGIN_RANK,
                GREATEST(   IFNULL(cc.LAST_UPDATED_DATE, TO_TIMESTAMP(0)), 
                            IFNULL(cct._FIVETRAN_SYNCED, TO_TIMESTAMP(0)) ) AS CLINICAL_CONTACT_LAST_UPDATED_DATE,
                rl.LAST_RIVERSIDE_SCORE_LOGIN_DATE AS CLINICAL_CONTACT_LAST_RIVERSIDE_SCORE_LOGIN_DATE
FROM            (
                     SELECT          o.ORGANIZATIONID, o.NAME, o.COUNTRYID, o.ADDRESS1, o.CITY, o.STATE, o.ZIPCODE,
                                     u.USERID, u.EMAILADDRESS, o.ISDELETED, u.DELETETYPEID, u.FIRSTNAME, u.LASTNAME, u.PHONE, u.USERNAME -- ADD CONTACTID WHEN INCLUDED IN USERS TABLE!! ESTIMATED 2021-04-16
                                    ,GREATEST(   IFNULL(u.UPDATE_DATE, TO_TIMESTAMP(0)), 
                                                 IFNULL(o.UPDATEDDATE, TO_TIMESTAMP(0)) ) AS LAST_UPDATED_DATE
                     FROM            DEV_RIVERSIDE_DATA_LAKE.NAVISITE_DBO.VW_USERS u
                     INNER JOIN      DEV_RIVERSIDE_DATA_LAKE.NAVISITE_DBO.VW_ORGANIZATIONS o
                                 ON  o.ORGANIZATIONID = u.ORGANIZATIONID
                                     -- exclude parents and studnets
                     WHERE           UPPER(u.USERTYPEID) NOT IN (3, 5)
                ) cc
LEFT OUTER JOIN DEV_RIVERSIDE_DATA_LAKE.NAVISITE_DBO.VW_COUNTRY cct
            ON  cct.COUNTRYID = cc.COUNTRYID
LEFT JOIN     ( -- ROLES BY USER WITH RESPECTIVE LAST LOGIN DATE
                    SELECT
                    USER_ID,
                    MAX(CASE WHEN   ROLE_NAME = 'Admin'                    THEN 1   ELSE 0      END) AS USERROLE_ADMIN, 
                    MAX(CASE WHEN   ROLE_NAME = 'Examiner'                 THEN 1   ELSE 0      END) AS USERROLE_EXAMINER,
                    MAX(CASE WHEN   ROLE_NAME = 'Staff'                    THEN 1   ELSE 0      END) AS USERROLE_STAFF,
                    MAX(CASE WHEN   ROLE_NAME = 'Account Holder'           THEN 1   ELSE 0      END) AS USERROLE_ACCOUNT_HOLDER,
                    MAX(CASE WHEN   ROLE_NAME = 'Secondary Account Holder' THEN 1   ELSE 0      END) AS USERROLE_SECONDARY_ACCOUNT_HOLDER,
                    MAX(CASE WHEN   ROLE_NAME = 'Admin'                    THEN LAST_LOGIN_DATE ELSE NULL END) AS USERROLE_ADMIN_LAST_LOGIN_DATE, 
                    MAX(CASE WHEN   ROLE_NAME = 'Examiner'                 THEN LAST_LOGIN_DATE ELSE NULL END) AS USERROLE_EXAMINER_LAST_LOGIN_DATE,
                    MAX(CASE WHEN   ROLE_NAME = 'Staff'                    THEN LAST_LOGIN_DATE ELSE NULL END) AS USERROLE_STAFF_LAST_LOGIN_DATE,
                    MAX(CASE WHEN   ROLE_NAME = 'Account Holder'           THEN LAST_LOGIN_DATE ELSE NULL END) AS USERROLE_ACCOUNT_HOLDER_LAST_LOGIN_DATE,
                    MAX(CASE WHEN   ROLE_NAME = 'Secondary Account Holder' THEN LAST_LOGIN_DATE ELSE NULL END) AS USERROLE_SECONDARY_ACCOUNT_HOLDER_LAST_LOGIN_DATE,       
                    MAX(LAST_LOGIN_DATE) AS LAST_RIVERSIDE_SCORE_LOGIN_DATE       
                    FROM DEV_RIVERSIDE_TRUSTED_DATASETS.CLINICAL_PRODUCTS.VW_ORGANIZATION_USER
                    GROUP BY  USER_ID
             ) rl
 ON cc.USERID = rl.USER_ID
WHERE           COALESCE(TRIM(cc.EMAILADDRESS), '') <> ''
)
WHERE CLINICAL_CONTACT_LAST_LOGIN_RANK = 1
),

UNIQUE_CONTACT_EMAILS AS
(
SELECT          DISTINCT
                CONTACT_CLEAN_EMAIL
FROM            (
                SELECT  NETSUITE_CONTACT_CLEAN_EMAIL AS CONTACT_CLEAN_EMAIL
                FROM    NETSUITE_CONTACTS
                UNION ALL
                SELECT  MDR_CONTACT_CLEAN_EMAIL AS CONTACT_CLEAN_EMAIL
                FROM    MDR_CONTACTS
                UNION ALL
                SELECT  HUBSPOT_CONTACT_CLEAN_EMAIL AS CONTACT_CLEAN_EMAIL
                FROM    HUBSPOT_CONTACTS
                UNION ALL
                SELECT  CLINICAL_CONTACT_CLEAN_EMAIL AS CONTACT_CLEAN_EMAIL
                FROM    CLINICAL_CONTACTS
                UNION ALL
                SELECT  DATAMANAGER_CONTACT_CLEAN_EMAIL AS CONTACT_CLEAN_EMAIL
                FROM    DATAMANAGER_CONTACTS
                UNION ALL
                SELECT  FRESHDESK_CONTACT_CLEAN_EMAIL AS CONTACT_CLEAN_EMAIL
                FROM    FRESHDESK_CONTACTS
                UNION ALL
                SELECT  BDI_CONTACT_CLEAN_EMAIL AS CONTACT_CLEAN_EMAIL
                FROM    BDI_CONTACTS
                UNION ALL
                SELECT  BIG_COMMERCE_CONTACT_CLEAN_EMAIL AS CONTACT_CLEAN_EMAIL
                FROM    BIG_COMMERCE_CONTACTS
                UNION ALL
                SELECT  GOTOWEBINAR_CONTACT_CLEAN_EMAIL AS CONTACT_CLEAN_EMAIL
                FROM    GOTOWEBINAR_CONTACTS
                )
),

CONTACT_MASTER_LIST AS
(
SELECT          COALESCE(mdr.MDR_CUSTOMER_NAME, ns.NETSUITE_CUSTOMER_NAME, cl.CLINICAL_CUSTOMER_NAME, dm.DATAMANAGER_CUSTOMER_NAME, hs.HUBSPOT_CUSTOMER_NAME, bdi.BDI_CUSTOMER_NAME, fd.FRESHDESK_CUSTOMER_NAME, bc.BIG_COMMERCE_CUSTOMER_NAME) AS CUSTOMER_NAME,
                COALESCE(mdr.MDR_CUSTOMER_ADDRESS, ns.NETSUITE_CUSTOMER_ADDRESS, cl.CLINICAL_CUSTOMER_ADDRESS, dm.DATAMANAGER_CUSTOMER_ADDRESS, hs.HUBSPOT_CUSTOMER_ADDRESS, bdi.BDI_CUSTOMER_ADDRESS, fd.FRESHDESK_CUSTOMER_ADDRESS, bc.BIG_COMMERCE_CUSTOMER_ADDRESS) AS CUSTOMER_ADDRESS,
                COALESCE(mdr.MDR_CUSTOMER_CITY, ns.NETSUITE_CUSTOMER_CITY, cl.CLINICAL_CUSTOMER_CITY, dm.DATAMANAGER_CUSTOMER_CITY, hs.HUBSPOT_CUSTOMER_CITY, bdi.BDI_CUSTOMER_CITY, fd.FRESHDESK_CUSTOMER_CITY, bc.BIG_COMMERCE_CUSTOMER_CITY) AS CUSTOMER_CITY,
                COALESCE(mdr.MDR_CUSTOMER_COUNTY, ns.NETSUITE_CUSTOMER_COUNTY, cl.CLINICAL_CUSTOMER_COUNTY, dm.DATAMANAGER_CUSTOMER_COUNTY, hs.HUBSPOT_CUSTOMER_COUNTY, bdi.BDI_CUSTOMER_COUNTY, fd.FRESHDESK_CUSTOMER_COUNTY, bc.BIG_COMMERCE_CUSTOMER_COUNTY) AS CUSTOMER_COUNTY,
                COALESCE(mdr.MDR_CUSTOMER_STATE, ns.NETSUITE_CUSTOMER_STATE, cl.CLINICAL_CUSTOMER_STATE, dm.DATAMANAGER_CUSTOMER_STATE, hs.HUBSPOT_CUSTOMER_STATE, bdi.BDI_CUSTOMER_STATE, fd.FRESHDESK_CUSTOMER_STATE, bc.BIG_COMMERCE_CUSTOMER_STATE) AS CUSTOMER_STATE,
                COALESCE(mdr.MDR_CUSTOMER_ZIPCODE, ns.NETSUITE_CUSTOMER_ZIPCODE, cl.CLINICAL_CUSTOMER_ZIPCODE, dm.DATAMANAGER_CUSTOMER_ZIPCODE, hs.HUBSPOT_CUSTOMER_ZIPCODE, bdi.BDI_CUSTOMER_ZIPCODE, fd.FRESHDESK_CUSTOMER_ZIPCODE, bc.BIG_COMMERCE_CUSTOMER_ZIPCODE) AS CUSTOMER_ZIPCODE,
                COALESCE(mdr.MDR_CUSTOMER_COUNTRY, ns.NETSUITE_CUSTOMER_COUNTRY, cl.CLINICAL_CUSTOMER_COUNTRY, dm.DATAMANAGER_CUSTOMER_COUNTRY, hs.HUBSPOT_CUSTOMER_COUNTRY, bdi.BDI_CUSTOMER_COUNTRY, fd.FRESHDESK_CUSTOMER_COUNTRY, bc.BIG_COMMERCE_CUSTOMER_COUNTRY) AS CUSTOMER_COUNTRY,
                COALESCE(mdr.MDR_CONTACT_FIRST_NAME, ns.NETSUITE_CONTACT_FIRST_NAME, cl.CLINICAL_CONTACT_FIRST_NAME, dm.DATAMANAGER_CONTACT_FIRST_NAME, hs.HUBSPOT_CONTACT_FIRST_NAME, bdi.BDI_CONTACT_FIRST_NAME, fd.FRESHDESK_CONTACT_FIRST_NAME, bc.BIG_COMMERCE_CONTACT_FIRST_NAME, gtw.GOTOWEBINAR_CONTACT_FIRST_NAME) AS CONTACT_FIRST_NAME,
                COALESCE(mdr.MDR_CONTACT_LAST_NAME, ns.NETSUITE_CONTACT_LAST_NAME, cl.CLINICAL_CONTACT_LAST_NAME, dm.DATAMANAGER_CONTACT_LAST_NAME, hs.HUBSPOT_CONTACT_LAST_NAME, bdi.BDI_CONTACT_LAST_NAME, fd.FRESHDESK_CONTACT_LAST_NAME, bc.BIG_COMMERCE_CONTACT_LAST_NAME, gtw.GOTOWEBINAR_CONTACT_LAST_NAME) AS CONTACT_LAST_NAME,
                COALESCE(mdr.MDR_CONTACT_CLEAN_EMAIL, ns.NETSUITE_CONTACT_CLEAN_EMAIL, cl.CLINICAL_CONTACT_CLEAN_EMAIL, dm.DATAMANAGER_CONTACT_CLEAN_EMAIL, hs.HUBSPOT_CONTACT_CLEAN_EMAIL, bdi.BDI_CONTACT_CLEAN_EMAIL, fd.FRESHDESK_CONTACT_CLEAN_EMAIL, bc.BIG_COMMERCE_CONTACT_CLEAN_EMAIL, gtw.GOTOWEBINAR_CONTACT_CLEAN_EMAIL) AS CONTACT_EMAIL,
                COALESCE(mdr.MDR_CONTACT_PHONE, ns.NETSUITE_CONTACT_PHONE, cl.CLINICAL_CONTACT_PHONE, dm.DATAMANAGER_CONTACT_PHONE, hs.HUBSPOT_CONTACT_PHONE, bdi.BDI_CONTACT_PHONE, fd.FRESHDESK_CONTACT_PHONE, bc.BIG_COMMERCE_CONTACT_PHONE) AS CONTACT_PHONE,
                
                -- NETSUITE
                ns.NETSUITE_CUSTOMER_ID,
                ns.NETSUITE_CUSTOMER_NAME,
                ns.NETSUITE_CUSTOMER_ADDRESS,
                ns.NETSUITE_CUSTOMER_CITY,
                ns.NETSUITE_CUSTOMER_COUNTY,
                ns.NETSUITE_CUSTOMER_STATE,
                ns.NETSUITE_CUSTOMER_ZIPCODE,
                ns.NETSUITE_CUSTOMER_COUNTRY,
                ns.NETSUITE_CUSTOMER_STATUS,
                ns.NETSUITE_CUSTOMER_IS_PROSPECT,
                ns.NETSUITE_CUSTOMER_IS_ACTIVE,
                ns.NETSUITE_MDR_CUSTOMER_ID,
                ns.NETSUITE_CONTACT_FAX,
                ns.NETSUITE_CONTACT_TITLE,
                ns.NETSUITE_CONTACT_SUBSIDIARY,
                ns.NETSUITE_BDI_CLINICAL_ISA_CUSTOMER_ID,
                ns.NETSUITE_CONTACT_SEND_TO_WEBSITE,
                ns.NETSUITE_CONTACT_ID,
                ns.NETSUITE_CONTACT_FIRST_NAME,
                ns.NETSUITE_CONTACT_LAST_NAME,
                ns.NETSUITE_CONTACT_PHONE,
                ns.NETSUITE_CONTACT_IS_ACTIVE,
                ns.NETSUITE_CONTACT_LAST_UPDATED_DATE,
                ns.NETSUITE_CUSTOMER_HUBSPOT_COMPANY_ID,
                
                -- MDR
                mdr.MDR_CUSTOMER_ID,
                mdr.MDR_CUSTOMER_NAME,
                mdr.MDR_CUSTOMER_ADDRESS,
                mdr.MDR_CUSTOMER_CITY,
                mdr.MDR_CUSTOMER_COUNTY,
                mdr.MDR_CUSTOMER_STATE,
                mdr.MDR_CUSTOMER_ZIPCODE,
                mdr.MDR_CUSTOMER_COUNTRY,
                mdr.MDR_CONTACT_ID,
                mdr.MDR_CONTACT_FIRST_NAME,
                mdr.MDR_CONTACT_LAST_NAME,
                mdr.MDR_CONTACT_PHONE,
                mdr.MDR_CONTACT_TITLE,
                mdr.MDR_CONTACT_JOB_CODE,
	            mdr.MDR_CONTACT_DESCRIPTION,
	            mdr.MDR_CONTACT_ADDITIONAL_DESCRIPTION,
	            mdr.MDR_CONTACT_JOB_GROUP,
                mdr.MDR_CONTACT_HUBSPOT_TITLE,
                mdr.MDR_CONTACT_HUBSPOT_GROUP_ROLE_TITLE,
                mdr.MDR_CONTACT_HUBSPOT_CLINICAL_ROLE_TITLE,
                mdr.MDR_CUSTOMER_DISTRICT_SCHOOLS_CNT,
                mdr.MDR_CONTACT_LAST_UPDATED_DATE,
                
                -- CLINICAL
                cl.CLINICAL_CUSTOMER_ID,
                cl.CLINICAL_CUSTOMER_NAME,
                cl.CLINICAL_CUSTOMER_ADDRESS,
                cl.CLINICAL_CUSTOMER_CITY,
                cl.CLINICAL_CUSTOMER_COUNTY,
                cl.CLINICAL_CUSTOMER_STATE,
                cl.CLINICAL_CUSTOMER_ZIPCODE,
                cl.CLINICAL_CUSTOMER_COUNTRY,
                cl.CLINICAL_CUSTOMER_IS_ACTIVE,
                cl.CLINICAL_CONTACT_ID,
                cl.CLINICAL_CONTACT_FIRST_NAME,
                cl.CLINICAL_CONTACT_LAST_NAME,
                cl.CLINICAL_CONTACT_PHONE,
                cl.CLINICAL_CONTACT_IS_ACTIVE,
                cl.CLINICAL_CONTACT_USERNAME,
                cl.CLINICAL_CONTACT_ROLE_ADMIN,
                cl.CLINICAL_CONTACT_ROLE_EXAMINER,
                cl.CLINICAL_CONTACT_ROLE_STAFF,
                cl.CLINICAL_CONTACT_ROLE_ACCOUNT_HOLDER,
                cl.CLINICAL_CONTACT_ROLE_SECONDARY_ACCOUNT_HOLDER,
                cl.CLINICAL_CONTACT_ROLE_ADMIN_LAST_LOGIN_DATE,
                cl.CLINICAL_CONTACT_ROLE_EXAMINER_LAST_LOGIN_DATE,
                cl.CLINICAL_CONTACT_ROLE_STAFF_LAST_LOGIN_DATE,
                cl.CLINICAL_CONTACT_ROLE_ACCOUNT_HOLDER_LAST_LOGIN_DATE,
                cl.CLINICAL_CONTACT_ROLE_SECONDARY_ACCOUNT_HOLDER_LAST_LOGIN_DATE,
                cl.CLINICAL_CONTACT_LAST_UPDATED_DATE,
                cl.CLINICAL_CONTACT_LAST_RIVERSIDE_SCORE_LOGIN_DATE,
                
                -- HUBSPOT
                hs.HUBSPOT_CUSTOMER_ID,
                hs.HUBSPOT_CUSTOMER_NAME,
                hs.HUBSPOT_CUSTOMER_ADDRESS,
                hs.HUBSPOT_CUSTOMER_CITY,
                hs.HUBSPOT_CUSTOMER_COUNTY,
                hs.HUBSPOT_CUSTOMER_STATE,
                hs.HUBSPOT_CUSTOMER_ZIPCODE,
                hs.HUBSPOT_CUSTOMER_COUNTRY,
                hs.HUBSPOT_NETSUITE_CUSTOMER_ID,
                hs.HUBSPOT_CONTACT_ID,
                hs.HUBSPOT_CONTACT_FIRST_NAME,
                hs.HUBSPOT_CONTACT_LAST_NAME,
                hs.HUBSPOT_CONTACT_PHONE,
                hs.HUBSPOT_CONTACT_EMAILS_DELIVERED,
                hs.HUBSPOT_CONTACT_EMAILS_CLICKED,
                hs.HUBSPOT_CONTACT_EMAILS_OPEN,
                hs.HUBSPOT_CONTACT_EMAILS_REPLIED,
                hs.HUBSPOT_CONTACT_EMAIL_LAST_SEND_DATE,
                hs.HUBSPOT_CONTACT_EMAIL_LAST_OPEN_DATE,
                hs.HUBSPOT_CONTACT_IS_INACTIVE,
                hs.HUBSPOT_CONTACT_LAST_UPDATED_DATE,
                hs.HUBSPOT_CONTACTS_PROPERTY_ANNUALREVENUE,
                hs.HUBSPOT_CONTACTS_PROPERTY_INDUSTRY,
                hs.HUBSPOT_CONTACT_PROPERTY_FAX,
                
                -- DATAMANAGER
                dm.DATAMANAGER_CUSTOMER_ID,
                dm.DATAMANAGER_CUSTOMER_NAME,
                dm.DATAMANAGER_CUSTOMER_ADDRESS,
                dm.DATAMANAGER_CUSTOMER_CITY,
                dm.DATAMANAGER_CUSTOMER_COUNTY,
                dm.DATAMANAGER_CUSTOMER_STATE,
                dm.DATAMANAGER_CUSTOMER_ZIPCODE,
                dm.DATAMANAGER_CUSTOMER_COUNTRY,
                dm.DATAMANAGER_CUSTOMER_IS_ACTIVE,
                dm.DATAMANAGER_CONTACT_ID,
                dm.DATAMANAGER_CONTACT_FIRST_NAME,
                dm.DATAMANAGER_CONTACT_LAST_NAME,
                dm.DATAMANAGER_CONTACT_PHONE,
                dm.DATAMANAGER_CONTACT_LAST_LOGIN_DATE,
                dm.DATAMANAGER_CONTACT_FIRST_LOGIN_DATE,
                dm.DATAMANAGER_CONTACT_TOTAL_LOGIN_CNT,
                dm.DATAMANAGER_CONTACT_ROLE_AC_HOLDER,
                dm.DATAMANAGER_CONTACT_ROLE_AOT,
                dm.DATAMANAGER_CONTACT_ROLE_ADMINISTRATOR,
                dm.DATAMANAGER_CONTACT_ROLE_DIGITAL_RESOURCE_ACCESS,
                dm.DATAMANAGER_CONTACT_ROLE_DIGITAL_RESOURCE_AND_REPORTING_ACCESS,
                dm.DATAMANAGER_CONTACT_ROLE_HMH_ADMIN,
                dm.DATAMANAGER_CONTACT_ROLE_HMH_ADMIN_MANAGER,
                dm.DATAMANAGER_CONTACT_ROLE_HMH_SUPERVISOR,
                dm.DATAMANAGER_CONTACT_ROLE_PROCTOR,
                dm.DATAMANAGER_CONTACT_ROLE_RPC_ADMIN,
                dm.DATAMANAGER_CONTACT_ROLE_SCHOOL_COORDINATOR,
                dm.DATAMANAGER_CONTACT_ROLE_SUPER_ADMIN,
                dm.DATAMANAGER_CONTACT_ROLE_TEACHER,
                dm.DATAMANAGER_CONTACT_LAST_UPDATED_DATE,
                
                -- BDI
                bdi.BDI_CUSTOMER_ID,
                bdi.BDI_CUSTOMER_NAME,
                bdi.BDI_CUSTOMER_ADDRESS,
                bdi.BDI_CUSTOMER_CITY,
                bdi.BDI_CUSTOMER_COUNTY,
                bdi.BDI_CUSTOMER_STATE,
                bdi.BDI_CUSTOMER_ZIPCODE,
                bdi.BDI_CUSTOMER_COUNTRY,
                bdi.BDI_CUSTOMER_IS_ACTIVE,
                bdi.BDI_CONTACT_ID,
                bdi.BDI_CONTACT_FIRST_NAME,
                bdi.BDI_CONTACT_LAST_NAME,
                bdi.BDI_CONTACT_PHONE,
                bdi.BDI_CONTACT_LAST_UPDATED_DATE,
                BDI.BDI_CUSTOMER_FAX,
                
               
                -- FRESHDESK
                fd.FRESHDESK_CUSTOMER_ID,
                fd.FRESHDESK_CUSTOMER_NAME,
                fd.FRESHDESK_CUSTOMER_ADDRESS,
                fd.FRESHDESK_CUSTOMER_CITY,
                fd.FRESHDESK_CUSTOMER_COUNTY,
                fd.FRESHDESK_CUSTOMER_STATE,
                fd.FRESHDESK_CUSTOMER_ZIPCODE,
                fd.FRESHDESK_CUSTOMER_COUNTRY,
                fd.FRESHDESK_CONTACT_ID,
                fd.FRESHDESK_CONTACT_FIRST_NAME,
                fd.FRESHDESK_CONTACT_LAST_NAME,
                fd.FRESHDESK_CONTACT_PHONE,
                fd.FRESHDESK_CONTACT_TICKETS_CLOSED_COUNT,
                fd.FRESHDESK_CONTACT_TICKETS_RESOLVED_COUNT,
                fd.FRESHDESK_CONTACT_TICKETS_CUSTOMER_RESPONDED_COUNT,
                fd.FRESHDESK_CONTACT_TICKETS_PENDING_COUNT,
                fd.FRESHDESK_CONTACT_TICKETS_PENDING_INTERNAL_COUNT,
                fd.FRESHDESK_CONTACT_TICKETS_OPEN_COUNT,
                fd.FRESHDESK_CONTACT_LAST_UPDATED_DATE,
                
                -- BIG COMMERCE
                bc.BIG_COMMERCE_CUSTOMER_ID,
                bc.BIG_COMMERCE_CUSTOMER_NAME,
                bc.BIG_COMMERCE_CUSTOMER_ADDRESS,
                bc.BIG_COMMERCE_CUSTOMER_CITY,
                bc.BIG_COMMERCE_CUSTOMER_COUNTY,
                bc.BIG_COMMERCE_CUSTOMER_STATE,
                bc.BIG_COMMERCE_CUSTOMER_ZIPCODE,
                bc.BIG_COMMERCE_CUSTOMER_COUNTRY,
                bc.BIG_COMMERCE_CONTACT_ID,
                bc.BIG_COMMERCE_CONTACT_FIRST_NAME,
                bc.BIG_COMMERCE_CONTACT_LAST_NAME,
                bc.BIG_COMMERCE_CONTACT_PHONE,
                bc.BIG_COMMERCE_CONTACT_LAST_UPDATED_DATE,
                
                -- GOTOWEBINAR
                gtw.GOTOWEBINAR_CONTACT_FIRST_NAME,
                gtw.GOTOWEBINAR_CONTACT_LAST_NAME,
                gtw.GOTOWEBINAR_CONTACT_LAST_WEBINAR_ATTENDED_NAME,
                gtw.GOTOWEBINAR_CONTACT_LAST_WEBINAR_ATTENDED_DATETIME,
                gtw.GOTOWEBINAR_CONTACT_LAST_UPDATED_DATE,
                
                -- LAST UPDATED DATE
                GREATEST(   IFNULL(ns.NETSUITE_CONTACT_LAST_UPDATED_DATE, TO_TIMESTAMP(0)),
                            IFNULL(mdr.MDR_CONTACT_LAST_UPDATED_DATE, TO_TIMESTAMP(0)),
                            IFNULL(cl.CLINICAL_CONTACT_LAST_UPDATED_DATE, TO_TIMESTAMP(0)),
                            IFNULL(hs.HUBSPOT_CONTACT_LAST_UPDATED_DATE, TO_TIMESTAMP(0)),
                            IFNULL(dm.DATAMANAGER_CONTACT_LAST_UPDATED_DATE, TO_TIMESTAMP(0)),
                            IFNULL(bdi.BDI_CONTACT_LAST_UPDATED_DATE, TO_TIMESTAMP(0)),
                            IFNULL(fd.FRESHDESK_CONTACT_LAST_UPDATED_DATE, TO_TIMESTAMP(0)),
                            IFNULL(bc.BIG_COMMERCE_CONTACT_LAST_UPDATED_DATE, TO_TIMESTAMP(0)),
                            IFNULL(gtw.GOTOWEBINAR_CONTACT_LAST_UPDATED_DATE, TO_TIMESTAMP(0)) ) AS CONTACT_LAST_UPDATED_DATE,
                CASE WHEN ns.NETSUITE_CONTACT_LAST_UPDATED_DATE > hs.HUBSPOT_CONTACT_LAST_UPDATED_DATE THEN ns.NETSUITE_CUSTOMER_IS_ACTIVE
                     ELSE hs.HUBSPOT_CONTACT_IS_INACTIVE END AS CONTACT_IS_ACTIVE
FROM            UNIQUE_CONTACT_EMAILS c

LEFT OUTER JOIN NETSUITE_CONTACTS ns
            ON  ns.NETSUITE_CONTACT_CLEAN_EMAIL = c.CONTACT_CLEAN_EMAIL

LEFT OUTER JOIN MDR_CONTACTS mdr
            ON  mdr.MDR_CONTACT_CLEAN_EMAIL = c.CONTACT_CLEAN_EMAIL

LEFT OUTER JOIN CLINICAL_CONTACTS cl
            ON  cl.CLINICAL_CONTACT_CLEAN_EMAIL = c.CONTACT_CLEAN_EMAIL

LEFT OUTER JOIN HUBSPOT_CONTACTS hs
            ON  hs.HUBSPOT_CONTACT_CLEAN_EMAIL = c.CONTACT_CLEAN_EMAIL

LEFT OUTER JOIN DATAMANAGER_CONTACTS dm
            ON  dm.DATAMANAGER_CONTACT_CLEAN_EMAIL = c.CONTACT_CLEAN_EMAIL

LEFT OUTER JOIN BDI_CONTACTS bdi
            ON  bdi.BDI_CONTACT_CLEAN_EMAIL = c.CONTACT_CLEAN_EMAIL

LEFT OUTER JOIN FRESHDESK_CONTACTS fd
            ON  fd.FRESHDESK_CONTACT_CLEAN_EMAIL = c.CONTACT_CLEAN_EMAIL

LEFT OUTER JOIN BIG_COMMERCE_CONTACTS bc
            ON  bc.BIG_COMMERCE_CONTACT_CLEAN_EMAIL = c.CONTACT_CLEAN_EMAIL

LEFT OUTER JOIN GOTOWEBINAR_CONTACTS gtw
            ON  gtw.GOTOWEBINAR_CONTACT_CLEAN_EMAIL = c.CONTACT_CLEAN_EMAIL
),

CONTACT_MASTER_LIST_WITH_EMAIL_VALIDATION AS
(
SELECT          cml.CUSTOMER_NAME,
                cml.CUSTOMER_ADDRESS,
                cml.CUSTOMER_CITY,
                cml.CUSTOMER_COUNTY,
                cml.CUSTOMER_STATE,
                cml.CUSTOMER_ZIPCODE,
                cml.CUSTOMER_COUNTRY,
                cml.CONTACT_FIRST_NAME,
                cml.CONTACT_LAST_NAME,
                cml.CONTACT_PHONE,
                TRIM(UPPER(cml.CONTACT_EMAIL)) AS CONTACT_EMAIL,
                cml.CONTACT_LAST_UPDATED_DATE,
                cml.CONTACT_IS_ACTIVE,
                
                cml.NETSUITE_CUSTOMER_ID,
                cml.NETSUITE_CUSTOMER_NAME,
                cml.NETSUITE_CUSTOMER_ADDRESS,
                cml.NETSUITE_CUSTOMER_CITY,
                cml.NETSUITE_CUSTOMER_COUNTY,
                cml.NETSUITE_CUSTOMER_STATE,
                cml.NETSUITE_CUSTOMER_ZIPCODE,
                cml.NETSUITE_CUSTOMER_COUNTRY,
                cml.NETSUITE_CUSTOMER_STATUS,
                cml.NETSUITE_CUSTOMER_IS_PROSPECT,
                cml.NETSUITE_CUSTOMER_IS_ACTIVE,
                cml.NETSUITE_MDR_CUSTOMER_ID,
                cml.NETSUITE_CONTACT_FAX,
                cml.NETSUITE_CONTACT_TITLE,
                cml.NETSUITE_CONTACT_SUBSIDIARY,
                cml.NETSUITE_BDI_CLINICAL_ISA_CUSTOMER_ID,
                cml.NETSUITE_CONTACT_SEND_TO_WEBSITE,
                cml.NETSUITE_CONTACT_ID,
                cml.NETSUITE_CONTACT_FIRST_NAME,
                cml.NETSUITE_CONTACT_LAST_NAME,
                cml.NETSUITE_CONTACT_PHONE,
                cml.NETSUITE_CONTACT_IS_ACTIVE,
                cml.NETSUITE_CONTACT_LAST_UPDATED_DATE,
                cml.NETSUITE_CUSTOMER_HUBSPOT_COMPANY_ID,
  
                cml.MDR_CUSTOMER_ID,
                cml.MDR_CUSTOMER_NAME,
                cml.MDR_CUSTOMER_ADDRESS,
                cml.MDR_CUSTOMER_CITY,
                cml.MDR_CUSTOMER_COUNTY,
                cml.MDR_CUSTOMER_STATE,
                cml.MDR_CUSTOMER_ZIPCODE,
                cml.MDR_CUSTOMER_COUNTRY,
                cml.MDR_CONTACT_ID,
                cml.MDR_CONTACT_FIRST_NAME,
                cml.MDR_CONTACT_LAST_NAME,
                cml.MDR_CONTACT_PHONE,
                cml.MDR_CONTACT_TITLE,
                cml.MDR_CONTACT_JOB_CODE,
	            cml.MDR_CONTACT_DESCRIPTION,
	            cml.MDR_CONTACT_ADDITIONAL_DESCRIPTION,
	            cml.MDR_CONTACT_JOB_GROUP,
                cml.MDR_CONTACT_HUBSPOT_TITLE,
                cml.MDR_CONTACT_HUBSPOT_GROUP_ROLE_TITLE,
                cml.MDR_CONTACT_HUBSPOT_CLINICAL_ROLE_TITLE,
                cml.MDR_CUSTOMER_DISTRICT_SCHOOLS_CNT,
                cml.MDR_CONTACT_LAST_UPDATED_DATE,
                
                cml.CLINICAL_CUSTOMER_ID,
                cml.CLINICAL_CUSTOMER_NAME,
                cml.CLINICAL_CUSTOMER_ADDRESS,
                cml.CLINICAL_CUSTOMER_CITY,
                cml.CLINICAL_CUSTOMER_COUNTY,
                cml.CLINICAL_CUSTOMER_STATE,
                cml.CLINICAL_CUSTOMER_ZIPCODE,
                cml.CLINICAL_CUSTOMER_COUNTRY,
                cml.CLINICAL_CUSTOMER_IS_ACTIVE,
                cml.CLINICAL_CONTACT_ID,
                cml.CLINICAL_CONTACT_FIRST_NAME,
                cml.CLINICAL_CONTACT_LAST_NAME,
                cml.CLINICAL_CONTACT_PHONE,
                cml.CLINICAL_CONTACT_IS_ACTIVE,
                cml.CLINICAL_CONTACT_USERNAME,
                cml.CLINICAL_CONTACT_ROLE_ADMIN,
                cml.CLINICAL_CONTACT_ROLE_EXAMINER,
                cml.CLINICAL_CONTACT_ROLE_STAFF,
                cml.CLINICAL_CONTACT_ROLE_ACCOUNT_HOLDER,
                cml.CLINICAL_CONTACT_ROLE_SECONDARY_ACCOUNT_HOLDER,
                cml.CLINICAL_CONTACT_ROLE_ADMIN_LAST_LOGIN_DATE,
                cml.CLINICAL_CONTACT_ROLE_EXAMINER_LAST_LOGIN_DATE,
                cml.CLINICAL_CONTACT_ROLE_STAFF_LAST_LOGIN_DATE,
                cml.CLINICAL_CONTACT_ROLE_ACCOUNT_HOLDER_LAST_LOGIN_DATE,
                cml.CLINICAL_CONTACT_ROLE_SECONDARY_ACCOUNT_HOLDER_LAST_LOGIN_DATE,
                cml.CLINICAL_CONTACT_LAST_UPDATED_DATE,
                cml.CLINICAL_CONTACT_LAST_RIVERSIDE_SCORE_LOGIN_DATE,
  
                cml.HUBSPOT_CUSTOMER_ID,
                cml.HUBSPOT_CUSTOMER_NAME,
                cml.HUBSPOT_CUSTOMER_ADDRESS,
                cml.HUBSPOT_CUSTOMER_CITY,
                cml.HUBSPOT_CUSTOMER_COUNTY,
                cml.HUBSPOT_CUSTOMER_STATE,
                cml.HUBSPOT_CUSTOMER_ZIPCODE,
                cml.HUBSPOT_CUSTOMER_COUNTRY,
                cml.HUBSPOT_NETSUITE_CUSTOMER_ID,
                cml.HUBSPOT_CONTACT_ID,
                cml.HUBSPOT_CONTACT_FIRST_NAME,
                cml.HUBSPOT_CONTACT_LAST_NAME,
                cml.HUBSPOT_CONTACT_PHONE,
                cml.HUBSPOT_CONTACT_EMAILS_DELIVERED,
                cml.HUBSPOT_CONTACT_EMAILS_CLICKED,
                cml.HUBSPOT_CONTACT_EMAILS_OPEN,
                cml.HUBSPOT_CONTACT_EMAILS_REPLIED,
                cml.HUBSPOT_CONTACT_EMAIL_LAST_SEND_DATE,
                cml.HUBSPOT_CONTACT_EMAIL_LAST_OPEN_DATE,
                cml.HUBSPOT_CONTACT_IS_INACTIVE,
                cml.HUBSPOT_CONTACT_LAST_UPDATED_DATE,
                cml.HUBSPOT_CONTACTS_PROPERTY_ANNUALREVENUE,
                cml.HUBSPOT_CONTACTS_PROPERTY_INDUSTRY,
                cml.HUBSPOT_CONTACT_PROPERTY_FAX,
                
                cml.DATAMANAGER_CUSTOMER_ID,
                cml.DATAMANAGER_CUSTOMER_NAME,
                cml.DATAMANAGER_CUSTOMER_ADDRESS,
                cml.DATAMANAGER_CUSTOMER_CITY,
                cml.DATAMANAGER_CUSTOMER_COUNTY,
                cml.DATAMANAGER_CUSTOMER_STATE,
                cml.DATAMANAGER_CUSTOMER_ZIPCODE,
                cml.DATAMANAGER_CUSTOMER_COUNTRY,
                cml.DATAMANAGER_CUSTOMER_IS_ACTIVE,
                cml.DATAMANAGER_CONTACT_ID,
                cml.DATAMANAGER_CONTACT_FIRST_NAME,
                cml.DATAMANAGER_CONTACT_LAST_NAME,
                cml.DATAMANAGER_CONTACT_PHONE,
                cml.DATAMANAGER_CONTACT_LAST_LOGIN_DATE,
                cml.DATAMANAGER_CONTACT_FIRST_LOGIN_DATE,
                cml.DATAMANAGER_CONTACT_TOTAL_LOGIN_CNT,
                cml.DATAMANAGER_CONTACT_ROLE_AC_HOLDER,
                cml.DATAMANAGER_CONTACT_ROLE_AOT,
                cml.DATAMANAGER_CONTACT_ROLE_ADMINISTRATOR,
                cml.DATAMANAGER_CONTACT_ROLE_DIGITAL_RESOURCE_ACCESS,
                cml.DATAMANAGER_CONTACT_ROLE_DIGITAL_RESOURCE_AND_REPORTING_ACCESS,
                cml.DATAMANAGER_CONTACT_ROLE_HMH_ADMIN,
                cml.DATAMANAGER_CONTACT_ROLE_HMH_ADMIN_MANAGER,
                cml.DATAMANAGER_CONTACT_ROLE_HMH_SUPERVISOR,
                cml.DATAMANAGER_CONTACT_ROLE_PROCTOR,
                cml.DATAMANAGER_CONTACT_ROLE_RPC_ADMIN,
                cml.DATAMANAGER_CONTACT_ROLE_SCHOOL_COORDINATOR,
                cml.DATAMANAGER_CONTACT_ROLE_SUPER_ADMIN,
                cml.DATAMANAGER_CONTACT_ROLE_TEACHER,
                cml.DATAMANAGER_CONTACT_LAST_UPDATED_DATE,
                
                cml.BDI_CUSTOMER_ID,
                cml.BDI_CUSTOMER_NAME,
                cml.BDI_CUSTOMER_ADDRESS,
                cml.BDI_CUSTOMER_CITY,
                cml.BDI_CUSTOMER_COUNTY,
                cml.BDI_CUSTOMER_STATE,
                cml.BDI_CUSTOMER_ZIPCODE,
                cml.BDI_CUSTOMER_COUNTRY,
                cml.BDI_CUSTOMER_IS_ACTIVE,
                cml.BDI_CONTACT_ID,
                cml.BDI_CONTACT_FIRST_NAME,
                cml.BDI_CONTACT_LAST_NAME,
                cml.BDI_CONTACT_PHONE,
                cml.BDI_CONTACT_LAST_UPDATED_DATE,
                cml.BDI_CUSTOMER_FAX,
                
                
                cml.FRESHDESK_CUSTOMER_ID,
                cml.FRESHDESK_CUSTOMER_NAME,
                cml.FRESHDESK_CUSTOMER_ADDRESS,
                cml.FRESHDESK_CUSTOMER_CITY,
                cml.FRESHDESK_CUSTOMER_COUNTY,
                cml.FRESHDESK_CUSTOMER_STATE,
                cml.FRESHDESK_CUSTOMER_ZIPCODE,
                cml.FRESHDESK_CUSTOMER_COUNTRY,
                cml.FRESHDESK_CONTACT_ID,
                cml.FRESHDESK_CONTACT_FIRST_NAME,
                cml.FRESHDESK_CONTACT_LAST_NAME,
                cml.FRESHDESK_CONTACT_PHONE,
                cml.FRESHDESK_CONTACT_TICKETS_CLOSED_COUNT,
                cml.FRESHDESK_CONTACT_TICKETS_RESOLVED_COUNT,
                cml.FRESHDESK_CONTACT_TICKETS_CUSTOMER_RESPONDED_COUNT,
                cml.FRESHDESK_CONTACT_TICKETS_PENDING_COUNT,
                cml.FRESHDESK_CONTACT_TICKETS_PENDING_INTERNAL_COUNT,
                cml.FRESHDESK_CONTACT_TICKETS_OPEN_COUNT,
                cml.FRESHDESK_CONTACT_LAST_UPDATED_DATE,
                
                cml.BIG_COMMERCE_CUSTOMER_ID,
                cml.BIG_COMMERCE_CUSTOMER_NAME,
                cml.BIG_COMMERCE_CUSTOMER_ADDRESS,
                cml.BIG_COMMERCE_CUSTOMER_CITY,
                cml.BIG_COMMERCE_CUSTOMER_COUNTY,
                cml.BIG_COMMERCE_CUSTOMER_STATE,
                cml.BIG_COMMERCE_CUSTOMER_ZIPCODE,
                cml.BIG_COMMERCE_CUSTOMER_COUNTRY,
                cml.BIG_COMMERCE_CONTACT_ID,
                cml.BIG_COMMERCE_CONTACT_FIRST_NAME,
                cml.BIG_COMMERCE_CONTACT_LAST_NAME,
                cml.BIG_COMMERCE_CONTACT_PHONE,
                cml.BIG_COMMERCE_CONTACT_LAST_UPDATED_DATE,
                
                cml.GOTOWEBINAR_CONTACT_FIRST_NAME,
                cml.GOTOWEBINAR_CONTACT_LAST_NAME,
                cml.GOTOWEBINAR_CONTACT_LAST_WEBINAR_ATTENDED_NAME,
                cml.GOTOWEBINAR_CONTACT_LAST_WEBINAR_ATTENDED_DATETIME,
                cml.GOTOWEBINAR_CONTACT_LAST_UPDATED_DATE,
                
                ev.STATUS AS CONTACT_EMAIL_STATUS,
                ev.SUB_STATUS AS CONTACT_EMAIL_SUB_STATUS,
                ev.FREE_EMAIL AS CONTACT_FREE_EMAIL,
                ev.DID_YOU_MEAN AS CONTACT_EMAIL_DID_YOU_MEAN,
                ev.ACCOUNT AS CONTACT_EMAIL_ACCOUNT,
                ev.DOMAIN AS CONTACT_EMAIL_DOMAIN,
                ev.DOMAIN_AGE_DAYS AS CONTACT_EMAIL_DOMAIN_AGE_IN_DAYS,
                ev.SMTP_PROVIDER AS CONTACT_EMAIL_PROVIDER,
                ev.MX_FOUND AS CONTACT_EMAIL_MX_FOUND,
                ev.MX_RECORD AS CONTACT_EMAIL_MX_RECORD,
                ev.LAST_VALIDATION_DATETIME AS CONTACT_EMAIL_LAST_VALIDATION_DATETIME
FROM            CONTACT_MASTER_LIST cml
LEFT OUTER JOIN (
                SELECT          VALIDATION_DATE AS LAST_VALIDATION_DATETIME, STATUS, SUB_STATUS, FREE_EMAIL, DID_YOU_MEAN, ACCOUNT, DOMAIN, DOMAIN_AGE_DAYS, SMTP_PROVIDER, MX_FOUND, MX_RECORD, EMAIL
                FROM            (
                                SELECT      VALIDATION_DATE, STATUS, SUB_STATUS, FREE_EMAIL, DID_YOU_MEAN, ACCOUNT, DOMAIN, DOMAIN_AGE_DAYS, SMTP_PROVIDER, MX_FOUND, MX_RECORD, EMAIL,
                                            ROW_NUMBER() OVER(PARTITION BY TRIM(UPPER(EMAIL)) ORDER BY VALIDATION_DATE DESC) AS SEQUENCE_NUMBER
                                FROM        DEV_RIVERSIDE_DATA_LAKE.CONTACT_QUALITY.VW_CONTACT_EMAIL_VALIDATION
                                ) a
                WHERE           SEQUENCE_NUMBER = 1
                ) ev
            ON  UPPER(ev.EMAIL) = TRIM(UPPER(cml.CONTACT_EMAIL))
)
SELECT * FROM (
SELECT *, ROW_NUMBER() OVER(PARTITION BY CONTACT_EMAIL ORDER BY CONTACT_LAST_UPDATED_DATE DESC) AS rn
FROM CONTACT_MASTER_LIST_WITH_EMAIL_VALIDATION)
WHERE rn = 1
;