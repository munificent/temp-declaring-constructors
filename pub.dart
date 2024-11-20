// validasi-0.0.3/lib/src/validators/number_validator.dart:4
/// Responsible for validating [num] for both [double] and [int] also
/// support type conversion from [String] based on [num.tryParse].
class NumberValidator extends Validator<num> {
  NumberValidator({super.transformer});

  @override
  NumberValidator nullable() => super.nullable();

  @override
  NumberValidator custom(CustomCallback<num> callback) => elided;

  @override
  NumberValidator customFor(CustomRule<num> customRule) => elided;

  /// Check if the value is an integer, not a decimal/float.
  NumberValidator nonDecimal({String? message}) {
    // ...
  }

  /// Check if the value is a decimal/float, not an integer.
  NumberValidator decimal({String? message}) {
    // ...
  }

  /// Check if the value is a positive number (> 0).
  NumberValidator positive({String? message}) {
    // ...
  }

  /// Check if the value is a negative number (< 0).
  NumberValidator negative({String? message}) {
    // ...
  }

  /// Check if the value is a non-positive number (<= 0).
  NumberValidator nonPositive({String? message}) {
    // ...
  }

  /// Check if the value is a non-negative number (>= 0).
  NumberValidator nonNegative({String? message}) {
    // ...
  }

  /// Check if the value is greater than [min].
  NumberValidator gt(num min, {String? message}) {
    // ...
  }

  /// Check if the value is greater than or equal to [min].
  NumberValidator gte(num min, {String? message}) {
    // ...
  }

  /// Check if the value is less than [max].
  NumberValidator lt(num max, {String? message}) {
    // ...
  }

  /// Check if the value is less than or equal to [max].
  NumberValidator lte(num max, {String? message}) {
    // ...
  }

  /// Check if the value is a finite number.
  NumberValidator finite({String? message}) {
    // ...
  }
}

// photo_manager-2.8.1/lib/src/filter/custom/custom_filter.dart:8
/// Full custom filter.
///
/// Use the filter to filter all the assets.
///
/// Actually, it is a sql filter.
/// In android: convert where and orderBy to the params of ContentResolver.query
/// In iOS/macOS: convert where and orderBy to the PHFetchOptions to filter the assets.
///
/// Now, the [CustomFilter] is have two sub class:
/// [CustomFilter.sql] to create [SqlCustomFilter].
///
/// The [AdvancedCustomFilter] is a more powerful helper.
///
/// Examples:
/// {@macro PM.sql_custom_filter}
///
/// See also:
/// - [CustomFilter.sql]
/// - [AdvancedCustomFilter]
/// - [OrderByItem]
abstract class CustomFilter extends PMFilter {
  CustomFilter();

  factory CustomFilter.sql({
    required String where,
    List<OrderByItem> orderBy = const [],
  }) {
    // ...
  }

  @override
  BaseFilterType get type => BaseFilterType.custom;

  @override
  Map<String, dynamic> childMap() {
    // ...
  }

  @override
  PMFilter updateDateToNow() {
    // ...
  }

  /// Whether the [AssetEntity]s will return with title.
  bool needTitle = false;

  /// Make the where condition.
  String makeWhere();

  /// Make the order by condition.
  List<OrderByItem> makeOrderBy();
}

// suggest_a_feature-0.5.0/lib/src/presentation/pages/widgets/avatar_widget.dart:8
class AvatarWidget extends StatelessWidget {
  final String? avatar;
  final double size;
  final Color? backgroundColor;
  final double iconPadding;

  const AvatarWidget({
    required this.size,
    this.avatar,
    this.backgroundColor,
    this.iconPadding = Dimensions.marginSmall,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // ...
  }
}

// amity_sdk-0.46.1/lib/src/domain/usecase/post/post_delete_usecase.dart:4
/// Post Delete Usecase
class PostDeleteUseCase extends UseCase<void, String> {
  /// Post Repo
  final PostRepo postRepo;

  /// Init [PostDeleteUseCase]
  PostDeleteUseCase({required this.postRepo});

  @override
  Future get(String params) {
    // ...
  }
}

// ffigen-15.0.0/lib/src/code_generator/writer.dart:14
/// To store generated String bindings.
class Writer {
  final String? header;

  /// Holds bindings, which lookup symbols.
  final List<Binding> lookUpBindings;

  /// Holds bindings, which lookup symbols through `FfiNative`.
  final List<Binding> ffiNativeBindings;

  /// Holds bindings which don't lookup symbols.
  final List<Binding> noLookUpBindings;

  /// The default asset id to use for [ffiNativeBindings].
  final String? nativeAssetId;

  /// Manages the `_SymbolAddress` class.
  final symbolAddressWriter = SymbolAddressWriter();

  late String _className;
  String get className => _className;

  final String? classDocComment;

  final bool generateForPackageObjectiveC;

  final List<String> nativeEntryPoints;

  /// Tracks where enumType.getCType is called. Reset everytime [generate] is
  /// called.
  bool usedEnumCType = false;

  String? _ffiLibraryPrefix;
  String get ffiLibraryPrefix {
    // ...
  }

  String? _ffiPkgLibraryPrefix;
  String get ffiPkgLibraryPrefix {
    // ...
  }

  String? _objcPkgPrefix;
  String get objcPkgPrefix {
    // ...
  }

