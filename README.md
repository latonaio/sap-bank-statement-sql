# sap-bank-statement-sql 

sap-bank-statement-sql は、SAPと連携された電子銀行報告書データを保存するSQLテーブルを作成するためのレポジトリです。        

## 前提条件  
sap-bank-statement-sql は、SQL の SAP とのデータ連携にあたり、オンプレミス版である（＝クラウド版ではない）SAPS4HANA API の利用を前提としています。    
クラウド版APIを利用する場合は、ご注意ください。  

## sqlの設定ファイル

sap-bank-statement-sql には、sqlの設定ファイルとして、以下のファイルが含まれています。    

* sap-bank-statement-sql-header-data.sql（SAP 電子銀行報告書 - ヘッダデータ）
* sap-bank-statement-sql-item-data.sql（SAP 電子銀行報告書 - 明細データ）  

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法

MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。  