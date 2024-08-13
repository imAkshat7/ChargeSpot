import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ChargeSpotCall {
  static Future<ApiCallResponse> call({
    String? near = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ChargeSpot',
      apiUrl:
          'https://api.openchargemap.io/v3/poi?key=4ff3f0b2-94b3-481a-a79b-08193c329cf5&output=json&countrycode=IN&latitude={20.5937}&longitude={78.9629}&distance=50&maxresults=100',
      callType: ApiCallType.GET,
      headers: {
        'x-api': '4ff3f0b2-94b3-481a-a79b-08193c329cf5',
      },
      params: {
        'near': near,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? sIte(dynamic response) => (getJsonField(
        response,
        r'''$[:].OperatorInfo.WebsiteURL''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? ccntact(dynamic response) => (getJsonField(
        response,
        r'''$[:].OperatorInfo.PhonePrimaryContact''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$[:].OperatorInfo.Title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? add(dynamic response) => (getJsonField(
        response,
        r'''$[:].AddressInfo.Title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? address(dynamic response) => (getJsonField(
        response,
        r'''$[:].AddressInfo.AddressLine1''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? postalcode(dynamic response) => getJsonField(
        response,
        r'''$[:].AddressInfo.Postcode''',
        true,
      ) as List?;
  static List<String>? cOuntry(dynamic response) => (getJsonField(
        response,
        r'''$[:].AddressInfo.Country.Title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<double>? lon(dynamic response) => (getJsonField(
        response,
        r'''$[:].AddressInfo.Longitude''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<double>? lat(dynamic response) => (getJsonField(
        response,
        r'''$[:].AddressInfo.Latitude''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<String>? type(dynamic response) => (getJsonField(
        response,
        r'''$[:].Connections[:].ConnectionType.Title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? status(dynamic response) => (getJsonField(
        response,
        r'''$[:].Connections[:].StatusType.Title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? speed(dynamic response) => (getJsonField(
        response,
        r'''$[:].Connections[:].Level.Title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? all(dynamic response) => getJsonField(
        response,
        r'''$[:]''',
        true,
      ) as List?;
}

class RapidCall {
  static Future<ApiCallResponse> call({
    String? near = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'rapid',
      apiUrl: 'https://ev-charge-finder.p.rapidapi.com/search-by-location',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': 'c2dc3c5dbfmsha4d8e5b25260119p1cd77fjsn0b861026b4b2',
        'X-RapidAPI-Host': 'ev-charge-finder.p.rapidapi.com',
      },
      params: {
        'near': near,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? connectors(dynamic response) => getJsonField(
        response,
        r'''$.data[:].connectors''',
        true,
      ) as List?;
  static List<String>? dataconnectorstype(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].connectors[:].type''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? dataconnectorstotal(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].connectors[:].total''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? dataconnectorskw(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].connectors[:].kw''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? dataconnectorsspeed(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].connectors[:].speed''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? dataformattedaddress(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].formatted_address''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? dataaddresscomponents(dynamic response) => getJsonField(
        response,
        r'''$.data[:].address_components''',
        true,
      ) as List?;
  static List<String>? streetaddress(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].address_components.street_address''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? city(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].address_components.city''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? zipcode(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].address_components.zipcode''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? state(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].address_components.state''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? country(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].address_components.country''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<double>? latitude(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].latitude''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<double>? longitude(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].longitude''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<String>? placelink(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].place_link''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? phonenumber(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].phone_number''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? photo(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].photo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? website(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].website''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? googlecid(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].google_cid''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? district(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].address_components.district''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static String? requestid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.request_id''',
      ));
  static List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  static List<String>? dataid(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
