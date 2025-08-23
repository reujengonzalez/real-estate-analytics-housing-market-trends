-- Cleaning → Missing Values → Outliers → Scaling → Encoding → Multicollinearity → Target Prep → Train/Test split.

CREATE DATABASE ames_housing;
USE ames_housing;

CREATE TABLE housing_raw (
    OrderID INT,
    PID BIGINT,
    MS_SubClass TEXT,
    MS_Zoning TEXT,
    Lot_Frontage TEXT,
    Lot_Area TEXT,
    Street TEXT,
    Alley TEXT,
    Lot_Shape TEXT,
    Land_Contour TEXT,
    Utilities TEXT,
    Lot_Config TEXT,
    Land_Slope TEXT,
    Neighborhood TEXT,
    Condition1 TEXT,
    Condition2 TEXT,
    Bldg_Type TEXT,
    House_Style TEXT,
    Overall_Qual TEXT,
    Overall_Cond TEXT,
    Year_Built TEXT,
    Year_Remod_Add TEXT,
    Roof_Style TEXT,
    Roof_Matl TEXT,
    Exterior1st TEXT,
    Exterior2nd TEXT,
    Mas_Vnr_Type TEXT,
    Mas_Vnr_Area TEXT,
    Exter_Qual TEXT,
    Exter_Cond TEXT,
    Foundation TEXT,
    Bsmt_Qual TEXT,
    Bsmt_Cond TEXT,
    Bsmt_Exposure TEXT,
    BsmtFin_Type1 TEXT,
    BsmtFin_SF1 TEXT,
    BsmtFin_Type2 TEXT,
    BsmtFin_SF2 TEXT,
    Bsmt_Unf_SF TEXT,
    Total_Bsmt_SF TEXT,
    Heating TEXT,
    Heating_QC TEXT,
    Central_Air TEXT,
    Electrical TEXT,
    First_Flr_SF TEXT,
    Second_Flr_SF TEXT,
    Low_Qual_Fin_SF TEXT,
    Gr_Liv_Area TEXT,
    Bsmt_Full_Bath TEXT,
    Bsmt_Half_Bath TEXT,
    Full_Bath TEXT,
    Half_Bath TEXT,
    Bedroom_AbvGr TEXT,
    Kitchen_AbvGr TEXT,
    Kitchen_Qual TEXT,
    TotRms_AbvGrd TEXT,
    Functional TEXT,
    Fireplaces TEXT,
    Fireplace_Qu TEXT,
    Garage_Type TEXT,
    Garage_Yr_Blt TEXT,
    Garage_Finish TEXT,
    Garage_Cars TEXT,
    Garage_Area TEXT,
    Garage_Qual TEXT,
    Garage_Cond TEXT,
    Paved_Drive TEXT,
    Wood_Deck_SF TEXT,
    Open_Porch_SF TEXT,
    Enclosed_Porch TEXT,
    ThreeSsn_Porch TEXT,
    Screen_Porch TEXT,
    Pool_Area TEXT,
    Pool_QC TEXT,
    Fence TEXT,
    Misc_Feature TEXT,
    Misc_Val TEXT,
    Mo_Sold TEXT,
    Yr_Sold TEXT,
    Sale_Type TEXT,
    Sale_Condition TEXT,
    SalePrice TEXT
);

-- 1. Create the cleaned table
CREATE TABLE house_prices_clean (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    PID BIGINT,
    MS_SubClass INT,
    MS_Zoning VARCHAR(50),
    Lot_Frontage INT,
    Lot_Area INT,
    Street VARCHAR(50),
    Alley VARCHAR(50),
    Lot_Shape VARCHAR(50),
    Land_Contour VARCHAR(50),
    Utilities VARCHAR(50),
    Lot_Config VARCHAR(50),
    Land_Slope VARCHAR(50),
    Neighborhood VARCHAR(100),
    Condition1 VARCHAR(50),
    Condition2 VARCHAR(50),
    Bldg_Type VARCHAR(50),
    House_Style VARCHAR(50),
    Overall_Qual INT,
    Overall_Cond INT,
    Year_Built INT,
    Year_Remod_Add INT,
    Roof_Style VARCHAR(50),
    Roof_Matl VARCHAR(50),
    Exterior1st VARCHAR(50),
    Exterior2nd VARCHAR(50),
    Mas_Vnr_Type VARCHAR(50),
    Mas_Vnr_Area INT,
    Exter_Qual VARCHAR(50),
    Exter_Cond VARCHAR(50),
    Foundation VARCHAR(50),
    Bsmt_Qual VARCHAR(50),
    Bsmt_Cond VARCHAR(50),
    Bsmt_Exposure VARCHAR(50),
    BsmtFin_Type1 VARCHAR(50),
    BsmtFin_SF1 INT,
    BsmtFin_Type2 VARCHAR(50),
    BsmtFin_SF2 INT,
    Bsmt_Unf_SF INT,
    Total_Bsmt_SF INT,
    Heating VARCHAR(50),
    Heating_QC VARCHAR(50),
    Central_Air VARCHAR(5),
    Electrical VARCHAR(50),
    First_Flr_SF INT,
    Second_Flr_SF INT,
    Low_Qual_Fin_SF INT,
    Gr_Liv_Area INT,
    Bsmt_Full_Bath INT,
    Bsmt_Half_Bath INT,
    Full_Bath INT,
    Half_Bath INT,
    Bedroom_AbvGr INT,
    Kitchen_AbvGr INT,
    Kitchen_Qual VARCHAR(50),
    TotRms_AbvGrd INT,
    Functional VARCHAR(50),
    Fireplaces INT,
    Fireplace_Qu VARCHAR(50),
    Garage_Type VARCHAR(50),
    Garage_Yr_Blt INT,
    Garage_Finish VARCHAR(50),
    Garage_Cars INT,
    Garage_Area INT,
    Garage_Qual VARCHAR(50),
    Garage_Cond VARCHAR(50),
    Paved_Drive VARCHAR(5),
    Wood_Deck_SF INT,
    Open_Porch_SF INT,
    Enclosed_Porch INT,
    ThreeSsn_Porch INT,
    Screen_Porch INT,
    Pool_Area INT,
    Pool_QC VARCHAR(50),
    Fence VARCHAR(50),
    Misc_Feature VARCHAR(50),
    Misc_Val INT,
    Mo_Sold INT,
    Yr_Sold INT,
    Sale_Type VARCHAR(50),
    Sale_Condition VARCHAR(50),
    SalePrice INT
);

