

part of rsModels;

class DirDetails {
  List parent_groups;

  /// Json with keys: type, name, handle
  ///
  /// Where type 4 is for directories and 8 for files, where handle is the next
  /// handle used to navigate into it.
  List<Map<String, dynamic>> children;

  RsInt64 handle;
  RsInt64 parentHandle;

  /// parent row
  int prow;
  int type;
  String id;
  String name;
  String hash;
  String path;
  RsInt64 size;
  int mtime;
  int flags;
  int max_mtime;

  DirDetails({
    required this.parent_groups,
    required this.children,
    required this.handle,
    required this.parentHandle,
    required this.prow,
    required this.type,
    required this.id,
    required this.name,
    required this.hash,
    required this.path,
    required this.size,
    required this.mtime,
    required this.flags,
    required this.max_mtime,
  });

  DirDetails.fromJson(Map<String, dynamic> jsonString)
      : this(
          parent_groups: jsonString['parent_groups'],
          children:
              jsonString['children'].cast<Map<String, dynamic>>().toList(),
          handle: RsInt64.fromJson(jsonString['handle']),
          parentHandle: RsInt64.fromJson(jsonString['parentHandle']),
          prow: jsonString['prow'],
          type: jsonString['type'],
          id: jsonString['id'],
          name: jsonString['name'],
          hash: jsonString['hash'],
          path: jsonString['path'],
          size: RsInt64.fromJson(jsonString['size']),
          mtime: jsonString['mtime'],
          flags: jsonString['flags'],
          max_mtime: jsonString['max_mtime'],
        );
}
