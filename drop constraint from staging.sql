ALTER TABLE FactSalesQuota
DROP CONSTRAINT FK_FactSalesQuota_DimChannel

ALTER TABLE FactSales
DROP CONSTRAINT FK_FactSales_DimChannel


ALTER TABLE FactStrategyPlan
DROP CONSTRAINT FK_FactStrategyPlan_DimAccount


-- Dropping foreign keys

ALTER TABLE FactSales
DROP CONSTRAINT FK_FactSales_DimCurrency;

ALTER TABLE FactSalesQuota
DROP CONSTRAINT FK_FactSalesQuota_DimCurrency;

ALTER TABLE FactStrategyPlan
DROP CONSTRAINT FK_FactStrategyPlan_DimCurrency;

ALTER TABLE FactExchangeRate
DROP CONSTRAINT FK_FactExchangeRate_DimCurrency;

ALTER TABLE FactInventory
DROP CONSTRAINT FK_FactInventory_DimCurrency;

ALTER TABLE FactOnlineSales
DROP CONSTRAINT FK_FactOnlineSales_DimCurrency;

ALTER TABLE FactOnlineSales
DROP CONSTRAINT FK_FactOnlineSales_DimCustomer;

ALTER TABLE DimCustomer
DROP CONSTRAINT FK_DimCustomer_DimGeography;

ALTER TABLE DimStore
DROP CONSTRAINT FK_DimStore_DimGeography;

ALTER TABLE DimSalesTerritory
DROP CONSTRAINT FK_DimSalesTerritory_DimGeography;

ALTER TABLE dbo.DimEmployee
DROP CONSTRAINT FK_DimEmployee_DimEmployee;

ALTER TABLE dbo.FactStrategyPlan
DROP CONSTRAINT FK_FactStrategyPlan_DimEntity;

ALTER TABLE FactITMachine
DROP CONSTRAINT FK_FactITMachine_DimMachine;

ALTER TABLE FactITSLA
DROP CONSTRAINT FK_FactITSLA_DimMachine;


ALTER TABLE FactSalesQuota
DROP CONSTRAINT FK_FactSalesQuota_DimStore;
--


ALTER TABLE DimMachine
DROP CONSTRAINT FK_DimMachine_DimStore;
--


ALTER TABLE FactInventory
DROP CONSTRAINT FK_FactInventory_DimStore;
--


ALTER TABLE FactITSLA
DROP CONSTRAINT FK_FactITSLA_DimStore;
--


ALTER TABLE FactOnlineSales
DROP CONSTRAINT FK_FactOnlineSales_DimStore;
--


ALTER TABLE FactSales
DROP CONSTRAINT FK_FactSales_DimStore;
--


--sql
IF EXISTS (
    SELECT *
    FROM sys.foreign_keys
    WHERE name = 'FK_FactSalesQuota_DimStore' AND parent_object_id = OBJECT_ID('FactSalesQuota')
)
BEGIN
    ALTER TABLE FactSalesQuota NOCHECK CONSTRAINT FK_FactSalesQuota_DimStore;
END
--

--Modify the constraint name and table name in each script according to the constraints and tables in your list:

--sql
-- FactSalesQuota
IF EXISTS (
    SELECT *
    FROM sys.foreign_keys
    WHERE name = 'FK_FactSalesQuota_DimStore' AND parent_object_id = OBJECT_ID('FactSalesQuota')
)
BEGIN
    ALTER TABLE FactSalesQuota NOCHECK CONSTRAINT FK_FactSalesQuota_DimStore;
END

-- DimMachine
IF EXISTS (
    SELECT *
    FROM sys.foreign_keys
    WHERE name = 'FK_DimMachine_DimStore' AND parent_object_id = OBJECT_ID('DimMachine')
)
BEGIN
    ALTER TABLE DimMachine NOCHECK CONSTRAINT FK_DimMachine_DimStore;
END

-- FactInventory
IF EXISTS (
    SELECT *
    FROM sys.foreign_keys
    WHERE name = 'FK_FactInventory_DimStore' AND parent_object_id = OBJECT_ID('FactInventory')
)
BEGIN
    ALTER TABLE FactInventory NOCHECK CONSTRAINT FK_FactInventory_DimStore;
END

-- FactITSLA
IF EXISTS (
    SELECT *
    FROM sys.foreign_keys
    WHERE name = 'FK_FactITSLA_DimStore' AND parent_object_id = OBJECT_ID('FactITSLA')
)
BEGIN
    ALTER TABLE FactITSLA NOCHECK CONSTRAINT FK_FactITSLA_DimStore;
END

-- FactOnlineSales
IF EXISTS (
    SELECT *
    FROM sys.foreign_keys
    WHERE name = 'FK_FactOnlineSales_DimStore' AND parent_object_id = OBJECT_ID('FactOnlineSales')
)
BEGIN
    ALTER TABLE FactOnlineSales NOCHECK CONSTRAINT FK_FactOnlineSales_DimStore;
END

-- FactSales
IF EXISTS (
    SELECT *
    FROM sys.foreign_keys
    WHERE name = 'FK_FactSales_DimStore' AND parent_object_id = OBJECT_ID('FactSales')
)
BEGIN
    ALTER TABLE FactSales NOCHECK CONSTRAINT FK_FactSales_DimStore;
END
--

ALTER TABLE FactITSLA
DROP CONSTRAINT FK_FactITSLA_DimOutage;