-- 2. Insert cleaned data from raw table
INSERT INTO house_prices_clean (
    PID, MS_SubClass, MS_Zoning, Lot_Frontage, Lot_Area, Street, Alley, Lot_Shape,
    Land_Contour, Utilities, Lot_Config, Land_Slope, Neighborhood, Condition1, Condition2,
    Bldg_Type, House_Style, Overall_Qual, Overall_Cond, Year_Built, Year_Remod_Add, Roof_Style,
    Roof_Matl, Exterior1st, Exterior2nd, Mas_Vnr_Type, Mas_Vnr_Area, Exter_Qual, Exter_Cond,
    Foundation, Bsmt_Qual, Bsmt_Cond, Bsmt_Exposure, BsmtFin_Type1, BsmtFin_SF1, BsmtFin_Type2,
    BsmtFin_SF2, Bsmt_Unf_SF, Total_Bsmt_SF, Heating, Heating_QC, Central_Air, Electrical,
    First_Flr_SF, Second_Flr_SF, Low_Qual_Fin_SF, Gr_Liv_Area, Bsmt_Full_Bath, Bsmt_Half_Bath,
    Full_Bath, Half_Bath, Bedroom_AbvGr, Kitchen_AbvGr, Kitchen_Qual, TotRms_AbvGrd, Functional,
    Fireplaces, Fireplace_Qu, Garage_Type, Garage_Yr_Blt, Garage_Finish, Garage_Cars, Garage_Area,
    Garage_Qual, Garage_Cond, Paved_Drive, Wood_Deck_SF, Open_Porch_SF, Enclosed_Porch,
    ThreeSsn_Porch, Screen_Porch, Pool_Area, Pool_QC, Fence, Misc_Feature, Misc_Val, Mo_Sold,
    Yr_Sold, Sale_Type, Sale_Condition, SalePrice
)
SELECT
    CAST(NULLIF(TRIM(PID), '') AS UNSIGNED),
    CAST(NULLIF(TRIM(MS_SubClass), '') AS UNSIGNED),
    TRIM(MS_Zoning),
    CAST(NULLIF(TRIM(Lot_Frontage), '') AS UNSIGNED),
    CAST(NULLIF(TRIM(Lot_Area), '') AS UNSIGNED),
    TRIM(Street),
    NULLIF(TRIM(Alley), ''),
    TRIM(Lot_Shape),
    TRIM(Land_Contour),
    TRIM(Utilities),
    TRIM(Lot_Config),
    TRIM(Land_Slope),
    TRIM(Neighborhood),
    TRIM(Condition1),
    TRIM(Condition2),
    TRIM(Bldg_Type),
    TRIM(House_Style),
    CAST(NULLIF(TRIM(Overall_Qual), '') AS UNSIGNED),
    CAST(NULLIF(TRIM(Overall_Cond), '') AS UNSIGNED),
    CAST(NULLIF(TRIM(Year_Built), '') AS UNSIGNED),
    CAST(NULLIF(TRIM(Year_Remod_Add), '') AS UNSIGNED),
    TRIM(Roof_Style),
    TRIM(Roof_Matl),
    TRIM(Exterior1st),
    TRIM(Exterior2nd),
    TRIM(Mas_Vnr_Type),
    CAST(NULLIF(TRIM(Mas_Vnr_Area), '') AS UNSIGNED),
    TRIM(Exter_Qual),
    TRIM(Exter_Cond),
    TRIM(Foundation),
    TRIM(Bsmt_Qual),
    TRIM(Bsmt_Cond),
    TRIM(Bsmt_Exposure),
    TRIM(BsmtFin_Type1),
    CAST(NULLIF(TRIM(BsmtFin_SF1), '') AS UNSIGNED),
    TRIM(BsmtFin_Type2),
    CAST(NULLIF(TRIM(BsmtFin_SF2), '') AS UNSIGNED),
    CAST(NULLIF(TRIM(Bsmt_Unf_SF), '') AS UNSIGNED),
    CAST(NULLIF(TRIM(Total_Bsmt_SF), '') AS UNSIGNED),
    TRIM(Heating),
    TRIM(Heating_QC),
    TRIM(Central_Air),
    TRIM(Electrical),
    CAST(NULLIF(TRIM(First_Flr_SF), '') AS UNSIGNED),
    CAST(NULLIF(TRIM(Second_Flr_SF), '') AS UNSIGNED),
    CAST(NULLIF(TRIM(Low_Qual_Fin_SF), '') AS UNSIGNED),
    CAST(NULLIF(TRIM(Gr_Liv_Area), '') AS UNSIGNED),
    CAST(NULLIF(TRIM(Bsmt_Full_Bath), '') AS UNSIGNED),
    CAST(NULLIF(TRIM(Bsmt_Half_Bath), '') AS UNSIGNED),
    CAST(NULLIF(TRIM(Full_Bath), '') AS UNSIGNED),
    CAST(NULLIF(TRIM(Half_Bath), '') AS UNSIGNED),
    CAST(NULLIF(TRIM(Bedroom_AbvGr), '') AS UNSIGNED),
    CAST(NULLIF(TRIM(Kitchen_AbvGr), '') AS UNSIGNED),
    TRIM(Kitchen_Qual),
    CAST(NULLIF(TRIM(TotRms_AbvGrd), '') AS UNSIGNED),
    TRIM(Functional),
    CAST(NULLIF(TRIM(Fireplaces), '') AS UNSIGNED),
    TRIM(Fireplace_Qu),
    TRIM(Garage_Type),
    CAST(NULLIF(TRIM(Garage_Yr_Blt), '') AS UNSIGNED),
    TRIM(Garage_Finish),
    CAST(NULLIF(TRIM(Garage_Cars), '') AS UNSIGNED),
    CAST(NULLIF(TRIM(Garage_Area), '') AS UNSIGNED),
    TRIM(Garage_Qual),
    TRIM(Garage_Cond),
    TRIM(Paved_Drive),
    CAST(NULLIF(TRIM(Wood_Deck_SF), '') AS UNSIGNED),
    CAST(NULLIF(TRIM(Open_Porch_SF), '') AS UNSIGNED),
    CAST(NULLIF(TRIM(Enclosed_Porch), '') AS UNSIGNED),
    CAST(NULLIF(TRIM(ThreeSsn_Porch), '') AS UNSIGNED),
    CAST(NULLIF(TRIM(Screen_Porch), '') AS UNSIGNED),
    CAST(NULLIF(TRIM(Pool_Area), '') AS UNSIGNED),
    TRIM(Pool_QC),
    TRIM(Fence),
    TRIM(Misc_Feature),
    CAST(NULLIF(TRIM(Misc_Val), '') AS UNSIGNED),
    CAST(NULLIF(TRIM(Mo_Sold), '') AS UNSIGNED),
    CAST(NULLIF(TRIM(Yr_Sold), '') AS UNSIGNED),
    TRIM(Sale_Type),
    TRIM(Sale_Condition),
    CAST(NULLIF(TRIM(SalePrice), '') AS UNSIGNED)
