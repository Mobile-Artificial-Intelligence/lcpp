// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint
import 'dart:ffi' as ffi;

/// llama.cpp binding
class llama {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  llama(ffi.DynamicLibrary dynamicLibrary) : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  llama.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  ffi.Pointer<ffi.Char> llama_default_params() {
    return _llama_default_params();
  }

  late final _llama_default_paramsPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Char> Function()>>(
          'llama_default_params');
  late final _llama_default_params =
      _llama_default_paramsPtr.asFunction<ffi.Pointer<ffi.Char> Function()>();

  int llama_init(
    ffi.Pointer<ffi.Char> params,
  ) {
    return _llama_init(
      params,
    );
  }

  late final _llama_initPtr =
      _lookup<ffi.NativeFunction<ffi.Int Function(ffi.Pointer<ffi.Char>)>>(
          'llama_init');
  late final _llama_init =
      _llama_initPtr.asFunction<int Function(ffi.Pointer<ffi.Char>)>();

  int llama_prompt(
    ffi.Pointer<ffi.Char> messages,
    ffi.Pointer<dart_output> output,
  ) {
    return _llama_prompt(
      messages,
      output,
    );
  }

  late final _llama_promptPtr = _lookup<
      ffi.NativeFunction<
          ffi.Int Function(ffi.Pointer<ffi.Char>,
              ffi.Pointer<dart_output>)>>('llama_prompt');
  late final _llama_prompt = _llama_promptPtr.asFunction<
      int Function(ffi.Pointer<ffi.Char>, ffi.Pointer<dart_output>)>();

  void llama_stop() {
    return _llama_stop();
  }

  late final _llama_stopPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function()>>('llama_stop');
  late final _llama_stop = _llama_stopPtr.asFunction<void Function()>();

  void llama_api_free() {
    return _llama_api_free();
  }

  late final _llama_api_freePtr =
      _lookup<ffi.NativeFunction<ffi.Void Function()>>('llama_api_free');
  late final _llama_api_free = _llama_api_freePtr.asFunction<void Function()>();
}

typedef dart_output
    = ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Char> buffer)>;
