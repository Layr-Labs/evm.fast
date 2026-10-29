import InitECandidate.Proofs.DeadStages647.Chunk008
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadBranchComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages647
@[irreducible, cbv_opaque] def input2304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2303 input960)).val
theorem input2304_def : input2304 = (.seq input2303 input960) := by
  unfold input2304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2303 output960)).val
theorem output2304_def : output2304 = (.seq output2303 output960) := by
  unfold output2304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2304_skip : Flapjack.WordAlloc.isSkip output2304 = false := by
  rw [output2304_def]
  conv => lhs; cbv
  try rfl
theorem node2304_eq : Flapjack.WordAlloc.removeDeadStructural input2304 value472 value1 value2 = (output2304, value1100, value1) := by
  rw [input2304_def, output2304_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node960_eq]
  try dsimp only
  rw [node2303_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2304 input959)).val
theorem input2305_def : input2305 = (.seq input2304 input959) := by
  unfold input2305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2304 output959)).val
theorem output2305_def : output2305 = (.seq output2304 output959) := by
  unfold output2305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2305_skip : Flapjack.WordAlloc.isSkip output2305 = false := by
  rw [output2305_def]
  conv => lhs; cbv
  try rfl
theorem node2305_eq : Flapjack.WordAlloc.removeDeadStructural input2305 value469 value1 value2 = (output2305, value1100, value1) := by
  rw [input2305_def, output2305_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node959_eq]
  try dsimp only
  rw [node2304_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2305 input954)).val
theorem input2306_def : input2306 = (.seq input2305 input954) := by
  unfold input2306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2305 output954)).val
theorem output2306_def : output2306 = (.seq output2305 output954) := by
  unfold output2306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2306_skip : Flapjack.WordAlloc.isSkip output2306 = false := by
  rw [output2306_def]
  conv => lhs; cbv
  try rfl
theorem node2306_eq : Flapjack.WordAlloc.removeDeadStructural input2306 value468 value1 value2 = (output2306, value1100, value1) := by
  rw [input2306_def, output2306_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node954_eq]
  try dsimp only
  rw [node2305_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2306 input953)).val
theorem input2307_def : input2307 = (.seq input2306 input953) := by
  unfold input2307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2306 output953)).val
theorem output2307_def : output2307 = (.seq output2306 output953) := by
  unfold output2307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2307_skip : Flapjack.WordAlloc.isSkip output2307 = false := by
  rw [output2307_def]
  conv => lhs; cbv
  try rfl
theorem node2307_eq : Flapjack.WordAlloc.removeDeadStructural input2307 value463 value1 value2 = (output2307, value1100, value1) := by
  rw [input2307_def, output2307_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node953_eq]
  try dsimp only
  rw [node2306_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2307 input944)).val
theorem input2308_def : input2308 = (.seq input2307 input944) := by
  unfold input2308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2307 output944)).val
theorem output2308_def : output2308 = (.seq output2307 output944) := by
  unfold output2308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2308_skip : Flapjack.WordAlloc.isSkip output2308 = false := by
  rw [output2308_def]
  conv => lhs; cbv
  try rfl
theorem node2308_eq : Flapjack.WordAlloc.removeDeadStructural input2308 value462 value1 value2 = (output2308, value1100, value1) := by
  rw [input2308_def, output2308_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node944_eq]
  try dsimp only
  rw [node2307_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2308 input943)).val
theorem input2309_def : input2309 = (.seq input2308 input943) := by
  unfold input2309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2308 output943)).val
theorem output2309_def : output2309 = (.seq output2308 output943) := by
  unfold output2309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2309_skip : Flapjack.WordAlloc.isSkip output2309 = false := by
  rw [output2309_def]
  conv => lhs; cbv
  try rfl
theorem node2309_eq : Flapjack.WordAlloc.removeDeadStructural input2309 value458 value1 value2 = (output2309, value1100, value1) := by
  rw [input2309_def, output2309_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node943_eq]
  try dsimp only
  rw [node2308_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2309 input936)).val
theorem input2310_def : input2310 = (.seq input2309 input936) := by
  unfold input2310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2309 output936)).val
theorem output2310_def : output2310 = (.seq output2309 output936) := by
  unfold output2310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2310_skip : Flapjack.WordAlloc.isSkip output2310 = false := by
  rw [output2310_def]
  conv => lhs; cbv
  try rfl
theorem node2310_eq : Flapjack.WordAlloc.removeDeadStructural input2310 value457 value1 value2 = (output2310, value1100, value1) := by
  rw [input2310_def, output2310_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node936_eq]
  try dsimp only
  rw [node2309_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2310 input935)).val
theorem input2311_def : input2311 = (.seq input2310 input935) := by
  unfold input2311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2310 output935)).val
theorem output2311_def : output2311 = (.seq output2310 output935) := by
  unfold output2311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2311_skip : Flapjack.WordAlloc.isSkip output2311 = false := by
  rw [output2311_def]
  conv => lhs; cbv
  try rfl
theorem node2311_eq : Flapjack.WordAlloc.removeDeadStructural input2311 value456 value1 value2 = (output2311, value1100, value1) := by
  rw [input2311_def, output2311_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node935_eq]
  try dsimp only
  rw [node2310_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2311 input934)).val
theorem input2312_def : input2312 = (.seq input2311 input934) := by
  unfold input2312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2311 output934)).val
theorem output2312_def : output2312 = (.seq output2311 output934) := by
  unfold output2312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2312_skip : Flapjack.WordAlloc.isSkip output2312 = false := by
  rw [output2312_def]
  conv => lhs; cbv
  try rfl
theorem node2312_eq : Flapjack.WordAlloc.removeDeadStructural input2312 value455 value1 value2 = (output2312, value1100, value1) := by
  rw [input2312_def, output2312_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node934_eq]
  try dsimp only
  rw [node2311_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2312 input933)).val
theorem input2313_def : input2313 = (.seq input2312 input933) := by
  unfold input2313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2312 output933)).val
theorem output2313_def : output2313 = (.seq output2312 output933) := by
  unfold output2313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2313_skip : Flapjack.WordAlloc.isSkip output2313 = false := by
  rw [output2313_def]
  conv => lhs; cbv
  try rfl
theorem node2313_eq : Flapjack.WordAlloc.removeDeadStructural input2313 value452 value1 value2 = (output2313, value1100, value1) := by
  rw [input2313_def, output2313_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node933_eq]
  try dsimp only
  rw [node2312_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2313 input928)).val
theorem input2314_def : input2314 = (.seq input2313 input928) := by
  unfold input2314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2313 output928)).val
theorem output2314_def : output2314 = (.seq output2313 output928) := by
  unfold output2314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2314_skip : Flapjack.WordAlloc.isSkip output2314 = false := by
  rw [output2314_def]
  conv => lhs; cbv
  try rfl
theorem node2314_eq : Flapjack.WordAlloc.removeDeadStructural input2314 value451 value1 value2 = (output2314, value1100, value1) := by
  rw [input2314_def, output2314_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node928_eq]
  try dsimp only
  rw [node2313_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2314 input927)).val
theorem input2315_def : input2315 = (.seq input2314 input927) := by
  unfold input2315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2314 output927)).val
theorem output2315_def : output2315 = (.seq output2314 output927) := by
  unfold output2315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2315_skip : Flapjack.WordAlloc.isSkip output2315 = false := by
  rw [output2315_def]
  conv => lhs; cbv
  try rfl
theorem node2315_eq : Flapjack.WordAlloc.removeDeadStructural input2315 value448 value1 value2 = (output2315, value1100, value1) := by
  rw [input2315_def, output2315_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node927_eq]
  try dsimp only
  rw [node2314_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2315 input922)).val
theorem input2316_def : input2316 = (.seq input2315 input922) := by
  unfold input2316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2315 output922)).val
theorem output2316_def : output2316 = (.seq output2315 output922) := by
  unfold output2316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2316_skip : Flapjack.WordAlloc.isSkip output2316 = false := by
  rw [output2316_def]
  conv => lhs; cbv
  try rfl
theorem node2316_eq : Flapjack.WordAlloc.removeDeadStructural input2316 value447 value1 value2 = (output2316, value1100, value1) := by
  rw [input2316_def, output2316_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node922_eq]
  try dsimp only
  rw [node2315_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2316 input921)).val
theorem input2317_def : input2317 = (.seq input2316 input921) := by
  unfold input2317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2316 output921)).val
theorem output2317_def : output2317 = (.seq output2316 output921) := by
  unfold output2317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2317_skip : Flapjack.WordAlloc.isSkip output2317 = false := by
  rw [output2317_def]
  conv => lhs; cbv
  try rfl
theorem node2317_eq : Flapjack.WordAlloc.removeDeadStructural input2317 value445 value1 value2 = (output2317, value1100, value1) := by
  rw [input2317_def, output2317_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node921_eq]
  try dsimp only
  rw [node2316_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2317 input918)).val
theorem input2318_def : input2318 = (.seq input2317 input918) := by
  unfold input2318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2317 output918)).val
theorem output2318_def : output2318 = (.seq output2317 output918) := by
  unfold output2318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2318_skip : Flapjack.WordAlloc.isSkip output2318 = false := by
  rw [output2318_def]
  conv => lhs; cbv
  try rfl
theorem node2318_eq : Flapjack.WordAlloc.removeDeadStructural input2318 value444 value1 value2 = (output2318, value1100, value1) := by
  rw [input2318_def, output2318_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node918_eq]
  try dsimp only
  rw [node2317_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2318 input917)).val
theorem input2319_def : input2319 = (.seq input2318 input917) := by
  unfold input2319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2318 output917)).val
theorem output2319_def : output2319 = (.seq output2318 output917) := by
  unfold output2319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2319_skip : Flapjack.WordAlloc.isSkip output2319 = false := by
  rw [output2319_def]
  conv => lhs; cbv
  try rfl
theorem node2319_eq : Flapjack.WordAlloc.removeDeadStructural input2319 value439 value1 value2 = (output2319, value1100, value1) := by
  rw [input2319_def, output2319_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node917_eq]
  try dsimp only
  rw [node2318_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2319 input908)).val
theorem input2320_def : input2320 = (.seq input2319 input908) := by
  unfold input2320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2319 output908)).val
theorem output2320_def : output2320 = (.seq output2319 output908) := by
  unfold output2320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2320_skip : Flapjack.WordAlloc.isSkip output2320 = false := by
  rw [output2320_def]
  conv => lhs; cbv
  try rfl
theorem node2320_eq : Flapjack.WordAlloc.removeDeadStructural input2320 value438 value1 value2 = (output2320, value1100, value1) := by
  rw [input2320_def, output2320_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node908_eq]
  try dsimp only
  rw [node2319_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2320 input907)).val
theorem input2321_def : input2321 = (.seq input2320 input907) := by
  unfold input2321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2320 output907)).val
theorem output2321_def : output2321 = (.seq output2320 output907) := by
  unfold output2321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2321_skip : Flapjack.WordAlloc.isSkip output2321 = false := by
  rw [output2321_def]
  conv => lhs; cbv
  try rfl
theorem node2321_eq : Flapjack.WordAlloc.removeDeadStructural input2321 value433 value1 value2 = (output2321, value1100, value1) := by
  rw [input2321_def, output2321_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node907_eq]
  try dsimp only
  rw [node2320_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2321 input898)).val
theorem input2322_def : input2322 = (.seq input2321 input898) := by
  unfold input2322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2321 output898)).val
theorem output2322_def : output2322 = (.seq output2321 output898) := by
  unfold output2322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2322_skip : Flapjack.WordAlloc.isSkip output2322 = false := by
  rw [output2322_def]
  conv => lhs; cbv
  try rfl
theorem node2322_eq : Flapjack.WordAlloc.removeDeadStructural input2322 value432 value1 value2 = (output2322, value1100, value1) := by
  rw [input2322_def, output2322_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node898_eq]
  try dsimp only
  rw [node2321_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2322 input897)).val
theorem input2323_def : input2323 = (.seq input2322 input897) := by
  unfold input2323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2322)).val
theorem output2323_def : output2323 = (output2322) := by
  unfold output2323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2323_skip : Flapjack.WordAlloc.isSkip output2323 = false := by
  rw [output2323_def]
  conv => lhs; cbv
  try rfl
theorem node2323_eq : Flapjack.WordAlloc.removeDeadStructural input2323 value432 value1 value2 = (output2323, value1100, value1) := by
  rw [input2323_def, output2323_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node897_eq]
  try dsimp only
  rw [node2322_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2323 input896)).val
theorem input2324_def : input2324 = (.seq input2323 input896) := by
  unfold input2324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2323)).val
theorem output2324_def : output2324 = (output2323) := by
  unfold output2324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2324_skip : Flapjack.WordAlloc.isSkip output2324 = false := by
  rw [output2324_def]
  conv => lhs; cbv
  try rfl
theorem node2324_eq : Flapjack.WordAlloc.removeDeadStructural input2324 value432 value1 value2 = (output2324, value1100, value1) := by
  rw [input2324_def, output2324_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node896_eq]
  try dsimp only
  rw [node2323_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2324 input895)).val