FROM housing_raw
WHERE TRIM(PID) <> '' AND PID IS NOT NULL;

-- Alley: No alley access
UPDATE house_prices_clean SET Alley = 'None' WHERE Alley IS NULL;

-- Basement related columns: No basement
UPDATE house_prices_clean SET Bsmt_Qual = 'None' WHERE Bsmt_Qual IS NULL;
UPDATE house_prices_clean SET Bsmt_Cond = 'None' WHERE Bsmt_Cond IS NULL;
UPDATE house_prices_clean SET Bsmt_Exposure = 'None' WHERE Bsmt_Exposure IS NULL;
UPDATE house_prices_clean SET BsmtFin_Type1 = 'None' WHERE BsmtFin_Type1 IS NULL;
UPDATE house_prices_clean SET BsmtFin_Type2 = 'None' WHERE BsmtFin_Type2 IS NULL;

-- Fireplace: No fireplace
UPDATE house_prices_clean SET Fireplace_Qu = 'None' WHERE Fireplace_Qu IS NULL;

-- Garage related columns: No garage
UPDATE house_prices_clean SET Garage_Type = 'None' WHERE Garage_Type IS NULL;
UPDATE house_prices_clean SET Garage_Finish = 'None' WHERE Garage_Finish IS NULL;
UPDATE house_prices_clean SET Garage_Qual = 'None' WHERE Garage_Qual IS NULL;
UPDATE house_prices_clean SET Garage_Cond = 'None' WHERE Garage_Cond IS NULL;

-- Pool: No pool
UPDATE house_prices_clean SET Pool_QC = 'None' WHERE Pool_QC IS NULL;

-- Fence: No fence
UPDATE house_prices_clean SET Fence = 'None' WHERE Fence IS NULL;

-- Misc feature: None
UPDATE house_prices_clean SET Misc_Feature = 'None' WHERE Misc_Feature IS NULL;

-- 1) Compute median into a variable
SET @median := (
  SELECT AVG(val)
  FROM (
    SELECT
      CAST(Lot_Frontage AS UNSIGNED) AS val,
      ROW_NUMBER() OVER (ORDER BY CAST(Lot_Frontage AS UNSIGNED)) AS rn,
      COUNT(*)    OVER () AS cnt
    FROM house_prices_clean
    WHERE Lot_Frontage IS NOT NULL
  ) x
  WHERE rn IN (FLOOR((cnt + 1)/2), FLOOR((cnt + 2)/2))
);

-- 2) Impute NULLs with that median
UPDATE house_prices_clean
SET Lot_Frontage = ROUND(@median)
WHERE Lot_Frontage IS NULL;

-- Standardize values

-- MS_Zoning
-- Fix lowercase or variants of 'RL'
UPDATE house_prices_clean
SET MS_Zoning = 'RL'
WHERE MS_Zoning IN ('Rl', 'rl', 'R L');


UPDATE house_prices_clean
SET MS_Zoning = 'RM'
WHERE MS_Zoning IN ('rm', 'rM', 'R M');

UPDATE house_prices_clean
SET MS_Zoning = 'C (all)'
WHERE MS_Zoning IN ('c', 'C', 'C all', 'c (all)');

UPDATE house_prices_clean
SET MS_Zoning = 'FV'
WHERE MS_Zoning IN ('fv', 'fV', 'F V');

UPDATE house_prices_clean
SET MS_Zoning = 'RH'
WHERE MS_Zoning IN ('rh', 'Rh', 'R H');

/* ===============================
   Street
   =============================== */
UPDATE house_prices_clean SET Street = 'PAVE' WHERE Street IN ('Pave', 'pave', 'PavE');
UPDATE house_prices_clean SET Street = 'GRVL' WHERE Street IN ('Grvl', 'gravel', 'Gravel');

/* ===============================
   Alley
   =============================== */
UPDATE house_prices_clean SET Alley = 'PAVE' WHERE Alley IN ('Pave', 'pave');
UPDATE house_prices_clean SET Alley = 'GRVL' WHERE Alley IN ('Grvl', 'gravel', 'Gravel');

/* ===============================
   Lot_Shape
   =============================== */
UPDATE house_prices_clean SET Lot_Shape = 'Reg' WHERE Lot_Shape IN ('REG', 'reg');
UPDATE house_prices_clean SET Lot_Shape = 'IR1' WHERE Lot_Shape IN ('ir1', 'IR-1');
UPDATE house_prices_clean SET Lot_Shape = 'IR2' WHERE Lot_Shape IN ('ir2', 'IR-2');
UPDATE house_prices_clean SET Lot_Shape = 'IR3' WHERE Lot_Shape IN ('ir3', 'IR-3');

/* ===============================
   Land_Contour
   =============================== */
UPDATE house_prices_clean SET Land_Contour = 'Lvl' WHERE Land_Contour IN ('LVL', 'lvl');
UPDATE house_prices_clean SET Land_Contour = 'Bnk' WHERE Land_Contour IN ('bnk', 'BNK');
UPDATE house_prices_clean SET Land_Contour = 'HLS' WHERE Land_Contour IN ('hls', 'Hls');
UPDATE house_prices_clean SET Land_Contour = 'Low' WHERE Land_Contour IN ('low', 'LOW');

/* ===============================
   Utilities
   =============================== */
UPDATE house_prices_clean SET Utilities = 'AllPub' WHERE Utilities IN ('ALLPUB', 'allpub');
UPDATE house_prices_clean SET Utilities = 'NoSeWa' WHERE Utilities IN ('nosewa', 'NOSEWA');

/* ===============================
   Lot_Config
   =============================== */
UPDATE house_prices_clean SET Lot_Config = 'Inside' WHERE Lot_Config IN ('inside', 'INSIDE');
UPDATE house_prices_clean SET Lot_Config = 'Corner' WHERE Lot_Config IN ('corner', 'CORNER');
UPDATE house_prices_clean SET Lot_Config = 'CulDSac' WHERE Lot_Config IN ('culdsac', 'CULDSAC');
UPDATE house_prices_clean SET Lot_Config = 'FR2' WHERE Lot_Config IN ('fr2', 'FR-2');
UPDATE house_prices_clean SET Lot_Config = 'FR3' WHERE Lot_Config IN ('fr3', 'FR-3');

