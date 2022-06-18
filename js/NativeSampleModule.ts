import type {TurboModule} from 'react-native';
import {TurboModuleRegistry} from 'react-native';

export interface Spec extends TurboModule {
  getHelloWorld(first: string, second: string): string;
}

export default TurboModuleRegistry.getEnforcing<Spec>('NativeSampleModule');
