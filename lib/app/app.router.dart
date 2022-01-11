// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../ui/views/home/home_view.dart';
import '../ui/views/transactions/add_transaction_view/add_transaction_view.dart';
import '../ui/views/transactions/transactions_view/transactions_view.dart';

class Routes {
  static const String homeView = '/';
  static const String transactionsView = '/transactions-view';
  static const String addTransactionView = '/add-transaction-view';
  static const all = <String>{
    homeView,
    transactionsView,
    addTransactionView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.transactionsView, page: TransactionsView),
    RouteDef(Routes.addTransactionView, page: AddTransactionView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const HomeView(),
        settings: data,
      );
    },
    TransactionsView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const TransactionsView(),
        settings: data,
      );
    },
    AddTransactionView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const AddTransactionView(),
        settings: data,
      );
    },
  };
}
