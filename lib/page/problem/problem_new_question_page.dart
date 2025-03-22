import 'package:accountingbank/model/write/write_question.dart';
import 'package:accountingbank/provider/all_question_provider.dart';
import 'package:accountingbank/provider/pagenation_provider.dart';
import 'package:accountingbank/provider/verification_question_password_provider.dart';
import 'package:accountingbank/provider/write_question_post_provider.dart';
import 'package:accountingbank/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class ProblemNewQuestionPage extends ConsumerStatefulWidget {
  ProblemNewQuestionPage({super.key, required this.id});

  String id;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProblemNewQuestionPageState();
}

class _ProblemNewQuestionPageState
    extends ConsumerState<ProblemNewQuestionPage> {
  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();
  TextEditingController contentTextController = TextEditingController();
  late String nick = "";

  final ScrollController _contentScrollController = ScrollController();

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
    _contentScrollController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print(widget.id);
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
                          "제목",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Gap(15),
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(38)
                                ],
                                controller: emailTextController,
                                decoration: const InputDecoration(
                                  hintText: "제목을 입력해주세요 ",
                                  filled: true,
                                  fillColor: Color(0xFFF2F4F6),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.orange, width: 2.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
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
                            ),
                          ],
                        ),
                        const Gap(15),
                        const Text(
                          "비밀번호",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Gap(15),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          obscureText: _isObscured,
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
                            hintText: "비밀번호를 입력해주세요 (최대 8자리)",
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
                            controller: _contentScrollController, //여기도 전달
                            thumbVisibility: true,
                            thickness: 5.0,
                            child: TextFormField(
                              scrollPadding: EdgeInsets.only(
                                  bottom:
                                      MediaQuery.of(context).viewInsets.bottom),
                              focusNode: _focusNode,
                              scrollController: _contentScrollController,
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
                                _contentScrollController.jumpTo(
                                    _contentScrollController
                                        .position.maxScrollExtent);
                              },
                            ),
                          ),
                        ),
                        const Gap(30),
                        GestureDetector(
                          onTap: () async {
                            if (emailTextController.text != '' &&
                                passwordTextController.text != '' &&
                                contentTextController.text != '') {
                              print('등록하기');

                              await ref
                                  .read(writeQuestionNotifierProvider.notifier)
                                  .createPost(
                                      WriteQuestion(
                                          password: passwordTextController.text,
                                          username: '김대원', // 아직 로그인 아님
                                          title: emailTextController.text,
                                          content: contentTextController.text),
                                      widget.id);

                              ref.invalidate(
                                  allQuestionProvider(int.parse(widget.id)));

                              ref.invalidate(
                                  paginatedPostProvider(int.parse(widget.id)));

                              context.pop();

                              Future.microtask(() => ref
                                  .read(paginatedPostProvider(
                                          int.parse(widget.id))
                                      .notifier)
                                  .refreshData()); // Re-fetch
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
                                "등록하기",
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
