// aleksanderwozniak-deer/lib/presentation/screen/todo_list/todo_list_actions.dart:28
class FilterBy {
  final String filter;

  const FilterBy({required this.filter}) : assert(filter != null);
}

// CodeNextGen-youtube_redesign/lib/screens/detail_page.dart:136
class DetailsTab extends StatelessWidget {
  const DetailsTab({super.key, required this.widget});

  final DetailPage widget;

  @override
  Widget build(BuildContext context) {
    // ...
  }
}

// rho-cassiopeiae-the12thplayer/lib/fixture/common/models/dto/game_time_dto.dart:1
class GameTimeDto {
  final int minute;
  final int extraTimeMinute;
  final int addedTimeMinute;

  GameTimeDto.fromMap(Map<String, dynamic> map)
    : minute = map['minute'],
      extraTimeMinute = map['extraTimeMinute'],
      addedTimeMinute = map['addedTimeMinute'];
}

// Livinglist-Manji/lib/ui/kanji_recognize_page/kanji_recognize_page.dart:12
class DrawingPainter extends CustomPainter {
  DrawingPainter({this.offsetPoints});
  List<Offset> offsetPoints;

  @override
  void paint(Canvas canvas, Size size) {
    // ...
  }

  @override
  bool shouldRepaint(DrawingPainter oldDelegate) => true;
}

// flutter-flutter/packages/flutter/lib/src/widgets/list_wheel_scroll_view.dart:152
/// A delegate that supplies children for [ListWheelScrollView] using a builder
/// callback.
///
/// [ListWheelScrollView] lazily constructs its children to avoid creating more
/// children than are visible through the [Viewport]. This delegate provides
/// children using an [IndexedWidgetBuilder] callback, so that the children do
/// not have to be built until they are displayed.
class ListWheelChildBuilderDelegate extends ListWheelChildDelegate {
  /// Constructs the delegate from a builder callback.
  ListWheelChildBuilderDelegate({required this.builder, this.childCount});

  /// Called lazily to build children.
  final NullableIndexedWidgetBuilder builder;

  /// {@template flutter.widgets.ListWheelChildBuilderDelegate.childCount}
  /// If non-null, [childCount] is the maximum number of children that can be
  /// provided, and children are available from 0 to [childCount] - 1.
  ///
  /// If null, then the lower and upper limit are not known. However the [builder]
  /// must provide children for a contiguous segment. If the builder returns null
  /// at some index, the segment terminates there.
  /// {@endtemplate}
  final int? childCount;

  @override
  int? get estimatedChildCount => childCount;

  @override
  Widget? build(BuildContext context, int index) {
    // ...
  }

  @override
  bool shouldRebuild(covariant ListWheelChildBuilderDelegate oldDelegate) {
    // ...
  }
}

// GetStream-stream-chat-flutter/packages/stream_chat_flutter/example/lib/tutorial_part_1.dart:58
class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.client, required this.channel});

  final StreamChatClient client;

  final Channel channel;

  @override
  Widget build(BuildContext context) {
    // ...
  }
}

// vipulasri-Serene/lib/blocs/playing_bloc.dart:9
class PlayingSoundsBloc extends Bloc<PlayingSoundsEvent, Result> {
  final DataRepository repository;

  PlayingSoundsBloc({required this.repository});

  @override
  Result get initialState => Empty();

  @override
  Stream<Result> mapEventToState(PlayingSoundsEvent event) async* {
    // ...
  }

  Stream<Result<PlayingData>> _mapFetchSelectedSoundToState(
    FetchPlayingSounds event,
  ) async* {
    // ...
  }

  Stream<Result<PlayingData>> _mapTogglePlayButtonToState(
    TogglePlayButton event,
  ) async* {
    // ...
  }

  Stream<Result<PlayingData>> _mapUpdateSoundVolume(
    UpdateSoundVolume event,
  ) async* {
    // ...
  }

  Stream<Result<PlayingData>> _mapStopSoundToState(StopSound event) async* {
    // ...
  }
}

// sterrenburg-flutterhole/lib/features/home/presentation/pages/summary/widgets/total_queries_over_day_tile.dart:9
class TotalQueriesOverDayTile extends StatelessWidget {
  const TotalQueriesOverDayTile(this.queriesOverTimeResult, {super.key});

