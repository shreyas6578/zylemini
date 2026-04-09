
/****** Object:  StoredProcedure [dbo].[pr_InsertUserWiseDistanceTravelled]    Script Date: 3/31/2026 1:02:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE OR ALTER     PROCEDURE [dbo].[pr_InsertFineTunedUserWiseLatLong]
	@Data	dbo.UserFinetunedRouteLatLong READONLY
AS
BEGIN

	INSERT INTO TX_UserFinetunedRouteLatLong (UserId,DateStamp,RecordId,Latitude,Longitude,DBInsertDateTime)
    SELECT UserId,DateStamp,RecordId,Latitude,Longitude, GETDATE() FROM @Data

 
END