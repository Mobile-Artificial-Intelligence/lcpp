part of 'package:lcpp/lcpp.dart';

class _LlamaIsolateParams {
  final ModelParams modelParams;
  final ContextParams contextParams;
  final SamplingParams samplingParams;

  _LlamaIsolateParams({
    required this.modelParams,
    required this.contextParams,
    required this.samplingParams,
  });

  factory _LlamaIsolateParams.fromJson(String source) =>
      _LlamaIsolateParams.fromMap(jsonDecode(source));

  factory _LlamaIsolateParams.fromMap(Map<String, dynamic> map) =>
      _LlamaIsolateParams(
        modelParams: ModelParams.fromMap(map['modelParams']),
        contextParams: ContextParams.fromMap(map['contextParams']),
        samplingParams: SamplingParams.fromMap(map['samplingParams']),
      );

  Map<String, dynamic> toMap() => {
    'modelParams': modelParams.toJson(),
    'contextParams': contextParams.toJson(),
    'samplingParams': samplingParams.toJson(),
  };

  String toJson() => jsonEncode(toMap());
}