  final Either<Failure, OverTimeData> queriesOverTimeResult;

  @override
  Widget build(BuildContext context) {
    // ...
  }
}

// jameskokoska-Allowance/budget_simple/lib/widgets/dropdown_select.dart:4
class DropdownSelect extends StatefulWidget {
  final String initial;
  final List<String> items;
  final Function(String) onChanged;
  final Color? backgroundColor;
  final bool compact;
  //Check if the initial value not in list, default to using the first index
  final bool checkInitialValue;
  final String Function(dynamic) getLabel;
  final bool translate;

  const DropdownSelect({
    super.key,
    required this.initial,
    required this.items,
    required this.onChanged,
    this.backgroundColor,
    this.compact = false,
    this.checkInitialValue = false,
    required this.getLabel,
    this.translate = true,
  });

  @override
  State<DropdownSelect> createState() => DropdownSelectState();
}

// cross-solutions-smart-notes/src/app/lib/models/tags/tag_transaction_result.dart:4
class TagTransactionResult {
  TagTransactionResult(this.transactionType, this.tag);

  final TagTransactionResultType transactionType;
  final TagItemModel tag;
}

// lrorpilla-jidoujisho/chisa/lib/util/search_text_selection_controls.dart:149
class TextSelectionToolbarItemData {
  const TextSelectionToolbarItemData({
    required this.label,
    required this.onPressed,
  });

  final String label;
  final VoidCallback onPressed;
}

// stonega-tsacdop/lib/intro_slider/fourthpage.dart:5
class FourthPage extends StatefulWidget {
  FourthPage({super.key});

  @override
  _FourthPageState createState() => _FourthPageState();
}

// flutter-flutter/dev/conductor/core/lib/src/git.dart:11
/// A wrapper around git process calls that can be mocked for unit testing.
///
/// The `Git` class is a relatively (compared to `Repository`) lightweight
/// abstraction over invocations to the `git` cli tool. The main
/// motivation for creating this class was so that it could be overridden in
/// tests. However, now that tests rely on the [FakeProcessManager] this
/// abstraction is redundant.
class Git {
  const Git(this.processManager);

  final ProcessManager processManager;

  Future<String> getOutput(
    List<String> args,
    String explanation, {
    required String workingDirectory,
    bool allowFailures = false,
  }) async {
    // ...
  }

  Future<int> run(
    List<String> args,
    String explanation, {
    bool allowNonZeroExitCode = false,
    required String workingDirectory,
  }) async {
    // ...
  }

  Future<ProcessResult> _run(List<String> args, String workingDirectory) async {
    // ...
  }

  Never _reportFailureAndExit(
    List<String> args,
    String workingDirectory,
    ProcessResult result,
    String explanation,
  ) {
    // ...
  }
}

// lrorpilla-jidoujisho/legacy/lib/main.dart:3906
class ClipboardHistoryItem extends StatefulWidget {
  final DictionaryHistoryEntry entry;
  final CreatorCallback creatorCallback;
  final VoidCallback stateCallback;

  final ScrollController dictionaryScroller;
  final ValueNotifier<double> dictionaryScrollOffset;

  ClipboardHistoryItem(
    this.entry,
    this.creatorCallback,
    this.stateCallback,
    this.dictionaryScroller,
    this.dictionaryScrollOffset,
  );

  @override
  _ClipboardHistoryItemState createState() {
    // ...
  }
}

// LittleLightForDestiny-littlelight/lib/shared/widgets/objectives/multi_objective_progress.widget.dart:8
class _ObjectiveProgress {
  final int completionValue;
  final int currentProgress;
  final double percentComplete;

  _ObjectiveProgress(
    this.completionValue,
    this.currentProgress,
    this.percentComplete,
  );
}

// openfoodfacts-smooth-app/packages/smooth_app/lib/widgets/smooth_product_carousel.dart:31
class SmoothProductCarousel extends StatefulWidget {
  const SmoothProductCarousel({
    this.containSearchCard = false,
    this.onPageChangedTo,
  });