theorem input2325_def : input2325 = (.seq input2324 input895) := by
  unfold input2325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2324 output895)).val
theorem output2325_def : output2325 = (.seq output2324 output895) := by
  unfold output2325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2325_skip : Flapjack.WordAlloc.isSkip output2325 = false := by
  rw [output2325_def]
  conv => lhs; cbv
  try rfl
theorem node2325_eq : Flapjack.WordAlloc.removeDeadStructural input2325 value429 value1 value2 = (output2325, value1100, value1) := by
  rw [input2325_def, output2325_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node895_eq]
  try dsimp only
  rw [node2324_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2325 input890)).val
theorem input2326_def : input2326 = (.seq input2325 input890) := by
  unfold input2326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2325 output890)).val
theorem output2326_def : output2326 = (.seq output2325 output890) := by
  unfold output2326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2326_skip : Flapjack.WordAlloc.isSkip output2326 = false := by
  rw [output2326_def]
  conv => lhs; cbv
  try rfl
theorem node2326_eq : Flapjack.WordAlloc.removeDeadStructural input2326 value426 value1 value2 = (output2326, value1100, value1) := by
  rw [input2326_def, output2326_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node890_eq]
  try dsimp only
  rw [node2325_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2326 input885)).val
theorem input2327_def : input2327 = (.seq input2326 input885) := by
  unfold input2327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2326 output885)).val
theorem output2327_def : output2327 = (.seq output2326 output885) := by
  unfold output2327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2327_skip : Flapjack.WordAlloc.isSkip output2327 = false := by
  rw [output2327_def]
  conv => lhs; cbv
  try rfl
theorem node2327_eq : Flapjack.WordAlloc.removeDeadStructural input2327 value422 value1 value2 = (output2327, value1100, value1) := by
  rw [input2327_def, output2327_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node885_eq]
  try dsimp only
  rw [node2326_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2327 input878)).val
theorem input2328_def : input2328 = (.seq input2327 input878) := by
  unfold input2328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2327)).val
theorem output2328_def : output2328 = (output2327) := by
  unfold output2328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2328_skip : Flapjack.WordAlloc.isSkip output2328 = false := by
  rw [output2328_def]
  conv => lhs; cbv
  try rfl
theorem node2328_eq : Flapjack.WordAlloc.removeDeadStructural input2328 value422 value1 value2 = (output2328, value1100, value1) := by
  rw [input2328_def, output2328_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node878_eq]
  try dsimp only
  rw [node2327_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2328 input877)).val
theorem input2329_def : input2329 = (.seq input2328 input877) := by
  unfold input2329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2328)).val
theorem output2329_def : output2329 = (output2328) := by
  unfold output2329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2329_skip : Flapjack.WordAlloc.isSkip output2329 = false := by
  rw [output2329_def]
  conv => lhs; cbv
  try rfl
theorem node2329_eq : Flapjack.WordAlloc.removeDeadStructural input2329 value422 value1 value2 = (output2329, value1100, value1) := by
  rw [input2329_def, output2329_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node877_eq]
  try dsimp only
  rw [node2328_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2329 input876)).val
theorem input2330_def : input2330 = (.seq input2329 input876) := by
  unfold input2330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2329 output876)).val
theorem output2330_def : output2330 = (.seq output2329 output876) := by
  unfold output2330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2330_skip : Flapjack.WordAlloc.isSkip output2330 = false := by
  rw [output2330_def]
  conv => lhs; cbv
  try rfl
theorem node2330_eq : Flapjack.WordAlloc.removeDeadStructural input2330 value421 value1 value2 = (output2330, value1100, value1) := by
  rw [input2330_def, output2330_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node876_eq]
  try dsimp only
  rw [node2329_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2330 input875)).val
theorem input2331_def : input2331 = (.seq input2330 input875) := by
  unfold input2331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2330 output875)).val
theorem output2331_def : output2331 = (.seq output2330 output875) := by
  unfold output2331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2331_skip : Flapjack.WordAlloc.isSkip output2331 = false := by
  rw [output2331_def]
  conv => lhs; cbv
  try rfl
theorem node2331_eq : Flapjack.WordAlloc.removeDeadStructural input2331 value420 value1 value2 = (output2331, value1100, value1) := by
  rw [input2331_def, output2331_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node875_eq]
  try dsimp only
  rw [node2330_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2331 input874)).val
theorem input2332_def : input2332 = (.seq input2331 input874) := by
  unfold input2332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2331 output874)).val
theorem output2332_def : output2332 = (.seq output2331 output874) := by
  unfold output2332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2332_skip : Flapjack.WordAlloc.isSkip output2332 = false := by
  rw [output2332_def]
  conv => lhs; cbv
  try rfl
theorem node2332_eq : Flapjack.WordAlloc.removeDeadStructural input2332 value417 value1 value2 = (output2332, value1100, value1) := by
  rw [input2332_def, output2332_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node874_eq]
  try dsimp only
  rw [node2331_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2332 input869)).val
theorem input2333_def : input2333 = (.seq input2332 input869) := by
  unfold input2333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2332 output869)).val
theorem output2333_def : output2333 = (.seq output2332 output869) := by
  unfold output2333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2333_skip : Flapjack.WordAlloc.isSkip output2333 = false := by
  rw [output2333_def]
  conv => lhs; cbv
  try rfl
theorem node2333_eq : Flapjack.WordAlloc.removeDeadStructural input2333 value416 value1 value2 = (output2333, value1100, value1) := by
  rw [input2333_def, output2333_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node869_eq]
  try dsimp only
  rw [node2332_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2333 input868)).val
theorem input2334_def : input2334 = (.seq input2333 input868) := by
  unfold input2334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2333 output868)).val
theorem output2334_def : output2334 = (.seq output2333 output868) := by
  unfold output2334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2334_skip : Flapjack.WordAlloc.isSkip output2334 = false := by
  rw [output2334_def]
  conv => lhs; cbv
  try rfl
theorem node2334_eq : Flapjack.WordAlloc.removeDeadStructural input2334 value413 value1 value2 = (output2334, value1100, value1) := by
  rw [input2334_def, output2334_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node868_eq]
  try dsimp only
  rw [node2333_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2334 input863)).val
theorem input2335_def : input2335 = (.seq input2334 input863) := by
  unfold input2335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2334 output863)).val
theorem output2335_def : output2335 = (.seq output2334 output863) := by
  unfold output2335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2335_skip : Flapjack.WordAlloc.isSkip output2335 = false := by
  rw [output2335_def]
  conv => lhs; cbv
  try rfl
theorem node2335_eq : Flapjack.WordAlloc.removeDeadStructural input2335 value412 value1 value2 = (output2335, value1100, value1) := by
  rw [input2335_def, output2335_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node863_eq]
  try dsimp only
  rw [node2334_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2335 input862)).val
theorem input2336_def : input2336 = (.seq input2335 input862) := by
  unfold input2336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2335 output862)).val
theorem output2336_def : output2336 = (.seq output2335 output862) := by
  unfold output2336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2336_skip : Flapjack.WordAlloc.isSkip output2336 = false := by
  rw [output2336_def]
  conv => lhs; cbv
  try rfl
theorem node2336_eq : Flapjack.WordAlloc.removeDeadStructural input2336 value410 value1 value2 = (output2336, value1100, value1) := by
  rw [input2336_def, output2336_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node862_eq]
  try dsimp only
  rw [node2335_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2336 input859)).val
theorem input2337_def : input2337 = (.seq input2336 input859) := by
  unfold input2337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2336 output859)).val
theorem output2337_def : output2337 = (.seq output2336 output859) := by
  unfold output2337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2337_skip : Flapjack.WordAlloc.isSkip output2337 = false := by
  rw [output2337_def]
  conv => lhs; cbv
  try rfl
theorem node2337_eq : Flapjack.WordAlloc.removeDeadStructural input2337 value409 value1 value2 = (output2337, value1100, value1) := by
  rw [input2337_def, output2337_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node859_eq]
  try dsimp only
  rw [node2336_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2337 input858)).val
theorem input2338_def : input2338 = (.seq input2337 input858) := by
  unfold input2338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2337 output858)).val
theorem output2338_def : output2338 = (.seq output2337 output858) := by
  unfold output2338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2338_skip : Flapjack.WordAlloc.isSkip output2338 = false := by
  rw [output2338_def]
  conv => lhs; cbv
  try rfl
theorem node2338_eq : Flapjack.WordAlloc.removeDeadStructural input2338 value408 value1 value2 = (output2338, value1100, value1) := by
  rw [input2338_def, output2338_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node858_eq]
  try dsimp only
  rw [node2337_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2338 input857)).val
theorem input2339_def : input2339 = (.seq input2338 input857) := by
  unfold input2339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2338 output857)).val
theorem output2339_def : output2339 = (.seq output2338 output857) := by
  unfold output2339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2339_skip : Flapjack.WordAlloc.isSkip output2339 = false := by
  rw [output2339_def]
  conv => lhs; cbv
  try rfl
theorem node2339_eq : Flapjack.WordAlloc.removeDeadStructural input2339 value407 value1 value2 = (output2339, value1100, value1) := by
  rw [input2339_def, output2339_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node857_eq]
  try dsimp only
  rw [node2338_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2339 input856)).val
theorem input2340_def : input2340 = (.seq input2339 input856) := by
  unfold input2340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2339 output856)).val
theorem output2340_def : output2340 = (.seq output2339 output856) := by
  unfold output2340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2340_skip : Flapjack.WordAlloc.isSkip output2340 = false := by
  rw [output2340_def]
  conv => lhs; cbv
  try rfl
theorem node2340_eq : Flapjack.WordAlloc.removeDeadStructural input2340 value404 value1 value2 = (output2340, value1100, value1) := by
  rw [input2340_def, output2340_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node856_eq]
  try dsimp only
  rw [node2339_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2340 input851)).val
theorem input2341_def : input2341 = (.seq input2340 input851) := by
  unfold input2341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2340 output851)).val
theorem output2341_def : output2341 = (.seq output2340 output851) := by
  unfold output2341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2341_skip : Flapjack.WordAlloc.isSkip output2341 = false := by
  rw [output2341_def]
  conv => lhs; cbv
  try rfl
theorem node2341_eq : Flapjack.WordAlloc.removeDeadStructural input2341 value403 value1 value2 = (output2341, value1100, value1) := by
  rw [input2341_def, output2341_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node851_eq]
  try dsimp only
  rw [node2340_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2341 input850)).val
theorem input2342_def : input2342 = (.seq input2341 input850) := by
  unfold input2342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2341 output850)).val
theorem output2342_def : output2342 = (.seq output2341 output850) := by
  unfold output2342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2342_skip : Flapjack.WordAlloc.isSkip output2342 = false := by
  rw [output2342_def]
  conv => lhs; cbv
  try rfl
theorem node2342_eq : Flapjack.WordAlloc.removeDeadStructural input2342 value398 value1 value2 = (output2342, value1100, value1) := by
  rw [input2342_def, output2342_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node850_eq]
  try dsimp only
  rw [node2341_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2342 input841)).val
theorem input2343_def : input2343 = (.seq input2342 input841) := by
  unfold input2343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2342 output841)).val
theorem output2343_def : output2343 = (.seq output2342 output841) := by
  unfold output2343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2343_skip : Flapjack.WordAlloc.isSkip output2343 = false := by
  rw [output2343_def]
  conv => lhs; cbv
  try rfl
theorem node2343_eq : Flapjack.WordAlloc.removeDeadStructural input2343 value397 value1 value2 = (output2343, value1100, value1) := by
  rw [input2343_def, output2343_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node841_eq]
  try dsimp only
  rw [node2342_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2343 input840)).val
theorem input2344_def : input2344 = (.seq input2343 input840) := by
  unfold input2344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2343 output840)).val
theorem output2344_def : output2344 = (.seq output2343 output840) := by
  unfold output2344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2344_skip : Flapjack.WordAlloc.isSkip output2344 = false := by
  rw [output2344_def]
  conv => lhs; cbv
  try rfl
theorem node2344_eq : Flapjack.WordAlloc.removeDeadStructural input2344 value393 value1 value2 = (output2344, value1100, value1) := by
  rw [input2344_def, output2344_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node840_eq]
  try dsimp only
  rw [node2343_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2344 input833)).val
theorem input2345_def : input2345 = (.seq input2344 input833) := by
  unfold input2345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2344 output833)).val
theorem output2345_def : output2345 = (.seq output2344 output833) := by
  unfold output2345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2345_skip : Flapjack.WordAlloc.isSkip output2345 = false := by
  rw [output2345_def]
  conv => lhs; cbv
  try rfl
theorem node2345_eq : Flapjack.WordAlloc.removeDeadStructural input2345 value392 value1 value2 = (output2345, value1100, value1) := by
  rw [input2345_def, output2345_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node833_eq]
  try dsimp only
  rw [node2344_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2345 input832)).val
theorem input2346_def : input2346 = (.seq input2345 input832) := by
  unfold input2346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2345 output832)).val
