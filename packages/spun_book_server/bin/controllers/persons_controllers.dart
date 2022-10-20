import 'package:spun_book_domain/spun_book_domain.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class PersonsController {
  final router = Router();
  PersonRepository personRepository;

  PersonsController(this.personRepository) {
    router.get('/search', searchPerson);
  }

  Future<Response> searchPerson(Request request, String id) async {
    return Response(200);
  }
}