  final bool containSearchCard;
  final Function(int page, String? productBarcode)? onPageChangedTo;

  @override
  State<SmoothProductCarousel> createState() => _SmoothProductCarouselState();
}

// benibete-info_covid-19/lib/ui/screens/home/components/card_home_slider_indicator.dart:4
/// An indicator showing the currently selected page of a PageController
class CardHomeSliderIndicator extends AnimatedWidget {
  CardHomeSliderIndicator({
    this.controller,
    this.itemCount,
    this.onPageSelected,
    this.color = Colors.white,
  }) : super(listenable: controller);

  /// The PageController for the indicator.
  final PageController controller;

  /// The number of items managed by the PageController
  final int itemCount;

  /// Called when a dot is tapped
  final ValueChanged<int> onPageSelected;

  /// The color of the indicator.
  final Color color;

  Widget _buildLineIndicator(int index) {
    // ...
  }

  Widget build(BuildContext context) {
    // ...
  }
}

// invoiceninja-admin-portal/lib/ui/document/view/document_view_vm.dart:45
class DocumentViewVM {
  DocumentViewVM({
    required this.state,
    required this.document,
    required this.company,
    required this.onEntityAction,
    required this.onRefreshed,
    required this.isSaving,
    required this.isLoading,
    required this.isDirty,
  });

  factory DocumentViewVM.fromStore(Store<AppState> store) {
    // ...
  }

  final AppState state;
  final DocumentEntity document;
  final CompanyEntity? company;
  final Function(BuildContext, EntityAction) onEntityAction;
  final Function(BuildContext) onRefreshed;
  final bool isSaving;
  final bool isLoading;
  final bool isDirty;
}

// flutter-flutter/packages/flutter/lib/src/widgets/basic.dart:1836
/// A widget that rotates its child by a integral number of quarter turns.
///
/// Unlike [Transform], which applies a transform just prior to painting,
/// this object applies its rotation prior to layout, which means the entire
/// rotated box consumes only as much space as required by the rotated child.
///
/// {@youtube 560 315 https://www.youtube.com/watch?v=BFE6_UglLfQ}
///
/// {@tool snippet}
///
/// This snippet rotates the child (some [Text]) so that it renders from bottom
/// to top, like an axis label on a graph:
///
/// ```dart
/// const RotatedBox(
///   quarterTurns: 3,
///   child: Text('Hello World!'),
/// )
/// ```
/// {@end-tool}
///
/// See also:
///
///  * [Transform], which is a paint effect that allows you to apply an
///    arbitrary transform to a child.
///  * [Transform.rotate], which applies a rotation paint effect.
///  * The [catalog of layout widgets](https://flutter.dev/widgets/layout/).
class RotatedBox extends SingleChildRenderObjectWidget {
  /// A widget that rotates its child.
  const RotatedBox({super.key, required this.quarterTurns, super.child});

  /// The number of clockwise quarter turns the child should be rotated.
  final int quarterTurns;

  @override
  RenderRotatedBox createRenderObject(BuildContext context) {
    // ...
  }

  @override
  void updateRenderObject(BuildContext context, RenderRotatedBox renderObject) {
    // ...
  }
}

// krzysiekz-CostyFlutter/lib/presentation/widgets/pages/project_details_page.dart:15
class ProjectDetailsPage extends StatefulWidget {
  static void navigate(BuildContext buildContext, Project project) {
    // ...
  }

  final Project project;

  const ProjectDetailsPage({super.key, this.project});

  @override
  _ProjectDetailsPageState createState() => _ProjectDetailsPageState();
}

// flutter-flutter/examples/api/lib/sample_templates/cupertino.0.dart:50
/// Include comments about each class, and make them dartdoc comments, so that
/// links (e.g. [Placeholder]) are active in IDEs.
///
/// Name the classes appropriately for the example (don't leave it as
/// "PlaceholderExample"!).
class PlaceholderExample extends StatelessWidget {
  const PlaceholderExample({super.key});

  @override
  Widget build(BuildContext context) {
    // ...
  }
}

