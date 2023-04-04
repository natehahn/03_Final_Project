SELECT dl.country_code,
    dl.area,
    dl.year_pc,
    dl.item_code_PC,
    dl.Item,
    dl.Production,
    ptt.Category_Code,
	ptt.Food_Product_Categories
FROM product_translation_table_vert as ptt
INNER JOIN DL_Table as dl
ON dl.item_code_PC = ptt.Item_Code_CPC_num;

SELECT * FROM DL_Table;