/* ===============================
   Land_Slope
   =============================== */
UPDATE house_prices_clean SET Land_Slope = 'Gtl' WHERE Land_Slope IN ('gtl', 'GTL');
UPDATE house_prices_clean SET Land_Slope = 'Mod' WHERE Land_Slope IN ('mod', 'MOD');
UPDATE house_prices_clean SET Land_Slope = 'Sev' WHERE Land_Slope IN ('sev', 'SEV');

/* ===============================
   Central_Air
   =============================== */
UPDATE house_prices_clean SET Central_Air = 'Y' WHERE Central_Air IN ('Yes', 'YES', 'y');
UPDATE house_prices_clean SET Central_Air = 'N' WHERE Central_Air IN ('No', 'NO', 'n');

/* ===============================
   Paved_Drive
   =============================== */
UPDATE house_prices_clean SET Paved_Drive = 'Y' WHERE Paved_Drive IN ('Yes', 'YES');
UPDATE house_prices_clean SET Paved_Drive = 'N' WHERE Paved_Drive IN ('No', 'NO');
UPDATE house_prices_clean SET Paved_Drive = 'P' WHERE Paved_Drive IN ('Partial', 'partial', 'p');

/* ===============================
   Kitchen_Qual
   =============================== */
UPDATE house_prices_clean SET Kitchen_Qual = 'Ex' WHERE Kitchen_Qual IN ('EX', 'ex');
UPDATE house_prices_clean SET Kitchen_Qual = 'Gd' WHERE Kitchen_Qual IN ('gd', 'GD');
UPDATE house_prices_clean SET Kitchen_Qual = 'TA' WHERE Kitchen_Qual IN ('ta', 'TA');
UPDATE house_prices_clean SET Kitchen_Qual = 'Fa' WHERE Kitchen_Qual IN ('fa', 'FA');
UPDATE house_prices_clean SET Kitchen_Qual = 'Po' WHERE Kitchen_Qual IN ('po', 'PO');

/* ===============================
   Functional
   =============================== */
UPDATE house_prices_clean SET Functional = 'Typ' WHERE Functional IN ('typ', 'TYP');
UPDATE house_prices_clean SET Functional = 'Min1' WHERE Functional IN ('min1', 'MIN1');
UPDATE house_prices_clean SET Functional = 'Min2' WHERE Functional IN ('min2', 'MIN2');
UPDATE house_prices_clean SET Functional = 'Mod' WHERE Functional IN ('mod', 'MOD');
UPDATE house_prices_clean SET Functional = 'Maj1' WHERE Functional IN ('maj1', 'MAJ1');
UPDATE house_prices_clean SET Functional = 'Maj2' WHERE Functional IN ('maj2', 'MAJ2');
UPDATE house_prices_clean SET Functional = 'Sev' WHERE Functional IN ('sev', 'SEV');
UPDATE house_prices_clean SET Functional = 'Sal' WHERE Functional IN ('sal', 'SAL');

/* ===============================
   Sale_Type
   =============================== */
UPDATE house_prices_clean SET Sale_Type = 'WD' WHERE Sale_Type IN ('wd', 'Wd', 'WD ');
UPDATE house_prices_clean SET Sale_Type = 'New' WHERE Sale_Type IN ('new', 'NEW');
UPDATE house_prices_clean SET Sale_Type = 'COD' WHERE Sale_Type IN ('cod', 'COD');
UPDATE house_prices_clean SET Sale_Type = 'Con' WHERE Sale_Type IN ('con', 'CON');

/* ===============================
   Sale_Condition
   =============================== */
UPDATE house_prices_clean SET Sale_Condition = 'Normal' WHERE Sale_Condition IN ('normal', 'NORMAL');
UPDATE house_prices_clean SET Sale_Condition = 'Abnorml' WHERE Sale_Condition IN ('abnorml', 'ABNORML');
UPDATE house_prices_clean SET Sale_Condition = 'Partial' WHERE Sale_Condition IN ('partial', 'PARTIAL');
UPDATE house_prices_clean SET Sale_Condition = 'AdjLand' WHERE Sale_Condition IN ('adjland', 'ADJLAND');
UPDATE house_prices_clean SET Sale_Condition = 'Alloca' WHERE Sale_Condition IN ('alloca', 'ALLOCA');
UPDATE house_prices_clean SET Sale_Condition = 'Family' WHERE Sale_Condition IN ('family', 'FAMILY');

/* ========================================
   Standardize Categorical Columns
   ======================================== */

-- MS_Zoning
UPDATE house_prices_clean
SET MS_Zoning = CASE
    WHEN MS_Zoning IN ('Rl','rl','R L') THEN 'RL'
    WHEN MS_Zoning IN ('Rm','rm','R M') THEN 'RM'
    WHEN MS_Zoning IN ('C','c','C all','C-All') THEN 'C (all)'
    WHEN MS_Zoning IN ('Fv','fv','F V') THEN 'FV'
    WHEN MS_Zoning IN ('Rh','rh','R H') THEN 'RH'
    ELSE MS_Zoning
END;

-- Street
UPDATE house_prices_clean
SET Street = CASE
    WHEN Street IN ('pave','PAVE','Pv','pv') THEN 'Pave'
    WHEN Street IN ('grvl','GRAVEL','Gravel') THEN 'Grvl'
    ELSE Street
END;

-- Alley
UPDATE house_prices_clean
SET Alley = CASE
    WHEN Alley IN ('grvl','GRAVEL','Gravel') THEN 'Grvl'
    WHEN Alley IN ('pave','PAVE','Pv') THEN 'Pave'
    WHEN Alley IN ('NA','N/A','None','') THEN NULL
    ELSE Alley
END;

-- Lot_Shape
UPDATE house_prices_clean
SET Lot_Shape = CASE
    WHEN Lot_Shape IN ('REG','reg','Regular') THEN 'Reg'
    WHEN Lot_Shape IN ('Ir1','ir1','Ir-1') THEN 'IR1'
    WHEN Lot_Shape IN ('Ir2','ir2','Ir-2') THEN 'IR2'
    WHEN Lot_Shape IN ('Ir3','ir3','Ir-3') THEN 'IR3'
    ELSE Lot_Shape
END;

