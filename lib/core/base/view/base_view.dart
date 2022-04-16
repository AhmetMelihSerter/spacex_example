import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../product/init/startup/startup_top.dart';

class BaseView<T extends Bloc> extends StatefulWidget {
  final Widget Function(BuildContext context, T viewModel) onPageBuilder;

  const BaseView({
    Key? key,
    required this.onPageBuilder,
  }) : super(key: key);

  @override
  _BaseViewState<T> createState() => _BaseViewState<T>();
}

class _BaseViewState<T extends Bloc> extends State<BaseView<T>> {
  late T viewModel;

  @override
  void initState() {
    viewModel = Startup.locator<T>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<T>.value(
      value: viewModel,
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: widget.onPageBuilder(context, viewModel),
      ),
    );
  }
}
