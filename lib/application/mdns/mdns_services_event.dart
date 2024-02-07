part of 'mdns_services_bloc.dart';

@freezed
class MdnsServicesEvent with _$MdnsServicesEvent {
  const factory MdnsServicesEvent.started() = _Started;
}