-- Land_Contour
UPDATE house_prices_clean
SET Land_Contour = CASE
    WHEN Land_Contour IN ('lvl','LVL','Level') THEN 'Lvl'
    WHEN Land_Contour IN ('bnk','BNK','Bank') THEN 'Bnk'
    WHEN Land_Contour IN ('hls','Hls','HILLS') THEN 'HLS'
    WHEN Land_Contour IN ('low','LOW','Lw') THEN 'Low'
    ELSE Land_Contour
END;

-- Utilities
UPDATE house_prices_clean
SET Utilities = CASE
    WHEN Utilities IN ('allpub','ALLPUB','All Pub') THEN 'AllPub'
    WHEN Utilities IN ('nosewr','NO SEWER') THEN 'NoSewr'
    WHEN Utilities IN ('nosewa','NO SEWA') THEN 'NoSeWa'
    WHEN Utilities IN ('elo','Elo','ELO') THEN 'ELO'
    ELSE Utilities
END;

-- Lot_Config
UPDATE house_prices_clean
SET Lot_Config = CASE
    WHEN Lot_Config IN ('inside','INSIDE','In') THEN 'Inside'
    WHEN Lot_Config IN ('corner','CORNER','Cor') THEN 'Corner'
    WHEN Lot_Config IN ('culdsac','CUL-DE-SAC','Cul') THEN 'CulDSac'
    WHEN Lot_Config IN ('fr2','Fr-2') THEN 'FR2'
    WHEN Lot_Config IN ('fr3','Fr-3') THEN 'FR3'
    ELSE Lot_Config
END;

-- Land_Slope
UPDATE house_prices_clean
SET Land_Slope = CASE
    WHEN Land_Slope IN ('gtl','GTL','Gentle') THEN 'Gtl'
    WHEN Land_Slope IN ('mod','Moderate') THEN 'Mod'
    WHEN Land_Slope IN ('sev','Severe') THEN 'Sev'
    ELSE Land_Slope
END;

-- Neighborhood (trim spaces)
UPDATE house_prices_clean
SET Neighborhood = TRIM(Neighborhood);

-- Condition1 & Condition2 (trim spaces)
UPDATE house_prices_clean
SET Condition1 = TRIM(Condition1),
    Condition2 = TRIM(Condition2);

-- Bldg_Type
UPDATE house_prices_clean
SET Bldg_Type = TRIM(Bldg_Type);

-- House_Style
UPDATE house_prices_clean
SET House_Style = TRIM(House_Style);

-- Roof_Style & Roof_Matl
UPDATE house_prices_clean
SET Roof_Style = TRIM(Roof_Style),
    Roof_Matl  = TRIM(Roof_Matl);

-- Exterior1st & Exterior2nd
UPDATE house_prices_clean
SET Exterior1st = TRIM(Exterior1st),
    Exterior2nd = TRIM(Exterior2nd);

-- Mas_Vnr_Type
UPDATE house_prices_clean
SET Mas_Vnr_Type = CASE
    WHEN Mas_Vnr_Type IN ('NA','None','N/A','') THEN NULL
    ELSE Mas_Vnr_Type
END;

-- Exter_Qual & Exter_Cond
UPDATE house_prices_clean
SET Exter_Qual = TRIM(Exter_Qual),
    Exter_Cond = TRIM(Exter_Cond);

-- Foundation
UPDATE house_prices_clean
SET Foundation = TRIM(Foundation);

-- Basement related
UPDATE house_prices_clean
SET Bsmt_Qual = CASE WHEN Bsmt_Qual IN ('NA','None','N/A','') THEN NULL ELSE Bsmt_Qual END,
    Bsmt_Cond = CASE WHEN Bsmt_Cond IN ('NA','None','N/A','') THEN NULL ELSE Bsmt_Cond END,
    Bsmt_Exposure = CASE WHEN Bsmt_Exposure IN ('NA','None','N/A','') THEN NULL ELSE Bsmt_Exposure END,
    BsmtFin_Type1 = CASE WHEN BsmtFin_Type1 IN ('NA','None','N/A','') THEN NULL ELSE BsmtFin_Type1 END,
    BsmtFin_Type2 = CASE WHEN BsmtFin_Type2 IN ('NA','None','N/A','') THEN NULL ELSE BsmtFin_Type2 END;

-- Heating & Heating_QC
UPDATE house_prices_clean
SET Heating = TRIM(Heating),
    Heating_QC = TRIM(Heating_QC);

-- Central_Air
UPDATE house_prices_clean
SET Central_Air = UPPER(Central_Air);

-- Electrical
UPDATE house_prices_clean
SET Electrical = CASE
    WHEN Electrical IN ('NA','None','N/A','') THEN NULL
    ELSE Electrical
END;

-- Kitchen_Qual
UPDATE house_prices_clean
SET Kitchen_Qual = CASE
    WHEN Kitchen_Qual IN ('NA','None','N/A','') THEN NULL
    ELSE Kitchen_Qual
END;

-- Functional
UPDATE house_prices_clean
SET Functional = CASE
    WHEN Functional IN ('NA','None','N/A','') THEN 'Typ'
    ELSE Functional
END;

-- Fireplace_Qu
UPDATE house_prices_clean
SET Fireplace_Qu = CASE
    WHEN Fireplace_Qu IN ('NA','None','N/A','') THEN NULL
    ELSE Fireplace_Qu
END;

-- Garage related
UPDATE house_prices_clean
SET Garage_Type = CASE WHEN Garage_Type IN ('NA','None','N/A','') THEN NULL ELSE Garage_Type END,
    Garage_Finish = CASE WHEN Garage_Finish IN ('NA','None','N/A','') THEN NULL ELSE Garage_Finish END,
    Garage_Qual = CASE WHEN Garage_Qual IN ('NA','None','N/A','') THEN NULL ELSE Garage_Qual END,
    Garage_Cond = CASE WHEN Garage_Cond IN ('NA','None','N/A','') THEN NULL ELSE Garage_Cond END;

-- Paved_Drive
UPDATE house_prices_clean
SET Paved_Drive = UPPER(Paved_Drive);

-- Pool_QC, Fence, Misc_Feature
UPDATE house_prices_clean
SET Pool_QC = CASE WHEN Pool_QC IN ('NA','None','N/A','') THEN NULL ELSE Pool_QC END,
    Fence = CASE WHEN Fence IN ('NA','None','N/A','') THEN NULL ELSE Fence END,
    Misc_Feature = CASE WHEN Misc_Feature IN ('NA','None','N/A','') THEN NULL ELSE Misc_Feature END;

-- Sale_Type & Sale_Condition
UPDATE house_prices_clean
SET Sale_Type = TRIM(Sale_Type),
    Sale_Condition = TRIM(Sale_Condition);

