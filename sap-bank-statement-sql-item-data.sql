CREATE TABLE `sap_bank_statement_item_data`
(
	`SendingBank`		                                	varchar(50) NOT NULL,	    --`センダ銀行 (電子銀行報告書)`
	`BankStatementID`	                             		varchar(20) NOT NULL,	    --`勘定報告書 ID`
	`PayeeKey`		                                    	varchar(20) NOT NULL,	    --`受領コード`
	`ShortKey`	                                        	varchar(8) NOT NULL,		--`ショートキー (代理)`
	`MemoRecordNumber`		                                varchar(5) NOT NULL,		--`メモレコード番号 (銀行報告書の明細番号)`
	`LineItemCompleted`	                                	varchar(1) NOT NULL,		--`明細終了`
	`FirstUpdateIsOK`                                     	varchar(1) DEFAULT NULL,	--`1次更新OK`
	`SecondUpdateIsProcessed`                            	varchar(1) DEFAULT NULL,	--`2次更新処理済`
	`SecondUpdateIsOK`                                    	varchar(1) DEFAULT NULL,	--`2次更新OK`
	`LineItemsWereInterpreted`	                          	varchar(1) DEFAULT NULL,	--`インタプリタされた明細`
	`BundleNumberForGroupingLineItems`	                 	varchar(2) DEFAULT NULL,	--`明細グルーピングのためのバンドル番号`
	`ErrorStatus`	                                    	varchar(4) DEFAULT NULL,	--`エラーステータス`
	`AccountingDocumentNumber`	                          	varchar(10) DEFAULT NULL,	--`会計伝票番号`
	`FiscalYear`	                                    	varchar(4) DEFAULT NULL,	--`会計年度`
	`PostingDateAtBank`	                                 	varchar(80) DEFAULT NULL,	--`銀行の転記日付`
	`PostingDateInDocument`	                            	varchar(80) DEFAULT NULL,	--`伝票の転記日付`
	`ValueDateOfItemToBeCleared`		                    varchar(80) DEFAULT NULL,	--`決済予定明細の起算日`
	`ValueDateTime`	                                     	varchar(80) DEFAULT NULL,	--`起算日時刻`
	`AccountCurrencyKey`	                             	varchar(5) DEFAULT NULL,	--`勘定通貨キー`
	`AmountInAccountCurrency`		                        varchar(25) DEFAULT NULL,	--`勘定コード通貨での金額`
	`FeesInAccountCurrency`		                            varchar(25) DEFAULT NULL,	--`勘定コード通貨による手数料`
	`ForeignCurrencyKey`	                            	varchar(5) DEFAULT NULL,	--`外貨コード (勘定コード通貨と異なる)`
	`ForeignCurrencyAmount`	                            	varchar(25) DEFAULT NULL,	--`外貨額 (勘定通貨と異なる)`
	`FeesInForeignCurrency`		                            varchar(25) DEFAULT NULL,	--`外貨による手数料 (勘定コード通貨と異なる)`
	`BusinessTransactionCode`	                           	varchar(3) DEFAULT NULL,	--`取引コード`
	`TextKey`	                                         	varchar(4) DEFAULT NULL,	--`テキストキー`
	`ExternalBusinessTransaction`	                     	varchar(27) DEFAULT NULL,	--`外部取引`
	`Transaction`	                                    	varchar(4) DEFAULT NULL,	--`取引`
	`PostingRule`	                                     	varchar(4) DEFAULT NULL,	--`転記ルール`
	`PostingRuleDeterminedUsingStandardValue`	         	varchar(1) DEFAULT NULL,	--`標準値を使って設定された転記ルール`
	`AccountModification`	                             	varchar(10) DEFAULT NULL,	--`勘定修正`
	`SAPBankTransaction`	                            	varchar(4) DEFAULT NULL,	--`SAP 銀行取引`
	`BankPostingText`	                                	varchar(50) DEFAULT NULL,	--`銀行転記テキスト`
	`NumberOfCollectiveItems`	                        	varchar(5) DEFAULT NULL,	--`回収明細の数`
	`ReferenceDocumentNumber`	                         	varchar(16) DEFAULT NULL,	--`参照伝票番号`
	`AssignmentNumber`	                                  	varchar(18) DEFAULT NULL,	--`ソートキー`
	`CountryKeyOfPartnerBank`	                           	varchar(3) DEFAULT NULL,	--`取引銀行の国コード`
	`BankNumberOfPartnerBank`	                        	varchar(15) DEFAULT NULL,	--`取引銀行の銀行番号`
	`SWIFTCodeOfPartnerBank`	                         	varchar(11) DEFAULT NULL,	--`取引銀行 SWIFT コード`
	`AccountNumberAtPartnerBank`	                      	varchar(18) DEFAULT NULL,	--`取引銀行の口座番号`
	`BusinessPartner`	                                	varchar(55) DEFAULT NULL,	--`ビジネスパートナ`
	`AccountingClerk`	                                	varchar(2) DEFAULT NULL,	--`記帳担当者`
	`CostCenter`	                                    	varchar(10) DEFAULT NULL,	--`原価センタ`
	`BusinessArea`	                                     	varchar(4) DEFAULT NULL,	--`事業領域`
	`ProfitCenter`		                                    varchar(10) DEFAULT NULL,	--`利益センタ`
	`ContractNumber`	                                 	varchar(13) DEFAULT NULL,	--`契約番号`
	`ContractType`		                                    varchar(1) DEFAULT NULL,	--`契約タイプ`
	`DayBookNumber`	                                     	varchar(10) DEFAULT NULL,	--`ブック番号`
	`CheckNumber`	                                    	varchar(13) DEFAULT NULL,	--`小切手番号`
	`FinancialAssetsManagementStatus`	                	varchar(2) DEFAULT NULL,	--`財務資産管理ステータス`
	`FinancialAssetsManagementInformationField`	          	varchar(40) DEFAULT NULL,	--`金融資産管理情報項目`
	`DebitCreditKeyForLineItems`	                     	varchar(1) DEFAULT NULL,	--`明細の貸方/借方キー (銀行用)`
	`AdditionalInformation1`	                        	varchar(30) DEFAULT NULL,	--`追加情報 1`
	`AdditionalInformation2`	                         	varchar(30) DEFAULT NULL,	--`追加情報 2`
	`PaymentAdviceNumber`	                            	varchar(16) DEFAULT NULL,	--`支払明細通知書番号`
	`InterpretationAlgorithm`	                        	varchar(3) DEFAULT NULL,	--`解釈アルゴリズム`
	`SubLedgerDocumentNumber`	                         	varchar(10) DEFAULT NULL,	--`補助元帳伝票番号`
	`PaymentOnAccountDocumentNumber`	                   	varchar(10) DEFAULT NULL,	--`入金 (未消込) 伝票番号`
	`AccountNumberOfAlternativePayer`	                  	varchar(10) DEFAULT NULL,	--`代理支払人の勘定コード`
	`PaymentAdviceAccountType`	                           	varchar(1) DEFAULT NULL,	--`支払明細通知書勘定タイプ`
	`AccountNumber`	                                    	varchar(10) DEFAULT NULL,	--`勘定コード`
	`BatchNumber`	                                    	varchar(3) DEFAULT NULL,	--`バッチ番号 (バンドル番号)`
	`BatchItemNumberForLockbox`		                        varchar(3) DEFAULT NULL,	--`ロックボックス明細番号のバッチ`
	`ExchangeRate`	                                    	varchar(14) DEFAULT NULL,	--`為替レート (国内通貨と異なる場合)`
	`ItemText`	                                        	varchar(50) DEFAULT NULL,	--`明細テキスト`
	`DateOfFailedBillsOfExchangeInJapan`		            varchar(80) DEFAULT NULL,	--`不渡手形の日付 (日本)`
	`PostingAlgorithm`		                                varchar(3) DEFAULT NULL,	--`転記アルゴリズム (ロックボックスのみ)`
	`NumberOfSecondSubLedgerDocument`		                varchar(10) DEFAULT NULL,	--`第二補助元帳伝票番号`
	`BankReferenceNumber`		                            varchar(35) DEFAULT NULL,	--`銀行参照番号`
	`ObjectKey`	                                        	varchar(20) DEFAULT NULL,	--`オブジェクトキー`
	`ReferenceProcedure`	                            	varchar(5) DEFAULT NULL,	--`参照処理`
	`OverdueChargesFromToPartnersInAccountCurrency`		    varchar(25) DEFAULT NULL,	--`取引先から/取引先への期日超過手数料 (会計通貨)`
	`ProcessingType`	                                 	varchar(2) DEFAULT NULL,	--`処理タイプ`
	`PaymentReference`		                                varchar(30) DEFAULT NULL,	--`支払参照`
	`CustomerToCustomerReference`		                    varchar(35) DEFAULT NULL,	--`得意先間参照`
	`DunningBlock`	                                     	varchar(1) DEFAULT NULL,	--`督促保留`
	`IDNumberForCashManagementAndForecast`	            	varchar(10) DEFAULT NULL,	--`資金管理と予測の ID 番号`
	`ApplicationIndicator`	                            	varchar(6) DEFAULT NULL,	--`アプリケーションフラグ`
	`ErrorStatus`	                                     	varchar(4) DEFAULT NULL,	--`エラーステータス`
	`XStandardPostingShouldBeSuppressed`	             	varchar(1) DEFAULT NULL,	--`X - 標準 (FI) 転記は非表示`
	`DocNo`		                                            varchar(70) DEFAULT NULL,	--`文書番号 (IDOC 番号、アプリケーション文書番号など)`
	`PartnerBankAccountIBAN`	                           	varchar(34) DEFAULT NULL,	--`パートナ銀行勘定: IBAN`
	`NoteToPayeeHasBeenChangedManually`	                	varchar(1) DEFAULT NULL,	--`受取人への通知マニュアル変更済`
	`CompanyCode`	                                      	varchar(4) DEFAULT NULL,	--`会社コード`
	`PaymentAdviceAccountType`	                          	varchar(1) DEFAULT NULL,	--`支払明細通知書勘定タイプ`
	`AccountNumber`	                                      	varchar(10) DEFAULT NULL,	--`勘定コード`
	`PaymentAdviceNumber`		                            varchar(16) DEFAULT NULL,	--`支払明細通知書番号`
	`IndicatorProcessEnhancementsForReinterpretation`		varchar(1) DEFAULT NULL,	--`フラグ: 再解釈の処理拡張`
	`TransactionID`		                                    varchar(35) DEFAULT NULL,	--`取引 ID`
	`TemporaryAccountingDocumentID`	                    	varchar(22) DEFAULT NULL,	--`一時会計伝票 ID`
	`CheckNumber`	                                     	varchar(13) DEFAULT NULL,	--`小切手番号`
	`TypeOfDocumentWhichIsMentionedInCHECT`		            varchar(1) DEFAULT NULL,	--`CHECT に記載されている伝票のタイプ`
	`BankStatementItemMachineLearningStatus`		        varchar(2) DEFAULT NULL,	--`銀行報告書明細機械学習ステータス`
	`BankStatementItemPostingRuleStatus`	            	varchar(2) DEFAULT NULL,	--`銀行報告書明細転記ルールステータス`
	`FiscalYearOfDocumentOnAccountInBankingBook`	     	varchar(4) DEFAULT NULL,	--`バンキング勘定における口座の伝票の会計年度`
	`FiscalYearOfDocumentOnAccountInSubLedger`	        	varchar(4) DEFAULT NULL,	--`補助元帳での勘定伝票の会計年度`
	`FiscalYearOfBankAccountingDocument`		            varchar(4) DEFAULT NULL,	--`銀行関連会計伝票の会計年度`
	`FiscalYearOfSubLedgerAccountingDocument`	        	varchar(4) DEFAULT NULL,	--`補助元帳会計伝票の会計年度`
	`FiscalYearOfSecondSubLedgerAccountingDocument`	    	varchar(4) DEFAULT NULL,	--`第 2 補助元帳会計伝票の会計年度`
	`PostingRuleNodeKey`	                            	varchar(16) DEFAULT NULL,	--`転記ルールノードキー`
	`DummyFunction`	                                     	varchar(1) DEFAULT NULL,	--`長さ 1 のダミー機能`
	`StatusOfChangesRegardingForeignCurrency`	        	varchar(1) DEFAULT NULL,	--`外貨に関する変更ステータス`
	`ExchangeRateForeignCurrencyToAccountCurrency`		    varchar(14) DEFAULT NULL,	--`換算レート: 外貨から勘定通貨`
	`ReprocessingReasonCode`		                        varchar(2) DEFAULT NULL,	--`再処理理由コード`
	`BusinessPartnerReferenceKey`	                    	varchar(12) DEFAULT NULL,	--`ビジネスパートナ参照キー`
	`CommitmentItem`	                                	varchar(24) DEFAULT NULL,	--`予算コード`
    PRIMARY KEY (`SendingBank`, `BankStatementID`, `PayeeKey`, `ShortKey`, `MemoRecordNumber`, `LineItemCompleted`),
    CONSTRAINT `SAPBankStatementItemData_fk` FOREIGN KEY (`BankStatementID`) REFERENCES `sap_bank_statement_header_data` (`BankStatementID`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
