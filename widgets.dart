// aleksanderwozniak-deer/lib/presentation/screen/todo_list/todo_list_actions.dart:28
class FilterBy {
  const this({required final String filter}) : assert(filter != null);
}

// CodeNextGen-youtube_redesign/lib/screens/detail_page.dart:136
class DetailsTab extends StatelessWidget {
  const this({super.key, required final DetailPage widget});

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
  this({var List<Offset> offsetPoints});

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
  this({
    /// Called lazily to build children.
    required final NullableIndexedWidgetBuilder builder,

    /// {@template flutter.widgets.ListWheelChildBuilderDelegate.childCount}
    /// If non-null, [childCount] is the maximum number of children that can be
    /// provided, and children are available from 0 to [childCount] - 1.
    ///
    /// If null, then the lower and upper limit are not known. However the [builder]
    /// must provide children for a contiguous segment. If the builder returns null
    /// at some index, the segment terminates there.
    /// {@endtemplate}
    final int? childCount,
  });

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
  const this({
    super.key,
    required final StreamChatClient client,
    required final Channel channel,
  });

  @override
  Widget build(BuildContext context) {
    // ...
  }
}

// vipulasri-Serene/lib/blocs/playing_bloc.dart:9
class PlayingSoundsBloc extends Bloc<PlayingSoundsEvent, Result> {
  this({required final DataRepository repository});

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
  const this(
    final Either<Failure, OverTimeData> queriesOverTimeResult, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // ...
  }
}

// jameskokoska-Allowance/budget_simple/lib/widgets/dropdown_select.dart:4
class DropdownSelect extends StatefulWidget {
  const this({
    super.key,
    required final String initial,
    required final List<String> items,
    required final Function(String) onChanged,
    final Color? backgroundColor,
    final bool compact = false,
    //Check if the initial value not in list, default to using the first index
    final bool checkInitialValue = false,
    required final String Function(dynamic) getLabel,
    final bool translate = true,
  });

  @override
  State<DropdownSelect> createState() => DropdownSelectState();
}

// cross-solutions-smart-notes/src/app/lib/models/tags/tag_transaction_result.dart:4
class TagTransactionResult {
  this(
    final TagTransactionResultType transactionType,
    final TagItemModel tag,
  );
}

// lrorpilla-jidoujisho/chisa/lib/util/search_text_selection_controls.dart:149
class TextSelectionToolbarItemData {
  const this({
    required final String label,
    required final VoidCallback onPressed,
  });
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
  const this(final ProcessManager processManager);

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
  this(
    final DictionaryHistoryEntry entry,
    final CreatorCallback creatorCallback,
    final VoidCallback stateCallback,
    final ScrollController dictionaryScroller,
    final ValueNotifier<double> dictionaryScrollOffset,
  );

  @override
  _ClipboardHistoryItemState createState() {
    // ...
  }
}

// LittleLightForDestiny-littlelight/lib/shared/widgets/objectives/multi_objective_progress.widget.dart:8
class _ObjectiveProgress {
  this(
    final int completionValue,
    final int currentProgress,
    final double percentComplete,
  );
}

// openfoodfacts-smooth-app/packages/smooth_app/lib/widgets/smooth_product_carousel.dart:31
class SmoothProductCarousel extends StatefulWidget {
  const this({
    final bool containSearchCard = false,
    final Function(int page, String? productBarcode)? onPageChangedTo,
  });

  @override
  State<SmoothProductCarousel> createState() => _SmoothProductCarouselState();
}

// benibete-info_covid-19/lib/ui/screens/home/components/card_home_slider_indicator.dart:4
/// An indicator showing the currently selected page of a PageController
class CardHomeSliderIndicator extends AnimatedWidget {
  this({
    /// The PageController for the indicator.
    final PageController controller,

    /// The number of items managed by the PageController
    final int itemCount,

    /// Called when a dot is tapped
    final ValueChanged<int> onPageSelected,

    /// The color of the indicator.
    final Color color = Colors.white,
  }) : super(listenable: controller);

  Widget _buildLineIndicator(int index) {
    // ...
  }

  Widget build(BuildContext context) {
    // ...
  }
}

// invoiceninja-admin-portal/lib/ui/document/view/document_view_vm.dart:45
class DocumentViewVM {
  this({
    required final AppState state,
    required final DocumentEntity document,
    required final CompanyEntity? company,
    required final Function(BuildContext, EntityAction) onEntityAction,
    required final Function(BuildContext) onRefreshed,
    required final bool isSaving,
    required final bool isLoading,
    required final bool isDirty,
  });

  factory DocumentViewVM.fromStore(Store<AppState> store) {
    // ...
  }
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
  const this({
    super.key,
    /// The number of clockwise quarter turns the child should be rotated.
    required final int quarterTurns,
    super.child,
  });


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

  const this({super.key, final Project project});

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
  const this({super.key});

  @override
  Widget build(BuildContext context) {
    // ...
  }
}

