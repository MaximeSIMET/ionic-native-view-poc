export interface NativeViewPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