theorem output2346_def : output2346 = (.seq output2345 output832) := by
  unfold output2346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2346_skip : Flapjack.WordAlloc.isSkip output2346 = false := by
  rw [output2346_def]
  conv => lhs; cbv
  try rfl
theorem node2346_eq : Flapjack.WordAlloc.removeDeadStructural input2346 value389 value1 value2 = (output2346, value1100, value1) := by
  rw [input2346_def, output2346_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node832_eq]
  try dsimp only
  rw [node2345_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2346 input827)).val
theorem input2347_def : input2347 = (.seq input2346 input827) := by
  unfold input2347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2346 output827)).val
theorem output2347_def : output2347 = (.seq output2346 output827) := by
  unfold output2347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2347_skip : Flapjack.WordAlloc.isSkip output2347 = false := by
  rw [output2347_def]
  conv => lhs; cbv
  try rfl
theorem node2347_eq : Flapjack.WordAlloc.removeDeadStructural input2347 value388 value1 value2 = (output2347, value1100, value1) := by
  rw [input2347_def, output2347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node827_eq]
  try dsimp only
  rw [node2346_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2347 input826)).val
theorem input2348_def : input2348 = (.seq input2347 input826) := by
  unfold input2348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2347 output826)).val
theorem output2348_def : output2348 = (.seq output2347 output826) := by
  unfold output2348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2348_skip : Flapjack.WordAlloc.isSkip output2348 = false := by
  rw [output2348_def]
  conv => lhs; cbv
  try rfl
theorem node2348_eq : Flapjack.WordAlloc.removeDeadStructural input2348 value385 value1 value2 = (output2348, value1100, value1) := by
  rw [input2348_def, output2348_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node826_eq]
  try dsimp only
  rw [node2347_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2348 input821)).val
theorem input2349_def : input2349 = (.seq input2348 input821) := by
  unfold input2349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2348 output821)).val
theorem output2349_def : output2349 = (.seq output2348 output821) := by
  unfold output2349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2349_skip : Flapjack.WordAlloc.isSkip output2349 = false := by
  rw [output2349_def]
  conv => lhs; cbv
  try rfl
theorem node2349_eq : Flapjack.WordAlloc.removeDeadStructural input2349 value384 value1 value2 = (output2349, value1100, value1) := by
  rw [input2349_def, output2349_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node821_eq]
  try dsimp only
  rw [node2348_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2349 input820)).val
theorem input2350_def : input2350 = (.seq input2349 input820) := by
  unfold input2350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2349)).val
theorem output2350_def : output2350 = (output2349) := by
  unfold output2350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2350_skip : Flapjack.WordAlloc.isSkip output2350 = false := by
  rw [output2350_def]
  conv => lhs; cbv
  try rfl
theorem node2350_eq : Flapjack.WordAlloc.removeDeadStructural input2350 value384 value1 value2 = (output2350, value1100, value1) := by
  rw [input2350_def, output2350_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node820_eq]
  try dsimp only
  rw [node2349_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2350 input819)).val
theorem input2351_def : input2351 = (.seq input2350 input819) := by
  unfold input2351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2350)).val
theorem output2351_def : output2351 = (output2350) := by
  unfold output2351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2351_skip : Flapjack.WordAlloc.isSkip output2351 = false := by
  rw [output2351_def]
  conv => lhs; cbv
  try rfl
theorem node2351_eq : Flapjack.WordAlloc.removeDeadStructural input2351 value384 value1 value2 = (output2351, value1100, value1) := by
  rw [input2351_def, output2351_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node819_eq]
  try dsimp only
  rw [node2350_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2351 input818)).val
theorem input2352_def : input2352 = (.seq input2351 input818) := by
  unfold input2352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2351 output818)).val
theorem output2352_def : output2352 = (.seq output2351 output818) := by
  unfold output2352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2352_skip : Flapjack.WordAlloc.isSkip output2352 = false := by
  rw [output2352_def]
  conv => lhs; cbv
  try rfl
theorem node2352_eq : Flapjack.WordAlloc.removeDeadStructural input2352 value381 value1 value2 = (output2352, value1100, value1) := by
  rw [input2352_def, output2352_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node818_eq]
  try dsimp only
  rw [node2351_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2352 input813)).val
theorem input2353_def : input2353 = (.seq input2352 input813) := by
  unfold input2353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2352 output813)).val
theorem output2353_def : output2353 = (.seq output2352 output813) := by
  unfold output2353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2353_skip : Flapjack.WordAlloc.isSkip output2353 = false := by
  rw [output2353_def]
  conv => lhs; cbv
  try rfl
theorem node2353_eq : Flapjack.WordAlloc.removeDeadStructural input2353 value378 value1 value2 = (output2353, value1100, value1) := by
  rw [input2353_def, output2353_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node813_eq]
  try dsimp only
  rw [node2352_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2353 input808)).val
theorem input2354_def : input2354 = (.seq input2353 input808) := by
  unfold input2354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2353 output808)).val
theorem output2354_def : output2354 = (.seq output2353 output808) := by
  unfold output2354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2354_skip : Flapjack.WordAlloc.isSkip output2354 = false := by
  rw [output2354_def]
  conv => lhs; cbv
  try rfl
theorem node2354_eq : Flapjack.WordAlloc.removeDeadStructural input2354 value374 value1 value2 = (output2354, value1100, value1) := by
  rw [input2354_def, output2354_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node808_eq]
  try dsimp only
  rw [node2353_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2354 input801)).val
theorem input2355_def : input2355 = (.seq input2354 input801) := by
  unfold input2355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2354)).val
theorem output2355_def : output2355 = (output2354) := by
  unfold output2355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2355_skip : Flapjack.WordAlloc.isSkip output2355 = false := by
  rw [output2355_def]
  conv => lhs; cbv
  try rfl
theorem node2355_eq : Flapjack.WordAlloc.removeDeadStructural input2355 value374 value1 value2 = (output2355, value1100, value1) := by
  rw [input2355_def, output2355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node801_eq]
  try dsimp only
  rw [node2354_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2355 input800)).val
theorem input2356_def : input2356 = (.seq input2355 input800) := by
  unfold input2356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2355)).val
theorem output2356_def : output2356 = (output2355) := by
  unfold output2356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2356_skip : Flapjack.WordAlloc.isSkip output2356 = false := by
  rw [output2356_def]
  conv => lhs; cbv
  try rfl
theorem node2356_eq : Flapjack.WordAlloc.removeDeadStructural input2356 value374 value1 value2 = (output2356, value1100, value1) := by
  rw [input2356_def, output2356_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node800_eq]
  try dsimp only
  rw [node2355_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2356 input799)).val
theorem input2357_def : input2357 = (.seq input2356 input799) := by
  unfold input2357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2356 output799)).val
theorem output2357_def : output2357 = (.seq output2356 output799) := by
  unfold output2357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2357_skip : Flapjack.WordAlloc.isSkip output2357 = false := by
  rw [output2357_def]
  conv => lhs; cbv
  try rfl
theorem node2357_eq : Flapjack.WordAlloc.removeDeadStructural input2357 value373 value1 value2 = (output2357, value1100, value1) := by
  rw [input2357_def, output2357_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node799_eq]
  try dsimp only
  rw [node2356_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2357 input798)).val
theorem input2358_def : input2358 = (.seq input2357 input798) := by
  unfold input2358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2357 output798)).val
theorem output2358_def : output2358 = (.seq output2357 output798) := by
  unfold output2358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2358_skip : Flapjack.WordAlloc.isSkip output2358 = false := by
  rw [output2358_def]
  conv => lhs; cbv
  try rfl
theorem node2358_eq : Flapjack.WordAlloc.removeDeadStructural input2358 value372 value1 value2 = (output2358, value1100, value1) := by
  rw [input2358_def, output2358_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node798_eq]
  try dsimp only
  rw [node2357_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2358 input797)).val
theorem input2359_def : input2359 = (.seq input2358 input797) := by
  unfold input2359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2358 output797)).val
theorem output2359_def : output2359 = (.seq output2358 output797) := by
  unfold output2359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2359_skip : Flapjack.WordAlloc.isSkip output2359 = false := by
  rw [output2359_def]
  conv => lhs; cbv
  try rfl
theorem node2359_eq : Flapjack.WordAlloc.removeDeadStructural input2359 value369 value1 value2 = (output2359, value1100, value1) := by
  rw [input2359_def, output2359_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node797_eq]
  try dsimp only
  rw [node2358_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2359 input792)).val
theorem input2360_def : input2360 = (.seq input2359 input792) := by
  unfold input2360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2359 output792)).val
theorem output2360_def : output2360 = (.seq output2359 output792) := by
  unfold output2360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2360_skip : Flapjack.WordAlloc.isSkip output2360 = false := by
  rw [output2360_def]
  conv => lhs; cbv
  try rfl
theorem node2360_eq : Flapjack.WordAlloc.removeDeadStructural input2360 value368 value1 value2 = (output2360, value1100, value1) := by
  rw [input2360_def, output2360_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node792_eq]
  try dsimp only
  rw [node2359_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2360 input791)).val
theorem input2361_def : input2361 = (.seq input2360 input791) := by
  unfold input2361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2360 output791)).val
theorem output2361_def : output2361 = (.seq output2360 output791) := by
  unfold output2361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2361_skip : Flapjack.WordAlloc.isSkip output2361 = false := by
  rw [output2361_def]
  conv => lhs; cbv
  try rfl
theorem node2361_eq : Flapjack.WordAlloc.removeDeadStructural input2361 value365 value1 value2 = (output2361, value1100, value1) := by
  rw [input2361_def, output2361_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node791_eq]
  try dsimp only
  rw [node2360_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2361 input786)).val
theorem input2362_def : input2362 = (.seq input2361 input786) := by
  unfold input2362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2361 output786)).val
theorem output2362_def : output2362 = (.seq output2361 output786) := by
  unfold output2362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2362_skip : Flapjack.WordAlloc.isSkip output2362 = false := by
  rw [output2362_def]
  conv => lhs; cbv
  try rfl
theorem node2362_eq : Flapjack.WordAlloc.removeDeadStructural input2362 value364 value1 value2 = (output2362, value1100, value1) := by
  rw [input2362_def, output2362_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node786_eq]
  try dsimp only
  rw [node2361_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2363 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2362 input785)).val
theorem input2363_def : input2363 = (.seq input2362 input785) := by
  unfold input2363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2363 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2362 output785)).val
theorem output2363_def : output2363 = (.seq output2362 output785) := by
  unfold output2363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2363_skip : Flapjack.WordAlloc.isSkip output2363 = false := by
  rw [output2363_def]
  conv => lhs; cbv
  try rfl
theorem node2363_eq : Flapjack.WordAlloc.removeDeadStructural input2363 value362 value1 value2 = (output2363, value1100, value1) := by
  rw [input2363_def, output2363_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node785_eq]
  try dsimp only
  rw [node2362_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2363 input782)).val
theorem input2364_def : input2364 = (.seq input2363 input782) := by
  unfold input2364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2363 output782)).val
theorem output2364_def : output2364 = (.seq output2363 output782) := by
  unfold output2364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2364_skip : Flapjack.WordAlloc.isSkip output2364 = false := by
  rw [output2364_def]
  conv => lhs; cbv
  try rfl
theorem node2364_eq : Flapjack.WordAlloc.removeDeadStructural input2364 value361 value1 value2 = (output2364, value1100, value1) := by
  rw [input2364_def, output2364_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node782_eq]
  try dsimp only
  rw [node2363_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2364 input781)).val
theorem input2365_def : input2365 = (.seq input2364 input781) := by
  unfold input2365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2364 output781)).val
theorem output2365_def : output2365 = (.seq output2364 output781) := by
  unfold output2365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2365_skip : Flapjack.WordAlloc.isSkip output2365 = false := by
  rw [output2365_def]
  conv => lhs; cbv
  try rfl
theorem node2365_eq : Flapjack.WordAlloc.removeDeadStructural input2365 value360 value1 value2 = (output2365, value1100, value1) := by
  rw [input2365_def, output2365_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node781_eq]
  try dsimp only
  rw [node2364_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2365 input780)).val
theorem input2366_def : input2366 = (.seq input2365 input780) := by
  unfold input2366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2365 output780)).val
theorem output2366_def : output2366 = (.seq output2365 output780) := by
  unfold output2366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2366_skip : Flapjack.WordAlloc.isSkip output2366 = false := by
  rw [output2366_def]
  conv => lhs; cbv
  try rfl
theorem node2366_eq : Flapjack.WordAlloc.removeDeadStructural input2366 value359 value1 value2 = (output2366, value1100, value1) := by
  rw [input2366_def, output2366_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node780_eq]
  try dsimp only
  rw [node2365_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2366 input779)).val
theorem input2367_def : input2367 = (.seq input2366 input779) := by
  unfold input2367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2366 output779)).val
theorem output2367_def : output2367 = (.seq output2366 output779) := by
  unfold output2367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2367_skip : Flapjack.WordAlloc.isSkip output2367 = false := by
  rw [output2367_def]
  conv => lhs; cbv
  try rfl
