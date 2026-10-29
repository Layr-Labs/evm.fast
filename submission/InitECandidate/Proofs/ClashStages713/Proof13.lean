import InitECandidate.Proofs.ClashStages713.Proof12
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree1248_agree : tree1248 = literal1248 := by
  rw [tree1248_def, tree1246_agree, tree1247_agree]
  rfl
theorem node1248_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1248 live1248 coloured1248 = result1248 := by
  rw [tree1248_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1246_eq
  unfold live1246 coloured1246 at child
  try dsimp only [live1248, coloured1248]
  rw [child]
  dsimp only [result1246]
  have child := node1247_eq
  unfold live1247 coloured1247 at child
  try dsimp only [live1248, coloured1248]
  rw [child]
  dsimp only [result1247]
  try dsimp only [colour, result1248]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1249_agree : tree1249 = literal1249 := by
  rw [tree1249_def]
  rfl
theorem node1249_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1249 live1249 coloured1249 = result1249 := by
  rw [tree1249_def]
  try dsimp only [colour, result1249]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1250_agree : tree1250 = literal1250 := by
  rw [tree1250_def, tree1248_agree, tree1249_agree]
  rfl
theorem node1250_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1250 live1250 coloured1250 = result1250 := by
  rw [tree1250_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1248_eq
  unfold live1248 coloured1248 at child
  try dsimp only [live1250, coloured1250]
  rw [child]
  dsimp only [result1248]
  have child := node1249_eq
  unfold live1249 coloured1249 at child
  try dsimp only [live1250, coloured1250]
  rw [child]
  dsimp only [result1249]
  try dsimp only [colour, result1250]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1251_agree : tree1251 = literal1251 := by
  rw [tree1251_def]
  rfl
theorem node1251_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1251 live1251 coloured1251 = result1251 := by
  rw [tree1251_def]
  try dsimp only [colour, result1251]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1252_agree : tree1252 = literal1252 := by
  rw [tree1252_def, tree1250_agree, tree1251_agree]
  rfl
theorem node1252_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1252 live1252 coloured1252 = result1252 := by
  rw [tree1252_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1250_eq
  unfold live1250 coloured1250 at child
  try dsimp only [live1252, coloured1252]
  rw [child]
  dsimp only [result1250]
  have child := node1251_eq
  unfold live1251 coloured1251 at child
  try dsimp only [live1252, coloured1252]
  rw [child]
  dsimp only [result1251]
  try dsimp only [colour, result1252]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1253_agree : tree1253 = literal1253 := by
  rw [tree1253_def]
  rfl
theorem node1253_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1253 live1253 coloured1253 = result1253 := by
  rw [tree1253_def]
  try dsimp only [colour, result1253]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1254_agree : tree1254 = literal1254 := by
  rw [tree1254_def, tree1252_agree, tree1253_agree]
  rfl
theorem node1254_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1254 live1254 coloured1254 = result1254 := by
  rw [tree1254_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1252_eq
  unfold live1252 coloured1252 at child
  try dsimp only [live1254, coloured1254]
  rw [child]
  dsimp only [result1252]
  have child := node1253_eq
  unfold live1253 coloured1253 at child
  try dsimp only [live1254, coloured1254]
  rw [child]
  dsimp only [result1253]
  try dsimp only [colour, result1254]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1255_agree : tree1255 = literal1255 := by
  rw [tree1255_def]
  rfl
theorem node1255_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1255 live1255 coloured1255 = result1255 := by
  rw [tree1255_def]
  try dsimp only [colour, result1255]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1256_agree : tree1256 = literal1256 := by
  rw [tree1256_def, tree1254_agree, tree1255_agree]
  rfl
theorem node1256_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1256 live1256 coloured1256 = result1256 := by
  rw [tree1256_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1254_eq
  unfold live1254 coloured1254 at child
  try dsimp only [live1256, coloured1256]
  rw [child]
  dsimp only [result1254]
  have child := node1255_eq
  unfold live1255 coloured1255 at child
  try dsimp only [live1256, coloured1256]
  rw [child]
  dsimp only [result1255]
  try dsimp only [colour, result1256]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1257_agree : tree1257 = literal1257 := by
  rw [tree1257_def]
  rfl
theorem node1257_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1257 live1257 coloured1257 = result1257 := by
  rw [tree1257_def]
  try dsimp only [colour, result1257]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1258_agree : tree1258 = literal1258 := by
  rw [tree1258_def, tree1256_agree, tree1257_agree]
  rfl
theorem node1258_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1258 live1258 coloured1258 = result1258 := by
  rw [tree1258_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1256_eq
  unfold live1256 coloured1256 at child
  try dsimp only [live1258, coloured1258]
  rw [child]
  dsimp only [result1256]
  have child := node1257_eq
  unfold live1257 coloured1257 at child
  try dsimp only [live1258, coloured1258]
  rw [child]
  dsimp only [result1257]
  try dsimp only [colour, result1258]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1259_agree : tree1259 = literal1259 := by
  rw [tree1259_def]
  rfl
theorem node1259_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1259 live1259 coloured1259 = result1259 := by
  rw [tree1259_def]
  try dsimp only [colour, result1259]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1260_agree : tree1260 = literal1260 := by
  rw [tree1260_def, tree1258_agree, tree1259_agree]
  rfl
theorem node1260_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1260 live1260 coloured1260 = result1260 := by
  rw [tree1260_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1258_eq
  unfold live1258 coloured1258 at child
  try dsimp only [live1260, coloured1260]
  rw [child]
  dsimp only [result1258]
  have child := node1259_eq
  unfold live1259 coloured1259 at child
  try dsimp only [live1260, coloured1260]
  rw [child]
  dsimp only [result1259]
  try dsimp only [colour, result1260]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1261_agree : tree1261 = literal1261 := by
  rw [tree1261_def]
  rfl
theorem node1261_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1261 live1261 coloured1261 = result1261 := by
  rw [tree1261_def]
  try dsimp only [colour, result1261]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1262_agree : tree1262 = literal1262 := by
  rw [tree1262_def, tree1260_agree, tree1261_agree]
  rfl
theorem node1262_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1262 live1262 coloured1262 = result1262 := by
  rw [tree1262_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1260_eq
  unfold live1260 coloured1260 at child
  try dsimp only [live1262, coloured1262]
  rw [child]
  dsimp only [result1260]
  have child := node1261_eq
  unfold live1261 coloured1261 at child
  try dsimp only [live1262, coloured1262]
  rw [child]
  dsimp only [result1261]
  try dsimp only [colour, result1262]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1263_agree : tree1263 = literal1263 := by
  rw [tree1263_def]
  rfl
theorem node1263_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1263 live1263 coloured1263 = result1263 := by
  rw [tree1263_def]
  try dsimp only [colour, result1263]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1264_agree : tree1264 = literal1264 := by
  rw [tree1264_def, tree1262_agree, tree1263_agree]
  rfl
theorem node1264_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1264 live1264 coloured1264 = result1264 := by
  rw [tree1264_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1262_eq
  unfold live1262 coloured1262 at child
  try dsimp only [live1264, coloured1264]
  rw [child]
  dsimp only [result1262]
  have child := node1263_eq
  unfold live1263 coloured1263 at child
  try dsimp only [live1264, coloured1264]
  rw [child]
  dsimp only [result1263]
  try dsimp only [colour, result1264]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1265_agree : tree1265 = literal1265 := by
  rw [tree1265_def]
  rfl
theorem node1265_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1265 live1265 coloured1265 = result1265 := by
  rw [tree1265_def]
  try dsimp only [colour, result1265]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1266_agree : tree1266 = literal1266 := by
  rw [tree1266_def, tree1264_agree, tree1265_agree]
  rfl
theorem node1266_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1266 live1266 coloured1266 = result1266 := by
  rw [tree1266_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1264_eq
  unfold live1264 coloured1264 at child
  try dsimp only [live1266, coloured1266]
  rw [child]
  dsimp only [result1264]
  have child := node1265_eq
  unfold live1265 coloured1265 at child
  try dsimp only [live1266, coloured1266]
  rw [child]
  dsimp only [result1265]
  try dsimp only [colour, result1266]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1267_agree : tree1267 = literal1267 := by
  rw [tree1267_def]
  rfl
theorem node1267_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1267 live1267 coloured1267 = result1267 := by
  rw [tree1267_def]
  try dsimp only [colour, result1267]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1268_agree : tree1268 = literal1268 := by
  rw [tree1268_def, tree1266_agree, tree1267_agree]
  rfl
theorem node1268_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1268 live1268 coloured1268 = result1268 := by
  rw [tree1268_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1266_eq
  unfold live1266 coloured1266 at child
  try dsimp only [live1268, coloured1268]
  rw [child]
  dsimp only [result1266]
  have child := node1267_eq
  unfold live1267 coloured1267 at child
  try dsimp only [live1268, coloured1268]
  rw [child]
  dsimp only [result1267]
  try dsimp only [colour, result1268]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1269_agree : tree1269 = literal1269 := by
  rw [tree1269_def]
  rfl
theorem node1269_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1269 live1269 coloured1269 = result1269 := by
  rw [tree1269_def]
  try dsimp only [colour, result1269]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1270_agree : tree1270 = literal1270 := by
  rw [tree1270_def, tree1268_agree, tree1269_agree]
  rfl
theorem node1270_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1270 live1270 coloured1270 = result1270 := by
  rw [tree1270_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1268_eq
  unfold live1268 coloured1268 at child
  try dsimp only [live1270, coloured1270]
  rw [child]
  dsimp only [result1268]
  have child := node1269_eq
  unfold live1269 coloured1269 at child
  try dsimp only [live1270, coloured1270]
  rw [child]
  dsimp only [result1269]
  try dsimp only [colour, result1270]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1271_agree : tree1271 = literal1271 := by
  rw [tree1271_def]
  rfl
theorem node1271_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1271 live1271 coloured1271 = result1271 := by
  rw [tree1271_def]
  try dsimp only [colour, result1271]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1272_agree : tree1272 = literal1272 := by
  rw [tree1272_def, tree1270_agree, tree1271_agree]
  rfl
theorem node1272_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1272 live1272 coloured1272 = result1272 := by
  rw [tree1272_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1270_eq
  unfold live1270 coloured1270 at child
  try dsimp only [live1272, coloured1272]
  rw [child]
  dsimp only [result1270]
  have child := node1271_eq
  unfold live1271 coloured1271 at child
  try dsimp only [live1272, coloured1272]
  rw [child]
  dsimp only [result1271]
  try dsimp only [colour, result1272]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1273_agree : tree1273 = literal1273 := by
  rw [tree1273_def]
  rfl
theorem node1273_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1273 live1273 coloured1273 = result1273 := by
  rw [tree1273_def]
  try dsimp only [colour, result1273]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1274_agree : tree1274 = literal1274 := by
  rw [tree1274_def, tree1272_agree, tree1273_agree]
  rfl
theorem node1274_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1274 live1274 coloured1274 = result1274 := by
  rw [tree1274_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1272_eq
  unfold live1272 coloured1272 at child
  try dsimp only [live1274, coloured1274]
  rw [child]
  dsimp only [result1272]
  have child := node1273_eq
  unfold live1273 coloured1273 at child
  try dsimp only [live1274, coloured1274]
  rw [child]
  dsimp only [result1273]
  try dsimp only [colour, result1274]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1275_agree : tree1275 = literal1275 := by
  rw [tree1275_def]
  rfl
theorem node1275_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1275 live1275 coloured1275 = result1275 := by
  rw [tree1275_def]
  try dsimp only [colour, result1275]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1276_agree : tree1276 = literal1276 := by
  rw [tree1276_def, tree1274_agree, tree1275_agree]
  rfl
theorem node1276_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1276 live1276 coloured1276 = result1276 := by
  rw [tree1276_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1274_eq
  unfold live1274 coloured1274 at child
  try dsimp only [live1276, coloured1276]
  rw [child]
  dsimp only [result1274]
  have child := node1275_eq
  unfold live1275 coloured1275 at child
  try dsimp only [live1276, coloured1276]
  rw [child]
  dsimp only [result1275]
  try dsimp only [colour, result1276]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1277_agree : tree1277 = literal1277 := by
  rw [tree1277_def]
  rfl
theorem node1277_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1277 live1277 coloured1277 = result1277 := by
  rw [tree1277_def]
  try dsimp only [colour, result1277]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1278_agree : tree1278 = literal1278 := by
  rw [tree1278_def, tree1276_agree, tree1277_agree]
  rfl
theorem node1278_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1278 live1278 coloured1278 = result1278 := by
  rw [tree1278_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1276_eq
  unfold live1276 coloured1276 at child
  try dsimp only [live1278, coloured1278]
  rw [child]
  dsimp only [result1276]
  have child := node1277_eq
  unfold live1277 coloured1277 at child
  try dsimp only [live1278, coloured1278]
  rw [child]
  dsimp only [result1277]
  try dsimp only [colour, result1278]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1279_agree : tree1279 = literal1279 := by
  rw [tree1279_def]
  rfl
theorem node1279_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1279 live1279 coloured1279 = result1279 := by
  rw [tree1279_def]
  try dsimp only [colour, result1279]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1280_agree : tree1280 = literal1280 := by
  rw [tree1280_def, tree1278_agree, tree1279_agree]
  rfl
theorem node1280_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1280 live1280 coloured1280 = result1280 := by
  rw [tree1280_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1278_eq
  unfold live1278 coloured1278 at child
  try dsimp only [live1280, coloured1280]
  rw [child]
  dsimp only [result1278]
  have child := node1279_eq
  unfold live1279 coloured1279 at child
  try dsimp only [live1280, coloured1280]
  rw [child]
  dsimp only [result1279]
  try dsimp only [colour, result1280]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1281_agree : tree1281 = literal1281 := by
  rw [tree1281_def]
  rfl
theorem node1281_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1281 live1281 coloured1281 = result1281 := by
  rw [tree1281_def]
  try dsimp only [colour, result1281]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1282_agree : tree1282 = literal1282 := by
  rw [tree1282_def, tree1280_agree, tree1281_agree]
  rfl
theorem node1282_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1282 live1282 coloured1282 = result1282 := by
  rw [tree1282_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1280_eq
  unfold live1280 coloured1280 at child
  try dsimp only [live1282, coloured1282]
  rw [child]
  dsimp only [result1280]
  have child := node1281_eq
  unfold live1281 coloured1281 at child
  try dsimp only [live1282, coloured1282]
  rw [child]
  dsimp only [result1281]
  try dsimp only [colour, result1282]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1283_agree : tree1283 = literal1283 := by
  rw [tree1283_def]
  rfl
theorem node1283_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1283 live1283 coloured1283 = result1283 := by
  rw [tree1283_def]
  try dsimp only [colour, result1283]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1284_agree : tree1284 = literal1284 := by
  rw [tree1284_def, tree1282_agree, tree1283_agree]
  rfl
theorem node1284_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1284 live1284 coloured1284 = result1284 := by
  rw [tree1284_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1282_eq
  unfold live1282 coloured1282 at child
  try dsimp only [live1284, coloured1284]
  rw [child]
  dsimp only [result1282]
  have child := node1283_eq
  unfold live1283 coloured1283 at child
  try dsimp only [live1284, coloured1284]
  rw [child]
  dsimp only [result1283]
  try dsimp only [colour, result1284]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1285_agree : tree1285 = literal1285 := by
  rw [tree1285_def]
  rfl
theorem node1285_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1285 live1285 coloured1285 = result1285 := by
  rw [tree1285_def]
  try dsimp only [colour, result1285]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1286_agree : tree1286 = literal1286 := by
  rw [tree1286_def, tree1284_agree, tree1285_agree]
  rfl
theorem node1286_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1286 live1286 coloured1286 = result1286 := by
  rw [tree1286_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1284_eq
  unfold live1284 coloured1284 at child
  try dsimp only [live1286, coloured1286]
  rw [child]
  dsimp only [result1284]
  have child := node1285_eq
  unfold live1285 coloured1285 at child
  try dsimp only [live1286, coloured1286]
  rw [child]
  dsimp only [result1285]
  try dsimp only [colour, result1286]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1287_agree : tree1287 = literal1287 := by
  rw [tree1287_def]
  rfl
theorem node1287_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1287 live1287 coloured1287 = result1287 := by
  rw [tree1287_def]
  try dsimp only [colour, result1287]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1288_agree : tree1288 = literal1288 := by
  rw [tree1288_def, tree1286_agree, tree1287_agree]
  rfl
theorem node1288_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1288 live1288 coloured1288 = result1288 := by
  rw [tree1288_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1286_eq
  unfold live1286 coloured1286 at child
  try dsimp only [live1288, coloured1288]
  rw [child]
  dsimp only [result1286]
  have child := node1287_eq
  unfold live1287 coloured1287 at child
  try dsimp only [live1288, coloured1288]
  rw [child]
  dsimp only [result1287]
  try dsimp only [colour, result1288]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1289_agree : tree1289 = literal1289 := by
  rw [tree1289_def]
  rfl
theorem node1289_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1289 live1289 coloured1289 = result1289 := by
  rw [tree1289_def]
  try dsimp only [colour, result1289]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1290_agree : tree1290 = literal1290 := by
  rw [tree1290_def, tree1288_agree, tree1289_agree]
  rfl
theorem node1290_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1290 live1290 coloured1290 = result1290 := by
  rw [tree1290_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1288_eq
  unfold live1288 coloured1288 at child
  try dsimp only [live1290, coloured1290]
  rw [child]
  dsimp only [result1288]
  have child := node1289_eq
  unfold live1289 coloured1289 at child
  try dsimp only [live1290, coloured1290]
  rw [child]
  dsimp only [result1289]
  try dsimp only [colour, result1290]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1291_agree : tree1291 = literal1291 := by
  rw [tree1291_def]
  rfl
theorem node1291_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1291 live1291 coloured1291 = result1291 := by
  rw [tree1291_def]
  try dsimp only [colour, result1291]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1292_agree : tree1292 = literal1292 := by
  rw [tree1292_def, tree1290_agree, tree1291_agree]
  rfl
theorem node1292_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1292 live1292 coloured1292 = result1292 := by
  rw [tree1292_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1290_eq
  unfold live1290 coloured1290 at child
  try dsimp only [live1292, coloured1292]
  rw [child]
  dsimp only [result1290]
  have child := node1291_eq
  unfold live1291 coloured1291 at child
  try dsimp only [live1292, coloured1292]
  rw [child]
  dsimp only [result1291]
  try dsimp only [colour, result1292]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1293_agree : tree1293 = literal1293 := by
  rw [tree1293_def]
  rfl
theorem node1293_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1293 live1293 coloured1293 = result1293 := by
  rw [tree1293_def]
  try dsimp only [colour, result1293]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1294_agree : tree1294 = literal1294 := by
  rw [tree1294_def, tree1292_agree, tree1293_agree]
  rfl
theorem node1294_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1294 live1294 coloured1294 = result1294 := by
  rw [tree1294_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1292_eq
  unfold live1292 coloured1292 at child
  try dsimp only [live1294, coloured1294]
  rw [child]
  dsimp only [result1292]
  have child := node1293_eq
  unfold live1293 coloured1293 at child
  try dsimp only [live1294, coloured1294]
  rw [child]
  dsimp only [result1293]
  try dsimp only [colour, result1294]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1295_agree : tree1295 = literal1295 := by
  rw [tree1295_def]
  rfl
theorem node1295_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1295 live1295 coloured1295 = result1295 := by
  rw [tree1295_def]
  try dsimp only [colour, result1295]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1296_agree : tree1296 = literal1296 := by
  rw [tree1296_def, tree1294_agree, tree1295_agree]
  rfl
theorem node1296_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1296 live1296 coloured1296 = result1296 := by
  rw [tree1296_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1294_eq
  unfold live1294 coloured1294 at child
  try dsimp only [live1296, coloured1296]
  rw [child]
  dsimp only [result1294]
  have child := node1295_eq
  unfold live1295 coloured1295 at child
  try dsimp only [live1296, coloured1296]
  rw [child]
  dsimp only [result1295]
  try dsimp only [colour, result1296]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1297_agree : tree1297 = literal1297 := by
  rw [tree1297_def]
  rfl
theorem node1297_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1297 live1297 coloured1297 = result1297 := by
  rw [tree1297_def]
  try dsimp only [colour, result1297]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1298_agree : tree1298 = literal1298 := by
  rw [tree1298_def, tree1296_agree, tree1297_agree]
  rfl
theorem node1298_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1298 live1298 coloured1298 = result1298 := by
  rw [tree1298_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1296_eq
  unfold live1296 coloured1296 at child
  try dsimp only [live1298, coloured1298]
  rw [child]
  dsimp only [result1296]
  have child := node1297_eq
  unfold live1297 coloured1297 at child
  try dsimp only [live1298, coloured1298]
  rw [child]
  dsimp only [result1297]
  try dsimp only [colour, result1298]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1299_agree : tree1299 = literal1299 := by
  rw [tree1299_def]
  rfl
theorem node1299_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1299 live1299 coloured1299 = result1299 := by
  rw [tree1299_def]
  try dsimp only [colour, result1299]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1300_agree : tree1300 = literal1300 := by
  rw [tree1300_def, tree1298_agree, tree1299_agree]
  rfl
theorem node1300_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1300 live1300 coloured1300 = result1300 := by
  rw [tree1300_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1298_eq
  unfold live1298 coloured1298 at child
  try dsimp only [live1300, coloured1300]
  rw [child]
  dsimp only [result1298]
  have child := node1299_eq
  unfold live1299 coloured1299 at child
  try dsimp only [live1300, coloured1300]
  rw [child]
  dsimp only [result1299]
  try dsimp only [colour, result1300]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1301_agree : tree1301 = literal1301 := by
  rw [tree1301_def]
  rfl
theorem node1301_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1301 live1301 coloured1301 = result1301 := by
  rw [tree1301_def]
  try dsimp only [colour, result1301]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1302_agree : tree1302 = literal1302 := by
  rw [tree1302_def, tree1300_agree, tree1301_agree]
  rfl
theorem node1302_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1302 live1302 coloured1302 = result1302 := by
  rw [tree1302_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1300_eq
  unfold live1300 coloured1300 at child
  try dsimp only [live1302, coloured1302]
  rw [child]
  dsimp only [result1300]
  have child := node1301_eq
  unfold live1301 coloured1301 at child
  try dsimp only [live1302, coloured1302]
  rw [child]
  dsimp only [result1301]
  try dsimp only [colour, result1302]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1303_agree : tree1303 = literal1303 := by
  rw [tree1303_def]
  rfl
theorem node1303_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1303 live1303 coloured1303 = result1303 := by
  rw [tree1303_def]
  try dsimp only [colour, result1303]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1304_agree : tree1304 = literal1304 := by
  rw [tree1304_def, tree1302_agree, tree1303_agree]
  rfl
theorem node1304_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1304 live1304 coloured1304 = result1304 := by
  rw [tree1304_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1302_eq
  unfold live1302 coloured1302 at child
  try dsimp only [live1304, coloured1304]
  rw [child]
  dsimp only [result1302]
  have child := node1303_eq
  unfold live1303 coloured1303 at child
  try dsimp only [live1304, coloured1304]
  rw [child]
  dsimp only [result1303]
  try dsimp only [colour, result1304]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1305_agree : tree1305 = literal1305 := by
  rw [tree1305_def]
  rfl
theorem node1305_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1305 live1305 coloured1305 = result1305 := by
  rw [tree1305_def]
  try dsimp only [colour, result1305]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1306_agree : tree1306 = literal1306 := by
  rw [tree1306_def, tree1304_agree, tree1305_agree]
  rfl
theorem node1306_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1306 live1306 coloured1306 = result1306 := by
  rw [tree1306_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1304_eq
  unfold live1304 coloured1304 at child
  try dsimp only [live1306, coloured1306]
  rw [child]
  dsimp only [result1304]
  have child := node1305_eq
  unfold live1305 coloured1305 at child
  try dsimp only [live1306, coloured1306]
  rw [child]
  dsimp only [result1305]
  try dsimp only [colour, result1306]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1307_agree : tree1307 = literal1307 := by
  rw [tree1307_def]
  rfl
theorem node1307_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1307 live1307 coloured1307 = result1307 := by
  rw [tree1307_def]
  try dsimp only [colour, result1307]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1308_agree : tree1308 = literal1308 := by
  rw [tree1308_def, tree1306_agree, tree1307_agree]
  rfl
theorem node1308_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1308 live1308 coloured1308 = result1308 := by
  rw [tree1308_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1306_eq
  unfold live1306 coloured1306 at child
  try dsimp only [live1308, coloured1308]
  rw [child]
  dsimp only [result1306]
  have child := node1307_eq
  unfold live1307 coloured1307 at child
  try dsimp only [live1308, coloured1308]
  rw [child]
  dsimp only [result1307]
  try dsimp only [colour, result1308]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1309_agree : tree1309 = literal1309 := by
  rw [tree1309_def]
  rfl
theorem node1309_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1309 live1309 coloured1309 = result1309 := by
  rw [tree1309_def]
  try dsimp only [colour, result1309]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1310_agree : tree1310 = literal1310 := by
  rw [tree1310_def, tree1308_agree, tree1309_agree]
  rfl
theorem node1310_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1310 live1310 coloured1310 = result1310 := by
  rw [tree1310_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1308_eq
  unfold live1308 coloured1308 at child
  try dsimp only [live1310, coloured1310]
  rw [child]
  dsimp only [result1308]
  have child := node1309_eq
  unfold live1309 coloured1309 at child
  try dsimp only [live1310, coloured1310]
  rw [child]
  dsimp only [result1309]
  try dsimp only [colour, result1310]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1311_agree : tree1311 = literal1311 := by
  rw [tree1311_def]
  rfl
theorem node1311_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1311 live1311 coloured1311 = result1311 := by
  rw [tree1311_def]
  try dsimp only [colour, result1311]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1312_agree : tree1312 = literal1312 := by
  rw [tree1312_def, tree1310_agree, tree1311_agree]
  rfl
theorem node1312_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1312 live1312 coloured1312 = result1312 := by
  rw [tree1312_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1310_eq
  unfold live1310 coloured1310 at child
  try dsimp only [live1312, coloured1312]
  rw [child]
  dsimp only [result1310]
  have child := node1311_eq
  unfold live1311 coloured1311 at child
  try dsimp only [live1312, coloured1312]
  rw [child]
  dsimp only [result1311]
  try dsimp only [colour, result1312]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1313_agree : tree1313 = literal1313 := by
  rw [tree1313_def]
  rfl
theorem node1313_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1313 live1313 coloured1313 = result1313 := by
  rw [tree1313_def]
  try dsimp only [colour, result1313]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1314_agree : tree1314 = literal1314 := by
  rw [tree1314_def, tree1312_agree, tree1313_agree]
  rfl
theorem node1314_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1314 live1314 coloured1314 = result1314 := by
  rw [tree1314_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1312_eq
  unfold live1312 coloured1312 at child
  try dsimp only [live1314, coloured1314]
  rw [child]
  dsimp only [result1312]
  have child := node1313_eq
  unfold live1313 coloured1313 at child
  try dsimp only [live1314, coloured1314]
  rw [child]
  dsimp only [result1313]
  try dsimp only [colour, result1314]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1315_agree : tree1315 = literal1315 := by
  rw [tree1315_def]
  rfl
theorem node1315_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1315 live1315 coloured1315 = result1315 := by
  rw [tree1315_def]
  try dsimp only [colour, result1315]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1316_agree : tree1316 = literal1316 := by
  rw [tree1316_def, tree1314_agree, tree1315_agree]
  rfl
theorem node1316_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1316 live1316 coloured1316 = result1316 := by
  rw [tree1316_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1314_eq
  unfold live1314 coloured1314 at child
  try dsimp only [live1316, coloured1316]
  rw [child]
  dsimp only [result1314]
  have child := node1315_eq
  unfold live1315 coloured1315 at child
  try dsimp only [live1316, coloured1316]
  rw [child]
  dsimp only [result1315]
  try dsimp only [colour, result1316]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1317_agree : tree1317 = literal1317 := by
  rw [tree1317_def]
  rfl
theorem node1317_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1317 live1317 coloured1317 = result1317 := by
  rw [tree1317_def]
  try dsimp only [colour, result1317]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1318_agree : tree1318 = literal1318 := by
  rw [tree1318_def, tree1316_agree, tree1317_agree]
  rfl
theorem node1318_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1318 live1318 coloured1318 = result1318 := by
  rw [tree1318_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1316_eq
  unfold live1316 coloured1316 at child
  try dsimp only [live1318, coloured1318]
  rw [child]
  dsimp only [result1316]
  have child := node1317_eq
  unfold live1317 coloured1317 at child
  try dsimp only [live1318, coloured1318]
  rw [child]
  dsimp only [result1317]
  try dsimp only [colour, result1318]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1319_agree : tree1319 = literal1319 := by
  rw [tree1319_def]
  rfl
theorem node1319_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1319 live1319 coloured1319 = result1319 := by
  rw [tree1319_def]
  try dsimp only [colour, result1319]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1320_agree : tree1320 = literal1320 := by
  rw [tree1320_def, tree1318_agree, tree1319_agree]
  rfl
theorem node1320_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1320 live1320 coloured1320 = result1320 := by
  rw [tree1320_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1318_eq
  unfold live1318 coloured1318 at child
  try dsimp only [live1320, coloured1320]
  rw [child]
  dsimp only [result1318]
  have child := node1319_eq
  unfold live1319 coloured1319 at child
  try dsimp only [live1320, coloured1320]
  rw [child]
  dsimp only [result1319]
  try dsimp only [colour, result1320]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1321_agree : tree1321 = literal1321 := by
  rw [tree1321_def]
  rfl
theorem node1321_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1321 live1321 coloured1321 = result1321 := by
  rw [tree1321_def]
  try dsimp only [colour, result1321]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1322_agree : tree1322 = literal1322 := by
  rw [tree1322_def, tree1320_agree, tree1321_agree]
  rfl
theorem node1322_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1322 live1322 coloured1322 = result1322 := by
  rw [tree1322_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1320_eq
  unfold live1320 coloured1320 at child
  try dsimp only [live1322, coloured1322]
  rw [child]
  dsimp only [result1320]
  have child := node1321_eq
  unfold live1321 coloured1321 at child
  try dsimp only [live1322, coloured1322]
  rw [child]
  dsimp only [result1321]
  try dsimp only [colour, result1322]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1323_agree : tree1323 = literal1323 := by
  rw [tree1323_def]
  rfl
theorem node1323_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1323 live1323 coloured1323 = result1323 := by
  rw [tree1323_def]
  try dsimp only [colour, result1323]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1324_agree : tree1324 = literal1324 := by
  rw [tree1324_def, tree1322_agree, tree1323_agree]
  rfl
theorem node1324_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1324 live1324 coloured1324 = result1324 := by
  rw [tree1324_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1322_eq
  unfold live1322 coloured1322 at child
  try dsimp only [live1324, coloured1324]
  rw [child]
  dsimp only [result1322]
  have child := node1323_eq
  unfold live1323 coloured1323 at child
  try dsimp only [live1324, coloured1324]
  rw [child]
  dsimp only [result1323]
  try dsimp only [colour, result1324]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1325_agree : tree1325 = literal1325 := by
  rw [tree1325_def]
  rfl
theorem node1325_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1325 live1325 coloured1325 = result1325 := by
  rw [tree1325_def]
  try dsimp only [colour, result1325]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1326_agree : tree1326 = literal1326 := by
  rw [tree1326_def, tree1324_agree, tree1325_agree]
  rfl
theorem node1326_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1326 live1326 coloured1326 = result1326 := by
  rw [tree1326_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1324_eq
  unfold live1324 coloured1324 at child
  try dsimp only [live1326, coloured1326]
  rw [child]
  dsimp only [result1324]
  have child := node1325_eq
  unfold live1325 coloured1325 at child
  try dsimp only [live1326, coloured1326]
  rw [child]
  dsimp only [result1325]
  try dsimp only [colour, result1326]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1327_agree : tree1327 = literal1327 := by
  rw [tree1327_def]
  rfl
theorem node1327_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1327 live1327 coloured1327 = result1327 := by
  rw [tree1327_def]
  try dsimp only [colour, result1327]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1328_agree : tree1328 = literal1328 := by
  rw [tree1328_def, tree1326_agree, tree1327_agree]
  rfl
theorem node1328_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1328 live1328 coloured1328 = result1328 := by
  rw [tree1328_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1326_eq
  unfold live1326 coloured1326 at child
  try dsimp only [live1328, coloured1328]
  rw [child]
  dsimp only [result1326]
  have child := node1327_eq
  unfold live1327 coloured1327 at child
  try dsimp only [live1328, coloured1328]
  rw [child]
  dsimp only [result1327]
  try dsimp only [colour, result1328]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1329_agree : tree1329 = literal1329 := by
  rw [tree1329_def]
  rfl
theorem node1329_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1329 live1329 coloured1329 = result1329 := by
  rw [tree1329_def]
  try dsimp only [colour, result1329]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1330_agree : tree1330 = literal1330 := by
  rw [tree1330_def, tree1328_agree, tree1329_agree]
  rfl
theorem node1330_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1330 live1330 coloured1330 = result1330 := by
  rw [tree1330_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1328_eq
  unfold live1328 coloured1328 at child
  try dsimp only [live1330, coloured1330]
  rw [child]
  dsimp only [result1328]
  have child := node1329_eq
  unfold live1329 coloured1329 at child
  try dsimp only [live1330, coloured1330]
  rw [child]
  dsimp only [result1329]
  try dsimp only [colour, result1330]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1331_agree : tree1331 = literal1331 := by
  rw [tree1331_def]
  rfl
theorem node1331_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1331 live1331 coloured1331 = result1331 := by
  rw [tree1331_def]
  try dsimp only [colour, result1331]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1332_agree : tree1332 = literal1332 := by
  rw [tree1332_def, tree1330_agree, tree1331_agree]
  rfl
theorem node1332_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1332 live1332 coloured1332 = result1332 := by
  rw [tree1332_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1330_eq
  unfold live1330 coloured1330 at child
  try dsimp only [live1332, coloured1332]
  rw [child]
  dsimp only [result1330]
  have child := node1331_eq
  unfold live1331 coloured1331 at child
  try dsimp only [live1332, coloured1332]
  rw [child]
  dsimp only [result1331]
  try dsimp only [colour, result1332]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1333_agree : tree1333 = literal1333 := by
  rw [tree1333_def]
  rfl
theorem node1333_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1333 live1333 coloured1333 = result1333 := by
  rw [tree1333_def]
  try dsimp only [colour, result1333]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1334_agree : tree1334 = literal1334 := by
  rw [tree1334_def, tree1332_agree, tree1333_agree]
  rfl
theorem node1334_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1334 live1334 coloured1334 = result1334 := by
  rw [tree1334_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1332_eq
  unfold live1332 coloured1332 at child
  try dsimp only [live1334, coloured1334]
  rw [child]
  dsimp only [result1332]
  have child := node1333_eq
  unfold live1333 coloured1333 at child
  try dsimp only [live1334, coloured1334]
  rw [child]
  dsimp only [result1333]
  try dsimp only [colour, result1334]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1335_agree : tree1335 = literal1335 := by
  rw [tree1335_def]
  rfl
theorem node1335_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1335 live1335 coloured1335 = result1335 := by
  rw [tree1335_def]
  try dsimp only [colour, result1335]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1336_agree : tree1336 = literal1336 := by
  rw [tree1336_def, tree1334_agree, tree1335_agree]
  rfl
theorem node1336_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1336 live1336 coloured1336 = result1336 := by
  rw [tree1336_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1334_eq
  unfold live1334 coloured1334 at child
  try dsimp only [live1336, coloured1336]
  rw [child]
  dsimp only [result1334]
  have child := node1335_eq
  unfold live1335 coloured1335 at child
  try dsimp only [live1336, coloured1336]
  rw [child]
  dsimp only [result1335]
  try dsimp only [colour, result1336]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1337_agree : tree1337 = literal1337 := by
  rw [tree1337_def]
  rfl
theorem node1337_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1337 live1337 coloured1337 = result1337 := by
  rw [tree1337_def]
  try dsimp only [colour, result1337]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1338_agree : tree1338 = literal1338 := by
  rw [tree1338_def, tree1336_agree, tree1337_agree]
  rfl
theorem node1338_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1338 live1338 coloured1338 = result1338 := by
  rw [tree1338_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1336_eq
  unfold live1336 coloured1336 at child
  try dsimp only [live1338, coloured1338]
  rw [child]
  dsimp only [result1336]
  have child := node1337_eq
  unfold live1337 coloured1337 at child
  try dsimp only [live1338, coloured1338]
  rw [child]
  dsimp only [result1337]
  try dsimp only [colour, result1338]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1339_agree : tree1339 = literal1339 := by
  rw [tree1339_def]
  rfl
theorem node1339_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1339 live1339 coloured1339 = result1339 := by
  rw [tree1339_def]
  try dsimp only [colour, result1339]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1340_agree : tree1340 = literal1340 := by
  rw [tree1340_def, tree1338_agree, tree1339_agree]
  rfl
theorem node1340_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1340 live1340 coloured1340 = result1340 := by
  rw [tree1340_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1338_eq
  unfold live1338 coloured1338 at child
  try dsimp only [live1340, coloured1340]
  rw [child]
  dsimp only [result1338]
  have child := node1339_eq
  unfold live1339 coloured1339 at child
  try dsimp only [live1340, coloured1340]
  rw [child]
  dsimp only [result1339]
  try dsimp only [colour, result1340]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1341_agree : tree1341 = literal1341 := by
  rw [tree1341_def]
  rfl
theorem node1341_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1341 live1341 coloured1341 = result1341 := by
  rw [tree1341_def]
  try dsimp only [colour, result1341]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1342_agree : tree1342 = literal1342 := by
  rw [tree1342_def, tree1340_agree, tree1341_agree]
  rfl
theorem node1342_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1342 live1342 coloured1342 = result1342 := by
  rw [tree1342_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1340_eq
  unfold live1340 coloured1340 at child
  try dsimp only [live1342, coloured1342]
  rw [child]
  dsimp only [result1340]
  have child := node1341_eq
  unfold live1341 coloured1341 at child
  try dsimp only [live1342, coloured1342]
  rw [child]
  dsimp only [result1341]
  try dsimp only [colour, result1342]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1343_agree : tree1343 = literal1343 := by
  rw [tree1343_def]
  rfl
theorem node1343_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1343 live1343 coloured1343 = result1343 := by
  rw [tree1343_def]
  try dsimp only [colour, result1343]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
