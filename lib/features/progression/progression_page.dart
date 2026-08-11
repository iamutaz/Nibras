import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nibras/core/DI/injection.dart';
import 'package:nibras/core/routing/app_route_observer.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'package:nibras/features/notes/data/cubit/get_notes_by_id_cubit.dart';
import 'package:nibras/features/notes/pages/notes_by_id_lesson.dart';
import 'package:nibras/features/progression/data/cubit/progression_cubit.dart';
import 'package:nibras/features/progression/data/cubit/progression_state.dart';
import 'package:nibras/features/progression/data/model/progression_request_body.dart';
import 'package:nibras/features/progression/widgets/progression_success_view.dart';

class ProgressionPage extends StatefulWidget {
  final int courseId;

  const ProgressionPage({super.key, this.courseId = 1});

  @override
  State<ProgressionPage> createState() => _ProgressionPageState();
}

class _ProgressionPageState extends State<ProgressionPage> with RouteAware {
  void _loadProgression() {
    context.read<ProgressionCubit>().emitAllCoursesState(
      ProgressionRequestBody(courseId: widget.courseId),
    );
  }

  @override
  void initState() {
    super.initState();
    _loadProgression();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final route = ModalRoute.of(context);
    if (route is PageRoute) {
      routeObserver.subscribe(this, route);
    }
  }

  @override
  void didPopNext() {
    _loadProgression();
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // عدد الـ Tabs
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () => Navigator.pop(context),
          ),
          title: BlocBuilder<ProgressionCubit, ProgressionState>(
            builder: (context, state) {
              final courseTitle = state.maybeWhen(
                progressionsuccess: (data) => data.data.course.title,
                orElse: () => 'Course Progress',
              );

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    courseTitle,
                    style: TextStyles.font16titleblackbold,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              );
            },
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.more_vert, color: Colors.black),
              onPressed: () {},
            ),
          ],
          bottom: const TabBar(
            labelColor: Colors.purple,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.purple,
            isScrollable: true,
            tabs: [
              Tab(text: "Units"),
              Tab(text: "Grades"),
              Tab(text: "Notes"),
              Tab(text: "Certificate"),
            ],
          ),
        ),
        body: BlocBuilder<ProgressionCubit, ProgressionState>(
          builder: (context, state) {
            return state.when(
              progressioninitial: () => const SizedBox.shrink(),
              progressionloading: () =>
                  const Center(child: CircularProgressIndicator()),
              progressionsuccess: (data) {
                return TabBarView(
                  children: [
                    ProgressionSuccessView(data: data),
                    const Center(child: Text("Grades Page")),
                    BlocProvider(
                      create: (context) => getIt<GetNotesByIdCubit>(),
                      child: NotesByIdLesson(lessonId: widget.courseId),
                    ),
                    const Center(child: Text("Certificate Page")),
                  ],
                );
              },
              progressionfailure: (error) => Center(
                child: Text(error, style: const TextStyle(color: Colors.red)),
              ),
            );
          },
        ),
      ),
    );
  }
}
