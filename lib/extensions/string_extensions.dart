final RegExp _whitespacePattern = RegExp(r'\s');

extension NullableStringExtensions on String? {
  /// Returns true if string is:
  /// - null
  /// - empty
  /// - whitespace string.
  ///
  /// Characters considered "whitespace" are listed [here](https://stackoverflow.com/a/59826129/10830091).
  bool get isNullEmptyOrWhitespace => this == null || this!.isEmptyOrWhitespace;

  bool? get hasWhitespaces => this == null ? null : this!.hasWhitespaces;

  /// Returns the substring of this string that limited with [outputLength]
  /// from the string beginning
  /// [inputPercentsKeptAtTheEnd] tells how many percents of the string end will be kept
  /// [beforeEnding] tells how the string beginning and end will be separated
  String? short({
    int outputLength = 100,
    int inputPercentsKeptAtTheEnd = 0,
    String? beforeEnding,
  }) {
    if (this == null || this!.length <= outputLength) return this;
    assert(0 <= inputPercentsKeptAtTheEnd && inputPercentsKeptAtTheEnd <= 100);

    if (beforeEnding == null && inputPercentsKeptAtTheEnd == 0) {
      return this!.substring(0, outputLength);
    }

    beforeEnding ??= '';

    final charNumberAtTheEnd =
        (outputLength * inputPercentsKeptAtTheEnd / 100).round();
    final firstPartEndIndex =
        outputLength - beforeEnding.length - charNumberAtTheEnd;
    final lastPartStartIndex = this!.length - charNumberAtTheEnd;
    return this!.substring(0, firstPartEndIndex) +
        beforeEnding +
        this!.substring(lastPartStartIndex, this!.length);
  }
}

extension StringExtensions on String {
  bool get isEmptyOrWhitespace => isEmpty || trim().isEmpty;

  bool get hasWhitespaces => _whitespacePattern.hasMatch(this);
}
