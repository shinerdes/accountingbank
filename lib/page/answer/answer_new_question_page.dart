import 'package:accountingbank/model/write/write_question.dart';
import 'package:accountingbank/provider/all_question_provider.dart';
import 'package:accountingbank/provider/pagenation_provider.dart';
import 'package:accountingbank/provider/verification_question_password_provider.dart';
import 'package:accountingbank/provider/write_question_post_provider.dart';
import 'package:accountingbank/theme.dart';
import 'package:accountingbank/top_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class AnswerNewQuestionPage extends ConsumerStatefulWidget {
  const AnswerNewQuestionPage({super.key, required this.id});

  final String id;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProblemNewQuestionPageState();
}

class _ProblemNewQuestionPageState
    extends ConsumerState<AnswerNewQuestionPage> {
  final TextEditingController titleTextController = TextEditingController();
  final TextEditingController usernameTextController = TextEditingController();
  final TextEditingController passwordTextController = TextEditingController();
  final TextEditingController contentTextController = TextEditingController();
  final ScrollController _contentScrollController = ScrollController();
  final FocusNode _focusNode = FocusNode();

  bool _isObscured = true;
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
    titleTextController.dispose();
    usernameTextController.dispose();
    passwordTextController.dispose();
    contentTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(flexibleSpace: appBarBackground),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildTextField(
                      label: "제목",
                      hintText: "제목을 입력해주세요",
                      controller: titleTextController,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(38),
                      ],
                    ),
                    const Gap(15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildTextField(
                          label: "이름",
                          hintText: "이름",
                          controller: usernameTextController,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(12),
                          ],
                        ),
                        const Gap(10),
                        _buildPasswordField(),
                      ],
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
                    _buildContentField(context),
                    const Gap(30),
                    _buildSubmitButton(context),
                    const Gap(15),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required String label,
    required String hintText,
    required TextEditingController controller,
    List<TextInputFormatter>? inputFormatters,
  }) {
    return Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const Gap(15),
          TextFormField(
            controller: controller,
            inputFormatters: inputFormatters,
            decoration: InputDecoration(
              hintText: hintText,
              filled: true,
              fillColor: const Color(0xFFF2F4F6),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.orange, width: 2.0),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.primary, width: 2.0),
              ),
            ),
            validator: (value) =>
                value == null || value.isEmpty ? "필수 입력 항목입니다." : null,
          ),
        ],
      ),
    );
  }

  Widget _buildPasswordField() {
    return Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "비밀번호",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const Gap(15),
          TextFormField(
            controller: passwordTextController,
            obscureText: _isObscured,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(8),
            ],
            decoration: InputDecoration(
              hintText: "최대 숫자 8자리",
              filled: true,
              fillColor: const Color(0xFFF2F4F6),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.orange, width: 2.0),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.primary, width: 2.0),
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  _isObscured ? Icons.visibility_off : Icons.visibility,
                ),
                onPressed: () => setState(() => _isObscured = !_isObscured),
              ),
            ),
            validator: (value) =>
                value == null || value.isEmpty ? "필수 입력 항목입니다." : null,
          ),
        ],
      ),
    );
  }

  Widget _buildContentField(BuildContext context) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        color: const Color(0xFFF2F4F6),
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        border: Border.all(
          width: 2,
          color: _isFocused ? Colors.orange : AppColors.primary,
        ),
      ),
      child: Scrollbar(
        controller: _contentScrollController,
        thumbVisibility: true,
        thickness: 5.0,
        child: TextFormField(
          focusNode: _focusNode,
          scrollController: _contentScrollController,
          controller: contentTextController,
          decoration: const InputDecoration(
            isDense: true,
            hintText: '내용을 입력해주세요!',
            border: OutlineInputBorder(borderSide: BorderSide.none),
          ),
          textInputAction: TextInputAction.newline,
          keyboardType: TextInputType.multiline,
          maxLines: null,
          onChanged: (_) => _contentScrollController.jumpTo(
            _contentScrollController.position.maxScrollExtent,
          ),
        ),
      ),
    );
  }

  Widget _buildSubmitButton(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if (titleTextController.text.isNotEmpty &&
            usernameTextController.text.isNotEmpty &&
            passwordTextController.text.isNotEmpty &&
            contentTextController.text.isNotEmpty) {
          await ref.read(writeQuestionNotifierProvider.notifier).createPost(
                WriteQuestion(
                  password: passwordTextController.text,
                  username: usernameTextController.text,
                  title: titleTextController.text,
                  content: contentTextController.text,
                ),
                widget.id,
              );

          ref.invalidate(allQuestionProvider(int.parse(widget.id)));
          ref.invalidate(paginatedPostProvider(int.parse(widget.id)));

          context.pop();

          showTopSnackBar(
            Overlay.of(context),
            TopSnackBar.success(
              message: "질문이 등록되었습니다.",
            ),
          );
          Future.microtask(() => ref
              .read(paginatedPostProvider(int.parse(widget.id)).notifier)
              .refreshData());
        } else {
          _showErrorDialog(context);
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
            "등록하기",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }

  void _showErrorDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.blue, width: 2),
          borderRadius: BorderRadius.circular(20),
        ),
        title: const Text(
          '오류',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        content: const SizedBox(
          height: 55,
          child: Text(
            '필수 입력 사항이 비어있습니다.',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 15,
            ),
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
            onPressed: () => context.pop(),
            child: const Text('확인'),
          ),
        ],
      ),
    );
  }
}
