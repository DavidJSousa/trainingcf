using {Base, STATUS_TYPE} from './commom';
using {training.user.TblUser} from './user';

namespace training.clients;

entity TblClient : Base {
    name: String(100);
    age: Integer;
    familyName: String(100);
}