// jeremySrgt-bringme/lib/delivery/vignette/folable_card_details.dart:7
class FolableCardDetails extends StatelessWidget {
  final DocumentSnapshot demandData;
  final TextStyle titleTextStyle = TextStyle(elided);
  final TextStyle contentTextStyle = TextStyle(elided);
  final TextStyle descStyle = TextStyle(elided);

  FolableCardDetails({required this.demandData});

  @override
  Widget build(BuildContext context) {
    // ...
  }
}

// flutter-samples/provider_shopper/lib/main.dart:65
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ...
  }
}

// CaramelDunes-nyanya_rocket/lib/screens/multiplayer/setup_widgets/sign_up_prompt.dart:6
class SignUpPrompt extends StatelessWidget {
  const SignUpPrompt({super.key});

  @override
  Widget build(BuildContext context) {
    // ...
  }
}

// marchelo-developers-life-flutter/lib/network/model/PostResponse.dart:6
@JsonSerializable()
class PostResponse {
  List<PostItem> result;
  int totalCount;

  PostResponse({this.result, this.totalCount});

  factory PostResponse.fromJson(Map<String, dynamic> json) =>
      _$PostResponseFromJson(json);
  Map<String, dynamic> toJson() => _$PostResponseToJson(this);

  PostResponse.fromJsonMap(Map<String, dynamic> map)
    : result = List<PostItem>.from(
        map["result"].map((it) => PostItem.fromJsonMap(it)),
      ),
      totalCount = map["totalCount"];
}

// AssistantSMS-App/lib/app.dart:16
class AssistantSMS extends StatefulWidget {
  final EnvironmentSettings _env;
  const AssistantSMS(this._env, {super.key});

  @override
  // ignore: no_logic_in_create_state
  _AssistantSMSState createState() => _AssistantSMSState(_env);
}

// invoiceninja-admin-portal/lib/ui/app/tables/app_paginated_data_table.dart:10
/// A Material Design data table that shows data using multiple pages.
///
/// A paginated data table shows [rowsPerPage] rows of data per page and
/// provides controls for showing other pages.
///
/// Data is read lazily from a [DataTableSource]. The widget is presented
/// as a [Card].
///
/// See also:
///
///  * [DataTable], which is not paginated.
///  * <https://material.io/go/design-data-tables#data-tables-tables-within-cards>
class AppPaginatedDataTable extends StatefulWidget {
  /// Creates a widget describing a paginated [DataTable] on a [Card].
  ///
  /// The [header] should give the card's header, typically a [Text] widget.
  ///
  /// The [columns] argument must be a list of as many [DataColumn] objects as
  /// the table is to have columns, ignoring the leading checkbox column if any.
  /// The [columns] argument must have a length greater than zero and cannot be
  /// null.
  ///
  /// If the table is sorted, the column that provides the current primary key
  /// should be specified by index in [sortColumnIndex], 0 meaning the first
  /// column in [columns], 1 being the next one, and so forth.
  ///
  /// The actual sort order can be specified using [sortAscending]; if the sort
  /// order is ascending, this should be true (the default), otherwise it should
  /// be false.
  ///
  /// The [source] must not be null. The [source] should be a long-lived
  /// [DataTableSource]. The same source should be provided each time a
  /// particular [PaginatedDataTable] widget is created; avoid creating a new
  /// [DataTableSource] with each new instance of the [PaginatedDataTable]
  /// widget unless the data table really is to now show entirely different
  /// data from a new source.
  ///
  /// The [rowsPerPage] and [availableRowsPerPage] must not be null (they
  /// both have defaults, though, so don't have to be specified).
  ///
  /// Themed by [DataTableTheme]. [DataTableThemeData.decoration] is ignored.
  /// To modify the border or background color of the [PaginatedDataTable], use
  /// [CardTheme], since a [Card] wraps the inner [DataTable].
  AppPaginatedDataTable({
    super.key,
    this.header,
    this.actions,
    required this.columns,
    this.sortColumnIndex,
    this.sortAscending = true,
    this.subtractOne = false,
    this.onSelectAll,
    @Deprecated(
      'Migrate to use dataRowMinHeight and dataRowMaxHeight instead. '
      'This feature was deprecated after v3.7.0-5.0.pre.',
    )
    double? dataRowHeight,
    double? dataRowMinHeight,
    double? dataRowMaxHeight,
    this.headingRowHeight = 56.0,
    this.horizontalMargin = 24.0,
    this.columnSpacing = 56.0,
    this.showCheckboxColumn = true,
    this.showFirstLastButtons = false,
    this.initialFirstRowIndex = 0,
    this.onPageChanged,
    this.rowsPerPage = defaultRowsPerPage,
    this.availableRowsPerPage = const <int>[
      defaultRowsPerPage,
      defaultRowsPerPage * 2,
      defaultRowsPerPage * 5,
      defaultRowsPerPage * 10,
    ],
    this.onRowsPerPageChanged,
    this.dragStartBehavior = DragStartBehavior.start,
    this.arrowHeadColor,
    required this.source,
    this.checkboxHorizontalMargin,
    this.controller,
    this.primary,
  }) : assert(actions == null || (header != null)),
       assert(columns.isNotEmpty),
       assert(
         sortColumnIndex == null ||
             (sortColumnIndex >= 0 && sortColumnIndex < columns.length),
       ),
       assert(
         dataRowMinHeight == null ||
             dataRowMaxHeight == null ||
             dataRowMaxHeight >= dataRowMinHeight,
       ),
       assert(
         dataRowHeight == null ||
             (dataRowMinHeight == null && dataRowMaxHeight == null),
         'dataRowHeight ($dataRowHeight) must not be set if dataRowMinHeight ($dataRowMinHeight) or dataRowMaxHeight ($dataRowMaxHeight) are set.',
       ),
       dataRowMinHeight =
           dataRowHeight ?? dataRowMinHeight ?? kMinInteractiveDimension,
       dataRowMaxHeight =
           dataRowHeight ?? dataRowMaxHeight ?? kMinInteractiveDimension,
       assert(rowsPerPage > 0),
       assert(() {
         if (onRowsPerPageChanged != null) {
           assert(availableRowsPerPage.contains(rowsPerPage));
         }
         return true;
       }()),
       assert(
         !(controller != null && (primary ?? false)),
         'Primary ScrollViews obtain their ScrollController via inheritance from a PrimaryScrollController widget. '
         'You cannot both set primary to true and pass an explicit controller.',
       );

