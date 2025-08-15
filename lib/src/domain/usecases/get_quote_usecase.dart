import 'package:riverpod_testprodapp/src/data/repository/quote_repository.dart';

class GetQouteUseCase {
  final QuoteRepository _quoteRepository;

  GetQouteUseCase(this._quoteRepository);

  String call(int index, dynamic repository) {
    return repository.quotes[index];
  }
}
