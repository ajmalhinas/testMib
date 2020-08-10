ALTER TABLE `batc`
        DROP FOREIGN KEY `bankbatc_item_id`;
        ALTER TABLE `batc`
        ADD CONSTRAINT `bankbatc_item_id` FOREIGN KEY (`item_id`)
        REFERENCES item (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE; 
 ALTER TABLE `batc`
        DROP FOREIGN KEY `bankbatc_location_id`;
        ALTER TABLE `batc`
        ADD CONSTRAINT `bankbatc_location_id` FOREIGN KEY (`location_id`)
        REFERENCES location (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE; ALTER TABLE `cac`
        DROP FOREIGN KEY `bankcac_cAcType_id`;
        ALTER TABLE `cac`
        ADD CONSTRAINT `bankcac_cAcType_id` FOREIGN KEY (`cAcType_id`)
        REFERENCES cactype (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE; 
 ALTER TABLE `cac`
        DROP FOREIGN KEY `bankcac_nominee_id`;
        ALTER TABLE `cac`
        ADD CONSTRAINT `bankcac_nominee_id` FOREIGN KEY (`nominee_id`)
        REFERENCES person (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE; 
 ALTER TABLE `cac`
        DROP FOREIGN KEY `bankcac_op1_id`;
        ALTER TABLE `cac`
        ADD CONSTRAINT `bankcac_op1_id` FOREIGN KEY (`op1_id`)
        REFERENCES person (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE; 
 ALTER TABLE `cac`
        DROP FOREIGN KEY `bankcac_op2_id`;
        ALTER TABLE `cac`
        ADD CONSTRAINT `bankcac_op2_id` FOREIGN KEY (`op2_id`)
        REFERENCES person (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE; 
 ALTER TABLE `cac`
        DROP FOREIGN KEY `bankcac_op3_id`;
        ALTER TABLE `cac`
        ADD CONSTRAINT `bankcac_op3_id` FOREIGN KEY (`op3_id`)
        REFERENCES person (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE; 
 ALTER TABLE `cac`
        DROP FOREIGN KEY `bankcac_ownerOrg_id`;
        ALTER TABLE `cac`
        ADD CONSTRAINT `bankcac_ownerOrg_id` FOREIGN KEY (`ownerOrg_id`)
        REFERENCES org (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE; 
 ALTER TABLE `cac`
        DROP FOREIGN KEY `bankcac_owner_id`;
        ALTER TABLE `cac`
        ADD CONSTRAINT `bankcac_owner_id` FOREIGN KEY (`owner_id`)
        REFERENCES person (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE; ALTER TABLE `cardflow`
        DROP FOREIGN KEY `bankcardflow_split_id`;
        ALTER TABLE `cardflow`
        ADD CONSTRAINT `bankcardflow_split_id` FOREIGN KEY (`split_id`)
        REFERENCES split (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE;  
 ALTER TABLE `chequeflow`
        DROP FOREIGN KEY `bankchequeflow_cheque_id`;
        ALTER TABLE `chequeflow`
        ADD CONSTRAINT `bankchequeflow_cheque_id` FOREIGN KEY (`cheque_id`)
        REFERENCES cheque (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE; 
 ALTER TABLE `chequeflow`
        DROP FOREIGN KEY `bankchequeflow_split_id`;
        ALTER TABLE `chequeflow`
        ADD CONSTRAINT `bankchequeflow_split_id` FOREIGN KEY (`split_id`)
        REFERENCES split (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE; ALTER TABLE `depositnote`
        DROP FOREIGN KEY `bankdepositnote_trans_id`;
        ALTER TABLE `depositnote`
        ADD CONSTRAINT `bankdepositnote_trans_id` FOREIGN KEY (`trans_id`)
        REFERENCES trans (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE; ALTER TABLE `gt`
        DROP FOREIGN KEY `bankgt_gTSingle_id`;
        ALTER TABLE `gt`
        ADD CONSTRAINT `bankgt_gTSingle_id` FOREIGN KEY (`gTSingle_id`)
        REFERENCES gtsingle (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE; 
 
 ALTER TABLE `item`
        DROP FOREIGN KEY `bankitem_category_id`;
        ALTER TABLE `item`
        ADD CONSTRAINT `bankitem_category_id` FOREIGN KEY (`category_id`)
        REFERENCES category (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE; 
 ALTER TABLE `item`
        DROP FOREIGN KEY `bankitem_itemEx_id`;
        ALTER TABLE `item`
        ADD CONSTRAINT `bankitem_itemEx_id` FOREIGN KEY (`itemEx_id`)
        REFERENCES itemex (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE; 
 
 
 
 ALTER TABLE `pawn`
        DROP FOREIGN KEY `bankpawn_pawnNote_id`;
        ALTER TABLE `pawn`
        ADD CONSTRAINT `bankpawn_pawnNote_id` FOREIGN KEY (`pawnNote_id`)
        REFERENCES pawnnote (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE; 
 ALTER TABLE `pawn`
        DROP FOREIGN KEY `bankpawn_serial_id`;
        ALTER TABLE `pawn`
        ADD CONSTRAINT `bankpawn_serial_id` FOREIGN KEY (`serial_id`)
        REFERENCES serial (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE; 
 
 
 
 ALTER TABLE `pawnnote`
        DROP FOREIGN KEY `bankpawnnote_trans_id`;
        ALTER TABLE `pawnnote`
        ADD CONSTRAINT `bankpawnnote_trans_id` FOREIGN KEY (`trans_id`)
        REFERENCES trans (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE; 
 
 
 ALTER TABLE `pawntemp`
        DROP FOREIGN KEY `bankpawntemp_pawnNoteTemp_id`;
        ALTER TABLE `pawntemp`
        ADD CONSTRAINT `bankpawntemp_pawnNoteTemp_id` FOREIGN KEY (`pawnNoteTemp_id`)
        REFERENCES pawnnotetemp (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE; 
 
 
 
 
 
 
 
 ALTER TABLE `redeemnote`
        DROP FOREIGN KEY `bankredeemnote_pawnNote_id`;
        ALTER TABLE `redeemnote`
        ADD CONSTRAINT `bankredeemnote_pawnNote_id` FOREIGN KEY (`pawnNote_id`)
        REFERENCES pawnnote (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE; 
 ALTER TABLE `redeemnote`
        DROP FOREIGN KEY `bankredeemnote_trans_id`;
        ALTER TABLE `redeemnote`
        ADD CONSTRAINT `bankredeemnote_trans_id` FOREIGN KEY (`trans_id`)
        REFERENCES trans (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE; 
 
 ALTER TABLE `serial`
        DROP FOREIGN KEY `bankserial_batc_id`;
        ALTER TABLE `serial`
        ADD CONSTRAINT `bankserial_batc_id` FOREIGN KEY (`batc_id`)
        REFERENCES batc (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE; ALTER TABLE `split`
        DROP FOREIGN KEY `banksplit_ac1_id`;
        ALTER TABLE `split`
        ADD CONSTRAINT `banksplit_ac1_id` FOREIGN KEY (`ac1_id`)
        REFERENCES ac (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE; 
 ALTER TABLE `split`
        DROP FOREIGN KEY `banksplit_ac2_id`;
        ALTER TABLE `split`
        ADD CONSTRAINT `banksplit_ac2_id` FOREIGN KEY (`ac2_id`)
        REFERENCES ac (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE; 
 ALTER TABLE `split`
        DROP FOREIGN KEY `banksplit_trans_id`;
        ALTER TABLE `split`
        ADD CONSTRAINT `banksplit_trans_id` FOREIGN KEY (`trans_id`)
        REFERENCES trans (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE; ALTER TABLE `stockadj`
        DROP FOREIGN KEY `bankstockadj_batc_id`;
        ALTER TABLE `stockadj`
        ADD CONSTRAINT `bankstockadj_batc_id` FOREIGN KEY (`batc_id`)
        REFERENCES batc (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE; 
 ALTER TABLE `stockadj`
        DROP FOREIGN KEY `bankstockadj_serial_id`;
        ALTER TABLE `stockadj`
        ADD CONSTRAINT `bankstockadj_serial_id` FOREIGN KEY (`serial_id`)
        REFERENCES serial (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE; 
 ALTER TABLE `stockadj`
        DROP FOREIGN KEY `bankstockadj_stockAdjNote_id`;
        ALTER TABLE `stockadj`
        ADD CONSTRAINT `bankstockadj_stockAdjNote_id` FOREIGN KEY (`stockAdjNote_id`)
        REFERENCES stockadjnote (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE; 
 
 
 
 ALTER TABLE `stockadjnote`
        DROP FOREIGN KEY `bankstockadjnote_trans_id`;
        ALTER TABLE `stockadjnote`
        ADD CONSTRAINT `bankstockadjnote_trans_id` FOREIGN KEY (`trans_id`)
        REFERENCES trans (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE; 
 
 
 ALTER TABLE `tmpgtsplit`
        DROP FOREIGN KEY `banktmpgtsplit_gt_id`;
        ALTER TABLE `tmpgtsplit`
        ADD CONSTRAINT `banktmpgtsplit_gt_id` FOREIGN KEY (`gt_id`)
        REFERENCES gt (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE; ALTER TABLE `trans`
        DROP FOREIGN KEY `banktrans_branch_id`;
        ALTER TABLE `trans`
        ADD CONSTRAINT `banktrans_branch_id` FOREIGN KEY (`branch_id`)
        REFERENCES branch (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE; 
 ALTER TABLE `trans`
        DROP FOREIGN KEY `banktrans_cAc_id`;
        ALTER TABLE `trans`
        ADD CONSTRAINT `banktrans_cAc_id` FOREIGN KEY (`cAc_id`)
        REFERENCES cac (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE; 
 ALTER TABLE `trans`
        DROP FOREIGN KEY `banktrans_job_id`;
        ALTER TABLE `trans`
        ADD CONSTRAINT `banktrans_job_id` FOREIGN KEY (`job_id`)
        REFERENCES job (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE; 
 
 
 
 ALTER TABLE `widthdrawalnote`
        DROP FOREIGN KEY `bankwidthdrawalnote_trans_id`;
        ALTER TABLE `widthdrawalnote`
        ADD CONSTRAINT `bankwidthdrawalnote_trans_id` FOREIGN KEY (`trans_id`)
        REFERENCES trans (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE; 