  /// The table card's optional header.
  ///
  /// This is typically a [Text] widget, but can also be a [Row] of
  /// [TextButton]s. To show icon buttons at the top end side of the table with
  /// a header, set the [actions] property.
  ///
  /// If items in the table are selectable, then, when the selection is not
  /// empty, the header is replaced by a count of the selected items. The
  /// [actions] are still visible when items are selected.
  final Widget? header;

  /// Icon buttons to show at the top end side of the table. The [header] must
  /// not be null to show the actions.
  ///
  /// Typically, the exact actions included in this list will vary based on
  /// whether any rows are selected or not.
  ///
  /// These should be size 24.0 with default padding (8.0).
  final List<Widget>? actions;

  /// The configuration and labels for the columns in the table.
  final List<DataColumn> columns;

  /// The current primary sort key's column.
  ///
  /// See [DataTable.sortColumnIndex].
  final int? sortColumnIndex;

  /// Whether the column mentioned in [sortColumnIndex], if any, is sorted
  /// in ascending order.
  ///
  /// See [DataTable.sortAscending].
  final bool sortAscending;

  /// Invoked when the user selects or unselects every row, using the
  /// checkbox in the heading row.
  ///
  /// See [DataTable.onSelectAll].
  final ValueSetter<bool?>? onSelectAll;

  /// The height of each row (excluding the row that contains column headings).
  ///
  /// This value is optional and defaults to kMinInteractiveDimension if not
  /// specified.
  @Deprecated(
    'Migrate to use dataRowMinHeight and dataRowMaxHeight instead. '
    'This feature was deprecated after v3.7.0-5.0.pre.',
  )
  double? get dataRowHeight =>
      dataRowMinHeight == dataRowMaxHeight ? dataRowMinHeight : null;

  /// The minimum height of each row (excluding the row that contains column headings).
  ///
  /// This value is optional and defaults to [kMinInteractiveDimension] if not
  /// specified.
  final double dataRowMinHeight;