theorem node2367_eq : Flapjack.WordAlloc.removeDeadStructural input2367 value356 value1 value2 = (output2367, value1100, value1) := by
  rw [input2367_def, output2367_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node779_eq]
  try dsimp only
  rw [node2366_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2367 input774)).val
theorem input2368_def : input2368 = (.seq input2367 input774) := by
  unfold input2368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2367 output774)).val
theorem output2368_def : output2368 = (.seq output2367 output774) := by
  unfold output2368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2368_skip : Flapjack.WordAlloc.isSkip output2368 = false := by
  rw [output2368_def]
  conv => lhs; cbv
  try rfl
theorem node2368_eq : Flapjack.WordAlloc.removeDeadStructural input2368 value355 value1 value2 = (output2368, value1100, value1) := by
  rw [input2368_def, output2368_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node774_eq]
  try dsimp only
  rw [node2367_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2368 input773)).val
theorem input2369_def : input2369 = (.seq input2368 input773) := by
  unfold input2369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2368 output773)).val
theorem output2369_def : output2369 = (.seq output2368 output773) := by
  unfold output2369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2369_skip : Flapjack.WordAlloc.isSkip output2369 = false := by
  rw [output2369_def]
  conv => lhs; cbv
  try rfl
theorem node2369_eq : Flapjack.WordAlloc.removeDeadStructural input2369 value352 value1 value2 = (output2369, value1100, value1) := by
  rw [input2369_def, output2369_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node773_eq]
  try dsimp only
  rw [node2368_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2369 input768)).val
theorem input2370_def : input2370 = (.seq input2369 input768) := by
  unfold input2370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2369 output768)).val
theorem output2370_def : output2370 = (.seq output2369 output768) := by
  unfold output2370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2370_skip : Flapjack.WordAlloc.isSkip output2370 = false := by
  rw [output2370_def]
  conv => lhs; cbv
  try rfl
theorem node2370_eq : Flapjack.WordAlloc.removeDeadStructural input2370 value351 value1 value2 = (output2370, value1100, value1) := by
  rw [input2370_def, output2370_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node768_eq]
  try dsimp only
  rw [node2369_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2370 input767)).val
theorem input2371_def : input2371 = (.seq input2370 input767) := by
  unfold input2371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2370 output767)).val
theorem output2371_def : output2371 = (.seq output2370 output767) := by
  unfold output2371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2371_skip : Flapjack.WordAlloc.isSkip output2371 = false := by
  rw [output2371_def]
  conv => lhs; cbv
  try rfl
theorem node2371_eq : Flapjack.WordAlloc.removeDeadStructural input2371 value349 value1 value2 = (output2371, value1100, value1) := by
  rw [input2371_def, output2371_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node767_eq]
  try dsimp only
  rw [node2370_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2371 input764)).val
theorem input2372_def : input2372 = (.seq input2371 input764) := by
  unfold input2372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2371 output764)).val
theorem output2372_def : output2372 = (.seq output2371 output764) := by
  unfold output2372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2372_skip : Flapjack.WordAlloc.isSkip output2372 = false := by
  rw [output2372_def]
  conv => lhs; cbv
  try rfl
theorem node2372_eq : Flapjack.WordAlloc.removeDeadStructural input2372 value348 value1 value2 = (output2372, value1100, value1) := by
  rw [input2372_def, output2372_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node764_eq]
  try dsimp only
  rw [node2371_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2372 input763)).val
theorem input2373_def : input2373 = (.seq input2372 input763) := by
  unfold input2373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2372 output763)).val
theorem output2373_def : output2373 = (.seq output2372 output763) := by
  unfold output2373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2373_skip : Flapjack.WordAlloc.isSkip output2373 = false := by
  rw [output2373_def]
  conv => lhs; cbv
  try rfl
theorem node2373_eq : Flapjack.WordAlloc.removeDeadStructural input2373 value343 value1 value2 = (output2373, value1100, value1) := by
  rw [input2373_def, output2373_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node763_eq]
  try dsimp only
  rw [node2372_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2373 input754)).val
theorem input2374_def : input2374 = (.seq input2373 input754) := by
  unfold input2374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2373 output754)).val
theorem output2374_def : output2374 = (.seq output2373 output754) := by
  unfold output2374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2374_skip : Flapjack.WordAlloc.isSkip output2374 = false := by
  rw [output2374_def]
  conv => lhs; cbv
  try rfl
theorem node2374_eq : Flapjack.WordAlloc.removeDeadStructural input2374 value342 value1 value2 = (output2374, value1100, value1) := by
  rw [input2374_def, output2374_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node754_eq]
  try dsimp only
  rw [node2373_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2374 input753)).val
theorem input2375_def : input2375 = (.seq input2374 input753) := by
  unfold input2375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2374 output753)).val
theorem output2375_def : output2375 = (.seq output2374 output753) := by
  unfold output2375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2375_skip : Flapjack.WordAlloc.isSkip output2375 = false := by
  rw [output2375_def]
  conv => lhs; cbv
  try rfl
theorem node2375_eq : Flapjack.WordAlloc.removeDeadStructural input2375 value337 value1 value2 = (output2375, value1100, value1) := by
  rw [input2375_def, output2375_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node753_eq]
  try dsimp only
  rw [node2374_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2376 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2375 input744)).val
theorem input2376_def : input2376 = (.seq input2375 input744) := by
  unfold input2376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2376 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2375 output744)).val
theorem output2376_def : output2376 = (.seq output2375 output744) := by
  unfold output2376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2376_skip : Flapjack.WordAlloc.isSkip output2376 = false := by
  rw [output2376_def]
  conv => lhs; cbv
  try rfl
theorem node2376_eq : Flapjack.WordAlloc.removeDeadStructural input2376 value336 value1 value2 = (output2376, value1100, value1) := by
  rw [input2376_def, output2376_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node744_eq]
  try dsimp only
  rw [node2375_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2376 input743)).val
theorem input2377_def : input2377 = (.seq input2376 input743) := by
  unfold input2377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2376)).val
theorem output2377_def : output2377 = (output2376) := by
  unfold output2377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2377_skip : Flapjack.WordAlloc.isSkip output2377 = false := by
  rw [output2377_def]
  conv => lhs; cbv
  try rfl
theorem node2377_eq : Flapjack.WordAlloc.removeDeadStructural input2377 value336 value1 value2 = (output2377, value1100, value1) := by
  rw [input2377_def, output2377_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node743_eq]
  try dsimp only
  rw [node2376_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2377 input742)).val
theorem input2378_def : input2378 = (.seq input2377 input742) := by
  unfold input2378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2377)).val
theorem output2378_def : output2378 = (output2377) := by
  unfold output2378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2378_skip : Flapjack.WordAlloc.isSkip output2378 = false := by
  rw [output2378_def]
  conv => lhs; cbv
  try rfl
theorem node2378_eq : Flapjack.WordAlloc.removeDeadStructural input2378 value336 value1 value2 = (output2378, value1100, value1) := by
  rw [input2378_def, output2378_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node742_eq]
  try dsimp only
  rw [node2377_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2378 input741)).val
theorem input2379_def : input2379 = (.seq input2378 input741) := by
  unfold input2379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2378 output741)).val
theorem output2379_def : output2379 = (.seq output2378 output741) := by
  unfold output2379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2379_skip : Flapjack.WordAlloc.isSkip output2379 = false := by
  rw [output2379_def]
  conv => lhs; cbv
  try rfl
theorem node2379_eq : Flapjack.WordAlloc.removeDeadStructural input2379 value333 value1 value2 = (output2379, value1100, value1) := by
  rw [input2379_def, output2379_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node741_eq]
  try dsimp only
  rw [node2378_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2379 input736)).val
theorem input2380_def : input2380 = (.seq input2379 input736) := by
  unfold input2380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2379 output736)).val
theorem output2380_def : output2380 = (.seq output2379 output736) := by
  unfold output2380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2380_skip : Flapjack.WordAlloc.isSkip output2380 = false := by
  rw [output2380_def]
  conv => lhs; cbv
  try rfl
theorem node2380_eq : Flapjack.WordAlloc.removeDeadStructural input2380 value330 value1 value2 = (output2380, value1100, value1) := by
  rw [input2380_def, output2380_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node736_eq]
  try dsimp only
  rw [node2379_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2380 input731)).val
theorem input2381_def : input2381 = (.seq input2380 input731) := by
  unfold input2381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2380 output731)).val
theorem output2381_def : output2381 = (.seq output2380 output731) := by
  unfold output2381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2381_skip : Flapjack.WordAlloc.isSkip output2381 = false := by
  rw [output2381_def]
  conv => lhs; cbv
  try rfl
theorem node2381_eq : Flapjack.WordAlloc.removeDeadStructural input2381 value326 value1 value2 = (output2381, value1100, value1) := by
  rw [input2381_def, output2381_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node731_eq]
  try dsimp only
  rw [node2380_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2381 input724)).val
theorem input2382_def : input2382 = (.seq input2381 input724) := by
  unfold input2382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2381)).val
theorem output2382_def : output2382 = (output2381) := by
  unfold output2382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2382_skip : Flapjack.WordAlloc.isSkip output2382 = false := by
  rw [output2382_def]
  conv => lhs; cbv
  try rfl
theorem node2382_eq : Flapjack.WordAlloc.removeDeadStructural input2382 value326 value1 value2 = (output2382, value1100, value1) := by
  rw [input2382_def, output2382_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node724_eq]
  try dsimp only
  rw [node2381_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2382 input723)).val
theorem input2383_def : input2383 = (.seq input2382 input723) := by
  unfold input2383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2382)).val
theorem output2383_def : output2383 = (output2382) := by
  unfold output2383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2383_skip : Flapjack.WordAlloc.isSkip output2383 = false := by
  rw [output2383_def]
  conv => lhs; cbv
  try rfl
theorem node2383_eq : Flapjack.WordAlloc.removeDeadStructural input2383 value326 value1 value2 = (output2383, value1100, value1) := by
  rw [input2383_def, output2383_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node723_eq]
  try dsimp only
  rw [node2382_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2384 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2383 input722)).val
theorem input2384_def : input2384 = (.seq input2383 input722) := by
  unfold input2384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2384 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2383 output722)).val
theorem output2384_def : output2384 = (.seq output2383 output722) := by
  unfold output2384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2384_skip : Flapjack.WordAlloc.isSkip output2384 = false := by
  rw [output2384_def]
  conv => lhs; cbv
  try rfl
theorem node2384_eq : Flapjack.WordAlloc.removeDeadStructural input2384 value325 value1 value2 = (output2384, value1100, value1) := by
  rw [input2384_def, output2384_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node722_eq]
  try dsimp only
  rw [node2383_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2384 input721)).val
theorem input2385_def : input2385 = (.seq input2384 input721) := by
  unfold input2385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2384 output721)).val
theorem output2385_def : output2385 = (.seq output2384 output721) := by
  unfold output2385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2385_skip : Flapjack.WordAlloc.isSkip output2385 = false := by
  rw [output2385_def]
  conv => lhs; cbv
  try rfl
theorem node2385_eq : Flapjack.WordAlloc.removeDeadStructural input2385 value324 value1 value2 = (output2385, value1100, value1) := by
  rw [input2385_def, output2385_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node721_eq]
  try dsimp only
  rw [node2384_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2385 input720)).val
theorem input2386_def : input2386 = (.seq input2385 input720) := by
  unfold input2386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2385 output720)).val
theorem output2386_def : output2386 = (.seq output2385 output720) := by
  unfold output2386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2386_skip : Flapjack.WordAlloc.isSkip output2386 = false := by
  rw [output2386_def]
  conv => lhs; cbv
  try rfl
theorem node2386_eq : Flapjack.WordAlloc.removeDeadStructural input2386 value321 value1 value2 = (output2386, value1100, value1) := by
  rw [input2386_def, output2386_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node720_eq]
  try dsimp only
  rw [node2385_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2386 input715)).val
theorem input2387_def : input2387 = (.seq input2386 input715) := by
  unfold input2387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2386 output715)).val
theorem output2387_def : output2387 = (.seq output2386 output715) := by
  unfold output2387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2387_skip : Flapjack.WordAlloc.isSkip output2387 = false := by
  rw [output2387_def]
  conv => lhs; cbv
  try rfl
theorem node2387_eq : Flapjack.WordAlloc.removeDeadStructural input2387 value320 value1 value2 = (output2387, value1100, value1) := by
  rw [input2387_def, output2387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node715_eq]
  try dsimp only
  rw [node2386_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2387 input714)).val
theorem input2388_def : input2388 = (.seq input2387 input714) := by
  unfold input2388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2387 output714)).val
theorem output2388_def : output2388 = (.seq output2387 output714) := by
  unfold output2388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2388_skip : Flapjack.WordAlloc.isSkip output2388 = false := by
  rw [output2388_def]
  conv => lhs; cbv
  try rfl
theorem node2388_eq : Flapjack.WordAlloc.removeDeadStructural input2388 value317 value1 value2 = (output2388, value1100, value1) := by
  rw [input2388_def, output2388_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node714_eq]
  try dsimp only
  rw [node2387_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2388 input709)).val