-- Increase GROUP_CONCAT buffer size
SET SESSION group_concat_max_len = 1000000;

-- Step: Outlier Capping for Lot_Area, Gr_Liv_Area, SalePrice
UPDATE house_prices_clean
JOIN (
    SELECT
        -- Lot_Area percentiles
        CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(Lot_Area ORDER BY Lot_Area), ',', ROUND(0.01 * COUNT(*))), ',', -1) AS UNSIGNED) AS lot_p1,
        CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(Lot_Area ORDER BY Lot_Area), ',', ROUND(0.99 * COUNT(*))), ',', -1) AS UNSIGNED) AS lot_p99,

        -- Gr_Liv_Area percentiles
        CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(Gr_Liv_Area ORDER BY Gr_Liv_Area), ',', ROUND(0.01 * COUNT(*))), ',', -1) AS UNSIGNED) AS gr_p1,
        CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(Gr_Liv_Area ORDER BY Gr_Liv_Area), ',', ROUND(0.99 * COUNT(*))), ',', -1) AS UNSIGNED) AS gr_p99,

        -- SalePrice percentiles
        CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(SalePrice ORDER BY SalePrice), ',', ROUND(0.01 * COUNT(*))), ',', -1) AS UNSIGNED) AS sp_p1,
        CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(SalePrice ORDER BY SalePrice), ',', ROUND(0.99 * COUNT(*))), ',', -1) AS UNSIGNED) AS sp_p99

    FROM house_prices_clean
) AS t
SET 
    -- Cap Lot_Area
    Lot_Area = LEAST(GREATEST(Lot_Area, t.lot_p1), t.lot_p99),

    -- Cap Gr_Liv_Area
    Gr_Liv_Area = LEAST(GREATEST(Gr_Liv_Area, t.gr_p1), t.gr_p99),

    -- Cap SalePrice
    SalePrice = LEAST(GREATEST(SalePrice, t.sp_p1), t.sp_p99);

-- Step 1: Compute percentiles for Lot_Area, Gr_Liv_Area, and SalePrice
WITH 
lot_area_bounds AS (
    SELECT 
        CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(Lot_Area ORDER BY Lot_Area), ',', ROUND(0.01 * COUNT(*))), ',', -1) AS UNSIGNED) AS p1,
        CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(Lot_Area ORDER BY Lot_Area), ',', ROUND(0.99 * COUNT(*))), ',', -1) AS UNSIGNED) AS p99
    FROM house_prices_clean
),
gr_liv_bounds AS (
    SELECT 
        CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(Gr_Liv_Area ORDER BY Gr_Liv_Area), ',', ROUND(0.01 * COUNT(*))), ',', -1) AS UNSIGNED) AS p1,
        CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(Gr_Liv_Area ORDER BY Gr_Liv_Area), ',', ROUND(0.99 * COUNT(*))), ',', -1) AS UNSIGNED) AS p99
    FROM house_prices_clean
),
saleprice_bounds AS (
    SELECT 
        CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(SalePrice ORDER BY SalePrice), ',', ROUND(0.01 * COUNT(*))), ',', -1) AS UNSIGNED) AS p1,
        CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(GROUP_CONCAT(SalePrice ORDER BY SalePrice), ',', ROUND(0.99 * COUNT(*))), ',', -1) AS UNSIGNED) AS p99
    FROM house_prices_clean
)

-- Step 2: Join all bounds into one row
, bounds AS (
    SELECT 
        la.p1 AS lot_area_p1, la.p99 AS lot_area_p99,
        gl.p1 AS gr_liv_p1,  gl.p99 AS gr_liv_p99,
        sp.p1 AS saleprice_p1, sp.p99 AS saleprice_p99
    FROM lot_area_bounds la, gr_liv_bounds gl, saleprice_bounds sp
)

-- Step 3: Apply clamping (outlier handling)
UPDATE house_prices_clean h
JOIN bounds b
SET 
    h.Lot_Area    = LEAST(GREATEST(h.Lot_Area,    b.lot_area_p1),    b.lot_area_p99),
    h.Gr_Liv_Area = LEAST(GREATEST(h.Gr_Liv_Area, b.gr_liv_p1),      b.gr_liv_p99),
    h.SalePrice   = LEAST(GREATEST(h.SalePrice,   b.saleprice_p1),   b.saleprice_p99);

-- Drop wrong columns (only if you already created them as DECIMAL)
ALTER TABLE house_prices_clean
DROP COLUMN Lot_Area_scaled,
DROP COLUMN Gr_Liv_Area_scaled,
DROP COLUMN SalePrice_scaled;

-- Add proper FLOAT columns
ALTER TABLE house_prices_clean
ADD COLUMN Lot_Area_scaled FLOAT,
ADD COLUMN Gr_Liv_Area_scaled FLOAT,
ADD COLUMN SalePrice_scaled FLOAT;

-- Apply Min-Max scaling again
UPDATE house_prices_clean
JOIN (
    SELECT
        MIN(Lot_Area) AS min_Lot,
        MAX(Lot_Area) AS max_Lot,
        MIN(Gr_Liv_Area) AS min_Gr,
        MAX(Gr_Liv_Area) AS max_Gr,
        MIN(SalePrice) AS min_Sale,
        MAX(SalePrice) AS max_Sale
    FROM house_prices_clean
) AS stats
SET 
    Lot_Area_scaled = (Lot_Area - stats.min_Lot) / NULLIF(stats.max_Lot - stats.min_Lot, 0),
    Gr_Liv_Area_scaled = (Gr_Liv_Area - stats.min_Gr) / NULLIF(stats.max_Gr - stats.min_Gr, 0),
    SalePrice_scaled = (SalePrice - stats.min_Sale) / NULLIF(stats.max_Sale - stats.min_Sale, 0);
    
-- Drop old Z-score columns if they exist
ALTER TABLE house_prices_clean
DROP COLUMN Lot_Area_z,
DROP COLUMN Gr_Liv_Area_z,
DROP COLUMN SalePrice_z;

-- Add new ones as FLOAT
ALTER TABLE house_prices_clean
ADD COLUMN Lot_Area_z FLOAT,
ADD COLUMN Gr_Liv_Area_z FLOAT,
ADD COLUMN SalePrice_z FLOAT;