  /// The maximum height of each row (excluding the row that contains column headings).
  ///
  /// This value is optional and defaults to kMinInteractiveDimension if not
  /// specified.
  final double dataRowMaxHeight;

  /// The height of the heading row.
  ///
  /// This value is optional and defaults to 56.0 if not specified.
  final double headingRowHeight;

  /// The horizontal margin between the edges of the table and the content
  /// in the first and last cells of each row.
  ///
  /// When a checkbox is displayed, it is also the margin between the checkbox
  /// the content in the first data column.
  ///
  /// This value defaults to 24.0 to adhere to the Material Design specifications.
  ///
  /// If [checkboxHorizontalMargin] is null, then [horizontalMargin] is also the
  /// margin between the edge of the table and the checkbox, as well as the
  /// margin between the checkbox and the content in the first data column.
  final double horizontalMargin;

  /// The horizontal margin between the contents of each data column.
  ///
  /// This value defaults to 56.0 to adhere to the Material Design specifications.
  final double columnSpacing;

  /// {@macro flutter.material.dataTable.showCheckboxColumn}
  final bool showCheckboxColumn;

  /// Flag to display the pagination buttons to go to the first and last pages.
  final bool showFirstLastButtons;

  /// The index of the first row to display when the widget is first created.
  final int? initialFirstRowIndex;

  /// Invoked when the user switches to another page.
  ///
  /// The value is the index of the first row on the currently displayed page.
  final ValueChanged<int>? onPageChanged;

  /// The number of rows to show on each page.
  ///
  /// See also:
  ///
  ///  * [onRowsPerPageChanged]
  ///  * [defaultRowsPerPage]
  final int rowsPerPage;

  /// The default value for [rowsPerPage].
  ///
  /// Useful when initializing the field that will hold the current
  /// [rowsPerPage], when implemented [onRowsPerPageChanged].
  static const int defaultRowsPerPage = 10;

  /// The options to offer for the rowsPerPage.
  ///
  /// The current [rowsPerPage] must be a value in this list.
  ///
  /// The values in this list should be sorted in ascending order.
  final List<int> availableRowsPerPage;

  /// Invoked when the user selects a different number of rows per page.
  ///
  /// If this is null, then the value given by [rowsPerPage] will be used
  /// and no affordance will be provided to change the value.
  final ValueChanged<int?>? onRowsPerPageChanged;

  /// The data source which provides data to show in each row. Must be non-null.
  ///
  /// This object should generally have a lifetime longer than the
  /// [PaginatedDataTable] widget itself; it should be reused each time the
  /// [PaginatedDataTable] constructor is called.
  final DataTableSource source;

  /// {@macro flutter.widgets.scrollable.dragStartBehavior}
  final DragStartBehavior dragStartBehavior;

  /// Horizontal margin around the checkbox, if it is displayed.
  ///
  /// If null, then [horizontalMargin] is used as the margin between the edge
  /// of the table and the checkbox, as well as the margin between the checkbox
  /// and the content in the first data column. This value defaults to 24.0.
  final double? checkboxHorizontalMargin;

  /// Defines the color of the arrow heads in the footer.
  final Color? arrowHeadColor;

  /// {@macro flutter.widgets.scroll_view.controller}
  final ScrollController? controller;

  /// {@macro flutter.widgets.scroll_view.primary}
  final bool? primary;

  final bool subtractOne;

  @override
  AppPaginatedDataTableState createState() => AppPaginatedDataTableState();
}

// flutter-flutter/packages/flutter/lib/src/material/text_button.dart:472
class _TextButtonWithIcon extends TextButton {
  _TextButtonWithIcon({
    super.key,
    required super.onPressed,
    super.onLongPress,
    super.onHover,
    super.onFocusChange,
    super.style,
    super.focusNode,
    bool? autofocus,
    Clip? clipBehavior,
    super.statesController,
    required Widget icon,
    required Widget label,
  }) : super(
         autofocus: autofocus ?? false,
         clipBehavior: clipBehavior ?? Clip.none,
         child: _TextButtonWithIconChild(icon: icon, label: label),
       );

  @override
  ButtonStyle defaultStyleOf(BuildContext context) {
    // ...
  }
}