  late String selfImportPrefix = () {
    // ...
  }();

  final Set<LibraryImport> _usedImports = {};

  late String _lookupFuncIdentifier;
  String get lookupFuncIdentifier => _lookupFuncIdentifier;

  late String _symbolAddressClassName;
  late String _symbolAddressVariableName;
  late String _symbolAddressLibraryVarName;

  /// Initial namers set after running constructor. Namers are reset to this
  /// initial state everytime [generate] is called.
  late UniqueNamer _initialTopLevelUniqueNamer, _initialWrapperLevelUniqueNamer;

  /// Used by [Binding]s for generating required code.
  late UniqueNamer _topLevelUniqueNamer;
  UniqueNamer get topLevelUniqueNamer => _topLevelUniqueNamer;
  late UniqueNamer _wrapperLevelUniqueNamer;
  UniqueNamer get wrapperLevelUniqueNamer => _wrapperLevelUniqueNamer;
  late UniqueNamer _objCLevelUniqueNamer;
  UniqueNamer get objCLevelUniqueNamer => _objCLevelUniqueNamer;

  late String _arrayHelperClassPrefix;

  /// Guaranteed to be a unique prefix.
  String get arrayHelperClassPrefix => _arrayHelperClassPrefix;

  /// Set true after calling [generate]. Indicates if
  /// [generateSymbolOutputYamlMap] can be called.
  bool get canGenerateSymbolOutput => _canGenerateSymbolOutput;
  bool _canGenerateSymbolOutput = false;

  final bool silenceEnumWarning;

  Writer({
    required this.lookUpBindings,
    required this.ffiNativeBindings,
    required this.noLookUpBindings,
    required String className,
    required this.nativeAssetId,
    List<LibraryImport>? additionalImports,
    this.classDocComment,
    this.header,
    required this.generateForPackageObjectiveC,
    required this.silenceEnumWarning,
    required this.nativeEntryPoints,
  }) {
    // ...
  }

  /// Resolved name conflict using [makeUnique] and marks the result as used in
  /// all [markUsed].
  String _resolveNameConflict({
    required String name,
    required UniqueNamer makeUnique,
    List<UniqueNamer> markUsed = const [],
  }) {
    // ...
  }

  /// Resets the namers to initial state. Namers are reset before generating.
  void _resetUniqueNamersNamers() {
    // ...
  }

  void markImportUsed(LibraryImport import) {
    // ...
  }

  /// Writes all bindings to a String.
  String generate() {
    // ...
  }

  List<Binding> get _allBindings => <Binding>[];

  Map<String, dynamic> generateSymbolOutputYamlMap(String importFilePath) {
    // ...
  }

  static String _objcImport(String entryPoint, String outDir) {
    // ...
  }

  /// Writes the Objective C code needed for the bindings, if any. Returns null
  /// if there are no bindings that need generated ObjC code. This function does
  /// not generate the output file, but the [outFilename] does affect the
  /// generated code.
  String? generateObjC(String outFilename) {
    // ...
  }
}

// coverage-1.10.0/lib/src/resolver.dart:10
/// [Resolver] resolves imports with respect to a given environment.
class Resolver {
  @Deprecated('Use Resolver.create')
  Resolver({this.packagesPath, this.sdkRoot})
    : _packages = packagesPath != null ? _parsePackages(packagesPath) : null,
      packagePath = null;

  Resolver._({
    this.packagesPath,
    this.packagePath,
    this.sdkRoot,
    Map<String, Uri>? packages,
  }) : _packages = packages;

  static Future<Resolver> create({
    String? packagesPath,
    String? packagePath,
    String? sdkRoot,
  }) async {
    // ...
  }

  final String? packagesPath;
  final String? packagePath;
  final String? sdkRoot;
  final List<String> failed = [];
  final Map<String, Uri>? _packages;

  /// Returns the absolute path wrt. to the given environment or null, if the
  /// import could not be resolved.
  String? resolve(String scriptUri) {
    // ...
  }

  /// Returns a canonicalized path, or `null` if the path cannot be resolved.
  String? resolveSymbolicLinks(String path) {
    // ...
  }

  static Map<String, Uri> _parsePackages(String packagesPath) {
    // ...
  }

  static Future<Map<String, Uri>?> _parsePackage(String packagePath) async {
    // ...
  }
}

// thingsboard_client-1.0.7/lib/src/model/query/query_models.dart:162
class AssetTypeFilter extends EntityFilter {
  String assetType;
  String? assetNameFilter;

  AssetTypeFilter({required this.assetType, this.assetNameFilter});

  @override
  EntityFilterType getType() {
    // ...
  }

  @override
  Map<String, dynamic> toJson() {
    // ...
  }

  @override
  String toString() {
    // ...
  }
}

// webview_flutter_android-4.0.0/test/android_webview_controller_test.mocks.dart:157
class _FakePlatformViewsServiceProxy_11 extends _i1.SmartFake
    implements _i6.PlatformViewsServiceProxy {
  _FakePlatformViewsServiceProxy_11(super.parent, super.parentInvocation);
}

// copy_pasta-0.0.7/lib/allyouneed/inventory_firestore/data.dart:1
class Item {
  String name;
  int quantity;
  double price;