theorem input2389_def : input2389 = (.seq input2388 input709) := by
  unfold input2389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2388 output709)).val
theorem output2389_def : output2389 = (.seq output2388 output709) := by
  unfold output2389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2389_skip : Flapjack.WordAlloc.isSkip output2389 = false := by
  rw [output2389_def]
  conv => lhs; cbv
  try rfl
theorem node2389_eq : Flapjack.WordAlloc.removeDeadStructural input2389 value316 value1 value2 = (output2389, value1100, value1) := by
  rw [input2389_def, output2389_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node709_eq]
  try dsimp only
  rw [node2388_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2389 input708)).val
theorem input2390_def : input2390 = (.seq input2389 input708) := by
  unfold input2390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2389 output708)).val
theorem output2390_def : output2390 = (.seq output2389 output708) := by
  unfold output2390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2390_skip : Flapjack.WordAlloc.isSkip output2390 = false := by
  rw [output2390_def]
  conv => lhs; cbv
  try rfl
theorem node2390_eq : Flapjack.WordAlloc.removeDeadStructural input2390 value314 value1 value2 = (output2390, value1100, value1) := by
  rw [input2390_def, output2390_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node708_eq]
  try dsimp only
  rw [node2389_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2390 input705)).val
theorem input2391_def : input2391 = (.seq input2390 input705) := by
  unfold input2391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2390 output705)).val
theorem output2391_def : output2391 = (.seq output2390 output705) := by
  unfold output2391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2391_skip : Flapjack.WordAlloc.isSkip output2391 = false := by
  rw [output2391_def]
  conv => lhs; cbv
  try rfl
theorem node2391_eq : Flapjack.WordAlloc.removeDeadStructural input2391 value313 value1 value2 = (output2391, value1100, value1) := by
  rw [input2391_def, output2391_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node705_eq]
  try dsimp only
  rw [node2390_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2391 input704)).val
theorem input2392_def : input2392 = (.seq input2391 input704) := by
  unfold input2392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2391 output704)).val
theorem output2392_def : output2392 = (.seq output2391 output704) := by
  unfold output2392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2392_skip : Flapjack.WordAlloc.isSkip output2392 = false := by
  rw [output2392_def]
  conv => lhs; cbv
  try rfl
theorem node2392_eq : Flapjack.WordAlloc.removeDeadStructural input2392 value310 value1 value2 = (output2392, value1100, value1) := by
  rw [input2392_def, output2392_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node704_eq]
  try dsimp only
  rw [node2391_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2392 input699)).val
theorem input2393_def : input2393 = (.seq input2392 input699) := by
  unfold input2393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2392 output699)).val
theorem output2393_def : output2393 = (.seq output2392 output699) := by
  unfold output2393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2393_skip : Flapjack.WordAlloc.isSkip output2393 = false := by
  rw [output2393_def]
  conv => lhs; cbv
  try rfl
theorem node2393_eq : Flapjack.WordAlloc.removeDeadStructural input2393 value309 value1 value2 = (output2393, value1100, value1) := by
  rw [input2393_def, output2393_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node699_eq]
  try dsimp only
  rw [node2392_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2393 input698)).val
theorem input2394_def : input2394 = (.seq input2393 input698) := by
  unfold input2394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2393 output698)).val
theorem output2394_def : output2394 = (.seq output2393 output698) := by
  unfold output2394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2394_skip : Flapjack.WordAlloc.isSkip output2394 = false := by
  rw [output2394_def]
  conv => lhs; cbv
  try rfl
theorem node2394_eq : Flapjack.WordAlloc.removeDeadStructural input2394 value306 value1 value2 = (output2394, value1100, value1) := by
  rw [input2394_def, output2394_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node698_eq]
  try dsimp only
  rw [node2393_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2394 input693)).val
theorem input2395_def : input2395 = (.seq input2394 input693) := by
  unfold input2395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2394 output693)).val
theorem output2395_def : output2395 = (.seq output2394 output693) := by
  unfold output2395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2395_skip : Flapjack.WordAlloc.isSkip output2395 = false := by
  rw [output2395_def]
  conv => lhs; cbv
  try rfl
theorem node2395_eq : Flapjack.WordAlloc.removeDeadStructural input2395 value305 value1 value2 = (output2395, value1100, value1) := by
  rw [input2395_def, output2395_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node693_eq]
  try dsimp only
  rw [node2394_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2395 input692)).val
theorem input2396_def : input2396 = (.seq input2395 input692) := by
  unfold input2396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2395)).val
theorem output2396_def : output2396 = (output2395) := by
  unfold output2396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2396_skip : Flapjack.WordAlloc.isSkip output2396 = false := by
  rw [output2396_def]
  conv => lhs; cbv
  try rfl
theorem node2396_eq : Flapjack.WordAlloc.removeDeadStructural input2396 value305 value1 value2 = (output2396, value1100, value1) := by
  rw [input2396_def, output2396_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node692_eq]
  try dsimp only
  rw [node2395_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2396 input691)).val
theorem input2397_def : input2397 = (.seq input2396 input691) := by
  unfold input2397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2396)).val
theorem output2397_def : output2397 = (output2396) := by
  unfold output2397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2397_skip : Flapjack.WordAlloc.isSkip output2397 = false := by
  rw [output2397_def]
  conv => lhs; cbv
  try rfl
theorem node2397_eq : Flapjack.WordAlloc.removeDeadStructural input2397 value305 value1 value2 = (output2397, value1100, value1) := by
  rw [input2397_def, output2397_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node691_eq]
  try dsimp only
  rw [node2396_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2397 input690)).val
theorem input2398_def : input2398 = (.seq input2397 input690) := by
  unfold input2398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2397 output690)).val
theorem output2398_def : output2398 = (.seq output2397 output690) := by
  unfold output2398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2398_skip : Flapjack.WordAlloc.isSkip output2398 = false := by
  rw [output2398_def]
  conv => lhs; cbv
  try rfl
theorem node2398_eq : Flapjack.WordAlloc.removeDeadStructural input2398 value302 value1 value2 = (output2398, value1100, value1) := by
  rw [input2398_def, output2398_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node690_eq]
  try dsimp only
  rw [node2397_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2398 input685)).val
theorem input2399_def : input2399 = (.seq input2398 input685) := by
  unfold input2399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2398 output685)).val
theorem output2399_def : output2399 = (.seq output2398 output685) := by
  unfold output2399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2399_skip : Flapjack.WordAlloc.isSkip output2399 = false := by
  rw [output2399_def]
  conv => lhs; cbv
  try rfl
theorem node2399_eq : Flapjack.WordAlloc.removeDeadStructural input2399 value299 value1 value2 = (output2399, value1100, value1) := by
  rw [input2399_def, output2399_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node685_eq]
  try dsimp only
  rw [node2398_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2399 input680)).val
theorem input2400_def : input2400 = (.seq input2399 input680) := by
  unfold input2400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2399 output680)).val
theorem output2400_def : output2400 = (.seq output2399 output680) := by
  unfold output2400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2400_skip : Flapjack.WordAlloc.isSkip output2400 = false := by
  rw [output2400_def]
  conv => lhs; cbv
  try rfl
theorem node2400_eq : Flapjack.WordAlloc.removeDeadStructural input2400 value295 value1 value2 = (output2400, value1100, value1) := by
  rw [input2400_def, output2400_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node680_eq]
  try dsimp only
  rw [node2399_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2400 input673)).val
theorem input2401_def : input2401 = (.seq input2400 input673) := by
  unfold input2401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2400)).val
theorem output2401_def : output2401 = (output2400) := by
  unfold output2401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2401_skip : Flapjack.WordAlloc.isSkip output2401 = false := by
  rw [output2401_def]
  conv => lhs; cbv
  try rfl
theorem node2401_eq : Flapjack.WordAlloc.removeDeadStructural input2401 value295 value1 value2 = (output2401, value1100, value1) := by
  rw [input2401_def, output2401_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node673_eq]
  try dsimp only
  rw [node2400_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2401 input672)).val
theorem input2402_def : input2402 = (.seq input2401 input672) := by
  unfold input2402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2401)).val
theorem output2402_def : output2402 = (output2401) := by
  unfold output2402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2402_skip : Flapjack.WordAlloc.isSkip output2402 = false := by
  rw [output2402_def]
  conv => lhs; cbv
  try rfl
theorem node2402_eq : Flapjack.WordAlloc.removeDeadStructural input2402 value295 value1 value2 = (output2402, value1100, value1) := by
  rw [input2402_def, output2402_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node672_eq]
  try dsimp only
  rw [node2401_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2402 input671)).val
theorem input2403_def : input2403 = (.seq input2402 input671) := by
  unfold input2403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2402 output671)).val
theorem output2403_def : output2403 = (.seq output2402 output671) := by
  unfold output2403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2403_skip : Flapjack.WordAlloc.isSkip output2403 = false := by
  rw [output2403_def]
  conv => lhs; cbv
  try rfl
theorem node2403_eq : Flapjack.WordAlloc.removeDeadStructural input2403 value294 value1 value2 = (output2403, value1100, value1) := by
  rw [input2403_def, output2403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node671_eq]
  try dsimp only
  rw [node2402_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2403 input670)).val
theorem input2404_def : input2404 = (.seq input2403 input670) := by
  unfold input2404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2403 output670)).val
theorem output2404_def : output2404 = (.seq output2403 output670) := by
  unfold output2404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2404_skip : Flapjack.WordAlloc.isSkip output2404 = false := by
  rw [output2404_def]
  conv => lhs; cbv
  try rfl
theorem node2404_eq : Flapjack.WordAlloc.removeDeadStructural input2404 value293 value1 value2 = (output2404, value1100, value1) := by
  rw [input2404_def, output2404_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node670_eq]
  try dsimp only
  rw [node2403_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2404 input669)).val
theorem input2405_def : input2405 = (.seq input2404 input669) := by
  unfold input2405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2404 output669)).val
theorem output2405_def : output2405 = (.seq output2404 output669) := by
  unfold output2405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2405_skip : Flapjack.WordAlloc.isSkip output2405 = false := by
  rw [output2405_def]
  conv => lhs; cbv
  try rfl
theorem node2405_eq : Flapjack.WordAlloc.removeDeadStructural input2405 value290 value1 value2 = (output2405, value1100, value1) := by
  rw [input2405_def, output2405_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node669_eq]
  try dsimp only
  rw [node2404_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2405 input664)).val
theorem input2406_def : input2406 = (.seq input2405 input664) := by
  unfold input2406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2405 output664)).val
theorem output2406_def : output2406 = (.seq output2405 output664) := by
  unfold output2406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2406_skip : Flapjack.WordAlloc.isSkip output2406 = false := by
  rw [output2406_def]
  conv => lhs; cbv
  try rfl
theorem node2406_eq : Flapjack.WordAlloc.removeDeadStructural input2406 value289 value1 value2 = (output2406, value1100, value1) := by
  rw [input2406_def, output2406_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node664_eq]
  try dsimp only
  rw [node2405_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2406 input663)).val
theorem input2407_def : input2407 = (.seq input2406 input663) := by
  unfold input2407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2406 output663)).val
theorem output2407_def : output2407 = (.seq output2406 output663) := by
  unfold output2407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2407_skip : Flapjack.WordAlloc.isSkip output2407 = false := by
  rw [output2407_def]
  conv => lhs; cbv
  try rfl
theorem node2407_eq : Flapjack.WordAlloc.removeDeadStructural input2407 value286 value1 value2 = (output2407, value1100, value1) := by
  rw [input2407_def, output2407_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node663_eq]
  try dsimp only
  rw [node2406_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2408 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2407 input658)).val
theorem input2408_def : input2408 = (.seq input2407 input658) := by
  unfold input2408
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2408 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2407 output658)).val
theorem output2408_def : output2408 = (.seq output2407 output658) := by
  unfold output2408
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2408_skip : Flapjack.WordAlloc.isSkip output2408 = false := by
  rw [output2408_def]
  conv => lhs; cbv
  try rfl
theorem node2408_eq : Flapjack.WordAlloc.removeDeadStructural input2408 value285 value1 value2 = (output2408, value1100, value1) := by
  rw [input2408_def, output2408_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node658_eq]
  try dsimp only
  rw [node2407_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2409 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2408 input657)).val
theorem input2409_def : input2409 = (.seq input2408 input657) := by
  unfold input2409
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2409 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2408 output657)).val
theorem output2409_def : output2409 = (.seq output2408 output657) := by
  unfold output2409
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2409_skip : Flapjack.WordAlloc.isSkip output2409 = false := by
  rw [output2409_def]
  conv => lhs; cbv
  try rfl
theorem node2409_eq : Flapjack.WordAlloc.removeDeadStructural input2409 value283 value1 value2 = (output2409, value1100, value1) := by
  rw [input2409_def, output2409_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node657_eq]
  try dsimp only
  rw [node2408_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2410 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2409 input654)).val
