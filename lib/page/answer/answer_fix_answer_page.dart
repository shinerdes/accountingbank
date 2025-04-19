import 'package:accountingbank/page/problem/problem_fix_answer_page.dart';
import 'package:accountingbank/provider/all_answer_provider.dart';
import 'package:accountingbank/provider/all_question_provider.dart';
import 'package:accountingbank/provider/fix_answer_patch_provider.dart';
import 'package:accountingbank/provider/one_answer_provider.dart';
import 'package:accountingbank/provider/verification_answer_password_provider.dart';
import 'package:accountingbank/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class AnswerFixAnswerPage extends ConsumerStatefulWidget {
  const AnswerFixAnswerPage(
      {super.key,
      required this.id,
      required this.content,
      required this.answerId});

  final String id;
  final String content;
  final String answerId;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProblemFixAnswerPageState();
}

class _ProblemFixAnswerPageState extends ConsumerState<AnswerFixAnswerPage> {
  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();
  TextEditingController contentTextController = TextEditingController();
  late String nick = "";
  late ScrollController scrollController = ScrollController();

  late String initContent;
  bool _isObscured = true;

  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

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
  void initState() {
    initContent = widget.content;
    contentTextController = TextEditingController(text: initContent);
    scrollController = ScrollController();
    _focusNode.addListener(_handleFocusChange);
    super.initState();
  }

  void showErrorDialog(BuildContext context, String title, String content) {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.blue, width: 2),
          borderRadius: BorderRadius.circular(20),
        ),
        title: Text(
          title,
          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        content: SizedBox(
          height: 55,
          child: Text(
            content,
            style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 15),
          ),
        ),
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: const BorderSide(color: Colors.blue, width: 2.0),
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

  @override
  Widget build(BuildContext context) {
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
                        const Gap(15),
                        const Text(
                          '비밀번호',
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
                          '내용',
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
                        const Gap(15),
                        GestureDetector(
                          onTap: () async {
                            if (passwordTextController.text != '' &&
                                contentTextController.text != '') {
                              ref
                                  .read(verificationAnswerPwdNotifierProvider(
                                          AnswerParams(widget.id,
                                              passwordTextController.text))
                                      .notifier)
                                  .fetchData()
                                  .then(
                                (value) async {
                                  if (value == true) {
                                    await ref
                                        .read(
                                            fixAnswerNotifierProvider.notifier)
                                        .updatePost(widget.id, {
                                      "content": contentTextController.text
                                    });

                                    context.pop();

                                    ref.invalidate(allAnswerProvider(
                                        int.parse(widget.answerId)));
                                  } else {
                                    showErrorDialog(
                                        context, '오류', '비밀번호가 맞지 않습니다.');
                                  }
                                },
                              );
                            } else {
                              showErrorDialog(
                                  context, '오류', '필수 입력 사항이 비어있습니다.');
                            }
                          },
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.lightBlue,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(
                              child: Text(
                                "수정하기",
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