  // Constructor with initialization using named parameters
  Item(this.name, this.quantity, this.price);
}

// yt-2.2.5+2/lib/src/model/videos/content_details.dart:7
@JsonSerializable(explicitToJson: true)
class ContentDetails {
  final String duration;
  final String dimension;
  final String definition;
  final String caption;
  final bool licensedContent;
  final Map<String, dynamic>? regionRestriction;

  ContentDetails({
    required this.duration,
    required this.dimension,
    required this.definition,
    required this.caption,
    required this.licensedContent,
    this.regionRestriction,
  });

  factory ContentDetails.fromJson(Map<String, dynamic> json) =>
      _$ContentDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$ContentDetailsToJson(this);

  @override
  String toString() => jsonEncode(toJson());
}

// rohd-0.5.1/doc/tutorials/chapter_9/rohd_vf_example/lib/rohd_vf_example.dart:52
class MySequence extends Sequence {
  final int numRepeat;

  MySequence(this.numRepeat, {String name = 'mySequence'}) : super(name);

  @override
  Future<void> body(Sequencer sequencer) async {
    // ...
  }
}

// sentry_flutter-8.9.0/lib/src/native/cocoa/binding.dart:55741
class NSNumberFormatter extends NSFormatter {
  NSNumberFormatter._(
    ffi.Pointer<ObjCObject> id,
    SentryCocoa lib, {
    bool retain = false,
    bool release = false,
  }) : super._(id, lib, retain: retain, release: release);

  /// Returns a [NSNumberFormatter] that points to the same underlying object as [other].
  static NSNumberFormatter castFrom<T extends _ObjCWrapper>(T other) {
    // ...
  }

  /// Returns a [NSNumberFormatter] that wraps the given raw object pointer.
  static NSNumberFormatter castFromPointer(
    SentryCocoa lib,
    ffi.Pointer<ObjCObject> other, {
    bool retain = false,
    bool release = false,
  }) {
    // ...
  }

  /// Returns whether [obj] is an instance of [NSNumberFormatter].
  static bool isInstance(_ObjCWrapper obj) {
    // ...
  }

  int get formattingContext {
    // ...
  }

  set formattingContext(int value) {
    // ...
  }

  bool getObjectValue_forString_range_error_(
    ffi.Pointer<ffi.Pointer<ObjCObject>> obj,
    NSString? string,
    ffi.Pointer<_NSRange> rangep,
    ffi.Pointer<ffi.Pointer<ObjCObject>> error,
  ) {
    // ...
  }

  NSString stringFromNumber_(NSNumber? number) {
    // ...
  }

  NSNumber numberFromString_(NSString? string) {
    // ...
  }

  static NSString localizedStringFromNumber_numberStyle_(
    SentryCocoa _lib,
    NSNumber? num,
    int nstyle,
  ) {
    // ...
  }

  static int defaultFormatterBehavior(SentryCocoa _lib) {
    // ...
  }

  static void setDefaultFormatterBehavior_(SentryCocoa _lib, int behavior) {
    // ...
  }

  // Elided many more members...
}

// plotline_engage-4.1.8/example/lib/widgets/artist_details.dart:6
class ArtistDetailsScreen extends StatelessWidget {
  final Artist artist;

  const ArtistDetailsScreen({super.key, required this.artist});

  @override
  Widget build(BuildContext context) {
    // ...
  }
}

// growerp_user_company-1.6.0/lib/src/company/bloc/company_bloc.dart:38
class CompanyBloc extends Bloc<CompanyEvent, CompanyState>
    with CompanyLeadBloc, CompanyCustomerBloc, CompanySupplierBloc {
  CompanyBloc(this.restClient, this.role) : super(const CompanyState()) {
    // ...
  }

  final RestClient restClient;
  final Role? role;
  int start = 0;

  Future<void> _onCompanyFetch(
    CompanyFetch event,
    Emitter<CompanyState> emit,
  ) async {
    // ...
  }

  Future<void> _onCompanyUpdate(
    CompanyUpdate event,
    Emitter<CompanyState> emit,
  ) async {
    // ...
  }

  Future<void> _onCompanyDelete(
    CompanyDelete event,
    Emitter<CompanyState> emit,
  ) async {}
}

// lc_widgets-1.2.2+22/lib/src/tools/screen.dart:10
class ScreenUtil {
  late final Size screenSize;

  ScreenUtil(BuildContext context) : screenSize = MediaQuery.of(context).size;

  /// is mobile or screen.width < 576
  static bool isMobile(BuildContext context) {
    // ...
  }

  /// xs - < 576px
  ScreenBreakpoint get xs => ScreenBreakpoint(null, Breakpoint.xs, screenSize);

  /// sm - >= 576px && < 768px
  ScreenBreakpoint get sm =>
      ScreenBreakpoint(Breakpoint.xs, Breakpoint.md, screenSize);

  /// md - >= 768px && < 992px
  ScreenBreakpoint get md =>
      ScreenBreakpoint(Breakpoint.md, Breakpoint.lg, screenSize);

  /// lg - >= 992px && < 1200px
  ScreenBreakpoint get lg =>
      ScreenBreakpoint(Breakpoint.lg, Breakpoint.xl, screenSize);

  /// xl - >= 1200px && < 1600px
  ScreenBreakpoint get xl =>
      ScreenBreakpoint(Breakpoint.xl, Breakpoint.xxl, screenSize);

