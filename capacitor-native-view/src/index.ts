import { registerPlugin } from '@capacitor/core';

import type { NativeViewPlugin } from './definitions';

const NativeView = registerPlugin<NativeViewPlugin>('NativeView', {
  web: () => import('./web').then(m => new m.NativeViewWeb()),
});

export * from './definitions';
export { NativeView };