theorem input2410_def : input2410 = (.seq input2409 input654) := by
  unfold input2410
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2410 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2409 output654)).val
theorem output2410_def : output2410 = (.seq output2409 output654) := by
  unfold output2410
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2410_skip : Flapjack.WordAlloc.isSkip output2410 = false := by
  rw [output2410_def]
  conv => lhs; cbv
  try rfl
theorem node2410_eq : Flapjack.WordAlloc.removeDeadStructural input2410 value282 value1 value2 = (output2410, value1100, value1) := by
  rw [input2410_def, output2410_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node654_eq]
  try dsimp only
  rw [node2409_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2411 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2410 input653)).val
theorem input2411_def : input2411 = (.seq input2410 input653) := by
  unfold input2411
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2411 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2410 output653)).val
theorem output2411_def : output2411 = (.seq output2410 output653) := by
  unfold output2411
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2411_skip : Flapjack.WordAlloc.isSkip output2411 = false := by
  rw [output2411_def]
  conv => lhs; cbv
  try rfl
theorem node2411_eq : Flapjack.WordAlloc.removeDeadStructural input2411 value281 value1 value2 = (output2411, value1100, value1) := by
  rw [input2411_def, output2411_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node653_eq]
  try dsimp only
  rw [node2410_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2412 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2411 input652)).val
theorem input2412_def : input2412 = (.seq input2411 input652) := by
  unfold input2412
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2412 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2411 output652)).val
theorem output2412_def : output2412 = (.seq output2411 output652) := by
  unfold output2412
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2412_skip : Flapjack.WordAlloc.isSkip output2412 = false := by
  rw [output2412_def]
  conv => lhs; cbv
  try rfl
theorem node2412_eq : Flapjack.WordAlloc.removeDeadStructural input2412 value280 value1 value2 = (output2412, value1100, value1) := by
  rw [input2412_def, output2412_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node652_eq]
  try dsimp only
  rw [node2411_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2413 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2412 input651)).val
theorem input2413_def : input2413 = (.seq input2412 input651) := by
  unfold input2413
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2413 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2412 output651)).val
theorem output2413_def : output2413 = (.seq output2412 output651) := by
  unfold output2413
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2413_skip : Flapjack.WordAlloc.isSkip output2413 = false := by
  rw [output2413_def]
  conv => lhs; cbv
  try rfl
theorem node2413_eq : Flapjack.WordAlloc.removeDeadStructural input2413 value279 value1 value2 = (output2413, value1100, value1) := by
  rw [input2413_def, output2413_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node651_eq]
  try dsimp only
  rw [node2412_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2414 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2413 input650)).val
theorem input2414_def : input2414 = (.seq input2413 input650) := by
  unfold input2414
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2414 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2413 output650)).val
theorem output2414_def : output2414 = (.seq output2413 output650) := by
  unfold output2414
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2414_skip : Flapjack.WordAlloc.isSkip output2414 = false := by
  rw [output2414_def]
  conv => lhs; cbv
  try rfl
theorem node2414_eq : Flapjack.WordAlloc.removeDeadStructural input2414 value278 value1 value2 = (output2414, value1100, value1) := by
  rw [input2414_def, output2414_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node650_eq]
  try dsimp only
  rw [node2413_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2415 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2414 input649)).val
theorem input2415_def : input2415 = (.seq input2414 input649) := by
  unfold input2415
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2415 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2414 output649)).val
theorem output2415_def : output2415 = (.seq output2414 output649) := by
  unfold output2415
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2415_skip : Flapjack.WordAlloc.isSkip output2415 = false := by
  rw [output2415_def]
  conv => lhs; cbv
  try rfl
theorem node2415_eq : Flapjack.WordAlloc.removeDeadStructural input2415 value277 value1 value2 = (output2415, value1100, value1) := by
  rw [input2415_def, output2415_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node649_eq]
  try dsimp only
  rw [node2414_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2416 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2415 input648)).val
theorem input2416_def : input2416 = (.seq input2415 input648) := by
  unfold input2416
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2416 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2415 output648)).val
theorem output2416_def : output2416 = (.seq output2415 output648) := by
  unfold output2416
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2416_skip : Flapjack.WordAlloc.isSkip output2416 = false := by
  rw [output2416_def]
  conv => lhs; cbv
  try rfl
theorem node2416_eq : Flapjack.WordAlloc.removeDeadStructural input2416 value276 value1 value2 = (output2416, value1100, value1) := by
  rw [input2416_def, output2416_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node648_eq]
  try dsimp only
  rw [node2415_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2417 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2416 input647)).val
theorem input2417_def : input2417 = (.seq input2416 input647) := by
  unfold input2417
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2417 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2416 output647)).val
theorem output2417_def : output2417 = (.seq output2416 output647) := by
  unfold output2417
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2417_skip : Flapjack.WordAlloc.isSkip output2417 = false := by
  rw [output2417_def]
  conv => lhs; cbv
  try rfl
theorem node2417_eq : Flapjack.WordAlloc.removeDeadStructural input2417 value273 value1 value2 = (output2417, value1100, value1) := by
  rw [input2417_def, output2417_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node647_eq]
  try dsimp only
  rw [node2416_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2418 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2417 input642)).val
theorem input2418_def : input2418 = (.seq input2417 input642) := by
  unfold input2418
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2418 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2417 output642)).val
theorem output2418_def : output2418 = (.seq output2417 output642) := by
  unfold output2418
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2418_skip : Flapjack.WordAlloc.isSkip output2418 = false := by
  rw [output2418_def]
  conv => lhs; cbv
  try rfl
theorem node2418_eq : Flapjack.WordAlloc.removeDeadStructural input2418 value270 value1 value2 = (output2418, value1100, value1) := by
  rw [input2418_def, output2418_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node642_eq]
  try dsimp only
  rw [node2417_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2419 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2418 input637)).val
theorem input2419_def : input2419 = (.seq input2418 input637) := by
  unfold input2419
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2419 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2418 output637)).val
theorem output2419_def : output2419 = (.seq output2418 output637) := by
  unfold output2419
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2419_skip : Flapjack.WordAlloc.isSkip output2419 = false := by
  rw [output2419_def]
  conv => lhs; cbv
  try rfl
theorem node2419_eq : Flapjack.WordAlloc.removeDeadStructural input2419 value266 value1 value2 = (output2419, value1100, value1) := by
  rw [input2419_def, output2419_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node637_eq]
  try dsimp only
  rw [node2418_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2420 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2419 input630)).val
theorem input2420_def : input2420 = (.seq input2419 input630) := by
  unfold input2420
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2420 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2419 output630)).val
theorem output2420_def : output2420 = (.seq output2419 output630) := by
  unfold output2420
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2420_skip : Flapjack.WordAlloc.isSkip output2420 = false := by
  rw [output2420_def]
  conv => lhs; cbv
  try rfl
theorem node2420_eq : Flapjack.WordAlloc.removeDeadStructural input2420 value265 value1 value2 = (output2420, value1100, value1) := by
  rw [input2420_def, output2420_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node630_eq]
  try dsimp only
  rw [node2419_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2421 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2420 input629)).val
theorem input2421_def : input2421 = (.seq input2420 input629) := by
  unfold input2421
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2421 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2420 output629)).val
theorem output2421_def : output2421 = (.seq output2420 output629) := by
  unfold output2421
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2421_skip : Flapjack.WordAlloc.isSkip output2421 = false := by
  rw [output2421_def]
  conv => lhs; cbv
  try rfl
theorem node2421_eq : Flapjack.WordAlloc.removeDeadStructural input2421 value264 value1 value2 = (output2421, value1100, value1) := by
  rw [input2421_def, output2421_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node629_eq]
  try dsimp only
  rw [node2420_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2422 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2421 input628)).val
theorem input2422_def : input2422 = (.seq input2421 input628) := by
  unfold input2422
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2422 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2421 output628)).val
theorem output2422_def : output2422 = (.seq output2421 output628) := by
  unfold output2422
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2422_skip : Flapjack.WordAlloc.isSkip output2422 = false := by
  rw [output2422_def]
  conv => lhs; cbv
  try rfl
theorem node2422_eq : Flapjack.WordAlloc.removeDeadStructural input2422 value263 value1 value2 = (output2422, value1100, value1) := by
  rw [input2422_def, output2422_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node628_eq]
  try dsimp only
  rw [node2421_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2423 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2422 input627)).val
theorem input2423_def : input2423 = (.seq input2422 input627) := by
  unfold input2423
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2423 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2422 output627)).val
theorem output2423_def : output2423 = (.seq output2422 output627) := by
  unfold output2423
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2423_skip : Flapjack.WordAlloc.isSkip output2423 = false := by
  rw [output2423_def]
  conv => lhs; cbv
  try rfl
theorem node2423_eq : Flapjack.WordAlloc.removeDeadStructural input2423 value250 value1 value2 = (output2423, value1100, value1) := by
  rw [input2423_def, output2423_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node627_eq]
  try dsimp only
  rw [node2422_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2424 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2423 input602)).val
theorem input2424_def : input2424 = (.seq input2423 input602) := by
  unfold input2424
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2424 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2423 output602)).val
theorem output2424_def : output2424 = (.seq output2423 output602) := by
  unfold output2424
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2424_skip : Flapjack.WordAlloc.isSkip output2424 = false := by
  rw [output2424_def]
  conv => lhs; cbv
  try rfl
theorem node2424_eq : Flapjack.WordAlloc.removeDeadStructural input2424 value237 value1 value2 = (output2424, value1100, value1) := by
  rw [input2424_def, output2424_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node602_eq]
  try dsimp only
  rw [node2423_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2425 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2424 input577)).val
theorem input2425_def : input2425 = (.seq input2424 input577) := by
  unfold input2425
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2425 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2424 output577)).val
theorem output2425_def : output2425 = (.seq output2424 output577) := by
  unfold output2425
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2425_skip : Flapjack.WordAlloc.isSkip output2425 = false := by
  rw [output2425_def]
  conv => lhs; cbv
  try rfl
theorem node2425_eq : Flapjack.WordAlloc.removeDeadStructural input2425 value226 value1 value2 = (output2425, value1100, value1) := by
  rw [input2425_def, output2425_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node577_eq]
  try dsimp only
  rw [node2424_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2426 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2425 input556)).val
theorem input2426_def : input2426 = (.seq input2425 input556) := by
  unfold input2426
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2426 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2425 output556)).val
theorem output2426_def : output2426 = (.seq output2425 output556) := by
  unfold output2426
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2426_skip : Flapjack.WordAlloc.isSkip output2426 = false := by
  rw [output2426_def]
  conv => lhs; cbv
  try rfl
theorem node2426_eq : Flapjack.WordAlloc.removeDeadStructural input2426 value209 value1 value2 = (output2426, value1100, value1) := by
  rw [input2426_def, output2426_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node556_eq]
  try dsimp only
  rw [node2425_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2427 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2426 input523)).val
theorem input2427_def : input2427 = (.seq input2426 input523) := by
  unfold input2427
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2427 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2426 output523)).val
theorem output2427_def : output2427 = (.seq output2426 output523) := by
  unfold output2427
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2427_skip : Flapjack.WordAlloc.isSkip output2427 = false := by
  rw [output2427_def]
  conv => lhs; cbv
  try rfl
theorem node2427_eq : Flapjack.WordAlloc.removeDeadStructural input2427 value194 value1 value2 = (output2427, value1100, value1) := by
  rw [input2427_def, output2427_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node523_eq]
  try dsimp only
  rw [node2426_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2428 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2427 input494)).val
theorem input2428_def : input2428 = (.seq input2427 input494) := by
  unfold input2428
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2428 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2427 output494)).val
theorem output2428_def : output2428 = (.seq output2427 output494) := by
  unfold output2428
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2428_skip : Flapjack.WordAlloc.isSkip output2428 = false := by
  rw [output2428_def]
  conv => lhs; cbv
  try rfl
theorem node2428_eq : Flapjack.WordAlloc.removeDeadStructural input2428 value179 value1 value2 = (output2428, value1100, value1) := by
  rw [input2428_def, output2428_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node494_eq]
  try dsimp only
  rw [node2427_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2429 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2428 input465)).val
theorem input2429_def : input2429 = (.seq input2428 input465) := by
  unfold input2429
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2429 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2428 output465)).val
theorem output2429_def : output2429 = (.seq output2428 output465) := by
  unfold output2429
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2429_skip : Flapjack.WordAlloc.isSkip output2429 = false := by
  rw [output2429_def]
  conv => lhs; cbv
  try rfl
theorem node2429_eq : Flapjack.WordAlloc.removeDeadStructural input2429 value162 value1 value2 = (output2429, value1100, value1) := by
  rw [input2429_def, output2429_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node465_eq]
  try dsimp only
  rw [node2428_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2430 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2429 input432)).val
theorem input2430_def : input2430 = (.seq input2429 input432) := by
  unfold input2430
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2430 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2429 output432)).val
theorem output2430_def : output2430 = (.seq output2429 output432) := by
  unfold output2430
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2430_skip : Flapjack.WordAlloc.isSkip output2430 = false := by
  rw [output2430_def]
  conv => lhs; cbv
  try rfl
