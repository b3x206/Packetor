// import 'package:analyzer/analyzer.dart';
// import 'package:analyzer/src/generated/ast.dart';
// import 'package:analyzer/src/generated/scanner.dart';
// import 'dart:io';

// // code to parse
// String src = r"""
// import 'package:mistletoe/mistletoe.dart';
// var o = new Object();
// main(){
//   f(o);
// }
// f(p){
//   var o = p;
//   o = o as Object;
//   print(o);
// }
// """;

// main() async {
// //  var src = await new File('./lib/mistletoe.dart').readAsString();
//   var ast = parseCompilationUnit(src, parseFunctionBodies: true);
//   var nodes = flatten_tree(ast);
//   var types = {};
//   for (var n in nodes) {
//     types[n.runtimeType] ??= [];
//     types[n.runtimeType].add(n);
//   }
//   var data = [];
//   for (var k in types.keys) {
//     data.add(k.toString());
//     for (var e in types[k]) {
//       data.add('\t' + e.toString());
//     }
//   }
//   data = data.join('\n');
//   print(data);
// //  await new File('./lib/node_samples.txt').writeAsString(data);
// }

// List flatten_tree(AstNode n, [int depth = 9999999]) {
//   var que = [];
//   que.add(n);
//   var nodes = [];
//   int nodes_count = que.length;
//   int dep = 0;
//   int c = 0;
//   if (depth == 0) return [n];
//   while (que.isNotEmpty) {
//     var node = que.removeAt(0);
//     if (node is! AstNode) continue;
//     for (var cn in node.childEntities) {
//       nodes.add(cn);
//       que.add(cn);
//     }
//     //Keeping track of how deep in the tree
//     ++c;
//     if (c == nodes_count) {
//       ++dep; // One layer done
//       if (depth <= dep) return nodes;
//       c = 0;
//       nodes_count = que.length;
//     }
//   }
//   return nodes;
// }

// show(node) {
//   print('Type: ${node.runtimeType}, body: $node');
// }