-- Recalculate Z-scores
UPDATE house_prices_clean
JOIN (
    SELECT
        AVG(Lot_Area) AS mean_Lot,
        STD(Lot_Area) AS std_Lot,
        AVG(Gr_Liv_Area) AS mean_Gr,
        STD(Gr_Liv_Area) AS std_Gr,
        AVG(SalePrice) AS mean_Sale,
        STD(SalePrice) AS std_Sale
    FROM house_prices_clean
) AS stats
SET 
    Lot_Area_z = (Lot_Area - stats.mean_Lot) / NULLIF(stats.std_Lot, 0),
    Gr_Liv_Area_z = (Gr_Liv_Area - stats.mean_Gr) / NULLIF(stats.std_Gr, 0),
    SalePrice_z = (SalePrice - stats.mean_Sale) / NULLIF(stats.std_Sale, 0);

-- Recalculate Min-Max scaling
UPDATE house_prices_clean
JOIN (
    SELECT
        MIN(Lot_Area) AS min_Lot, MAX(Lot_Area) AS max_Lot,
        MIN(Gr_Liv_Area) AS min_Gr, MAX(Gr_Liv_Area) AS max_Gr,
        MIN(SalePrice) AS min_Sale, MAX(SalePrice) AS max_Sale
    FROM house_prices_clean
) AS stats
SET
    Lot_Area_scaled   = (Lot_Area - stats.min_Lot) / NULLIF(stats.max_Lot - stats.min_Lot, 0),
    Gr_Liv_Area_scaled = (Gr_Liv_Area - stats.min_Gr) / NULLIF(stats.max_Gr - stats.min_Gr, 0),
    SalePrice_scaled   = (SalePrice - stats.min_Sale) / NULLIF(stats.max_Sale - stats.min_Sale, 0);

-- Recalculate Z-score scaling
UPDATE house_prices_clean
JOIN (
    SELECT
        AVG(Lot_Area) AS mean_Lot, STD(Lot_Area) AS std_Lot,
        AVG(Gr_Liv_Area) AS mean_Gr, STD(Gr_Liv_Area) AS std_Gr,
        AVG(SalePrice) AS mean_Sale, STD(SalePrice) AS std_Sale
    FROM house_prices_clean
) AS stats
SET
    Lot_Area_z   = (Lot_Area - stats.mean_Lot) / NULLIF(stats.std_Lot, 0),
    Gr_Liv_Area_z = (Gr_Liv_Area - stats.mean_Gr) / NULLIF(stats.std_Gr, 0),
    SalePrice_z   = (SalePrice - stats.mean_Sale) / NULLIF(stats.std_Sale, 0);

-- ===============================
-- 1. ONE-HOT ENCODING
-- ===============================

-- Example: MS_Zoning (RL, RM, C (all), FV, RH)
ALTER TABLE house_prices_clean
    ADD COLUMN MS_Zoning_RL TINYINT,
    ADD COLUMN MS_Zoning_RM TINYINT,
    ADD COLUMN MS_Zoning_C TINYINT,
    ADD COLUMN MS_Zoning_FV TINYINT,
    ADD COLUMN MS_Zoning_RH TINYINT;

UPDATE house_prices_clean
SET 
    MS_Zoning_RL = CASE WHEN MS_Zoning = 'RL' THEN 1 ELSE 0 END,
    MS_Zoning_RM = CASE WHEN MS_Zoning = 'RM' THEN 1 ELSE 0 END,
    MS_Zoning_C  = CASE WHEN MS_Zoning = 'C (all)' THEN 1 ELSE 0 END,
    MS_Zoning_FV = CASE WHEN MS_Zoning = 'FV' THEN 1 ELSE 0 END,
    MS_Zoning_RH = CASE WHEN MS_Zoning = 'RH' THEN 1 ELSE 0 END;

-- Example: Street (Pave, Grvl)
ALTER TABLE house_prices_clean
    ADD COLUMN Street_Pave TINYINT,
    ADD COLUMN Street_Grvl TINYINT;

UPDATE house_prices_clean
SET 
    Street_Pave = CASE WHEN Street = 'Pave' THEN 1 ELSE 0 END,
    Street_Grvl = CASE WHEN Street = 'Grvl' THEN 1 ELSE 0 END;

-- Example: Alley (Grvl, Pave, NA)
ALTER TABLE house_prices_clean
    ADD COLUMN Alley_Grvl TINYINT,
    ADD COLUMN Alley_Pave TINYINT,
    ADD COLUMN Alley_None TINYINT;

UPDATE house_prices_clean
SET 
    Alley_Grvl = CASE WHEN Alley = 'Grvl' THEN 1 ELSE 0 END,
    Alley_Pave = CASE WHEN Alley = 'Pave' THEN 1 ELSE 0 END,
    Alley_None = CASE WHEN Alley IS NULL OR Alley = 'NA' THEN 1 ELSE 0 END;


-- ===============================
-- 2. ORDINAL ENCODING
-- ===============================

-- Exter_Qual encoding (quality of exterior materials)
ALTER TABLE house_prices_clean ADD COLUMN Exter_Qual_encoded TINYINT;
UPDATE house_prices_clean
SET Exter_Qual_encoded = CASE Exter_Qual
    WHEN 'Ex' THEN 5
    WHEN 'Gd' THEN 4
    WHEN 'TA' THEN 3
    WHEN 'Fa' THEN 2
    WHEN 'Po' THEN 1
    ELSE 0
END;

-- Exter_Cond encoding (present condition of exterior)
ALTER TABLE house_prices_clean ADD COLUMN Exter_Cond_encoded TINYINT;
UPDATE house_prices_clean
SET Exter_Cond_encoded = CASE Exter_Cond
    WHEN 'Ex' THEN 5
    WHEN 'Gd' THEN 4
    WHEN 'TA' THEN 3
    WHEN 'Fa' THEN 2
    WHEN 'Po' THEN 1
    ELSE 0
END;

-- Bsmt_Qual encoding (height of basement)
ALTER TABLE house_prices_clean ADD COLUMN Bsmt_Qual_encoded TINYINT;
UPDATE house_prices_clean
SET Bsmt_Qual_encoded = CASE Bsmt_Qual
    WHEN 'Ex' THEN 5
    WHEN 'Gd' THEN 4
    WHEN 'TA' THEN 3
    WHEN 'Fa' THEN 2
    WHEN 'Po' THEN 1
    ELSE 0
END;

-- Bsmt_Cond encoding (general condition of basement)
ALTER TABLE house_prices_clean ADD COLUMN Bsmt_Cond_encoded TINYINT;
UPDATE house_prices_clean
SET Bsmt_Cond_encoded = CASE Bsmt_Cond
    WHEN 'Ex' THEN 5
    WHEN 'Gd' THEN 4
    WHEN 'TA' THEN 3
    WHEN 'Fa' THEN 2
    WHEN 'Po' THEN 1
    ELSE 0
