import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mdns_services_event.dart';
part 'mdns_services_state.dart';
part 'mdns_services_bloc.freezed.dart';

class MdnsServicesBloc extends Bloc<MdnsServicesEvent, MdnsServicesState> {
  MdnsServicesBloc() : super(const MdnsServicesState.initial()) {
    on<MdnsServicesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
