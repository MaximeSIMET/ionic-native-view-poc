import { Component } from '@angular/core';
import { IonicModule } from '@ionic/angular';
import {NativeView, NativeViewPlugin} from 'capacitor-native-view';

@Component({
  selector: 'app-home',
  templateUrl: 'home.page.html',
  styleUrls: ['home.page.scss'],
  standalone: true,
  imports: [IonicModule],
})
export class HomePage {
  constructor() {}

  async openNativeView() {
    await NativeView.echo({ value:"test"})
  }

  alert() {
    alert("success");
  }
}