theorem node2430_eq : Flapjack.WordAlloc.removeDeadStructural input2430 value145 value1 value2 = (output2430, value1100, value1) := by
  rw [input2430_def, output2430_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node432_eq]
  try dsimp only
  rw [node2429_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2431 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2430 input399)).val
theorem input2431_def : input2431 = (.seq input2430 input399) := by
  unfold input2431
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2431 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2430 output399)).val
theorem output2431_def : output2431 = (.seq output2430 output399) := by
  unfold output2431
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2431_skip : Flapjack.WordAlloc.isSkip output2431 = false := by
  rw [output2431_def]
  conv => lhs; cbv
  try rfl
theorem node2431_eq : Flapjack.WordAlloc.removeDeadStructural input2431 value142 value1 value2 = (output2431, value1100, value1) := by
  rw [input2431_def, output2431_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node399_eq]
  try dsimp only
  rw [node2430_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2432 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2431 input394)).val
theorem input2432_def : input2432 = (.seq input2431 input394) := by
  unfold input2432
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2432 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2431 output394)).val
theorem output2432_def : output2432 = (.seq output2431 output394) := by
  unfold output2432
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2432_skip : Flapjack.WordAlloc.isSkip output2432 = false := by
  rw [output2432_def]
  conv => lhs; cbv
  try rfl
theorem node2432_eq : Flapjack.WordAlloc.removeDeadStructural input2432 value140 value1 value2 = (output2432, value1100, value1) := by
  rw [input2432_def, output2432_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node394_eq]
  try dsimp only
  rw [node2431_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2433 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2432 input391)).val
theorem input2433_def : input2433 = (.seq input2432 input391) := by
  unfold input2433
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2433 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2432 output391)).val
theorem output2433_def : output2433 = (.seq output2432 output391) := by
  unfold output2433
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2433_skip : Flapjack.WordAlloc.isSkip output2433 = false := by
  rw [output2433_def]
  conv => lhs; cbv
  try rfl
theorem node2433_eq : Flapjack.WordAlloc.removeDeadStructural input2433 value137 value1 value2 = (output2433, value1100, value1) := by
  rw [input2433_def, output2433_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node391_eq]
  try dsimp only
  rw [node2432_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2434 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2433 input386)).val
theorem input2434_def : input2434 = (.seq input2433 input386) := by
  unfold input2434
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2434 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2433 output386)).val
theorem output2434_def : output2434 = (.seq output2433 output386) := by
  unfold output2434
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2434_skip : Flapjack.WordAlloc.isSkip output2434 = false := by
  rw [output2434_def]
  conv => lhs; cbv
  try rfl
theorem node2434_eq : Flapjack.WordAlloc.removeDeadStructural input2434 value134 value1 value2 = (output2434, value1100, value1) := by
  rw [input2434_def, output2434_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node386_eq]
  try dsimp only
  rw [node2433_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2435 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2434 input381)).val
theorem input2435_def : input2435 = (.seq input2434 input381) := by
  unfold input2435
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2435 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2434 output381)).val
theorem output2435_def : output2435 = (.seq output2434 output381) := by
  unfold output2435
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2435_skip : Flapjack.WordAlloc.isSkip output2435 = false := by
  rw [output2435_def]
  conv => lhs; cbv
  try rfl
theorem node2435_eq : Flapjack.WordAlloc.removeDeadStructural input2435 value132 value1 value2 = (output2435, value1100, value1) := by
  rw [input2435_def, output2435_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node381_eq]
  try dsimp only
  rw [node2434_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2436 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2435 input378)).val
theorem input2436_def : input2436 = (.seq input2435 input378) := by
  unfold input2436
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2436 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2435 output378)).val
theorem output2436_def : output2436 = (.seq output2435 output378) := by
  unfold output2436
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2436_skip : Flapjack.WordAlloc.isSkip output2436 = false := by
  rw [output2436_def]
  conv => lhs; cbv
  try rfl
theorem node2436_eq : Flapjack.WordAlloc.removeDeadStructural input2436 value129 value1 value2 = (output2436, value1100, value1) := by
  rw [input2436_def, output2436_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node378_eq]
  try dsimp only
  rw [node2435_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2437 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2436 input373)).val
theorem input2437_def : input2437 = (.seq input2436 input373) := by
  unfold input2437
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2437 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2436 output373)).val
theorem output2437_def : output2437 = (.seq output2436 output373) := by
  unfold output2437
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2437_skip : Flapjack.WordAlloc.isSkip output2437 = false := by
  rw [output2437_def]
  conv => lhs; cbv
  try rfl
theorem node2437_eq : Flapjack.WordAlloc.removeDeadStructural input2437 value126 value1 value2 = (output2437, value1100, value1) := by
  rw [input2437_def, output2437_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node373_eq]
  try dsimp only
  rw [node2436_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2438 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2437 input368)).val
theorem input2438_def : input2438 = (.seq input2437 input368) := by
  unfold input2438
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2438 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2437 output368)).val
theorem output2438_def : output2438 = (.seq output2437 output368) := by
  unfold output2438
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2438_skip : Flapjack.WordAlloc.isSkip output2438 = false := by
  rw [output2438_def]
  conv => lhs; cbv
  try rfl
theorem node2438_eq : Flapjack.WordAlloc.removeDeadStructural input2438 value124 value1 value2 = (output2438, value1100, value1) := by
  rw [input2438_def, output2438_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node368_eq]
  try dsimp only
  rw [node2437_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2439 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2438 input365)).val
theorem input2439_def : input2439 = (.seq input2438 input365) := by
  unfold input2439
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2439 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2438 output365)).val
theorem output2439_def : output2439 = (.seq output2438 output365) := by
  unfold output2439
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2439_skip : Flapjack.WordAlloc.isSkip output2439 = false := by
  rw [output2439_def]
  conv => lhs; cbv
  try rfl
theorem node2439_eq : Flapjack.WordAlloc.removeDeadStructural input2439 value121 value1 value2 = (output2439, value1100, value1) := by
  rw [input2439_def, output2439_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node365_eq]
  try dsimp only
  rw [node2438_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2440 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2439 input360)).val
theorem input2440_def : input2440 = (.seq input2439 input360) := by
  unfold input2440
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2440 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2439 output360)).val
theorem output2440_def : output2440 = (.seq output2439 output360) := by
  unfold output2440
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2440_skip : Flapjack.WordAlloc.isSkip output2440 = false := by
  rw [output2440_def]
  conv => lhs; cbv
  try rfl
theorem node2440_eq : Flapjack.WordAlloc.removeDeadStructural input2440 value118 value1 value2 = (output2440, value1100, value1) := by
  rw [input2440_def, output2440_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node360_eq]
  try dsimp only
  rw [node2439_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2441 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2440 input355)).val
theorem input2441_def : input2441 = (.seq input2440 input355) := by
  unfold input2441
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2441 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2440 output355)).val
theorem output2441_def : output2441 = (.seq output2440 output355) := by
  unfold output2441
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2441_skip : Flapjack.WordAlloc.isSkip output2441 = false := by
  rw [output2441_def]
  conv => lhs; cbv
  try rfl
theorem node2441_eq : Flapjack.WordAlloc.removeDeadStructural input2441 value116 value1 value2 = (output2441, value1100, value1) := by
  rw [input2441_def, output2441_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node355_eq]
  try dsimp only
  rw [node2440_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2442 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2441 input352)).val
theorem input2442_def : input2442 = (.seq input2441 input352) := by
  unfold input2442
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2442 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2441 output352)).val
theorem output2442_def : output2442 = (.seq output2441 output352) := by
  unfold output2442
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2442_skip : Flapjack.WordAlloc.isSkip output2442 = false := by
  rw [output2442_def]
  conv => lhs; cbv
  try rfl
theorem node2442_eq : Flapjack.WordAlloc.removeDeadStructural input2442 value113 value1 value2 = (output2442, value1100, value1) := by
  rw [input2442_def, output2442_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node352_eq]
  try dsimp only
  rw [node2441_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2443 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2442 input347)).val
theorem input2443_def : input2443 = (.seq input2442 input347) := by
  unfold input2443
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2443 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2442 output347)).val
theorem output2443_def : output2443 = (.seq output2442 output347) := by
  unfold output2443
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2443_skip : Flapjack.WordAlloc.isSkip output2443 = false := by
  rw [output2443_def]
  conv => lhs; cbv
  try rfl
theorem node2443_eq : Flapjack.WordAlloc.removeDeadStructural input2443 value110 value1 value2 = (output2443, value1100, value1) := by
  rw [input2443_def, output2443_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node347_eq]
  try dsimp only
  rw [node2442_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2444 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2443 input342)).val
theorem input2444_def : input2444 = (.seq input2443 input342) := by
  unfold input2444
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2444 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2443 output342)).val
theorem output2444_def : output2444 = (.seq output2443 output342) := by
  unfold output2444
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2444_skip : Flapjack.WordAlloc.isSkip output2444 = false := by
  rw [output2444_def]
  conv => lhs; cbv
  try rfl
theorem node2444_eq : Flapjack.WordAlloc.removeDeadStructural input2444 value108 value1 value2 = (output2444, value1100, value1) := by
  rw [input2444_def, output2444_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node342_eq]
  try dsimp only
  rw [node2443_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2445 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2444 input339)).val
theorem input2445_def : input2445 = (.seq input2444 input339) := by
  unfold input2445
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2445 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2444 output339)).val
theorem output2445_def : output2445 = (.seq output2444 output339) := by
  unfold output2445
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2445_skip : Flapjack.WordAlloc.isSkip output2445 = false := by
  rw [output2445_def]
  conv => lhs; cbv
  try rfl
theorem node2445_eq : Flapjack.WordAlloc.removeDeadStructural input2445 value105 value1 value2 = (output2445, value1100, value1) := by
  rw [input2445_def, output2445_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node339_eq]
  try dsimp only
  rw [node2444_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2446 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2445 input334)).val
theorem input2446_def : input2446 = (.seq input2445 input334) := by
  unfold input2446
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2446 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2445 output334)).val
theorem output2446_def : output2446 = (.seq output2445 output334) := by
  unfold output2446
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2446_skip : Flapjack.WordAlloc.isSkip output2446 = false := by
  rw [output2446_def]
  conv => lhs; cbv
  try rfl
theorem node2446_eq : Flapjack.WordAlloc.removeDeadStructural input2446 value102 value1 value2 = (output2446, value1100, value1) := by
  rw [input2446_def, output2446_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node334_eq]
  try dsimp only
  rw [node2445_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2447 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2446 input329)).val
theorem input2447_def : input2447 = (.seq input2446 input329) := by
  unfold input2447
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2447 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2446 output329)).val
theorem output2447_def : output2447 = (.seq output2446 output329) := by
  unfold output2447
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2447_skip : Flapjack.WordAlloc.isSkip output2447 = false := by
  rw [output2447_def]
  conv => lhs; cbv
  try rfl
theorem node2447_eq : Flapjack.WordAlloc.removeDeadStructural input2447 value100 value1 value2 = (output2447, value1100, value1) := by
  rw [input2447_def, output2447_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node329_eq]
  try dsimp only
  rw [node2446_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2448 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2447 input326)).val
theorem input2448_def : input2448 = (.seq input2447 input326) := by
  unfold input2448
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2448 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2447 output326)).val
theorem output2448_def : output2448 = (.seq output2447 output326) := by
  unfold output2448
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2448_skip : Flapjack.WordAlloc.isSkip output2448 = false := by
  rw [output2448_def]
  conv => lhs; cbv
  try rfl
theorem node2448_eq : Flapjack.WordAlloc.removeDeadStructural input2448 value97 value1 value2 = (output2448, value1100, value1) := by
  rw [input2448_def, output2448_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node326_eq]
  try dsimp only
  rw [node2447_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2449 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2448 input321)).val
theorem input2449_def : input2449 = (.seq input2448 input321) := by
  unfold input2449
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2449 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2448 output321)).val
theorem output2449_def : output2449 = (.seq output2448 output321) := by
  unfold output2449
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2449_skip : Flapjack.WordAlloc.isSkip output2449 = false := by
  rw [output2449_def]
  conv => lhs; cbv
  try rfl
theorem node2449_eq : Flapjack.WordAlloc.removeDeadStructural input2449 value94 value1 value2 = (output2449, value1100, value1) := by
  rw [input2449_def, output2449_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node321_eq]
  try dsimp only
  rw [node2448_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2450 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2449 input316)).val
theorem input2450_def : input2450 = (.seq input2449 input316) := by
  unfold input2450
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2450 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2449 output316)).val
theorem output2450_def : output2450 = (.seq output2449 output316) := by
  unfold output2450
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2450_skip : Flapjack.WordAlloc.isSkip output2450 = false := by
  rw [output2450_def]
  conv => lhs; cbv
  try rfl
theorem node2450_eq : Flapjack.WordAlloc.removeDeadStructural input2450 value92 value1 value2 = (output2450, value1100, value1) := by
  rw [input2450_def, output2450_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node316_eq]
  try dsimp only
  rw [node2449_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2451 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2450 input313)).val