// lrorpilla-jidoujisho/yuuna/lib/src/media/types/player_media_type.dart:5
/// Media type that encapsulates videos or music.
class PlayerMediaType extends MediaType {
  /// Initialise this media type.
  PlayerMediaType._privateConstructor()
    : super(
        uniqueKey: 'player_media_type',
        icon: Icons.video_library,
        outlinedIcon: Icons.video_library_outlined,
      );

  /// Get the singleton instance of this media type.
  static PlayerMediaType get instance => _instance;

  static final PlayerMediaType _instance = elided;

  @override
  Widget get home => const HomePlayerPage();
}

// GitJournal-GitJournal/lib/core/views/note_links_view.dart:28
class NoteLinksView extends NotesMaterializedView<_LinksList> {
  NoteLinksView({
    required super.name,
    required super.computeFn,
    required super.repoId,
  });

  Future<List<Link>> fetchLinks(Note note) async {
    // ...
  }
}

// tommyxchow-frosty/lib/screens/settings/stores/user_store.dart:9
abstract class UserStoreBase with Store {
  final TwitchApi twitchApi;

  /// The current user's info.
  @readonly
  UserTwitch? _details;

  /// The user's list of blocked users.
  @readonly
  var _blockedUsers = ObservableList<UserBlockedTwitch>();

  ReactionDisposer? _disposeReaction;

  UserStoreBase({required this.twitchApi});

  @action
  Future<void> init({required Map<String, String> headers}) async {
    // ...
  }

  @action
  Future<void> block({
    required String targetId,
    required String displayName,
    required Map<String, String> headers,
  }) async {
    // ...
  }

  @action
  Future<void> unblock({
    required String targetId,
    required Map<String, String> headers,
  }) async {
    // ...
  }

  @action
  Future<void> refreshBlockedUsers({
    required Map<String, String> headers,
  }) async => elided;

  @action
  void dispose() {
    // ...
  }
}

// invoiceninja-admin-portal/lib/redux/payment/payment_actions.dart:77
class LoadPayments {
  LoadPayments({this.completer, this.page = 1});

  final Completer? completer;
  final int page;
}

// WillianKirsch-FlutterKnow/Cursos/web/flutter-folio/lib/styled_widgets/styled_tooltip.dart:42
class _Arrow extends StatelessWidget {
  const _Arrow(this.color, {super.key});
  final Color color;

  @override
  Widget build(BuildContext context) {
    // ...
  }
}

// walaafikre-flutter-ecommerce/lib/model/product.dart:1
class Product {
  int id;
  String name;
  String category;
  String image;
  double price;
  bool isliked;
  bool isSelected;
  Product({
    this.id,
    this.name,
    this.category,
    this.price,
    this.isliked,
    this.isSelected = false,
    this.image,
  });
}

// lrorpilla-jidoujisho/yuuna/lib/src/pages/implementations/forvo_audio_dialog_page.dart:10
/// The content of the dialog used for picking a specific contributor when
/// using the Forvo audio enhancement.
class ForvoAudioDialogPage extends BasePage {
  /// Create an instance of this page.
  const ForvoAudioDialogPage({
    required this.results,
    required this.onSelect,
    super.key,
  });

  /// List of recordings.
  final List<ForvoResult> results;

  /// The callback to be called when an example sentence has been picked.
  final Function(int) onSelect;

  @override
  BasePageState createState() => _ForvoAudioDialogPageState();
}

// SatYu26-Portfolio-Code-Flutter/lib/widgets/navigation_bar/navbar_logo.dart:4
class NavBarLogo extends StatelessWidget {
  const NavBarLogo({super.key});

  @override
  Widget build(BuildContext context) {
    // ...
  }
}

// snap-hunt-snaphunt/lib/ui/multiplayer/room.dart:211
class RoomBody extends StatelessWidget {
  const RoomBody({super.key});

  @override
  Widget build(BuildContext context) {
    // ...
  }
}

// bananocoin-kalium_wallet_flutter/lib/bus/fcm_update_event.dart:3
class FcmUpdateEvent implements Event {
  final String token;

  FcmUpdateEvent({this.token});
}

