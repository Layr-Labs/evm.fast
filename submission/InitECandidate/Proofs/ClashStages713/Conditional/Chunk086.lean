import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.ClashStages713.Data
import InitECandidate.Proofs.ClashComputation
import Flapjack.Compiler.Backend.WordAlloc.TotalColour
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.ClashComputation
namespace InitECandidate.Proofs.ClashStages713
theorem tree8256_agree_conditional
    (child0 : tree8254 = literal8254)
    (child1 : tree8255 = literal8255) : tree8256 = literal8256 := by
  rw [tree8256_def, child0, child1]
  rfl
theorem node8256_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8254 live8254 coloured8254 = result8254)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8255 live8255 coloured8255 = result8255) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8256 live8256 coloured8256 = result8256 := by
  rw [tree8256_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8254 coloured8254 at child
  try dsimp only [live8256, coloured8256]
  rw [child]
  dsimp only [result8254]
  have child := child1
  unfold live8255 coloured8255 at child
  try dsimp only [live8256, coloured8256]
  rw [child]
  dsimp only [result8255]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8257_agree_conditional : tree8257 = literal8257 := by
  rw [tree8257_def]
  rfl
theorem node8257_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8257 live8257 coloured8257 = result8257 := by
  rw [tree8257_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8258_agree_conditional
    (child0 : tree8256 = literal8256)
    (child1 : tree8257 = literal8257) : tree8258 = literal8258 := by
  rw [tree8258_def, child0, child1]
  rfl
theorem node8258_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8256 live8256 coloured8256 = result8256)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8257 live8257 coloured8257 = result8257) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8258 live8258 coloured8258 = result8258 := by
  rw [tree8258_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8256 coloured8256 at child
  try dsimp only [live8258, coloured8258]
  rw [child]
  dsimp only [result8256]
  have child := child1
  unfold live8257 coloured8257 at child
  try dsimp only [live8258, coloured8258]
  rw [child]
  dsimp only [result8257]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8259_agree_conditional : tree8259 = literal8259 := by
  rw [tree8259_def]
  rfl
theorem node8259_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8259 live8259 coloured8259 = result8259 := by
  rw [tree8259_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8260_agree_conditional
    (child0 : tree8258 = literal8258)
    (child1 : tree8259 = literal8259) : tree8260 = literal8260 := by
  rw [tree8260_def, child0, child1]
  rfl
theorem node8260_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8258 live8258 coloured8258 = result8258)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8259 live8259 coloured8259 = result8259) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8260 live8260 coloured8260 = result8260 := by
  rw [tree8260_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8258 coloured8258 at child
  try dsimp only [live8260, coloured8260]
  rw [child]
  dsimp only [result8258]
  have child := child1
  unfold live8259 coloured8259 at child
  try dsimp only [live8260, coloured8260]
  rw [child]
  dsimp only [result8259]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8261_agree_conditional : tree8261 = literal8261 := by
  rw [tree8261_def]
  rfl
theorem node8261_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8261 live8261 coloured8261 = result8261 := by
  rw [tree8261_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8262_agree_conditional
    (child0 : tree8260 = literal8260)
    (child1 : tree8261 = literal8261) : tree8262 = literal8262 := by
  rw [tree8262_def, child0, child1]
  rfl
theorem node8262_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8260 live8260 coloured8260 = result8260)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8261 live8261 coloured8261 = result8261) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8262 live8262 coloured8262 = result8262 := by
  rw [tree8262_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8260 coloured8260 at child
  try dsimp only [live8262, coloured8262]
  rw [child]
  dsimp only [result8260]
  have child := child1
  unfold live8261 coloured8261 at child
  try dsimp only [live8262, coloured8262]
  rw [child]
  dsimp only [result8261]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8263_agree_conditional : tree8263 = literal8263 := by
  rw [tree8263_def]
  rfl
theorem node8263_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8263 live8263 coloured8263 = result8263 := by
  rw [tree8263_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8264_agree_conditional
    (child0 : tree8262 = literal8262)
    (child1 : tree8263 = literal8263) : tree8264 = literal8264 := by
  rw [tree8264_def, child0, child1]
  rfl
theorem node8264_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8262 live8262 coloured8262 = result8262)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8263 live8263 coloured8263 = result8263) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8264 live8264 coloured8264 = result8264 := by
  rw [tree8264_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8262 coloured8262 at child
  try dsimp only [live8264, coloured8264]
  rw [child]
  dsimp only [result8262]
  have child := child1
  unfold live8263 coloured8263 at child
  try dsimp only [live8264, coloured8264]
  rw [child]
  dsimp only [result8263]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8265_agree_conditional : tree8265 = literal8265 := by
  rw [tree8265_def]
  rfl
theorem node8265_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8265 live8265 coloured8265 = result8265 := by
  rw [tree8265_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8266_agree_conditional
    (child0 : tree8264 = literal8264)
    (child1 : tree8265 = literal8265) : tree8266 = literal8266 := by
  rw [tree8266_def, child0, child1]
  rfl
theorem node8266_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8264 live8264 coloured8264 = result8264)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8265 live8265 coloured8265 = result8265) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8266 live8266 coloured8266 = result8266 := by
  rw [tree8266_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8264 coloured8264 at child
  try dsimp only [live8266, coloured8266]
  rw [child]
  dsimp only [result8264]
  have child := child1
  unfold live8265 coloured8265 at child
  try dsimp only [live8266, coloured8266]
  rw [child]
  dsimp only [result8265]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8267_agree_conditional : tree8267 = literal8267 := by
  rw [tree8267_def]
  rfl
theorem node8267_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8267 live8267 coloured8267 = result8267 := by
  rw [tree8267_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8268_agree_conditional
    (child0 : tree8266 = literal8266)
    (child1 : tree8267 = literal8267) : tree8268 = literal8268 := by
  rw [tree8268_def, child0, child1]
  rfl
theorem node8268_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8266 live8266 coloured8266 = result8266)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8267 live8267 coloured8267 = result8267) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8268 live8268 coloured8268 = result8268 := by
  rw [tree8268_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8266 coloured8266 at child
  try dsimp only [live8268, coloured8268]
  rw [child]
  dsimp only [result8266]
  have child := child1
  unfold live8267 coloured8267 at child
  try dsimp only [live8268, coloured8268]
  rw [child]
  dsimp only [result8267]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8269_agree_conditional : tree8269 = literal8269 := by
  rw [tree8269_def]
  rfl
theorem node8269_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8269 live8269 coloured8269 = result8269 := by
  rw [tree8269_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8270_agree_conditional
    (child0 : tree8268 = literal8268)
    (child1 : tree8269 = literal8269) : tree8270 = literal8270 := by
  rw [tree8270_def, child0, child1]
  rfl
theorem node8270_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8268 live8268 coloured8268 = result8268)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8269 live8269 coloured8269 = result8269) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8270 live8270 coloured8270 = result8270 := by
  rw [tree8270_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8268 coloured8268 at child
  try dsimp only [live8270, coloured8270]
  rw [child]
  dsimp only [result8268]
  have child := child1
  unfold live8269 coloured8269 at child
  try dsimp only [live8270, coloured8270]
  rw [child]
  dsimp only [result8269]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8271_agree_conditional : tree8271 = literal8271 := by
  rw [tree8271_def]
  rfl
theorem node8271_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8271 live8271 coloured8271 = result8271 := by
  rw [tree8271_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8272_agree_conditional
    (child0 : tree8270 = literal8270)
    (child1 : tree8271 = literal8271) : tree8272 = literal8272 := by
  rw [tree8272_def, child0, child1]
  rfl
theorem node8272_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8270 live8270 coloured8270 = result8270)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8271 live8271 coloured8271 = result8271) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8272 live8272 coloured8272 = result8272 := by
  rw [tree8272_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8270 coloured8270 at child
  try dsimp only [live8272, coloured8272]
  rw [child]
  dsimp only [result8270]
  have child := child1
  unfold live8271 coloured8271 at child
  try dsimp only [live8272, coloured8272]
  rw [child]
  dsimp only [result8271]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8273_agree_conditional : tree8273 = literal8273 := by
  rw [tree8273_def]
  rfl
theorem node8273_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8273 live8273 coloured8273 = result8273 := by
  rw [tree8273_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8274_agree_conditional
    (child0 : tree8272 = literal8272)
    (child1 : tree8273 = literal8273) : tree8274 = literal8274 := by
  rw [tree8274_def, child0, child1]
  rfl
theorem node8274_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8272 live8272 coloured8272 = result8272)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8273 live8273 coloured8273 = result8273) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8274 live8274 coloured8274 = result8274 := by
  rw [tree8274_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8272 coloured8272 at child
  try dsimp only [live8274, coloured8274]
  rw [child]
  dsimp only [result8272]
  have child := child1
  unfold live8273 coloured8273 at child
  try dsimp only [live8274, coloured8274]
  rw [child]
  dsimp only [result8273]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8275_agree_conditional : tree8275 = literal8275 := by
  rw [tree8275_def]
  rfl
theorem node8275_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8275 live8275 coloured8275 = result8275 := by
  rw [tree8275_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8276_agree_conditional
    (child0 : tree8274 = literal8274)
    (child1 : tree8275 = literal8275) : tree8276 = literal8276 := by
  rw [tree8276_def, child0, child1]
  rfl
theorem node8276_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8274 live8274 coloured8274 = result8274)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8275 live8275 coloured8275 = result8275) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8276 live8276 coloured8276 = result8276 := by
  rw [tree8276_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8274 coloured8274 at child
  try dsimp only [live8276, coloured8276]
  rw [child]
  dsimp only [result8274]
  have child := child1
  unfold live8275 coloured8275 at child
  try dsimp only [live8276, coloured8276]
  rw [child]
  dsimp only [result8275]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8277_agree_conditional : tree8277 = literal8277 := by
  rw [tree8277_def]
  rfl
theorem node8277_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8277 live8277 coloured8277 = result8277 := by
  rw [tree8277_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8278_agree_conditional
    (child0 : tree8276 = literal8276)
    (child1 : tree8277 = literal8277) : tree8278 = literal8278 := by
  rw [tree8278_def, child0, child1]
  rfl
theorem node8278_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8276 live8276 coloured8276 = result8276)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8277 live8277 coloured8277 = result8277) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8278 live8278 coloured8278 = result8278 := by
  rw [tree8278_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8276 coloured8276 at child
  try dsimp only [live8278, coloured8278]
  rw [child]
  dsimp only [result8276]
  have child := child1
  unfold live8277 coloured8277 at child
  try dsimp only [live8278, coloured8278]
  rw [child]
  dsimp only [result8277]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8279_agree_conditional : tree8279 = literal8279 := by
  rw [tree8279_def]
  rfl
theorem node8279_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8279 live8279 coloured8279 = result8279 := by
  rw [tree8279_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8280_agree_conditional
    (child0 : tree8278 = literal8278)
    (child1 : tree8279 = literal8279) : tree8280 = literal8280 := by
  rw [tree8280_def, child0, child1]
  rfl
theorem node8280_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8278 live8278 coloured8278 = result8278)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8279 live8279 coloured8279 = result8279) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8280 live8280 coloured8280 = result8280 := by
  rw [tree8280_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8278 coloured8278 at child
  try dsimp only [live8280, coloured8280]
  rw [child]
  dsimp only [result8278]
  have child := child1
  unfold live8279 coloured8279 at child
  try dsimp only [live8280, coloured8280]
  rw [child]
  dsimp only [result8279]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8281_agree_conditional : tree8281 = literal8281 := by
  rw [tree8281_def]
  rfl
theorem node8281_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8281 live8281 coloured8281 = result8281 := by
  rw [tree8281_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8282_agree_conditional
    (child0 : tree8280 = literal8280)
    (child1 : tree8281 = literal8281) : tree8282 = literal8282 := by
  rw [tree8282_def, child0, child1]
  rfl
theorem node8282_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8280 live8280 coloured8280 = result8280)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8281 live8281 coloured8281 = result8281) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8282 live8282 coloured8282 = result8282 := by
  rw [tree8282_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8280 coloured8280 at child
  try dsimp only [live8282, coloured8282]
  rw [child]
  dsimp only [result8280]
  have child := child1
  unfold live8281 coloured8281 at child
  try dsimp only [live8282, coloured8282]
  rw [child]
  dsimp only [result8281]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8283_agree_conditional : tree8283 = literal8283 := by
  rw [tree8283_def]
  rfl
theorem node8283_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8283 live8283 coloured8283 = result8283 := by
  rw [tree8283_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8284_agree_conditional
    (child0 : tree8282 = literal8282)
    (child1 : tree8283 = literal8283) : tree8284 = literal8284 := by
  rw [tree8284_def, child0, child1]
  rfl
theorem node8284_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8282 live8282 coloured8282 = result8282)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8283 live8283 coloured8283 = result8283) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8284 live8284 coloured8284 = result8284 := by
  rw [tree8284_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8282 coloured8282 at child
  try dsimp only [live8284, coloured8284]
  rw [child]
  dsimp only [result8282]
  have child := child1
  unfold live8283 coloured8283 at child
  try dsimp only [live8284, coloured8284]
  rw [child]
  dsimp only [result8283]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8285_agree_conditional : tree8285 = literal8285 := by
  rw [tree8285_def]
  rfl
theorem node8285_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8285 live8285 coloured8285 = result8285 := by
  rw [tree8285_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8286_agree_conditional
    (child0 : tree8284 = literal8284)
    (child1 : tree8285 = literal8285) : tree8286 = literal8286 := by
  rw [tree8286_def, child0, child1]
  rfl
theorem node8286_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8284 live8284 coloured8284 = result8284)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8285 live8285 coloured8285 = result8285) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8286 live8286 coloured8286 = result8286 := by
  rw [tree8286_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8284 coloured8284 at child
  try dsimp only [live8286, coloured8286]
  rw [child]
  dsimp only [result8284]
  have child := child1
  unfold live8285 coloured8285 at child
  try dsimp only [live8286, coloured8286]
  rw [child]
  dsimp only [result8285]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8287_agree_conditional : tree8287 = literal8287 := by
  rw [tree8287_def]
  rfl
theorem node8287_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8287 live8287 coloured8287 = result8287 := by
  rw [tree8287_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8288_agree_conditional
    (child0 : tree8286 = literal8286)
    (child1 : tree8287 = literal8287) : tree8288 = literal8288 := by
  rw [tree8288_def, child0, child1]
  rfl
theorem node8288_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8286 live8286 coloured8286 = result8286)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8287 live8287 coloured8287 = result8287) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8288 live8288 coloured8288 = result8288 := by
  rw [tree8288_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8286 coloured8286 at child
  try dsimp only [live8288, coloured8288]
  rw [child]
  dsimp only [result8286]
  have child := child1
  unfold live8287 coloured8287 at child
  try dsimp only [live8288, coloured8288]
  rw [child]
  dsimp only [result8287]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8289_agree_conditional : tree8289 = literal8289 := by
  rw [tree8289_def]
  rfl
theorem node8289_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8289 live8289 coloured8289 = result8289 := by
  rw [tree8289_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8290_agree_conditional
    (child0 : tree8288 = literal8288)
    (child1 : tree8289 = literal8289) : tree8290 = literal8290 := by
  rw [tree8290_def, child0, child1]
  rfl
theorem node8290_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8288 live8288 coloured8288 = result8288)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8289 live8289 coloured8289 = result8289) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8290 live8290 coloured8290 = result8290 := by
  rw [tree8290_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8288 coloured8288 at child
  try dsimp only [live8290, coloured8290]
  rw [child]
  dsimp only [result8288]
  have child := child1
  unfold live8289 coloured8289 at child
  try dsimp only [live8290, coloured8290]
  rw [child]
  dsimp only [result8289]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8291_agree_conditional : tree8291 = literal8291 := by
  rw [tree8291_def]
  rfl
theorem node8291_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8291 live8291 coloured8291 = result8291 := by
  rw [tree8291_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8292_agree_conditional
    (child0 : tree8290 = literal8290)
    (child1 : tree8291 = literal8291) : tree8292 = literal8292 := by
  rw [tree8292_def, child0, child1]
  rfl
theorem node8292_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8290 live8290 coloured8290 = result8290)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8291 live8291 coloured8291 = result8291) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8292 live8292 coloured8292 = result8292 := by
  rw [tree8292_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8290 coloured8290 at child
  try dsimp only [live8292, coloured8292]
  rw [child]
  dsimp only [result8290]
  have child := child1
  unfold live8291 coloured8291 at child
  try dsimp only [live8292, coloured8292]
  rw [child]
  dsimp only [result8291]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8293_agree_conditional : tree8293 = literal8293 := by
  rw [tree8293_def]
  rfl
theorem node8293_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8293 live8293 coloured8293 = result8293 := by
  rw [tree8293_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8294_agree_conditional
    (child0 : tree8292 = literal8292)
    (child1 : tree8293 = literal8293) : tree8294 = literal8294 := by
  rw [tree8294_def, child0, child1]
  rfl
theorem node8294_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8292 live8292 coloured8292 = result8292)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8293 live8293 coloured8293 = result8293) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8294 live8294 coloured8294 = result8294 := by
  rw [tree8294_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8292 coloured8292 at child
  try dsimp only [live8294, coloured8294]
  rw [child]
  dsimp only [result8292]
  have child := child1
  unfold live8293 coloured8293 at child
  try dsimp only [live8294, coloured8294]
  rw [child]
  dsimp only [result8293]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8295_agree_conditional : tree8295 = literal8295 := by
  rw [tree8295_def]
  rfl
theorem node8295_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8295 live8295 coloured8295 = result8295 := by
  rw [tree8295_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8296_agree_conditional
    (child0 : tree8294 = literal8294)
    (child1 : tree8295 = literal8295) : tree8296 = literal8296 := by
  rw [tree8296_def, child0, child1]
  rfl
theorem node8296_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8294 live8294 coloured8294 = result8294)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8295 live8295 coloured8295 = result8295) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8296 live8296 coloured8296 = result8296 := by
  rw [tree8296_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8294 coloured8294 at child
  try dsimp only [live8296, coloured8296]
  rw [child]
  dsimp only [result8294]
  have child := child1
  unfold live8295 coloured8295 at child
  try dsimp only [live8296, coloured8296]
  rw [child]
  dsimp only [result8295]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8297_agree_conditional : tree8297 = literal8297 := by
  rw [tree8297_def]
  rfl
theorem node8297_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8297 live8297 coloured8297 = result8297 := by
  rw [tree8297_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8298_agree_conditional
    (child0 : tree8296 = literal8296)
    (child1 : tree8297 = literal8297) : tree8298 = literal8298 := by
  rw [tree8298_def, child0, child1]
  rfl
theorem node8298_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8296 live8296 coloured8296 = result8296)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8297 live8297 coloured8297 = result8297) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8298 live8298 coloured8298 = result8298 := by
  rw [tree8298_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8296 coloured8296 at child
  try dsimp only [live8298, coloured8298]
  rw [child]
  dsimp only [result8296]
  have child := child1
  unfold live8297 coloured8297 at child
  try dsimp only [live8298, coloured8298]
  rw [child]
  dsimp only [result8297]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8299_agree_conditional : tree8299 = literal8299 := by
  rw [tree8299_def]
  rfl
theorem node8299_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8299 live8299 coloured8299 = result8299 := by
  rw [tree8299_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8300_agree_conditional
    (child0 : tree8298 = literal8298)
    (child1 : tree8299 = literal8299) : tree8300 = literal8300 := by
  rw [tree8300_def, child0, child1]
  rfl
theorem node8300_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8298 live8298 coloured8298 = result8298)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8299 live8299 coloured8299 = result8299) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8300 live8300 coloured8300 = result8300 := by
  rw [tree8300_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8298 coloured8298 at child
  try dsimp only [live8300, coloured8300]
  rw [child]
  dsimp only [result8298]
  have child := child1
  unfold live8299 coloured8299 at child
  try dsimp only [live8300, coloured8300]
  rw [child]
  dsimp only [result8299]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8301_agree_conditional : tree8301 = literal8301 := by
  rw [tree8301_def]
  rfl
theorem node8301_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8301 live8301 coloured8301 = result8301 := by
  rw [tree8301_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8302_agree_conditional
    (child0 : tree8300 = literal8300)
    (child1 : tree8301 = literal8301) : tree8302 = literal8302 := by
  rw [tree8302_def, child0, child1]
  rfl
theorem node8302_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8300 live8300 coloured8300 = result8300)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8301 live8301 coloured8301 = result8301) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8302 live8302 coloured8302 = result8302 := by
  rw [tree8302_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8300 coloured8300 at child
  try dsimp only [live8302, coloured8302]
  rw [child]
  dsimp only [result8300]
  have child := child1
  unfold live8301 coloured8301 at child
  try dsimp only [live8302, coloured8302]
  rw [child]
  dsimp only [result8301]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8303_agree_conditional : tree8303 = literal8303 := by
  rw [tree8303_def]
  rfl
theorem node8303_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8303 live8303 coloured8303 = result8303 := by
  rw [tree8303_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8304_agree_conditional
    (child0 : tree8302 = literal8302)
    (child1 : tree8303 = literal8303) : tree8304 = literal8304 := by
  rw [tree8304_def, child0, child1]
  rfl
theorem node8304_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8302 live8302 coloured8302 = result8302)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8303 live8303 coloured8303 = result8303) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8304 live8304 coloured8304 = result8304 := by
  rw [tree8304_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8302 coloured8302 at child
  try dsimp only [live8304, coloured8304]
  rw [child]
  dsimp only [result8302]
  have child := child1
  unfold live8303 coloured8303 at child
  try dsimp only [live8304, coloured8304]
  rw [child]
  dsimp only [result8303]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8305_agree_conditional : tree8305 = literal8305 := by
  rw [tree8305_def]
  rfl
theorem node8305_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8305 live8305 coloured8305 = result8305 := by
  rw [tree8305_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8306_agree_conditional
    (child0 : tree8304 = literal8304)
    (child1 : tree8305 = literal8305) : tree8306 = literal8306 := by
  rw [tree8306_def, child0, child1]
  rfl
theorem node8306_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8304 live8304 coloured8304 = result8304)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8305 live8305 coloured8305 = result8305) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8306 live8306 coloured8306 = result8306 := by
  rw [tree8306_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8304 coloured8304 at child
  try dsimp only [live8306, coloured8306]
  rw [child]
  dsimp only [result8304]
  have child := child1
  unfold live8305 coloured8305 at child
  try dsimp only [live8306, coloured8306]
  rw [child]
  dsimp only [result8305]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8307_agree_conditional : tree8307 = literal8307 := by
  rw [tree8307_def]
  rfl
theorem node8307_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8307 live8307 coloured8307 = result8307 := by
  rw [tree8307_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8308_agree_conditional
    (child0 : tree8306 = literal8306)
    (child1 : tree8307 = literal8307) : tree8308 = literal8308 := by
  rw [tree8308_def, child0, child1]
  rfl
theorem node8308_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8306 live8306 coloured8306 = result8306)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8307 live8307 coloured8307 = result8307) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8308 live8308 coloured8308 = result8308 := by
  rw [tree8308_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8306 coloured8306 at child
  try dsimp only [live8308, coloured8308]
  rw [child]
  dsimp only [result8306]
  have child := child1
  unfold live8307 coloured8307 at child
  try dsimp only [live8308, coloured8308]
  rw [child]
  dsimp only [result8307]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8309_agree_conditional : tree8309 = literal8309 := by
  rw [tree8309_def]
  rfl
theorem node8309_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8309 live8309 coloured8309 = result8309 := by
  rw [tree8309_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8310_agree_conditional
    (child0 : tree8308 = literal8308)
    (child1 : tree8309 = literal8309) : tree8310 = literal8310 := by
  rw [tree8310_def, child0, child1]
  rfl
theorem node8310_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8308 live8308 coloured8308 = result8308)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8309 live8309 coloured8309 = result8309) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8310 live8310 coloured8310 = result8310 := by
  rw [tree8310_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8308 coloured8308 at child
  try dsimp only [live8310, coloured8310]
  rw [child]
  dsimp only [result8308]
  have child := child1
  unfold live8309 coloured8309 at child
  try dsimp only [live8310, coloured8310]
  rw [child]
  dsimp only [result8309]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8311_agree_conditional : tree8311 = literal8311 := by
  rw [tree8311_def]
  rfl
theorem node8311_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8311 live8311 coloured8311 = result8311 := by
  rw [tree8311_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8312_agree_conditional
    (child0 : tree8310 = literal8310)
    (child1 : tree8311 = literal8311) : tree8312 = literal8312 := by
  rw [tree8312_def, child0, child1]
  rfl
theorem node8312_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8310 live8310 coloured8310 = result8310)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8311 live8311 coloured8311 = result8311) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8312 live8312 coloured8312 = result8312 := by
  rw [tree8312_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8310 coloured8310 at child
  try dsimp only [live8312, coloured8312]
  rw [child]
  dsimp only [result8310]
  have child := child1
  unfold live8311 coloured8311 at child
  try dsimp only [live8312, coloured8312]
  rw [child]
  dsimp only [result8311]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8313_agree_conditional : tree8313 = literal8313 := by
  rw [tree8313_def]
  rfl
theorem node8313_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8313 live8313 coloured8313 = result8313 := by
  rw [tree8313_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8314_agree_conditional
    (child0 : tree8312 = literal8312)
    (child1 : tree8313 = literal8313) : tree8314 = literal8314 := by
  rw [tree8314_def, child0, child1]
  rfl
theorem node8314_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8312 live8312 coloured8312 = result8312)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8313 live8313 coloured8313 = result8313) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8314 live8314 coloured8314 = result8314 := by
  rw [tree8314_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8312 coloured8312 at child
  try dsimp only [live8314, coloured8314]
  rw [child]
  dsimp only [result8312]
  have child := child1
  unfold live8313 coloured8313 at child
  try dsimp only [live8314, coloured8314]
  rw [child]
  dsimp only [result8313]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8315_agree_conditional : tree8315 = literal8315 := by
  rw [tree8315_def]
  rfl
theorem node8315_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8315 live8315 coloured8315 = result8315 := by
  rw [tree8315_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8316_agree_conditional
    (child0 : tree8314 = literal8314)
    (child1 : tree8315 = literal8315) : tree8316 = literal8316 := by
  rw [tree8316_def, child0, child1]
  rfl
theorem node8316_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8314 live8314 coloured8314 = result8314)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8315 live8315 coloured8315 = result8315) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8316 live8316 coloured8316 = result8316 := by
  rw [tree8316_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8314 coloured8314 at child
  try dsimp only [live8316, coloured8316]
  rw [child]
  dsimp only [result8314]
  have child := child1
  unfold live8315 coloured8315 at child
  try dsimp only [live8316, coloured8316]
  rw [child]
  dsimp only [result8315]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8317_agree_conditional : tree8317 = literal8317 := by
  rw [tree8317_def]
  rfl
theorem node8317_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8317 live8317 coloured8317 = result8317 := by
  rw [tree8317_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8318_agree_conditional
    (child0 : tree8316 = literal8316)
    (child1 : tree8317 = literal8317) : tree8318 = literal8318 := by
  rw [tree8318_def, child0, child1]
  rfl
theorem node8318_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8316 live8316 coloured8316 = result8316)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8317 live8317 coloured8317 = result8317) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8318 live8318 coloured8318 = result8318 := by
  rw [tree8318_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8316 coloured8316 at child
  try dsimp only [live8318, coloured8318]
  rw [child]
  dsimp only [result8316]
  have child := child1
  unfold live8317 coloured8317 at child
  try dsimp only [live8318, coloured8318]
  rw [child]
  dsimp only [result8317]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8319_agree_conditional : tree8319 = literal8319 := by
  rw [tree8319_def]
  rfl
theorem node8319_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8319 live8319 coloured8319 = result8319 := by
  rw [tree8319_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8320_agree_conditional
    (child0 : tree8318 = literal8318)
    (child1 : tree8319 = literal8319) : tree8320 = literal8320 := by
  rw [tree8320_def, child0, child1]
  rfl
theorem node8320_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8318 live8318 coloured8318 = result8318)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8319 live8319 coloured8319 = result8319) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8320 live8320 coloured8320 = result8320 := by
  rw [tree8320_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8318 coloured8318 at child
  try dsimp only [live8320, coloured8320]
  rw [child]
  dsimp only [result8318]
  have child := child1
  unfold live8319 coloured8319 at child
  try dsimp only [live8320, coloured8320]
  rw [child]
  dsimp only [result8319]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8321_agree_conditional : tree8321 = literal8321 := by
  rw [tree8321_def]
  rfl
theorem node8321_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8321 live8321 coloured8321 = result8321 := by
  rw [tree8321_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8322_agree_conditional
    (child0 : tree8320 = literal8320)
    (child1 : tree8321 = literal8321) : tree8322 = literal8322 := by
  rw [tree8322_def, child0, child1]
  rfl
theorem node8322_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8320 live8320 coloured8320 = result8320)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8321 live8321 coloured8321 = result8321) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8322 live8322 coloured8322 = result8322 := by
  rw [tree8322_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8320 coloured8320 at child
  try dsimp only [live8322, coloured8322]
  rw [child]
  dsimp only [result8320]
  have child := child1
  unfold live8321 coloured8321 at child
  try dsimp only [live8322, coloured8322]
  rw [child]
  dsimp only [result8321]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8323_agree_conditional : tree8323 = literal8323 := by
  rw [tree8323_def]
  rfl
theorem node8323_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8323 live8323 coloured8323 = result8323 := by
  rw [tree8323_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8324_agree_conditional
    (child0 : tree8322 = literal8322)
    (child1 : tree8323 = literal8323) : tree8324 = literal8324 := by
  rw [tree8324_def, child0, child1]
  rfl
theorem node8324_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8322 live8322 coloured8322 = result8322)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8323 live8323 coloured8323 = result8323) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8324 live8324 coloured8324 = result8324 := by
  rw [tree8324_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8322 coloured8322 at child
  try dsimp only [live8324, coloured8324]
  rw [child]
  dsimp only [result8322]
  have child := child1
  unfold live8323 coloured8323 at child
  try dsimp only [live8324, coloured8324]
  rw [child]
  dsimp only [result8323]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8325_agree_conditional : tree8325 = literal8325 := by
  rw [tree8325_def]
  rfl
theorem node8325_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8325 live8325 coloured8325 = result8325 := by
  rw [tree8325_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8326_agree_conditional
    (child0 : tree8324 = literal8324)
    (child1 : tree8325 = literal8325) : tree8326 = literal8326 := by
  rw [tree8326_def, child0, child1]
  rfl
theorem node8326_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8324 live8324 coloured8324 = result8324)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8325 live8325 coloured8325 = result8325) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8326 live8326 coloured8326 = result8326 := by
  rw [tree8326_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8324 coloured8324 at child
  try dsimp only [live8326, coloured8326]
  rw [child]
  dsimp only [result8324]
  have child := child1
  unfold live8325 coloured8325 at child
  try dsimp only [live8326, coloured8326]
  rw [child]
  dsimp only [result8325]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8327_agree_conditional : tree8327 = literal8327 := by
  rw [tree8327_def]
  rfl
theorem node8327_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8327 live8327 coloured8327 = result8327 := by
  rw [tree8327_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8328_agree_conditional
    (child0 : tree8326 = literal8326)
    (child1 : tree8327 = literal8327) : tree8328 = literal8328 := by
  rw [tree8328_def, child0, child1]
  rfl
theorem node8328_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8326 live8326 coloured8326 = result8326)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8327 live8327 coloured8327 = result8327) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8328 live8328 coloured8328 = result8328 := by
  rw [tree8328_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8326 coloured8326 at child
  try dsimp only [live8328, coloured8328]
  rw [child]
  dsimp only [result8326]
  have child := child1
  unfold live8327 coloured8327 at child
  try dsimp only [live8328, coloured8328]
  rw [child]
  dsimp only [result8327]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8329_agree_conditional : tree8329 = literal8329 := by
  rw [tree8329_def]
  rfl
theorem node8329_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8329 live8329 coloured8329 = result8329 := by
  rw [tree8329_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8330_agree_conditional
    (child0 : tree8328 = literal8328)
    (child1 : tree8329 = literal8329) : tree8330 = literal8330 := by
  rw [tree8330_def, child0, child1]
  rfl
theorem node8330_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8328 live8328 coloured8328 = result8328)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8329 live8329 coloured8329 = result8329) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8330 live8330 coloured8330 = result8330 := by
  rw [tree8330_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8328 coloured8328 at child
  try dsimp only [live8330, coloured8330]
  rw [child]
  dsimp only [result8328]
  have child := child1
  unfold live8329 coloured8329 at child
  try dsimp only [live8330, coloured8330]
  rw [child]
  dsimp only [result8329]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8331_agree_conditional : tree8331 = literal8331 := by
  rw [tree8331_def]
  rfl
theorem node8331_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8331 live8331 coloured8331 = result8331 := by
  rw [tree8331_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8332_agree_conditional
    (child0 : tree8330 = literal8330)
    (child1 : tree8331 = literal8331) : tree8332 = literal8332 := by
  rw [tree8332_def, child0, child1]
  rfl
theorem node8332_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8330 live8330 coloured8330 = result8330)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8331 live8331 coloured8331 = result8331) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8332 live8332 coloured8332 = result8332 := by
  rw [tree8332_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8330 coloured8330 at child
  try dsimp only [live8332, coloured8332]
  rw [child]
  dsimp only [result8330]
  have child := child1
  unfold live8331 coloured8331 at child
  try dsimp only [live8332, coloured8332]
  rw [child]
  dsimp only [result8331]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8333_agree_conditional : tree8333 = literal8333 := by
  rw [tree8333_def]
  rfl
theorem node8333_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8333 live8333 coloured8333 = result8333 := by
  rw [tree8333_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8334_agree_conditional
    (child0 : tree8332 = literal8332)
    (child1 : tree8333 = literal8333) : tree8334 = literal8334 := by
  rw [tree8334_def, child0, child1]
  rfl
theorem node8334_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8332 live8332 coloured8332 = result8332)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8333 live8333 coloured8333 = result8333) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8334 live8334 coloured8334 = result8334 := by
  rw [tree8334_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8332 coloured8332 at child
  try dsimp only [live8334, coloured8334]
  rw [child]
  dsimp only [result8332]
  have child := child1
  unfold live8333 coloured8333 at child
  try dsimp only [live8334, coloured8334]
  rw [child]
  dsimp only [result8333]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8335_agree_conditional : tree8335 = literal8335 := by
  rw [tree8335_def]
  rfl
theorem node8335_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8335 live8335 coloured8335 = result8335 := by
  rw [tree8335_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8336_agree_conditional
    (child0 : tree8334 = literal8334)
    (child1 : tree8335 = literal8335) : tree8336 = literal8336 := by
  rw [tree8336_def, child0, child1]
  rfl
theorem node8336_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8334 live8334 coloured8334 = result8334)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8335 live8335 coloured8335 = result8335) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8336 live8336 coloured8336 = result8336 := by
  rw [tree8336_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8334 coloured8334 at child
  try dsimp only [live8336, coloured8336]
  rw [child]
  dsimp only [result8334]
  have child := child1
  unfold live8335 coloured8335 at child
  try dsimp only [live8336, coloured8336]
  rw [child]
  dsimp only [result8335]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8337_agree_conditional : tree8337 = literal8337 := by
  rw [tree8337_def]
  rfl
theorem node8337_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8337 live8337 coloured8337 = result8337 := by
  rw [tree8337_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8338_agree_conditional
    (child0 : tree8336 = literal8336)
    (child1 : tree8337 = literal8337) : tree8338 = literal8338 := by
  rw [tree8338_def, child0, child1]
  rfl
theorem node8338_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8336 live8336 coloured8336 = result8336)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8337 live8337 coloured8337 = result8337) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8338 live8338 coloured8338 = result8338 := by
  rw [tree8338_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8336 coloured8336 at child
  try dsimp only [live8338, coloured8338]
  rw [child]
  dsimp only [result8336]
  have child := child1
  unfold live8337 coloured8337 at child
  try dsimp only [live8338, coloured8338]
  rw [child]
  dsimp only [result8337]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8339_agree_conditional : tree8339 = literal8339 := by
  rw [tree8339_def]
  rfl
theorem node8339_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8339 live8339 coloured8339 = result8339 := by
  rw [tree8339_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8340_agree_conditional
    (child0 : tree8338 = literal8338)
    (child1 : tree8339 = literal8339) : tree8340 = literal8340 := by
  rw [tree8340_def, child0, child1]
  rfl
theorem node8340_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8338 live8338 coloured8338 = result8338)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8339 live8339 coloured8339 = result8339) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8340 live8340 coloured8340 = result8340 := by
  rw [tree8340_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8338 coloured8338 at child
  try dsimp only [live8340, coloured8340]
  rw [child]
  dsimp only [result8338]
  have child := child1
  unfold live8339 coloured8339 at child
  try dsimp only [live8340, coloured8340]
  rw [child]
  dsimp only [result8339]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8341_agree_conditional : tree8341 = literal8341 := by
  rw [tree8341_def]
  rfl
theorem node8341_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8341 live8341 coloured8341 = result8341 := by
  rw [tree8341_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8342_agree_conditional
    (child0 : tree8340 = literal8340)
    (child1 : tree8341 = literal8341) : tree8342 = literal8342 := by
  rw [tree8342_def, child0, child1]
  rfl
theorem node8342_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8340 live8340 coloured8340 = result8340)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8341 live8341 coloured8341 = result8341) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8342 live8342 coloured8342 = result8342 := by
  rw [tree8342_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8340 coloured8340 at child
  try dsimp only [live8342, coloured8342]
  rw [child]
  dsimp only [result8340]
  have child := child1
  unfold live8341 coloured8341 at child
  try dsimp only [live8342, coloured8342]
  rw [child]
  dsimp only [result8341]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8343_agree_conditional : tree8343 = literal8343 := by
  rw [tree8343_def]
  rfl
theorem node8343_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8343 live8343 coloured8343 = result8343 := by
  rw [tree8343_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8344_agree_conditional
    (child0 : tree8342 = literal8342)
    (child1 : tree8343 = literal8343) : tree8344 = literal8344 := by
  rw [tree8344_def, child0, child1]
  rfl
theorem node8344_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8342 live8342 coloured8342 = result8342)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8343 live8343 coloured8343 = result8343) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8344 live8344 coloured8344 = result8344 := by
  rw [tree8344_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8342 coloured8342 at child
  try dsimp only [live8344, coloured8344]
  rw [child]
  dsimp only [result8342]
  have child := child1
  unfold live8343 coloured8343 at child
  try dsimp only [live8344, coloured8344]
  rw [child]
  dsimp only [result8343]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8345_agree_conditional : tree8345 = literal8345 := by
  rw [tree8345_def]
  rfl
theorem node8345_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8345 live8345 coloured8345 = result8345 := by
  rw [tree8345_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8346_agree_conditional
    (child0 : tree8344 = literal8344)
    (child1 : tree8345 = literal8345) : tree8346 = literal8346 := by
  rw [tree8346_def, child0, child1]
  rfl
theorem node8346_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8344 live8344 coloured8344 = result8344)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8345 live8345 coloured8345 = result8345) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8346 live8346 coloured8346 = result8346 := by
  rw [tree8346_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8344 coloured8344 at child
  try dsimp only [live8346, coloured8346]
  rw [child]
  dsimp only [result8344]
  have child := child1
  unfold live8345 coloured8345 at child
  try dsimp only [live8346, coloured8346]
  rw [child]
  dsimp only [result8345]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8347_agree_conditional : tree8347 = literal8347 := by
  rw [tree8347_def]
  rfl
theorem node8347_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8347 live8347 coloured8347 = result8347 := by
  rw [tree8347_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8348_agree_conditional
    (child0 : tree8346 = literal8346)
    (child1 : tree8347 = literal8347) : tree8348 = literal8348 := by
  rw [tree8348_def, child0, child1]
  rfl
theorem node8348_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8346 live8346 coloured8346 = result8346)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8347 live8347 coloured8347 = result8347) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8348 live8348 coloured8348 = result8348 := by
  rw [tree8348_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8346 coloured8346 at child
  try dsimp only [live8348, coloured8348]
  rw [child]
  dsimp only [result8346]
  have child := child1
  unfold live8347 coloured8347 at child
  try dsimp only [live8348, coloured8348]
  rw [child]
  dsimp only [result8347]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8349_agree_conditional : tree8349 = literal8349 := by
  rw [tree8349_def]
  rfl
theorem node8349_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8349 live8349 coloured8349 = result8349 := by
  rw [tree8349_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8350_agree_conditional
    (child0 : tree8348 = literal8348)
    (child1 : tree8349 = literal8349) : tree8350 = literal8350 := by
  rw [tree8350_def, child0, child1]
  rfl
theorem node8350_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8348 live8348 coloured8348 = result8348)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8349 live8349 coloured8349 = result8349) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8350 live8350 coloured8350 = result8350 := by
  rw [tree8350_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8348 coloured8348 at child
  try dsimp only [live8350, coloured8350]
  rw [child]
  dsimp only [result8348]
  have child := child1
  unfold live8349 coloured8349 at child
  try dsimp only [live8350, coloured8350]
  rw [child]
  dsimp only [result8349]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8351_agree_conditional : tree8351 = literal8351 := by
  rw [tree8351_def]
  rfl
theorem node8351_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8351 live8351 coloured8351 = result8351 := by
  rw [tree8351_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