END;

-- Kitchen_Qual encoding (kitchen quality)
ALTER TABLE house_prices_clean ADD COLUMN Kitchen_Qual_encoded TINYINT;
UPDATE house_prices_clean
SET Kitchen_Qual_encoded = CASE Kitchen_Qual
    WHEN 'Ex' THEN 5
    WHEN 'Gd' THEN 4
    WHEN 'TA' THEN 3
    WHEN 'Fa' THEN 2
    WHEN 'Po' THEN 1
    ELSE 0
END;

-- Heating_QC encoding (heating quality and condition)
ALTER TABLE house_prices_clean ADD COLUMN Heating_QC_encoded TINYINT;
UPDATE house_prices_clean
SET Heating_QC_encoded = CASE Heating_QC
    WHEN 'Ex' THEN 5
    WHEN 'Gd' THEN 4
    WHEN 'TA' THEN 3
    WHEN 'Fa' THEN 2
    WHEN 'Po' THEN 1
    ELSE 0
END;

-- Fireplace_Qu encoding (fireplace quality)
ALTER TABLE house_prices_clean ADD COLUMN Fireplace_Qu_encoded TINYINT;
UPDATE house_prices_clean
SET Fireplace_Qu_encoded = CASE Fireplace_Qu
    WHEN 'Ex' THEN 5
    WHEN 'Gd' THEN 4
    WHEN 'TA' THEN 3
    WHEN 'Fa' THEN 2
    WHEN 'Po' THEN 1
    ELSE 0
END;

-- Garage_Qual encoding (garage quality)
ALTER TABLE house_prices_clean ADD COLUMN Garage_Qual_encoded TINYINT;
UPDATE house_prices_clean
SET Garage_Qual_encoded = CASE Garage_Qual
    WHEN 'Ex' THEN 5
    WHEN 'Gd' THEN 4
    WHEN 'TA' THEN 3
    WHEN 'Fa' THEN 2
    WHEN 'Po' THEN 1
    ELSE 0
END;

-- Garage_Cond encoding (garage condition)
ALTER TABLE house_prices_clean ADD COLUMN Garage_Cond_encoded TINYINT;
UPDATE house_prices_clean
SET Garage_Cond_encoded = CASE Garage_Cond
    WHEN 'Ex' THEN 5
    WHEN 'Gd' THEN 4
    WHEN 'TA' THEN 3
    WHEN 'Fa' THEN 2
    WHEN 'Po' THEN 1
    ELSE 0
END;

-- Pool_QC encoding (pool quality)
ALTER TABLE house_prices_clean ADD COLUMN Pool_QC_encoded TINYINT;
UPDATE house_prices_clean
SET Pool_QC_encoded = CASE Pool_QC
    WHEN 'Ex' THEN 5
    WHEN 'Gd' THEN 4
    WHEN 'TA' THEN 3
    WHEN 'Fa' THEN 2
    WHEN 'Po' THEN 1
    ELSE 0
END;

-- =====================================
-- 1. Add new encoded/engineered columns
-- =====================================
-- ExterQual_encoded
SET @stmt = (
    SELECT IF(
        EXISTS (SELECT 1 
                FROM INFORMATION_SCHEMA.COLUMNS 
                WHERE TABLE_NAME='house_prices_clean' 
                  AND COLUMN_NAME='ExterQual_encoded'),
        'SELECT "Column ExterQual_encoded already exists" AS msg',
        'ALTER TABLE house_prices_clean ADD COLUMN ExterQual_encoded INT'
    )
);
PREPARE s FROM @stmt;
EXECUTE s;
DEALLOCATE PREPARE s;

-- MSZoning_RL
SET @stmt = (
    SELECT IF(
        EXISTS (SELECT 1 
                FROM INFORMATION_SCHEMA.COLUMNS 
                WHERE TABLE_NAME='house_prices_clean' 
                  AND COLUMN_NAME='MSZoning_RL'),
        'SELECT "Column MSZoning_RL already exists" AS msg',
        'ALTER TABLE house_prices_clean ADD COLUMN MSZoning_RL TINYINT'
    )
);
PREPARE s FROM @stmt;
EXECUTE s;
DEALLOCATE PREPARE s;

-- MSZoning_RM
SET @stmt = (
    SELECT IF(
        EXISTS (SELECT 1 
                FROM INFORMATION_SCHEMA.COLUMNS 
                WHERE TABLE_NAME='house_prices_clean' 
                  AND COLUMN_NAME='MSZoning_RM'),
        'SELECT "Column MSZoning_RM already exists" AS msg',
        'ALTER TABLE house_prices_clean ADD COLUMN MSZoning_RM TINYINT'
    )
);
PREPARE s FROM @stmt;
EXECUTE s;
DEALLOCATE PREPARE s;

-- MSZoning_C
SET @stmt = (
    SELECT IF(
        EXISTS (SELECT 1 
                FROM INFORMATION_SCHEMA.COLUMNS 
                WHERE TABLE_NAME='house_prices_clean' 
                  AND COLUMN_NAME='MSZoning_C'),
        'SELECT "Column MSZoning_C already exists" AS msg',
        'ALTER TABLE house_prices_clean ADD COLUMN MSZoning_C TINYINT'
    )
);
PREPARE s FROM @stmt;
EXECUTE s;
DEALLOCATE PREPARE s;

-- MSZoning_FV
SET @stmt = (
    SELECT IF(
        EXISTS (SELECT 1 
                FROM INFORMATION_SCHEMA.COLUMNS 
                WHERE TABLE_NAME='house_prices_clean' 
                  AND COLUMN_NAME='MSZoning_FV'),
        'SELECT "Column MSZoning_FV already exists" AS msg',
        'ALTER TABLE house_prices_clean ADD COLUMN MSZoning_FV TINYINT'
    )
);
PREPARE s FROM @stmt;
EXECUTE s;
DEALLOCATE PREPARE s;

-- MSZoning_RH
SET @stmt = (
    SELECT IF(
        EXISTS (SELECT 1 
                FROM INFORMATION_SCHEMA.COLUMNS 
                WHERE TABLE_NAME='house_prices_clean' 
                  AND COLUMN_NAME='MSZoning_RH'),
        'SELECT "Column MSZoning_RH already exists" AS msg',
        'ALTER TABLE house_prices_clean ADD COLUMN MSZoning_RH TINYINT'
    )
);
PREPARE s FROM @stmt;
EXECUTE s;
DEALLOCATE PREPARE s;