// jeremySrgt-bringme/lib/delivery/vignette/folable_card_details.dart:7
class FolableCardDetails extends StatelessWidget {
  final TextStyle titleTextStyle = TextStyle(elided);
  final TextStyle contentTextStyle = TextStyle(elided);
  final TextStyle descStyle = TextStyle(elided);

  this({required final DocumentSnapshot demandData});

  @override
  Widget build(BuildContext context) {
    // ...
  }
}

// flutter-samples/provider_shopper/lib/main.dart:65
class MyApp extends StatelessWidget {
  const this({super.key});

  @override
  Widget build(BuildContext context) {
    // ...
  }
}

// CaramelDunes-nyanya_rocket/lib/screens/multiplayer/setup_widgets/sign_up_prompt.dart:6
class SignUpPrompt extends StatelessWidget {
  const this({super.key});

  @override
  Widget build(BuildContext context) {
    // ...
  }
}

// marchelo-developers-life-flutter/lib/network/model/PostResponse.dart:6
@JsonSerializable()
class PostResponse {
  this({var List<PostItem> result, var int totalCount});

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
  // This one is unusual in that the field has a private name. It works OK here
  // because the parameter is positional, but would be a problem if the
  // parameter was named.
  const this(final EnvironmentSettings _env, {super.key});

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
  this({
    super.key,

    /// The table card's optional header.
    ///
    /// This is typically a [Text] widget, but can also be a [Row] of
    /// [TextButton]s. To show icon buttons at the top end side of the table with
    /// a header, set the [actions] property.
    ///
    /// If items in the table are selectable, then, when the selection is not
    /// empty, the header is replaced by a count of the selected items. The
    /// [actions] are still visible when items are selected.
    final Widget? header,

    /// Icon buttons to show at the top end side of the table. The [header] must
    /// not be null to show the actions.
    ///
    /// Typically, the exact actions included in this list will vary based on
    /// whether any rows are selected or not.
    ///
    /// These should be size 24.0 with default padding (8.0).
    final List<Widget>? actions,

    /// The configuration and labels for the columns in the table.
    required final List<DataColumn> columns,

    /// The current primary sort key's column.
    ///
    /// See [DataTable.sortColumnIndex].
    final int? sortColumnIndex,

    /// Whether the column mentioned in [sortColumnIndex], if any, is sorted
    /// in ascending order.
    ///
    /// See [DataTable.sortAscending].
    final bool sortAscending = true,

    final bool subtractOne = false,

    /// Invoked when the user selects or unselects every row, using the
    /// checkbox in the heading row.
    ///
    /// See [DataTable.onSelectAll].
    final ValueSetter<bool?>? onSelectAll,

    @Deprecated(
      'Migrate to use dataRowMinHeight and dataRowMaxHeight instead. '
      'This feature was deprecated after v3.7.0-5.0.pre.',
    )
    double? dataRowHeight,
    double? dataRowMinHeight,
    double? dataRowMaxHeight,

    /// The height of the heading row.
    ///
    /// This value is optional and defaults to 56.0 if not specified.
    final double headingRowHeight = 56.0,

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
    final double horizontalMargin = 24.0,

    /// The horizontal margin between the contents of each data column.
    ///
    /// This value defaults to 56.0 to adhere to the Material Design specifications.
    final double columnSpacing = 56.0,

    /// {@macro flutter.material.dataTable.showCheckboxColumn}
    final bool showCheckboxColumn = true,

    /// Flag to display the pagination buttons to go to the first and last pages.
    final bool showFirstLastButtons = false,

    /// The index of the first row to display when the widget is first created.
    final int? initialFirstRowIndex = 0,

    /// Invoked when the user switches to another page.
    ///
    /// The value is the index of the first row on the currently displayed page.
    final ValueChanged<int>? onPageChanged,

    /// The number of rows to show on each page.
    ///
    /// See also:
    ///
    ///  * [onRowsPerPageChanged]
    ///  * [defaultRowsPerPage]
    final int rowsPerPage = defaultRowsPerPage,

    /// The options to offer for the rowsPerPage.
    ///
    /// The current [rowsPerPage] must be a value in this list.
    ///
    /// The values in this list should be sorted in ascending order.
    final List<int> availableRowsPerPage = const <int>[
      defaultRowsPerPage,
      defaultRowsPerPage * 2,
      defaultRowsPerPage * 5,
      defaultRowsPerPage * 10,
    ],

    /// Invoked when the user selects a different number of rows per page.
    ///
    /// If this is null, then the value given by [rowsPerPage] will be used
    /// and no affordance will be provided to change the value.
    final ValueChanged<int?>? onRowsPerPageChanged,

    /// {@macro flutter.widgets.scrollable.dragStartBehavior}
    final DragStartBehavior dragStartBehavior = DragStartBehavior.start,

    /// Defines the color of the arrow heads in the footer.
    final Color? arrowHeadColor,

    /// The data source which provides data to show in each row. Must be non-null.
    ///
    /// This object should generally have a lifetime longer than the
    /// [PaginatedDataTable] widget itself; it should be reused each time the
    /// [PaginatedDataTable] constructor is called.
    required final DataTableSource source,

    /// Horizontal margin around the checkbox, if it is displayed.
    ///
    /// If null, then [horizontalMargin] is used as the margin between the edge
    /// of the table and the checkbox, as well as the margin between the checkbox
    /// and the content in the first data column. This value defaults to 24.0.
    final double? checkboxHorizontalMargin,

    /// {@macro flutter.widgets.scroll_view.controller}
    final ScrollController? controller,

    /// {@macro flutter.widgets.scroll_view.primary}
    final bool? primary,
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

  /// The default value for [rowsPerPage].
  ///
  /// Useful when initializing the field that will hold the current
  /// [rowsPerPage], when implemented [onRowsPerPageChanged].
  static const int defaultRowsPerPage = 10;

  @override
  AppPaginatedDataTableState createState() => AppPaginatedDataTableState();
}

// flutter-flutter/packages/flutter/lib/src/material/text_button.dart:472
class _TextButtonWithIcon extends TextButton {
  this({
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
  this._privateConstructor()
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
  this({
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
  /// The current user's info.
  @readonly
  UserTwitch? _details;

  /// The user's list of blocked users.
  @readonly
  var _blockedUsers = ObservableList<UserBlockedTwitch>();

  ReactionDisposer? _disposeReaction;

  this({required final TwitchApi twitchApi});

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
  this({final Completer? completer, final int page = 1});
}

// WillianKirsch-FlutterKnow/Cursos/web/flutter-folio/lib/styled_widgets/styled_tooltip.dart:42
class _Arrow extends StatelessWidget {
  const this(final Color color, {super.key});

  @override
  Widget build(BuildContext context) {
    // ...
  }
}

// walaafikre-flutter-ecommerce/lib/model/product.dart:1
class Product {
  this({
    var int id,
    var String name,
    var String category,
    var String image,
    var double price,
    var bool isliked,
    var bool isSelected = false,
  });
}

// lrorpilla-jidoujisho/yuuna/lib/src/pages/implementations/forvo_audio_dialog_page.dart:10
/// The content of the dialog used for picking a specific contributor when
/// using the Forvo audio enhancement.
class ForvoAudioDialogPage extends BasePage {
  /// Create an instance of this page.
  const this({
    /// List of recordings.
    required final List<ForvoResult> results,

    /// The callback to be called when an example sentence has been picked.
    required final Function(int) onSelect,
    super.key,
  });

  @override
  BasePageState createState() => _ForvoAudioDialogPageState();
}

// SatYu26-Portfolio-Code-Flutter/lib/widgets/navigation_bar/navbar_logo.dart:4
class NavBarLogo extends StatelessWidget {
  const this({super.key});

  @override
  Widget build(BuildContext context) {
    // ...
  }
}

// snap-hunt-snaphunt/lib/ui/multiplayer/room.dart:211
class RoomBody extends StatelessWidget {
  const this({super.key});

  @override
  Widget build(BuildContext context) {
    // ...
  }
}

// bananocoin-kalium_wallet_flutter/lib/bus/fcm_update_event.dart:3
class FcmUpdateEvent implements Event {
  this({final String token});
}

// juniorise-spooky-mb/lib/providers/in_app_purchase_provider.dart:284
class MessageModel {
  this(
    final PurchaseStatus status,
    final bool isError,
    final String? message,
  );

  MessageModel removeMessage() {
    // ...
  }
}

// Skyost-Beerstory/lib/pages/page.dart:9
/// Represents an app page.
abstract class Page<T extends RepositoryObject> extends ConsumerWidget {
  /// Creates a new page instance.
  const this({
    super.key,

    /// The page icon.
    required final IconData icon,

    /// The page title.
    required final String titleKey,

    /// The empty message.
    required final String emptyMessageKey,

    /// The actions.
    required final List<Widget> actions,

    /// Whether to show the search box.
    final bool searchBox = true,

    /// Whether to order the list in reverse order.
    final bool reverseOrder = false,
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
  this({var ThemeBloc? themeBloc});

  @override
  _LoginScreen3State createState() => _LoginScreen3State();
}

// invoiceninja-admin-portal/lib/redux/product/product_actions.dart:227
class SortProducts implements PersistUI, PersistPrefs {
  this(final String field);
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
  // Could declare this field in constructor too if we automatically remove "_"
  // in named parameters.
  final ImportTimetable _importTimetable;

  this(
    final Future<String?> Function() _getInitialUri,
    final Stream<String?> _uriLinkStream, {
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
  const this({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

// LittleLightForDestiny-littlelight/lib/pages/initial/widgets/language.button.dart:5
class LanguageButton extends StatelessWidget {
  const this({
    required final LanguageInfo language,
    final bool selected = false,
    required final Function onPressed,
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
  const this({
    super.key,
    required final VoidCallback onTapDown,
    required final VoidCallback onTapUp,
    required final VoidCallback onTapCancel,
    required final Widget child,
  });

  @override
  _ScalableButtonState createState() => _ScalableButtonState();
}
