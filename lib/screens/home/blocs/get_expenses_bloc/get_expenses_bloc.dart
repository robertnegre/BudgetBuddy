import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:expense_repository/expense_repository.dart';

part 'get_expenses_event.dart';
part 'get_expenses_state.dart';

class GetExpensesBloc extends Bloc<GetExpensesEvent, GetExpensesState> {
  ExpenseRepository expenseRepository;

  GetExpensesBloc(this.expenseRepository) : super(GetExpensesInitial()) {
    on<GetExpenses>((event, emit) async {
      print('GetExpenses triggered');
      emit(GetExpensesLoading());
      try {
        List<Expense> expenses = await expenseRepository.getExpenses();
        print('Fetched expenses: $expenses'); // Debug: Check fetched data
        Map<String, double> categoryTotals = calculateTotalAmountPerCategory(expenses);
        emit(GetExpensesSuccess(expenses, categoryTotals));
        print('GetExpensesSuccess emitted');
      } catch (e) {
        print('GetExpensesFailure emitted: $e');
        emit(GetExpensesFailure());
      }
    });

    on<FetchMonthlyExpenses>((event, emit) async {
      print('FetchMonthlyExpenses triggered: Year ${event.year}, Month ${event.month}');
      emit(GetExpensesLoading());
      try {
        // Fetch expenses for the specified month and year
        final expenses = await expenseRepository.getExpensesByMonth(event.year, event.month);

        // Aggregate data if needed (e.g., totals or grouping by category)
        final monthlyTotals = calculateTotalAmountPerCategory(expenses);

        emit(GetExpensesSuccess(expenses, monthlyTotals));
      } catch (e) {
        print('Error fetching monthly expenses: $e');
        emit(GetExpensesFailure());
      }
    });

  }

  Map<String, double> calculateTotalAmountPerCategory(List<Expense> expenses) {
    Map<String, double> totalByCategory = {};

    for (var expense in expenses) {
      final categoryName = expense.category.name;
      totalByCategory[categoryName] = (totalByCategory[categoryName] ?? 0) + expense.amount;
    }

    return totalByCategory;
  }
  
}
