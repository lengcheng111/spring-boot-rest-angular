import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class UserRegistationService {

  api: any = 'http://172.17.0.5:9090/';

  constructor(private http: HttpClient) { }

  public doRegistration(user: any) {
    return this.http.post(this.api + 'register', user, { responseType: 'text' as 'json' });
  }

  public getUsers() {
    return this.http.get(this.api + 'getAllUsers');
  }

  public getUserByEmail(email: any) {
    return this.http.get(this.api + 'findUser/' + email);
  }

  public deleteUser(id: any) {
    return this.http.delete(this.api + 'cancel/' + id);
  }
}
