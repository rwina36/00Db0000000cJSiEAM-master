<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>alert_response_in_less_than_2_min</fullName>
        <description>alert response in less than 2 min</description>
        <protected>false</protected>
        <recipients>
            <recipient>benh.reda@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SupportCaseResponse</template>
    </alerts>
    <alerts>
        <fullName>violation_1_min_passed</fullName>
        <description>violation 1 min passed</description>
        <protected>false</protected>
        <recipients>
            <recipient>benh.reda@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>rwina36guestadmin@gmail.com.persodev</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SupportCaseResponse</template>
    </alerts>
    <alerts>
        <fullName>warning_1_min_passed</fullName>
        <description>warning 1 min passed</description>
        <protected>false</protected>
        <recipients>
            <recipient>benh.reda@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SupportCaseResponse</template>
    </alerts>
</Workflow>