  /// xxl - >= 1600px
  ScreenBreakpoint get xxl =>
      ScreenBreakpoint(Breakpoint.xxl, null, screenSize);

  bool lt(double? max) {
    // ...
  }

  bool gt(double? min) {
    // ...
  }
}

// dart_mavlink-0.1.0/lib/dialects/development.dart:36044
/// Telemetry of power generation system. Alternator or mechanical generator.
///
/// GENERATOR_STATUS
class GeneratorStatus implements MavlinkMessage {
  static const int _mavlinkMessageId = 373;

  static const int _mavlinkCrcExtra = 117;

  static const int mavlinkEncodedLength = 42;

  @override
  int get mavlinkMessageId => _mavlinkMessageId;

  @override
  int get mavlinkCrcExtra => _mavlinkCrcExtra;

  /// Status flags.
  ///
  /// MAVLink type: uint64_t
  ///
  /// enum: [MavGeneratorStatusFlag]
  ///
  /// status
  final MavGeneratorStatusFlag status;

  /// Current into/out of battery. Positive for out. Negative for in. NaN: field not provided.
  ///
  /// MAVLink type: float
  ///
  /// units: A
  ///
  /// battery_current
  final float batteryCurrent;

  /// Current going to the UAV. If battery current not available this is the DC current from the generator. Positive for out. Negative for in. NaN: field not provided
  ///
  /// MAVLink type: float
  ///
  /// units: A
  ///
  /// load_current
  final float loadCurrent;

  /// The power being generated. NaN: field not provided
  ///
  /// MAVLink type: float
  ///
  /// units: W
  ///
  /// power_generated
  final float powerGenerated;

  /// Voltage of the bus seen at the generator, or battery bus if battery bus is controlled by generator and at a different voltage to main bus.
  ///
  /// MAVLink type: float
  ///
  /// units: V
  ///
  /// bus_voltage
  final float busVoltage;

  /// The target battery current. Positive for out. Negative for in. NaN: field not provided
  ///
  /// MAVLink type: float
  ///
  /// units: A
  ///
  /// bat_current_setpoint
  final float batCurrentSetpoint;

  /// Seconds this generator has run since it was rebooted. UINT32_MAX: field not provided.
  ///
  /// MAVLink type: uint32_t
  ///
  /// units: s
  ///
  /// runtime
  final uint32_t runtime;

  /// Seconds until this generator requires maintenance.  A negative value indicates maintenance is past-due. INT32_MAX: field not provided.
  ///
  /// MAVLink type: int32_t
  ///
  /// units: s
  ///
  /// time_until_maintenance
  final int32_t timeUntilMaintenance;

  /// Speed of electrical generator or alternator. UINT16_MAX: field not provided.
  ///
  /// MAVLink type: uint16_t
  ///
  /// units: rpm
  ///
  /// generator_speed
  final uint16_t generatorSpeed;

  /// The temperature of the rectifier or power converter. INT16_MAX: field not provided.
  ///
  /// MAVLink type: int16_t
  ///
  /// units: degC
  ///
  /// rectifier_temperature
  final int16_t rectifierTemperature;

  /// The temperature of the mechanical motor, fuel cell core or generator. INT16_MAX: field not provided.
  ///
  /// MAVLink type: int16_t
  ///
  /// units: degC
  ///
  /// generator_temperature
  final int16_t generatorTemperature;

  GeneratorStatus({
    required this.status,
    required this.batteryCurrent,
    required this.loadCurrent,
    required this.powerGenerated,
    required this.busVoltage,
    required this.batCurrentSetpoint,
    required this.runtime,
    required this.timeUntilMaintenance,
    required this.generatorSpeed,
    required this.rectifierTemperature,
    required this.generatorTemperature,
  });

  factory GeneratorStatus.parse(ByteData data_) {
    // ...
  }

  @override
  ByteData serialize() {
    // ...
  }
}

// iconoir_flutter-7.1.0/lib/regular/fx.dart:4
class Fx extends widgets.StatelessWidget {
  final widgets.Color? color;
  final double? width;
  final double? height;

  const Fx({super.key, this.color, this.width, this.height});

  @override
  widgets.Widget build(widgets.BuildContext context) {
    // ...
  }
}

// riverpod-2.6.0/lib/src/framework/container.dart:5
class _FamilyOverrideRef {
  _FamilyOverrideRef(this.override, this.container);

  FamilyOverride<Object?> override;
  final ProviderContainer container;
}

// usercentrics_sdk-2.17.3/lib/src/internal/bridge/get_tcf_data_bridge.dart:13
class MethodChannelGetTCFData extends GetTCFDataBridge {
  const MethodChannelGetTCFData();

  static const String _name = 'getTCFData';

  @override
  Future<TCFData> invoke({required MethodChannel channel}) async {
    // ...
  }
}

// duck_router-5.4.0/test/src/test_helpers.dart:282
class CustomPageTransitionLocation extends Location {
  const CustomPageTransitionLocation();

  @override
  String get path => 'custom-page-transition';

  @override
  LocationPageBuilder get pageBuilder {
    // ...
  }
}

// nb_utils-6.0.7/lib/src/widgets/animatedList/animated_configurations.dart:11
class AnimatedItemWidget extends StatelessWidget {
  final ListAnimationType listAnimationType;
  final Widget child;

