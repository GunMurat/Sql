--TRIGGER OLUŞTURMA 
--Girdi, çıktı gerçekleşen durumlarda, örnek stok girdi çıktısı olan bir firmada biz bir çıkış -giriş işlemi yapınca trigger otomatik olarak ilgili tablo üzerinde bir değişiklik gerçekleşince kendi işlem yapar. Biz tetiklemiş oluruz.

--Trigger Oluşturma ,mzası(Formülü)
Create Trigger TriggerAdı --Kendimiz belirliyoruz.

On tabloAdı --Trigger' ın çalışacağı tabloyu belirtiyoruz.

{FOR | AFTER | INSTEAD OF} --After: Trigger işlem yapıldıktan sonra tetiklenir.
						   --Instead of: Trigger yapılacak  olan işlemin yerine çalışır.

{INSERT | UPDATE | DELETE}	   --Trigger' ın hangi CRUD işlemi yapılınca tetikleneceğini
							   --belirtiyoruz.

AS
Begin

	--SQL Komutlarımız		   --Trigger tetiklenince çalışmasını istediğimiz SQL
							   --komutlarımızı yazıyoruz.

END