theorem input2451_def : input2451 = (.seq input2450 input313) := by
  unfold input2451
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2451 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2450 output313)).val
theorem output2451_def : output2451 = (.seq output2450 output313) := by
  unfold output2451
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2451_skip : Flapjack.WordAlloc.isSkip output2451 = false := by
  rw [output2451_def]
  conv => lhs; cbv
  try rfl
theorem node2451_eq : Flapjack.WordAlloc.removeDeadStructural input2451 value89 value1 value2 = (output2451, value1100, value1) := by
  rw [input2451_def, output2451_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node313_eq]
  try dsimp only
  rw [node2450_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2452 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2451 input308)).val
theorem input2452_def : input2452 = (.seq input2451 input308) := by
  unfold input2452
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2452 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2451 output308)).val
theorem output2452_def : output2452 = (.seq output2451 output308) := by
  unfold output2452
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2452_skip : Flapjack.WordAlloc.isSkip output2452 = false := by
  rw [output2452_def]
  conv => lhs; cbv
  try rfl
theorem node2452_eq : Flapjack.WordAlloc.removeDeadStructural input2452 value86 value1 value2 = (output2452, value1100, value1) := by
  rw [input2452_def, output2452_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node308_eq]
  try dsimp only
  rw [node2451_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2453 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2452 input303)).val
theorem input2453_def : input2453 = (.seq input2452 input303) := by
  unfold input2453
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2453 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2452 output303)).val
theorem output2453_def : output2453 = (.seq output2452 output303) := by
  unfold output2453
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2453_skip : Flapjack.WordAlloc.isSkip output2453 = false := by
  rw [output2453_def]
  conv => lhs; cbv
  try rfl
theorem node2453_eq : Flapjack.WordAlloc.removeDeadStructural input2453 value84 value1 value2 = (output2453, value1100, value1) := by
  rw [input2453_def, output2453_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node303_eq]
  try dsimp only
  rw [node2452_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2454 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2453 input300)).val
theorem input2454_def : input2454 = (.seq input2453 input300) := by
  unfold input2454
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2454 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2453 output300)).val
theorem output2454_def : output2454 = (.seq output2453 output300) := by
  unfold output2454
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2454_skip : Flapjack.WordAlloc.isSkip output2454 = false := by
  rw [output2454_def]
  conv => lhs; cbv
  try rfl
theorem node2454_eq : Flapjack.WordAlloc.removeDeadStructural input2454 value80 value1 value2 = (output2454, value1100, value1) := by
  rw [input2454_def, output2454_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node300_eq]
  try dsimp only
  rw [node2453_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2455 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2454 input293)).val
theorem input2455_def : input2455 = (.seq input2454 input293) := by
  unfold input2455
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2455 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2454 output293)).val
theorem output2455_def : output2455 = (.seq output2454 output293) := by
  unfold output2455
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2455_skip : Flapjack.WordAlloc.isSkip output2455 = false := by
  rw [output2455_def]
  conv => lhs; cbv
  try rfl
theorem node2455_eq : Flapjack.WordAlloc.removeDeadStructural input2455 value76 value1 value2 = (output2455, value1100, value1) := by
  rw [input2455_def, output2455_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node293_eq]
  try dsimp only
  rw [node2454_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2456 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2455 input286)).val
theorem input2456_def : input2456 = (.seq input2455 input286) := by
  unfold input2456
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2456 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2455 output286)).val
theorem output2456_def : output2456 = (.seq output2455 output286) := by
  unfold output2456
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2456_skip : Flapjack.WordAlloc.isSkip output2456 = false := by
  rw [output2456_def]
  conv => lhs; cbv
  try rfl
theorem node2456_eq : Flapjack.WordAlloc.removeDeadStructural input2456 value72 value1 value2 = (output2456, value1100, value1) := by
  rw [input2456_def, output2456_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node286_eq]
  try dsimp only
  rw [node2455_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2457 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2456 input279)).val
theorem input2457_def : input2457 = (.seq input2456 input279) := by
  unfold input2457
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2457 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2456 output279)).val
theorem output2457_def : output2457 = (.seq output2456 output279) := by
  unfold output2457
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2457_skip : Flapjack.WordAlloc.isSkip output2457 = false := by
  rw [output2457_def]
  conv => lhs; cbv
  try rfl
theorem node2457_eq : Flapjack.WordAlloc.removeDeadStructural input2457 value68 value1 value2 = (output2457, value1100, value1) := by
  rw [input2457_def, output2457_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node279_eq]
  try dsimp only
  rw [node2456_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2458 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2457 input272)).val
theorem input2458_def : input2458 = (.seq input2457 input272) := by
  unfold input2458
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2458 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2457 output272)).val
theorem output2458_def : output2458 = (.seq output2457 output272) := by
  unfold output2458
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2458_skip : Flapjack.WordAlloc.isSkip output2458 = false := by
  rw [output2458_def]
  conv => lhs; cbv
  try rfl
theorem node2458_eq : Flapjack.WordAlloc.removeDeadStructural input2458 value68 value1 value2 = (output2458, value1100, value1) := by
  rw [input2458_def, output2458_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node272_eq]
  try dsimp only
  rw [node2457_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2459 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2458 input271)).val
theorem input2459_def : input2459 = (.seq input2458 input271) := by
  unfold input2459
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2459 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2458 output271)).val
theorem output2459_def : output2459 = (.seq output2458 output271) := by
  unfold output2459
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2459_skip : Flapjack.WordAlloc.isSkip output2459 = false := by
  rw [output2459_def]
  conv => lhs; cbv
  try rfl
theorem node2459_eq : Flapjack.WordAlloc.removeDeadStructural input2459 value43 value1 value2 = (output2459, value1100, value1) := by
  rw [input2459_def, output2459_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node271_eq]
  try dsimp only
  rw [node2458_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2460 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2459 input155)).val
theorem input2460_def : input2460 = (.seq input2459 input155) := by
  unfold input2460
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2460 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2459 output155)).val
theorem output2460_def : output2460 = (.seq output2459 output155) := by
  unfold output2460
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2460_skip : Flapjack.WordAlloc.isSkip output2460 = false := by
  rw [output2460_def]
  conv => lhs; cbv
  try rfl
theorem node2460_eq : Flapjack.WordAlloc.removeDeadStructural input2460 value43 value1 value2 = (output2460, value1100, value1) := by
  rw [input2460_def, output2460_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node155_eq]
  try dsimp only
  rw [node2459_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2461 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2460 input154)).val
theorem input2461_def : input2461 = (.seq input2460 input154) := by
  unfold input2461
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2461 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2460 output154)).val
theorem output2461_def : output2461 = (.seq output2460 output154) := by
  unfold output2461
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2461_skip : Flapjack.WordAlloc.isSkip output2461 = false := by
  rw [output2461_def]
  conv => lhs; cbv
  try rfl
theorem node2461_eq : Flapjack.WordAlloc.removeDeadStructural input2461 value43 value1 value2 = (output2461, value1100, value1) := by
  rw [input2461_def, output2461_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node154_eq]
  try dsimp only
  rw [node2460_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2462 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2461 input153)).val
theorem input2462_def : input2462 = (.seq input2461 input153) := by
  unfold input2462
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2462 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2461 output153)).val
theorem output2462_def : output2462 = (.seq output2461 output153) := by
  unfold output2462
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2462_skip : Flapjack.WordAlloc.isSkip output2462 = false := by
  rw [output2462_def]
  conv => lhs; cbv
  try rfl
theorem node2462_eq : Flapjack.WordAlloc.removeDeadStructural input2462 value8 value1 value2 = (output2462, value1100, value1) := by
  rw [input2462_def, output2462_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node153_eq]
  try dsimp only
  rw [node2461_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2463 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2462 input7)).val
theorem input2463_def : input2463 = (.seq input2462 input7) := by
  unfold input2463
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2463 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2462 output7)).val
theorem output2463_def : output2463 = (.seq output2462 output7) := by
  unfold output2463
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2463_skip : Flapjack.WordAlloc.isSkip output2463 = false := by
  rw [output2463_def]
  conv => lhs; cbv
  try rfl
theorem node2463_eq : Flapjack.WordAlloc.removeDeadStructural input2463 value8 value1 value2 = (output2463, value1100, value1) := by
  rw [input2463_def, output2463_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node7_eq]
  try dsimp only
  rw [node2462_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2464 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2463 input6)).val
theorem input2464_def : input2464 = (.seq input2463 input6) := by
  unfold input2464
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2464 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2463 output6)).val
theorem output2464_def : output2464 = (.seq output2463 output6) := by
  unfold output2464
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2464_skip : Flapjack.WordAlloc.isSkip output2464 = false := by
  rw [output2464_def]
  conv => lhs; cbv
  try rfl
theorem node2464_eq : Flapjack.WordAlloc.removeDeadStructural input2464 value7 value1 value2 = (output2464, value1100, value1) := by
  rw [input2464_def, output2464_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6_eq]
  try dsimp only
  rw [node2463_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2465 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2464 input5)).val
theorem input2465_def : input2465 = (.seq input2464 input5) := by
  unfold input2465
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2465 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2464 output5)).val
theorem output2465_def : output2465 = (.seq output2464 output5) := by
  unfold output2465
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2465_skip : Flapjack.WordAlloc.isSkip output2465 = false := by
  rw [output2465_def]
  conv => lhs; cbv
  try rfl
theorem node2465_eq : Flapjack.WordAlloc.removeDeadStructural input2465 value6 value1 value2 = (output2465, value1100, value1) := by
  rw [input2465_def, output2465_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5_eq]
  try dsimp only
  rw [node2464_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2466 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2465 input4)).val
theorem input2466_def : input2466 = (.seq input2465 input4) := by
  unfold input2466
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2466 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2465 output4)).val
theorem output2466_def : output2466 = (.seq output2465 output4) := by
  unfold output2466
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2466_skip : Flapjack.WordAlloc.isSkip output2466 = false := by
  rw [output2466_def]
  conv => lhs; cbv
  try rfl
theorem node2466_eq : Flapjack.WordAlloc.removeDeadStructural input2466 value5 value1 value2 = (output2466, value1100, value1) := by
  rw [input2466_def, output2466_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node4_eq]
  try dsimp only
  rw [node2465_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2467 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2466 input3)).val
theorem input2467_def : input2467 = (.seq input2466 input3) := by
  unfold input2467
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2467 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2466 output3)).val
theorem output2467_def : output2467 = (.seq output2466 output3) := by
  unfold output2467
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2467_skip : Flapjack.WordAlloc.isSkip output2467 = false := by
  rw [output2467_def]
  conv => lhs; cbv
  try rfl
theorem node2467_eq : Flapjack.WordAlloc.removeDeadStructural input2467 value4 value1 value2 = (output2467, value1100, value1) := by
  rw [input2467_def, output2467_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3_eq]
  try dsimp only
  rw [node2466_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2468 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2467 input2)).val
theorem input2468_def : input2468 = (.seq input2467 input2) := by
  unfold input2468
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2468 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2467 output2)).val
theorem output2468_def : output2468 = (.seq output2467 output2) := by
  unfold output2468
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2468_skip : Flapjack.WordAlloc.isSkip output2468 = false := by
  rw [output2468_def]
  conv => lhs; cbv
  try rfl
theorem node2468_eq : Flapjack.WordAlloc.removeDeadStructural input2468 value0 value1 value2 = (output2468, value1100, value1) := by
  rw [input2468_def, output2468_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2_eq]
  try dsimp only
  rw [node2467_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2469 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(141, 0), (145, 2), (149, 4), (153, 6), (157, 8)])).val
theorem input2469_def : input2469 = (Flapjack.WordLangProgHOL.move 1 [(141, 0), (145, 2), (149, 4), (153, 6), (157, 8)]) := by
  unfold input2469
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2469 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(141, 0), (145, 2), (149, 4), (153, 6), (157, 8)])).val
theorem output2469_def : output2469 = (Flapjack.WordLangProgHOL.move 1 [(141, 0), (145, 2), (149, 4), (153, 6), (157, 8)]) := by
  unfold output2469
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2469_skip : Flapjack.WordAlloc.isSkip output2469 = false := by
  rw [output2469_def]
  conv => lhs; cbv
  try rfl
theorem node2469_eq : Flapjack.WordAlloc.removeDeadStructural input2469 value1100 value1 value2 = (output2469, value3, value1) := by
  rw [input2469_def, output2469_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2470 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2469 input2468)).val
theorem input2470_def : input2470 = (.seq input2469 input2468) := by
  unfold input2470
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2470 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2469 output2468)).val
theorem output2470_def : output2470 = (.seq output2469 output2468) := by
  unfold output2470
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2470_skip : Flapjack.WordAlloc.isSkip output2470 = false := by
  rw [output2470_def]
  conv => lhs; cbv
  try rfl
theorem node2470_eq : Flapjack.WordAlloc.removeDeadStructural input2470 value0 value1 value2 = (output2470, value3, value1) := by
  rw [input2470_def, output2470_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node2468_eq]
  try dsimp only
  rw [node2469_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node2470_eq
end InitECandidate.Proofs.DeadStages647