  final SlideConfiguration? slideConfiguration;
  final FadeInConfiguration? fadeInConfiguration;
  final ScaleConfiguration? scaleConfiguration;
  final FlipConfiguration? flipConfiguration;

  AnimatedItemWidget({
    super.key,
    required this.child,
    this.listAnimationType = ListAnimationType.Slide,
    SlideConfiguration? slideConfiguration,
    FadeInConfiguration? fadeInConfiguration,
    ScaleConfiguration? scaleConfiguration,
    FlipConfiguration? flipConfiguration,
  }) : slideConfiguration = slideConfiguration ?? SlideConfiguration(),
       fadeInConfiguration = fadeInConfiguration ?? FadeInConfiguration(),
       scaleConfiguration = scaleConfiguration ?? ScaleConfiguration(),
       flipConfiguration = flipConfiguration ?? FlipConfiguration();

  @override
  Widget build(BuildContext context) {
    // ...
  }
}

// rhttp-0.8.1/lib/src/interceptor/sequential_interceptor.dart:6
/// An interceptor that queues other interceptors sequentially.
class SequentialInterceptor extends Interceptor {
  final List<Interceptor> interceptors;

  SequentialInterceptor({required this.interceptors});

  @override
  Future<InterceptorResult<HttpRequest>> beforeRequest(
    HttpRequest request,
  ) async {
    // ...
  }

  @override
  Future<InterceptorResult<HttpResponse>> afterResponse(
    HttpResponse response,
  ) async {
    // ...
  }

  @override
  Future<InterceptorResult<RhttpException>> onError(
    RhttpException exception,
  ) async {
    // ...
  }
}

// dropdown_wheel_picker-0.1.1/lib/src/item_picker.dart:5
class DropdownItemPicker extends StatefulWidget {
  DropdownItemPicker({
    super.key,
    required this.pickerTitle,
    required this.items,
    this.onChanged,
    this.initialItemIndex = 0,
    this.scrollWheelHeight = 100,
    this.backgroundColor = Colors.white,
  });

  final Widget pickerTitle;
  final List<Widget> items;
  final ValueChanged<(Widget, int)>? onChanged;
  final int initialItemIndex;
  final double scrollWheelHeight;
  final Color backgroundColor;

  @override
  State<DropdownItemPicker> createState() => _DropdownItemPickerState();
}

// super_native_extensions-0.8.24/lib/src/menu_model.dart:89
class MenuActionAttributes {
  const MenuActionAttributes({this.disabled = false, this.destructive = false});

  final bool disabled;
  final bool destructive;
}

// image-4.3.0/lib/src/command/formats/gif_cmd.dart:33
/// Encode an Image to the GIF format.
class EncodeGifCmd extends Command {
  int samplingFactor;
  DitherKernel dither;
  bool ditherSerpentine;

  EncodeGifCmd(
    super.input, {
    this.samplingFactor = 10,
    this.dither = DitherKernel.floydSteinberg,
    this.ditherSerpentine = false,
  });

  @override
  Future<void> executeCommand() async {
    // ...
  }
}

// signalr_netcore_plus-1.3.7/lib/handshake_protocol.dart:20
/// private
class HandshakeResponseMessage {
  // Properties
  final String? error;
  final int? minorVersion;

  // Methods
  HandshakeResponseMessage(this.error, this.minorVersion);

  HandshakeResponseMessage.fromJson(Map<String, dynamic> json)
    : error = json["error"],
      minorVersion = json["minorVersion"];
}

// video_player_videohole-0.3.0/lib/src/register_drm_callback_real.dart:18
class _CppRequest {
  _CppRequest.fromList(List<Object?> message)
    : replyPort = message[0]! as SendPort,
      pendingCall = message[1]! as int,
      method = message[2]! as String,
      data = message[3]! as Uint8List;

  final SendPort replyPort;
  final int pendingCall;
  final String method;
  final Uint8List data;
}

// based_of_game-0.5.7+1/lib/src/games/match_arabic/manager/match_vertical_state.dart:3
@immutable
class MatchVerticalState extends Equatable {
  final GameFinalModel gameData;
  final int countQuestions;
  final List<GameLettersGameFinalModel> answers;
  final List<GameImagesGameFinalModel> imageAnswers;
  final List<GlobalKey> answersKey;
  final List<GlobalKey> questionsKey;
  final bool isArabic;
  final List<GameLettersGameFinalModel> correctAnswers;
  final bool isLetterVisible;

  MatchVerticalState({
    required this.gameData,
    required this.countQuestions,
    required this.answers,
    this.answersKey = const [],
    this.questionsKey = const [],
    this.correctAnswers = const [],
    this.isArabic = true,
    this.isLetterVisible = false,
    required this.imageAnswers,
  });

  MatchVerticalState copyWith({
    GameFinalModel? gameData,
    List<GameLettersGameFinalModel>? correctAnswers,
    bool? isArabic,
    bool? isLetterVisible,
    int? countQuestions,
    List<GlobalKey>? answersKey,
    List<GlobalKey>? questionsKey,
    List<GameLettersGameFinalModel>? answers,
    List<GameImagesGameFinalModel>? imageAnswers,
  }) {
    // ...
  }

