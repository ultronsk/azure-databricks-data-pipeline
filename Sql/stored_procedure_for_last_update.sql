CREATE PROCEDURE UpdateWatermarkTable
    @lastload varchar(200)
AS
BEGIN
    -- start the transaction
	BEGIN TRANSACTION;

	-- Update the incremental column in the table
	UPDATE water_table
	SET last_load = @lastload
    COMMIT TRANSACTION
	END;