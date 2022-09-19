CREATE TABLE `sap_bank_statement_header_data`
(
	`SendingBank`		                                varchar(50) NOT NULL,	    --`センダ銀行 (電子銀行報告書)`
	`BankStatementID`	                             	varchar(20) NOT NULL,	    --`勘定報告書 ID`
	`PayeeKey`		                                    varchar(20) NOT NULL,	    --`受領コード`
	`ShortKey`	                                    	varchar(8) NOT NULL,		--`ショートキー (代理)`
	`StatementStatus`	                    	        varchar(1) DEFAULT NULL,	--`報告書ステータス`
	`PrintStatus`	                                 	varchar(1) DEFAULT NULL,	--`印刷ステータス`
	`AllPositingsInArea1AreOK`	                        varchar(1) DEFAULT NULL,	--`範囲 1 の全転記に問題なし`
	`AllPositingsInArea2AreOK`	                        varchar(1) DEFAULT NULL,	--`範囲 2 の全転記に問題なし`
	`AllItemsOnHeaderRecordWereInterpreted`	        	varchar(1) DEFAULT NULL,	--`インタプリタ済のヘッダレコード全明細`
	`DataExpiryDate`	                            	varchar(80) DEFAULT NULL,	--`満期日データ`
	`SessionNameForBankPositings`	        	        varchar(12) DEFAULT NULL,	--`銀行転記セッション名`
	`KeepSession1AfterProcesssing`	                    varchar(1) DEFAULT NULL,	--`処理後にセッション 1 の保持`
	`SessionNameForSunledgerAccounting`		            varchar(12) DEFAULT NULL,	--`補助元帳会計セッション名`
	`KeepSession2AfterProcesssing`		                varchar(1) DEFAULT NULL,	--`処理後にセッション 2 の保持`
	`FurtherProcessingDate`             	        	varchar(80) DEFAULT NULL,	--`追加処理日付`
	`FurtherProcessingTime`		                        varchar(80) DEFAULT NULL,	--`追加処理時間`
	`FurtherProcessingType`		                        varchar(1) DEFAULT NULL,	--`追加処理タイプ`
	`GeneralLedgerAccount`	                        	varchar(10) DEFAULT NULL,	--`総勘定元帳勘定`
	`BankAccountNumber`	                            	varchar(18) DEFAULT NULL,	--`口座番号`
	`BankAccountHolder`	                            	varchar(35) DEFAULT NULL,	--`銀行口座名義人`
	`SpecialAccountName`	                         	varchar(35) DEFAULT NULL,	--`特殊勘定名`
	`StatementNumber`	                            	varchar(5) DEFAULT NULL,	--`報告書番号`
	`StatementPageNumber`	                        	varchar(3) DEFAULT NULL,	--`報告書ページ番号`
	`StatementDate`	                                	varchar(80) DEFAULT NULL,	--`報告書日付`
	`CompanyCode`	                                	varchar(4) DEFAULT NULL,	--`会社コード`
	`ChartofAccounts`	                             	varchar(4) DEFAULT NULL,	--`勘定コード表`
	`CurrencyKey`		                                varchar(5) DEFAULT NULL,	--`通貨コード`
	`BeginningBalanceType`              	        	varchar(1) DEFAULT NULL,	--`期首残高タイプ (F=期首残高、M=中間残高)`
	`StartingBalancePlus/MinusSign`	                    varchar(1) DEFAULT NULL,	--`期首残高 +/- 符号`
	`OpeningBalanceAmount`	　　                         varchar(25) DEFAULT NULL,	--`期首残高金額`
	`TotalDebit`	                                	varchar(25) DEFAULT NULL,	--`借方合計`
	`TotalCredit`	                                	varchar(25) DEFAULT NULL,	--`貸方合計`
	`EndingBalanceType`		                            varchar(1) DEFAULT NULL,	--`期末残高タイプ (F=期末残高、M=中間残高)`
	`ClosingBalancePlus/MinusSign`	                    varchar(1) DEFAULT NULL,	--`期末残高 +/- 符号`
	`EndingBalanceAmount`               	        	varchar(25) DEFAULT NULL,	--`期末残高`
	`EndingBalanceEquivalentinLocalCurrency`	        varchar(25) DEFAULT NULL,	--`国内通貨の期末残高等価額`
	`LifeStart`	                                    	varchar(80) DEFAULT NULL,	--`使用開始`
	`LifeEnd`	                                     	varchar(80) DEFAULT NULL,	--`使用終了`
	`CreditInterest`	                             	varchar(12) DEFAULT NULL,	--`貸方金利`
	`Customer/VendorEBNumber`		                    varchar(20) DEFAULT NULL,	--`得/仕 EB 番号`
	`BankAccountType`	                    	        varchar(23) DEFAULT NULL,	--`銀行口座タイプ`
	`NumberofMemoRecordsfromtheBankStatement`	        varchar(5) DEFAULT NULL,	--`銀行報告書のメモレコード数`
	`TransactionType`	                             	varchar(8) DEFAULT NULL,	--`取引タイプ`
	`InputType`		                                    varchar(1) DEFAULT NULL,	--`入力タイプ`
	`ShortKeyforHouseBank`	                        	varchar(5) DEFAULT NULL,	--`取引銀行のショートキー`
	`IDForAccountDetails`	                          	varchar(5) DEFAULT NULL,	--`口座 ID 詳細`
	`UserWhoFillsBankDataBuffer`	                 	varchar(12) DEFAULT NULL,	--`銀行データバッファ書込み担当者`
	`ImportDateIntoBankDataBuffer`	                   	varchar(80) DEFAULT NULL,	--`銀行データバッファに入れるインポート日付`
	`ImportTimeIntoBankDataBuffer`		                varchar(80) DEFAULT NULL,	--`銀行データバッファへのインポート時刻`
	`ReferenceSpecificationsForBankDetails`		        varchar(20) DEFAULT NULL,	--`振込先銀行情報の参照詳細`
	`XCashManagementPaymentAdviceNotesWereCreated`		varchar(1) DEFAULT NULL,	--`X - 資金管理メモレコード登録済`
	`PlanningType`	                                 	varchar(2) DEFAULT NULL,	--`計画タイプ`
	`SummarizeBankStatementItems`		                varchar(1) DEFAULT NULL,	--`銀行報告書明細の集計`
	`ObjectKey`		                                    varchar(20) DEFAULT NULL,	--`オブジェクトキー`
	`ReferenceProcedure`		                        varchar(5) DEFAULT NULL,	--`参照処理`
	`BankStatementSequentialNumber`	                	varchar(4) DEFAULT NULL,	--`銀行報告書連続番号`
	`SequenceStatus`	                                varchar(1) DEFAULT NULL,	--`順序ステータス`
	`InputFormat`		                                varchar(2) DEFAULT NULL,	--`入力書式`
	`SenderBankAccountIBAN`	                        	varchar(34) DEFAULT NULL,	--`センダ銀行勘定: IBAN`
	`PageNumberOfStatement`	                        	varchar(5) DEFAULT NULL,	--`報告書のページ番号 (5 桁)`
	`SHA1HashValueOnFileContentAfterSplit`	         	varchar(40) DEFAULT NULL,	--`分割後のファイル内容の SHA1 ハッシュ値`
	`ClosingAvailableBalance`		                    varchar(25) DEFAULT NULL,	--`決算時利用可能残高`
	`DummyFunction`	                                	varchar(1) DEFAULT NULL,	--`長さ 1 のダミー機能`
	`ParameterSetID`		                            varchar(16) DEFAULT NULL,	--`パラメータセット ID`
    PRIMARY KEY (`SendingBank`, `BankStatementID`, `PayeeKey`, `ShortKey`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