  @override
  List<Object?> get props => [];
}

// yumeeting_flutter_sdk-0.7.1/lib/src/client.dart:26
class Transport {
  Transport(this.signal);

  static Future<Transport> create({
    required int role,
    required Signal signal,
    required Map<String, dynamic> config,
  }) async {
    // ...
  }

  bool hasRemoteDescription = false;
  Function()? onapiopen;
  RTCDataChannel? api;
  Signal signal;
  RTCPeerConnection? pc;
  List<RTCIceCandidate> candidates = [];
}

// lazyui-4.1.2/example/lib/app/modules/home/views/home_view.dart:5
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // ...
  }
}

// ds_ads-1.1.0/lib/src/applovin_ads/ds_applovin_ad_widget.dart:9
class DSAppLovinAdWidget extends StatefulWidget {
  /// Default constructor for [DSAppLovinAdWidget].
  ///
  /// [ad] must be loaded before this is added to the widget tree.
  const DSAppLovinAdWidget({super.key, required this.ad});

  final DSAppLovinNativeAd ad;

  @override
  State<DSAppLovinAdWidget> createState() => _DSAppLovinAdWidgetState();
}

// monobank_api-2.1.0/lib/src/mono.dart:306
/// Send ID
///
/// Identifies IDs that can be used to compose send.monobank.ua links
/// and provides a composer for them
class SendId {
  /// Construct a Send ID
  ///
  /// Type can be either [SendIdType.client] or [SendIdType.jar], which impacts
  /// the format of the link
  SendId(this.id, this.type);

  /// Url for the send.monobank.ua link
  ///
  /// Constructed from [id] and [type]
  Uri get url => Uri();

  /// Send ID of the client or jar
  final String id;

  /// Type of the ID
  ///
  /// See [SendIdType]
  final SendIdType type;

  @override
  String toString() {
    // ...
  }
}

// rosita-0.5.6/lib/src/widgets/rosita_image.dart:6
class RositaImage extends LeafRenderObjectWidget {
  const RositaImage.asset(
    String name, {
    super.key,
    this.borderRadius,
    this.fit,
    this.alignment = Alignment.center,
    this.onLoad,
    this.onError,
    String? package,
  }) : src =
           package == null ? 'assets/$name' : 'assets/packages/$package/$name';

  const RositaImage.network(
    String url, {
    super.key,
    this.borderRadius,
    this.fit,
    this.alignment = Alignment.center,
    this.onLoad,
    this.onError,
  }) : src = url;

  final String src;
  final AlignmentGeometry alignment;
  final BorderRadiusGeometry? borderRadius;
  final BoxFit? fit;
  final VoidCallback? onLoad;
  final VoidCallback? onError;

  @override
  RenderRositaImage createRenderObject(BuildContext context) {
    // ...
  }

  @override
  void updateRenderObject(
    BuildContext context,
    RenderRositaImage renderObject,
  ) {
    // ...
  }
}

// kaspa_dart-0.0.4/lib/kaspa/extend_private_key/exceptions.dart:43
/// Thrown when deserializing a key which is not of correct length.
class InvalidKeyLength implements Exception {
  int actual;
  int expected;

  InvalidKeyLength(this.actual, this.expected);

  String toString() => "Key length not correct.";
}

// bones_api-1.5.10/lib/src/bones_api_entity_db_memory.dart:23
class DBSQLMemoryAdapterContext
    implements Comparable<DBSQLMemoryAdapterContext> {
  final int id;

  final DBSQLMemoryAdapter sqlAdapter;

  final Map<String, int> tablesVersions;

  DBSQLMemoryAdapterContext(this.id, this.sqlAdapter)
    : tablesVersions = sqlAdapter.tablesVersions;

  bool _closed = false;

  bool get isClosed => _closed;

  void close() {
    // ...
  }

  @override
  int compareTo(DBSQLMemoryAdapterContext other) => id.compareTo(other.id);
}

// nb_utils-7.0.5/lib/src/widgets/restart_app_widget.dart:3
/// RestartAppWidget helps you to restart your Flutter app
class RestartAppWidget extends StatefulWidget {
  final Widget child;

  RestartAppWidget({super.key, required this.child});

  @override
  _RestartAppWidgetState createState() => _RestartAppWidgetState();

  static init(BuildContext context) => restartApp();
}

// sentry_flutter-8.3.0/lib/src/sentry_flutter_options.dart:15
/// This class adds options which are only available in a Flutter environment.
/// Note that some of these options require native Sentry integration, which is
/// not available on all platforms.
class SentryFlutterOptions extends SentryOptions {
  SentryFlutterOptions({super.dsn, super.checker}) {
    // ...
  }

  /// Initializes the Native SDKs on init.
  /// Set this to `false` if you have an existing native SDK and don't want to re-initialize.
  ///
  /// NOTE: Be careful and only use this if you know what you are doing.
  /// If you use this flag, make sure a native SDK is running before the Flutter Engine initializes or events might not be captured.
  /// Defaults to `true`.
  bool autoInitializeNativeSdk = true;

  /// Enable or disable reporting of used packages.
  bool reportPackages = true;

  /// Enable or disable the Auto session tracking on the Native SDKs (Android/iOS)
  bool enableAutoSessionTracking = true;

