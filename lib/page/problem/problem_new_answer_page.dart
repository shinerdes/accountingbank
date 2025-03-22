import 'package:accountingbank/model/write/write_answer.dart';
import 'package:accountingbank/provider/all_answer_provider.dart';
import 'package:accountingbank/provider/all_question_provider.dart';
import 'package:accountingbank/provider/one_question_provider.dart';
import 'package:accountingbank/provider/pagenation_provider.dart';
import 'package:accountingbank/provider/write_answer_post_provider.dart';
import 'package:accountingbank/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class ProblemNewAnswerPage extends ConsumerStatefulWidget {
  ProblemNewAnswerPage({super.key, required this.id, required this.questionId});

  String id;
  String questionId;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProblemNewAnswerPageState();
}

class _ProblemNewAnswerPageState extends ConsumerState<ProblemNewAnswerPage> {
  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();
  TextEditingController contentTextController = TextEditingController();
  late String nick = "";
  late ScrollController scrollController = ScrollController();
  bool _isObscured = true;

  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_handleFocusChange);
  }

  void _handleFocusChange() {
    setState(() {
      _isFocused = _focusNode.hasFocus;
    });
  }

  @override
  void dispose() {
    _focusNode.removeListener(_handleFocusChange);
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print(widget.id);
    print(widget.questionId);

    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus(); // 키보드 닫기 이벤트
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          flexibleSpace: appBarBackground,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "비밀번호",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Gap(15),
                        TextFormField(
                          obscureText: _isObscured,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(8),
                          ],
                          controller: passwordTextController,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: Icon(
                                _isObscured
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isObscured = !_isObscured; // Toggle state
                                });
                              },
                            ),
                            hintText: "비밀번호를 입력해주세요",
                            filled: true,
                            fillColor: const Color(0xFFF2F4F6),
                            focusedBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.orange, width: 2.0),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.primary, width: 2.0),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "필수 입력 항목입니다.";
                            }
                            return null;
                          },
                        ),
                        const Gap(15),
                        const Text(
                          "내용",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Gap(15),
                        Container(
                          height: 250,
                          decoration: BoxDecoration(
                              color: const Color(0xFFF2F4F6),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              border: Border.all(
                                  width: 2,
                                  color: _isFocused
                                      ? Colors.orange
                                      : AppColors.primary)),
                          child: Scrollbar(
                            controller: scrollController, //여기도 전달
                            thumbVisibility: true,
                            thickness: 5.0,
                            child: TextFormField(
                              focusNode: _focusNode,
                              scrollController: scrollController,
                              controller: contentTextController,
                              decoration: const InputDecoration(
                                isDense: true,
                                hintText: '내용을 입력해주세요!',
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                              ),
                              textInputAction: TextInputAction.newline,
                              enableSuggestions: false,
                              autocorrect: false,
                              keyboardType: TextInputType.multiline,
                              maxLines: null,
                              onChanged: (value) {
                                scrollController.jumpTo(
                                    scrollController.position.maxScrollExtent);
                              },
                            ),
                          ),
                        ),
                        const Gap(15),
                        GestureDetector(
                          onTap: () async {
                            if (passwordTextController.text != '' &&
                                contentTextController.text != '') {
                              await ref
                                  .read(writeAnswerNotifierProvider.notifier)
                                  .createPost(
                                      WriteAnswer(
                                          password: passwordTextController.text,
                                          username: '김대원',
                                          content: contentTextController.text),
                                      widget.id);

                              context.pop();

                              ref.invalidate(
                                  oneQuestionProvider(int.parse(widget.id)));
                              ref.invalidate(
                                  allAnswerProvider(int.parse(widget.id)));

                              ref.invalidate(allQuestionProvider(
                                  int.parse(widget.questionId))); // question id
                              ref.invalidate(paginatedPostProvider(
                                  int.parse(widget.questionId)));

                              Future.microtask(() => ref
                                  .read(paginatedPostProvider(
                                          int.parse(widget.questionId))
                                      .notifier)
                                  .refreshData());
                            } else {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        color: Colors.blue,
                                        width: 2), // Custom border color
                                    borderRadius: BorderRadius.circular(
                                        20), // Rounded corners
                                  ),
                                  title: const Text(
                                    '오류',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  content: const SizedBox(
                                    height: 55,
                                    child: Text('필수 입력 사항이 비어있습니다.',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 15)),
                                  ),
                                  actions: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          side: const BorderSide(
                                              color: Colors.blue, width: 2.0),
                                        ),
                                        backgroundColor: Colors.lightBlue,
                                        foregroundColor: Colors.white,
                                      ),
                                      onPressed: () {
                                        context.pop();
                                      },
                                      child: const Text('확인'),
                                    ),
                                  ],
                                ),
                              );
                            }
                          },
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: AppColors.primary.withOpacity(.55),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(
                              child: Text(
                                "작성하기",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Gap(15),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
