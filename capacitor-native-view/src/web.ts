import { WebPlugin } from '@capacitor/core';

import type { NativeViewPlugin } from './definitions';

export class NativeViewWeb extends WebPlugin implements NativeViewPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