  /// Enable or disable the Crash handling on the Native SDKs, e.g.,
  /// UncaughtExceptionHandler and [anrEnabled] for Android.
  ///
  /// SentryCrashIntegration (KSCrash) for iOS, turning this feature off on iOS
  /// has a side effect which is missing the Device's context, e.g.,
  /// App, Device and Operation System.
  ///
  /// Disabling this feature affects the [enableAutoSessionTracking]
  /// feature, as this is required to mark Sessions as Crashed.
  bool enableNativeCrashHandling = true;

  Duration _autoSessionTrackingInterval = Duration(milliseconds: 30000);

  /// The session tracking interval. This is the interval to end a
  /// session if the App goes to the background.
  /// Default is 30 seconds/30000 milliseconds.
  /// See: [enableAutoSessionTracking]
  /// Always uses the given duration as a positiv timespan.
  Duration get autoSessionTrackingInterval => _autoSessionTrackingInterval;

  set autoSessionTrackingInterval(Duration value) {
    // ...
  }

  /// Enable or disable ANR (Application Not Responding).
  /// Available only for Android.
  /// Disabled by default as the stack trace most of the time is hanging on
  /// the MessageChannel from Flutter, but you can enable it if you have
  /// Java/Kotlin code as well.
  bool anrEnabled = false;

  Duration _anrTimeoutInterval = Duration(milliseconds: 5000);

  /// ANR Timeout internal. Default is 5000 milliseconds or 5 seconds.
  /// Used by Androids AnrIntegration. Available only on Android.
  /// See: [anrEnabled]
  /// Always uses the given duration as a positiv timespan.
  Duration get anrTimeoutInterval => _anrTimeoutInterval;

  set anrTimeoutInterval(Duration value) {
    // ...
  }

  /// Enable or disable the Automatic breadcrumbs on the Native platforms (Android/iOS)
  /// Screen's lifecycle, App's lifecycle, System events, etc...
  ///
  /// If you only want to record breadcrumbs inside the Flutter environment
  /// consider using [useFlutterBreadcrumbTracking].
  bool enableAutoNativeBreadcrumbs = true;

  int _maxCacheItems = 30;

  /// Defines the maximal amount of offline stored events. Default is 30.
  /// Only available on Android, iOS and macOS.
  int get maxCacheItems => _maxCacheItems;

  set maxCacheItems(int value) {
    // ...
  }

  /// Consider disabling [enableAutoNativeBreadcrumbs] if you
  /// enable this. Otherwise you might record app lifecycle events twice.
  /// Also consider using [enableBreadcrumbTrackingForCurrentPlatform]
  /// instead for more sensible defaults.
  ///
  /// Android:
  /// This is more or less equivalent to the [Activity Lifecycle](https://developer.android.com/guide/components/activities/activity-lifecycle).
  /// However because an Android Flutter application lives inside a single
  /// [Activity](https://developer.android.com/reference/android/app/Activity)
  /// this is an application wide lifecycle event.
  ///
  /// iOS:
  /// This is more or less equivalent to the [UIViewController](https://developer.apple.com/documentation/uikit/uiviewcontroller)s
  /// [lifecycle](https://developer.apple.com/documentation/uikit/app_and_environment/managing_your_app_s_life_cycle).
  /// However because an iOS Flutter application lives inside a single
  /// `UIViewController` this is an application wide lifecycle event.
  bool enableAppLifecycleBreadcrumbs = false;

  /// Consider disabling [enableAutoNativeBreadcrumbs] if you
  /// enable this. Otherwise you might record window metric events twice.
  /// Also consider using [enableBreadcrumbTrackingForCurrentPlatform]
  /// instead for more sensible defaults.
  bool enableWindowMetricBreadcrumbs = false;

  /// Consider disabling [enableAutoNativeBreadcrumbs] if you
  /// enable this. Otherwise you might record brightness change events twice.
  /// Also consider using [enableBreadcrumbTrackingForCurrentPlatform]
  /// instead for more sensible defaults.
  bool enableBrightnessChangeBreadcrumbs = false;

  /// Consider disabling [enableAutoNativeBreadcrumbs] if you
  /// enable this. Otherwise you might record text scale change events twice.
  /// Also consider using [enableBreadcrumbTrackingForCurrentPlatform]
  /// instead for more sensible defaults.
  bool enableTextScaleChangeBreadcrumbs = false;

  /// Consider disabling [enableAutoNativeBreadcrumbs] if you
  /// enable this. Otherwise you might record memory pressure events twice.
  /// Also consider using [enableBreadcrumbTrackingForCurrentPlatform]
  /// instead for more sensible defaults.
  bool enableMemoryPressureBreadcrumbs = false;

  /// By default, we don't report [FlutterErrorDetails.silent] errors,
  /// but you can by enabling this flag.
  /// See https://api.flutter.dev/flutter/foundation/FlutterErrorDetails/silent.html
  bool reportSilentFlutterErrors = false;

  /// Enables Out of Memory Tracking for iOS and macCatalyst.
  /// See the following link for more information and possible restrictions:
  /// https://docs.sentry.io/platforms/apple/guides/ios/configuration/out-of-memory/
  bool enableWatchdogTerminationTracking = true;

  /// Enable scope sync from Java to NDK.
  /// Only available on Android.
  bool enableNdkScopeSync = true;

  /// Enable auto performance tracking by default.
  bool enableAutoPerformanceTracing = true;

