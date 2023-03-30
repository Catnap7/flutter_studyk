import 'package:flutter_riverpod/flutter_riverpod.dart';

class Logger extends ProviderObserver {

  // 어떤 프로바이더가 실행되더라도 이 메소드가 실행됨
  @override
  void didUpdateProvider(ProviderBase provider, Object? previousValue,
      Object? newValue, ProviderContainer container) {
    print('[Provider Updated] provider : $provider pv: $previousValue nv: $newValue');
  }

  // 프로바이더를 추가하면 실행되는 메소드
  @override
  void didAddProvider(
      ProviderBase provider, Object? value, ProviderContainer container) {
    print('[Provider Added] provider : $provider value : $value');
  }

  // 프로바이더를 삭제하면 실행되는 메소드 (프로바이더가 dispose될때)
  @override
  void didDisposeProvider(ProviderBase provider, ProviderContainer container) {
    print('[Provider Disposed] provider : $provider');
  }
}