CREATE OR ALTER PROCEDURE bronze.load_bronze AS
BEGIN
	DECLAR
	BEGIN TRY
	PRINT '====================================';
	PRINT 'Loading bronze layer tables';
	PRINT '====================================';

	PRINT'--------------------------------';
	PRINT 'Loading CRM Tables';
	PRINT'--------------------------------';

	PRINT '>>>TRUNCATE TABLE bronze.crm_cust_info';
	TRUNCATE TABLE bronze.crm_cust_info;

	PRINT '>>>BULK INSERT bronze.crm_cust_info';
	BULK INSERT bronze.crm_cust_info
	FROM 'C:\Users\coder\OneDrive\Desktop\datasets\source_crm\cust_info.csv'
	WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
	);

	PRINT'>>>TRUNCATE TABLE bronze.crm_prd_info';
	TRUNCATE TABLE bronze.crm_prd_info;

	PRINT'>>>BULK INSERT bronze.crm_prd_info';
	BULK INSERT bronze.crm_prd_info
	FROM 'C:\Users\coder\OneDrive\Desktop\datasets\source_crm\prd_info.csv'
	WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
	);

	PRINT'>>>TRUNCATE TABLE bronze.crm_sales_details';
	TRUNCATE TABLE bronze.crm_sales_details;

	PRINT'>>>TRUNCATE TABLE bronze.crm_sales_details';
	BULK INSERT bronze.crm_sales_details
	FROM 'C:\Users\coder\OneDrive\Desktop\datasets\source_crm\sales_details.csv'
	WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
	);

	PRINT'--------------------------------';
	PRINT 'Loading CRM Tables';
	PRINT'--------------------------------';

	print '>>>TRUNCATE TABLE bronze.erp_cust_az12';
	TRUNCATE TABLE bronze.erp_cust_az12;

	print '>>>BULK INSERT bronze.erp_cust_az12';
	BULK INSERT bronze.erp_cust_az12
	FROM 'C:\Users\coder\OneDrive\Desktop\datasets\source_erp\cust_az12.csv'
	WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
	);

	PRINT '>>>TRUNCATE TABLE bronze.erp_loc_a101';
	TRUNCATE TABLE bronze.erp_loc_a101;

	PRINT '>>>BULK INSERT bronze.erp_loc_a101';
	BULK INSERT bronze.erp_loc_a101
	FROM 'C:\Users\coder\OneDrive\Desktop\datasets\source_erp\loc_a101.csv'
	WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
	);

	PRINT '>>>TRUNCATE TABLE bronze.erp_px_cat_g1v2';
	TRUNCATE TABLE bronze.erp_px_cat_g1v2;

	PRINT '>>>BULK INSERT bronze.erp_px_cat_g1v2';
	BULK INSERT bronze.erp_px_cat_g1v2
	FROM 'C:\Users\coder\OneDrive\Desktop\datasets\source_erp\px_cat_g1v2.csv'
	WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
	);
	END TRY

	BEGIN CATCH
		PRINT '====================================';
		PRINT 'Error occurred while loading bronze layer ';
		PRINT 'Error Message: ' + ERROR_MESSAGE();
		PRINT 'Error Number: ' + CAST(ERROR_NUMBER() AS NVARCHAR(10));
		PRINT '====================================';
	END CATCH
END;