  /// Automatically track app start measurement and send it with the
  /// first transaction. Set to false when configuring option to disable or if
  /// you want to set the end time of app startup manually using
  /// [SentryFlutter.setAppStartEnd].
  bool autoAppStart = true;

  /// Automatically attaches a screenshot when capturing an error or exception.
  ///
  /// Requires adding the [SentryScreenshotWidget] to the widget tree.
  /// Example:
  /// runApp(SentryScreenshotWidget(child: App()));
  /// The [SentryScreenshotWidget] has to be the root widget of the app.
  bool attachScreenshot = false;

  /// The quality of the attached screenshot
  SentryScreenshotQuality screenshotQuality = SentryScreenshotQuality.high;

  /// Only attach a screenshot when the app is resumed.
  bool attachScreenshotOnlyWhenResumed = false;

  /// Sets a callback which is executed before capturing screenshots. Only
  /// relevant if `attachScreenshot` is set to true. When false is returned
  /// from the function, no screenshot will be attached.
  BeforeScreenshotCallback? beforeScreenshot;

  /// Enable or disable automatic breadcrumbs for User interactions Using [Listener]
  ///
  /// Requires adding the [SentryUserInteractionWidget] to the widget tree.
  /// Example:
  /// runApp(SentryUserInteractionWidget(child: App()));
  bool enableUserInteractionBreadcrumbs = true;

  /// Enables the Auto instrumentation for user interaction tracing.
  ///
  /// Requires adding the [SentryUserInteractionWidget] to the widget tree.
  /// Example:
  /// runApp(SentryUserInteractionWidget(child: App()));
  bool enableUserInteractionTracing = true;

  /// Enable or disable the tracing of time to full display (TTFD).
  /// If `SentryFlutter.reportFullyDisplayed()` is not called within 30 seconds
  /// after the creation of the TTFD span, it will finish with the status [SpanStatus.deadlineExceeded].
  /// This feature requires using the [Routing Instrumentation](https://docs.sentry.io/platforms/flutter/integrations/routing-instrumentation/).
  bool enableTimeToFullDisplayTracing = false;

  /// Sets the Proguard uuid for Android platform.
  String? proguardUuid;

  @internal
  late RendererWrapper rendererWrapper = RendererWrapper();

  /// Enables the View Hierarchy feature.
  ///
  /// Renders an ASCII represention of the entire view hierarchy of the
  /// application when an error happens and includes it as an attachment.
  @experimental
  bool attachViewHierarchy = false;

  /// When enabled, the SDK tracks when the application stops responding for a
  /// specific amount of time, See [appHangTimeoutInterval].
  /// Only available on iOS and macOS.
  bool enableAppHangTracking = true;

  /// The minimum amount of time an app should be unresponsive to be classified
  /// as an App Hanging. The actual amount may be a little longer. Avoid using
  /// values lower than 100ms, which may cause a lot of app hangs events being
  /// transmitted.
  /// Default to 2s.
  /// Only available on iOS and macOS.
  Duration appHangTimeoutInterval = Duration(seconds: 2);

  /// Connection timeout. This will only be synced to the Android native SDK.
  Duration connectionTimeout = Duration(seconds: 5);

  /// Read timeout. This will only be synced to the Android native SDK.
  Duration readTimeout = Duration(seconds: 5);

  /// By using this, you are disabling native [Breadcrumb] tracking and instead
  /// you are just tracking [Breadcrumb]s which result from events available
  /// in the current Flutter environment.
  void useFlutterBreadcrumbTracking() {
    // ...
  }

  /// By using this, you are enabling native [Breadcrumb] tracking and disabling
  /// tracking [Breadcrumb]s which result from events available
  /// in the current Flutter environment.
  void useNativeBreadcrumbTracking() {
    // ...
  }

  /// Automatically set sensible defaults for tracking [Breadcrumb]s.
  /// It considers the current platform and available native integrations.
  ///
  /// For platforms which have a native integration available this uses the
  /// native integration. On all other platforms it tracks events which are
  /// available in the Flutter environment. This way you get more detailed
  /// information where available.
  void enableBreadcrumbTrackingForCurrentPlatform() {
    // ...
  }

  /// Setting this to a custom [BindingWrapper] allows you to use a custom [WidgetsBinding].
  @experimental
  BindingWrapper bindingUtils = BindingWrapper();

  /// The sample rate for profiling traces in the range of 0.0 to 1.0.
  /// This is relative to tracesSampleRate - it is a ratio of profiled traces out of all sampled traces.
  /// At the moment, only apps targeting iOS and macOS are supported.
  @override
  @experimental
  double? get profilesSampleRate {
    // ...
  }

  /// The sample rate for profiling traces in the range of 0.0 to 1.0.
  /// This is relative to tracesSampleRate - it is a ratio of profiled traces out of all sampled traces.
  /// At the moment, only apps targeting iOS and macOS are supported.
  @override
  @experimental
  set profilesSampleRate(double? value) {
    // ...
  }

  /// The [navigatorKey] is used to add information of the currently used locale to the contexts.
  GlobalKey<NavigatorState>? navigatorKey;
}

// core_custom_tools-0.1.2/lib/util/detran/exceptions/invalid_form_exception.dart:3
class InvalidFormException extends DetramExceptionBase {
  InvalidFormException({required super.message});
}
