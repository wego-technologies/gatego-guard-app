// Copyright (c) 2018-2021 HERE Global B.V. and its affiliate(s).
// All rights reserved.
//
// This software and other materials contain proprietary information
// controlled by HERE and are protected by applicable copyright legislation.
// Any use and utilization of this software and other materials and
// disclosure to any third parties is conditional upon having a separate
// agreement with HERE for the access, use, utilization or disclosure of this
// software. In the absence of such agreement, the use of the software is not
// allowed.
//

import 'dart:ffi';
import 'package:here_sdk/src/_library_context.dart' as __lib;
import 'package:here_sdk/src/builtin_types__conversion.dart';
import 'package:here_sdk/src/sdk/core/geo_coordinates.dart';
import 'package:here_sdk/src/sdk/routing/charging_station.dart';
import 'package:here_sdk/src/sdk/routing/indoor_location_data_internal.dart';
import 'package:here_sdk/src/sdk/routing/route_place_type.dart';
import 'package:meta/meta.dart';

/// The location information.

class RoutePlace {
  /// The type of the route place.
  RoutePlaceType type;

  /// If available, this index corresponds to the waypoint in the original
  /// user-defined waypoint list. Otherwise, this waypoint was added during
  /// route calculation by the system.
  int? waypointIndex;

  /// User-defined geographic coordinates. If not available, it means this place
  /// was added during route calculation.
  GeoCoordinates? originalCoordinates;

  /// Map-matched geographic coordinates.
  GeoCoordinates mapMatchedCoordinates;

  /// Estimated departure battery charge in kWh for electric vehicles.
  double? chargeInKilowattHours;

  /// Charging station data for electric vehicles.
  ChargingStation? chargingStation;

  /// Name of a public transit place if available.
  String? name;

  /// Identifier of a public transit place if available.
  String? id;

  /// Platform name or number of a public transit place if available.
  String? platform;

  /// @nodoc
  @internal
  IndoorLocationDataInternal? internalindoorLocation;

  @internal
  RoutePlace(this.type, this.waypointIndex, this.originalCoordinates, this.mapMatchedCoordinates, this.chargeInKilowattHours, this.chargingStation, this.name, this.id, this.platform, this.internalindoorLocation);
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! RoutePlace) return false;
    RoutePlace _other = other;
    return type == _other.type &&
        waypointIndex == _other.waypointIndex &&
        originalCoordinates == _other.originalCoordinates &&
        mapMatchedCoordinates == _other.mapMatchedCoordinates &&
        chargeInKilowattHours == _other.chargeInKilowattHours &&
        chargingStation == _other.chargingStation &&
        name == _other.name &&
        id == _other.id &&
        platform == _other.platform &&
        internalindoorLocation == _other.internalindoorLocation;
  }

  @override
  int get hashCode {
    int result = 7;
    result = 31 * result + type.hashCode;
    result = 31 * result + waypointIndex.hashCode;
    result = 31 * result + originalCoordinates.hashCode;
    result = 31 * result + mapMatchedCoordinates.hashCode;
    result = 31 * result + chargeInKilowattHours.hashCode;
    result = 31 * result + chargingStation.hashCode;
    result = 31 * result + name.hashCode;
    result = 31 * result + id.hashCode;
    result = 31 * result + platform.hashCode;
    result = 31 * result + internalindoorLocation.hashCode;
    return result;
  }
}


// RoutePlace "private" section, not exported.

final _sdkRoutingRouteplaceCreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint32, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>),
    Pointer<Void> Function(int, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>)
  >('here_sdk_sdk_routing_RoutePlace_create_handle'));
final _sdkRoutingRouteplaceReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('here_sdk_sdk_routing_RoutePlace_release_handle'));
final _sdkRoutingRouteplaceGetFieldtype = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Uint32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('here_sdk_sdk_routing_RoutePlace_get_field_type'));
final _sdkRoutingRouteplaceGetFieldwaypointIndex = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('here_sdk_sdk_routing_RoutePlace_get_field_waypointIndex'));
final _sdkRoutingRouteplaceGetFieldoriginalCoordinates = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('here_sdk_sdk_routing_RoutePlace_get_field_originalCoordinates'));
final _sdkRoutingRouteplaceGetFieldmapMatchedCoordinates = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('here_sdk_sdk_routing_RoutePlace_get_field_mapMatchedCoordinates'));
final _sdkRoutingRouteplaceGetFieldchargeInKilowattHours = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('here_sdk_sdk_routing_RoutePlace_get_field_chargeInKilowattHours'));
final _sdkRoutingRouteplaceGetFieldchargingStation = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('here_sdk_sdk_routing_RoutePlace_get_field_chargingStation'));
final _sdkRoutingRouteplaceGetFieldname = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('here_sdk_sdk_routing_RoutePlace_get_field_name'));
final _sdkRoutingRouteplaceGetFieldid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('here_sdk_sdk_routing_RoutePlace_get_field_id'));
final _sdkRoutingRouteplaceGetFieldplatform = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('here_sdk_sdk_routing_RoutePlace_get_field_platform'));
final _sdkRoutingRouteplaceGetFieldindoorLocation = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('here_sdk_sdk_routing_RoutePlace_get_field_indoorLocation'));



Pointer<Void> sdkRoutingRouteplaceToFfi(RoutePlace value) {
  final _typeHandle = sdkRoutingRouteplacetypeToFfi(value.type);
  final _waypointIndexHandle = intToFfiNullable(value.waypointIndex);
  final _originalCoordinatesHandle = sdkCoreGeocoordinatesToFfiNullable(value.originalCoordinates);
  final _mapMatchedCoordinatesHandle = sdkCoreGeocoordinatesToFfi(value.mapMatchedCoordinates);
  final _chargeInKilowattHoursHandle = doubleToFfiNullable(value.chargeInKilowattHours);
  final _chargingStationHandle = sdkRoutingChargingstationToFfiNullable(value.chargingStation);
  final _nameHandle = stringToFfiNullable(value.name);
  final _idHandle = stringToFfiNullable(value.id);
  final _platformHandle = stringToFfiNullable(value.platform);
  final _indoorLocationHandle = sdkRoutingIndoorlocationdatainternalToFfiNullable(value.internalindoorLocation);
  final _result = _sdkRoutingRouteplaceCreateHandle(_typeHandle, _waypointIndexHandle, _originalCoordinatesHandle, _mapMatchedCoordinatesHandle, _chargeInKilowattHoursHandle, _chargingStationHandle, _nameHandle, _idHandle, _platformHandle, _indoorLocationHandle);
  sdkRoutingRouteplacetypeReleaseFfiHandle(_typeHandle);
  intReleaseFfiHandleNullable(_waypointIndexHandle);
  sdkCoreGeocoordinatesReleaseFfiHandleNullable(_originalCoordinatesHandle);
  sdkCoreGeocoordinatesReleaseFfiHandle(_mapMatchedCoordinatesHandle);
  doubleReleaseFfiHandleNullable(_chargeInKilowattHoursHandle);
  sdkRoutingChargingstationReleaseFfiHandleNullable(_chargingStationHandle);
  stringReleaseFfiHandleNullable(_nameHandle);
  stringReleaseFfiHandleNullable(_idHandle);
  stringReleaseFfiHandleNullable(_platformHandle);
  sdkRoutingIndoorlocationdatainternalReleaseFfiHandleNullable(_indoorLocationHandle);
  return _result;
}

