import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nibras/core/DI/injection.dart';
import 'package:nibras/core/routing/app_route_observer.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'package:nibras/features/certificate/generate_certificate_page.dart';
import 'package:nibras/features/certificate/data/cubit/generate_certificate_cubit.dart';
import 'package:nibras/features/grades/grades-page.dart';
import 'package:nibras/features/notes/data/cubit/get_notes_by_id_cubit.dart';
import 'package:nibras/features/notes/pages/notes_by_id_lesson.dart';
import 'package:nibras/features/progression/data/cubit/progression_cubit.dart';
import 'package:nibras/features/progression/data/cubit/progression_state.dart';
import 'package:nibras/features/progression/data/model/progression_request_body.dart';
import 'package:nibras/features/progression/widgets/progression_success_view.dart';

class ProgressionPage extends StatefulWidget {
  final int courseId;
  final int enrollmentId;

  const ProgressionPage({
    super.key,
    required this.courseId,
    required this.enrollmentId,
  });

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
      length: 5, // عدد الـ Tabs
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
              Tab(text: "Reviews"),
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
                    GradesPage(courseId: widget.courseId),

                    BlocProvider(
                      create: (context) => getIt<GetNotesByIdCubit>(),
                      child: NotesByIdLesson(lessonId: widget.courseId),
                    ),
                    const ReviewsPage(),

                    BlocProvider(
                      create: (context) => getIt<GenerateCertificateCubit>(),
                      child: GenerateCertificatePage(
                        enrollmentId: widget.enrollmentId,
                      ),
                    ),
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
