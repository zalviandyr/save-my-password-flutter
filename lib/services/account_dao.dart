import 'package:floor/floor.dart';
import 'package:save_my_password/models/account.dart';

@dao
abstract class AccountDao {
  @Query('SELECT * FROM Account')
  Future<List<Account>> findAllAccount();

  @insert
  Future<void> insertAccount(Account account);

  @update
  Future<void> updateAccount(Account account);

  @delete
  Future<void> deleteAccount(Account account);
}