RoutePlace sdkRoutingRouteplaceFromFfi(Pointer<Void> handle) {
  final _typeHandle = _sdkRoutingRouteplaceGetFieldtype(handle);
  final _waypointIndexHandle = _sdkRoutingRouteplaceGetFieldwaypointIndex(handle);
  final _originalCoordinatesHandle = _sdkRoutingRouteplaceGetFieldoriginalCoordinates(handle);
  final _mapMatchedCoordinatesHandle = _sdkRoutingRouteplaceGetFieldmapMatchedCoordinates(handle);
  final _chargeInKilowattHoursHandle = _sdkRoutingRouteplaceGetFieldchargeInKilowattHours(handle);
  final _chargingStationHandle = _sdkRoutingRouteplaceGetFieldchargingStation(handle);
  final _nameHandle = _sdkRoutingRouteplaceGetFieldname(handle);
  final _idHandle = _sdkRoutingRouteplaceGetFieldid(handle);
  final _platformHandle = _sdkRoutingRouteplaceGetFieldplatform(handle);
  final _indoorLocationHandle = _sdkRoutingRouteplaceGetFieldindoorLocation(handle);
  try {
    return RoutePlace(
      sdkRoutingRouteplacetypeFromFfi(_typeHandle), 
      intFromFfiNullable(_waypointIndexHandle), 
      sdkCoreGeocoordinatesFromFfiNullable(_originalCoordinatesHandle), 
      sdkCoreGeocoordinatesFromFfi(_mapMatchedCoordinatesHandle), 
      doubleFromFfiNullable(_chargeInKilowattHoursHandle), 
      sdkRoutingChargingstationFromFfiNullable(_chargingStationHandle), 
      stringFromFfiNullable(_nameHandle), 
      stringFromFfiNullable(_idHandle), 
      stringFromFfiNullable(_platformHandle), 
      sdkRoutingIndoorlocationdatainternalFromFfiNullable(_indoorLocationHandle)
    );
  } finally {
    sdkRoutingRouteplacetypeReleaseFfiHandle(_typeHandle);
    intReleaseFfiHandleNullable(_waypointIndexHandle);
    sdkCoreGeocoordinatesReleaseFfiHandleNullable(_originalCoordinatesHandle);
    sdkCoreGeocoordinatesReleaseFfiHandle(_mapMatchedCoordinatesHandle);
    doubleReleaseFfiHandleNullable(_chargeInKilowattHoursHandle);
    sdkRoutingChargingstationReleaseFfiHandleNullable(_chargingStationHandle);
    stringReleaseFfiHandleNullable(_nameHandle);
    stringReleaseFfiHandleNullable(_idHandle);
    stringReleaseFfiHandleNullable(_platformHandle);
    sdkRoutingIndoorlocationdatainternalReleaseFfiHandleNullable(_indoorLocationHandle);
  }
}

void sdkRoutingRouteplaceReleaseFfiHandle(Pointer<Void> handle) => _sdkRoutingRouteplaceReleaseHandle(handle);

// Nullable RoutePlace

final _sdkRoutingRouteplaceCreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('here_sdk_sdk_routing_RoutePlace_create_handle_nullable'));
final _sdkRoutingRouteplaceReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('here_sdk_sdk_routing_RoutePlace_release_handle_nullable'));
final _sdkRoutingRouteplaceGetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('here_sdk_sdk_routing_RoutePlace_get_value_nullable'));

Pointer<Void> sdkRoutingRouteplaceToFfiNullable(RoutePlace? value) {
  if (value == null) return Pointer<Void>.fromAddress(0);
  final _handle = sdkRoutingRouteplaceToFfi(value);
  final result = _sdkRoutingRouteplaceCreateHandleNullable(_handle);
  sdkRoutingRouteplaceReleaseFfiHandle(_handle);
  return result;
}

RoutePlace? sdkRoutingRouteplaceFromFfiNullable(Pointer<Void> handle) {
  if (handle.address == 0) return null;
  final _handle = _sdkRoutingRouteplaceGetValueNullable(handle);
  final result = sdkRoutingRouteplaceFromFfi(_handle);
  sdkRoutingRouteplaceReleaseFfiHandle(_handle);
  return result;
}

void sdkRoutingRouteplaceReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _sdkRoutingRouteplaceReleaseHandleNullable(handle);

// End of RoutePlace "private" section.

