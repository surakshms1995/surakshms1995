<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>CHANNEL_ORDERS__Populate_Fixed_Price</fullName>
        <field>CHANNEL_ORDERS__pc_Fixed_Price__c</field>
        <formula>CHANNEL_ORDERS__Product_Name__r.CHANNEL_ORDERS__Fixed_Price__c</formula>
        <name>Populate Fixed Price</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CHANNEL_ORDERS__Populate_Pricing_Type</fullName>
        <field>CHANNEL_ORDERS__pc_Pricing_Type__c</field>
        <literalValue>FIXED</literalValue>
        <name>Populate Pricing Type</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>CHANNEL_ORDERS__Populate Pricing fields</fullName>
        <actions>
            <name>CHANNEL_ORDERS__Populate_Fixed_Price</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>CHANNEL_ORDERS__Populate_Pricing_Type</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ISPICKVAL(CHANNEL_ORDERS__Product_Name__r.CHANNEL_ORDERS__Pricing_Type__c, &quot;FIXED&quot;)</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