// juniorise-spooky-mb/lib/providers/in_app_purchase_provider.dart:284
class MessageModel {
  final PurchaseStatus status;
  final String? message;
  final bool isError;

  MessageModel(this.status, this.isError, this.message);

  MessageModel removeMessage() {
    // ...
  }
}

// Skyost-Beerstory/lib/pages/page.dart:9
/// Represents an app page.
abstract class Page<T extends RepositoryObject> extends ConsumerWidget {
  /// The page icon.
  final IconData icon;

  /// The page title.
  final String titleKey;

  /// The empty message.
  final String emptyMessageKey;

  /// The actions.
  final List<Widget> actions;

  /// Whether to show the search box.
  final bool searchBox;

  /// Whether to order the list in reverse order.
  final bool reverseOrder;

  /// Creates a new page instance.
  const Page({
    super.key,
    required this.icon,
    required this.titleKey,
    required this.emptyMessageKey,
    required this.actions,
    this.searchBox = true,
    this.reverseOrder = false,
  });

  /// Allows to watch the corresponding repository.
  Repository<T> watchRepository(WidgetRef ref);

  /// Allows to create an object widget.
  Widget createObjectWidget(T object, int position);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ...
  }
}

// david-legend-login_catalog/lib/screens/login_design_3/login_screen_3.dart:12
class LoginScreen3 extends StatefulWidget {
  LoginScreen3({this.themeBloc});

  ThemeBloc? themeBloc;

  @override
  _LoginScreen3State createState() => _LoginScreen3State();
}

// invoiceninja-admin-portal/lib/redux/product/product_actions.dart:227
class SortProducts implements PersistUI, PersistPrefs {
  SortProducts(this.field);

  final String field;
}

// rho-cassiopeiae-the12thplayer/lib/feed/models/dto/team_feed_update_dto.dart:3
class TeamFeedUpdateDto {
  final int teamId;
  final Iterable<ArticleDto> articles;

  TeamFeedUpdateDto.fromMap(Map<String, dynamic> map)
    : teamId = map['teamId'],
      articles = (map['articles'] as List<dynamic>).map(
        (articleMap) => ArticleDto.fromMap(articleMap),
      );
}

// krispykalsi-pretend/app/lib/application/bloc/initial/deep_link/deep_link_bloc.dart:12
class DeepLinkBloc extends Bloc<DeepLinkEvent, DeepLinkState> {
  final Future<String?> Function() _getInitialUri;
  final Stream<String?> _uriLinkStream;
  final ImportTimetable _importTimetable;

  DeepLinkBloc(
    this._getInitialUri,
    this._uriLinkStream, {
    required ImportTimetable importTimetable,
  }) : _importTimetable = importTimetable,
       super(DeepLinkInitial());

  StreamSubscription? _uniLinkSubscription;
  static String? _initialUriLink;

  @override
  Stream<DeepLinkState> mapEventToState(DeepLinkEvent event) async* {
    // ...
  }

  void _subscribeToUniStream() {
    // ...
  }

  Stream<DeepLinkState> _initUniLinks() async* {
    // ...
  }

  Stream<DeepLinkState> _beginImportFromFile(String contentUri) async* {
    // ...
  }
}

// ngocmanh1609-provider_usecase_example/lib/ui/screen/home/home_screen.dart:4
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

// LittleLightForDestiny-littlelight/lib/pages/initial/widgets/language.button.dart:5
class LanguageButton extends StatelessWidget {
  final LanguageInfo language;
  final bool selected;
  final Function onPressed;

  const LanguageButton({
    required this.language,
    this.selected = false,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    // ...
  }

  Widget get _child {
    // ...
  }
}

// Stmol-yoga_app_flutter/lib/widgets/scalable_button.dart:4
class ScalableButton extends StatefulWidget {
  const ScalableButton({
    super.key,
    required this.onTapDown,
    required this.onTapUp,
    required this.onTapCancel,
    required this.child,
  });

  final Widget child;
  final VoidCallback onTapDown;
  final VoidCallback onTapUp;
  final VoidCallback onTapCancel;

  @override
  _ScalableButtonState createState() => _ScalableButtonState();
}
