import InitECandidate.Proofs.DeadStages783.Chunk008
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadBranchComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages783
@[irreducible, cbv_opaque] def input2304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2303 input1866)).val
theorem input2304_def : input2304 = (.seq input2303 input1866) := by
  unfold input2304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2303 output1866)).val
theorem output2304_def : output2304 = (.seq output2303 output1866) := by
  unfold output2304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2304_skip : Flapjack.WordAlloc.isSkip output2304 = false := by
  rw [output2304_def]
  conv => lhs; cbv
  try rfl
theorem node2304_eq : Flapjack.WordAlloc.removeDeadStructural input2304 value979 value1 value2 = (output2304, value1162, value1) := by
  rw [input2304_def, output2304_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1866_eq]
  try dsimp only
  rw [node2303_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2304 input1865)).val
theorem input2305_def : input2305 = (.seq input2304 input1865) := by
  unfold input2305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2304 output1865)).val
theorem output2305_def : output2305 = (.seq output2304 output1865) := by
  unfold output2305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2305_skip : Flapjack.WordAlloc.isSkip output2305 = false := by
  rw [output2305_def]
  conv => lhs; cbv
  try rfl
theorem node2305_eq : Flapjack.WordAlloc.removeDeadStructural input2305 value978 value1 value2 = (output2305, value1162, value1) := by
  rw [input2305_def, output2305_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1865_eq]
  try dsimp only
  rw [node2304_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2305 input1864)).val
theorem input2306_def : input2306 = (.seq input2305 input1864) := by
  unfold input2306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2305 output1864)).val
theorem output2306_def : output2306 = (.seq output2305 output1864) := by
  unfold output2306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2306_skip : Flapjack.WordAlloc.isSkip output2306 = false := by
  rw [output2306_def]
  conv => lhs; cbv
  try rfl
theorem node2306_eq : Flapjack.WordAlloc.removeDeadStructural input2306 value977 value1 value2 = (output2306, value1162, value1) := by
  rw [input2306_def, output2306_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1864_eq]
  try dsimp only
  rw [node2305_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2306 input1863)).val
theorem input2307_def : input2307 = (.seq input2306 input1863) := by
  unfold input2307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2306)).val
theorem output2307_def : output2307 = (output2306) := by
  unfold output2307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2307_skip : Flapjack.WordAlloc.isSkip output2307 = false := by
  rw [output2307_def]
  conv => lhs; cbv
  try rfl
theorem node2307_eq : Flapjack.WordAlloc.removeDeadStructural input2307 value977 value1 value2 = (output2307, value1162, value1) := by
  rw [input2307_def, output2307_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1863_eq]
  try dsimp only
  rw [node2306_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2307 input1862)).val
theorem input2308_def : input2308 = (.seq input2307 input1862) := by
  unfold input2308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2307)).val
theorem output2308_def : output2308 = (output2307) := by
  unfold output2308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2308_skip : Flapjack.WordAlloc.isSkip output2308 = false := by
  rw [output2308_def]
  conv => lhs; cbv
  try rfl
theorem node2308_eq : Flapjack.WordAlloc.removeDeadStructural input2308 value977 value1 value2 = (output2308, value1162, value1) := by
  rw [input2308_def, output2308_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1862_eq]
  try dsimp only
  rw [node2307_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2308 input1861)).val
theorem input2309_def : input2309 = (.seq input2308 input1861) := by
  unfold input2309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2308)).val
theorem output2309_def : output2309 = (output2308) := by
  unfold output2309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2309_skip : Flapjack.WordAlloc.isSkip output2309 = false := by
  rw [output2309_def]
  conv => lhs; cbv
  try rfl
theorem node2309_eq : Flapjack.WordAlloc.removeDeadStructural input2309 value977 value1 value2 = (output2309, value1162, value1) := by
  rw [input2309_def, output2309_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1861_eq]
  try dsimp only
  rw [node2308_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2309 input1860)).val
theorem input2310_def : input2310 = (.seq input2309 input1860) := by
  unfold input2310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2309)).val
theorem output2310_def : output2310 = (output2309) := by
  unfold output2310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2310_skip : Flapjack.WordAlloc.isSkip output2310 = false := by
  rw [output2310_def]
  conv => lhs; cbv
  try rfl
theorem node2310_eq : Flapjack.WordAlloc.removeDeadStructural input2310 value977 value1 value2 = (output2310, value1162, value1) := by
  rw [input2310_def, output2310_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1860_eq]
  try dsimp only
  rw [node2309_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2310 input1859)).val
theorem input2311_def : input2311 = (.seq input2310 input1859) := by
  unfold input2311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2310)).val
theorem output2311_def : output2311 = (output2310) := by
  unfold output2311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2311_skip : Flapjack.WordAlloc.isSkip output2311 = false := by
  rw [output2311_def]
  conv => lhs; cbv
  try rfl
theorem node2311_eq : Flapjack.WordAlloc.removeDeadStructural input2311 value977 value1 value2 = (output2311, value1162, value1) := by
  rw [input2311_def, output2311_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1859_eq]
  try dsimp only
  rw [node2310_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2311 input1858)).val
theorem input2312_def : input2312 = (.seq input2311 input1858) := by
  unfold input2312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2311)).val
theorem output2312_def : output2312 = (output2311) := by
  unfold output2312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2312_skip : Flapjack.WordAlloc.isSkip output2312 = false := by
  rw [output2312_def]
  conv => lhs; cbv
  try rfl
theorem node2312_eq : Flapjack.WordAlloc.removeDeadStructural input2312 value977 value1 value2 = (output2312, value1162, value1) := by
  rw [input2312_def, output2312_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1858_eq]
  try dsimp only
  rw [node2311_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2312 input1857)).val
theorem input2313_def : input2313 = (.seq input2312 input1857) := by
  unfold input2313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2312 output1857)).val
theorem output2313_def : output2313 = (.seq output2312 output1857) := by
  unfold output2313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2313_skip : Flapjack.WordAlloc.isSkip output2313 = false := by
  rw [output2313_def]
  conv => lhs; cbv
  try rfl
theorem node2313_eq : Flapjack.WordAlloc.removeDeadStructural input2313 value976 value1 value2 = (output2313, value1162, value1) := by
  rw [input2313_def, output2313_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1857_eq]
  try dsimp only
  rw [node2312_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2313 input1856)).val
theorem input2314_def : input2314 = (.seq input2313 input1856) := by
  unfold input2314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2313 output1856)).val
theorem output2314_def : output2314 = (.seq output2313 output1856) := by
  unfold output2314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2314_skip : Flapjack.WordAlloc.isSkip output2314 = false := by
  rw [output2314_def]
  conv => lhs; cbv
  try rfl
theorem node2314_eq : Flapjack.WordAlloc.removeDeadStructural input2314 value975 value1 value2 = (output2314, value1162, value1) := by
  rw [input2314_def, output2314_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1856_eq]
  try dsimp only
  rw [node2313_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2314 input1855)).val
theorem input2315_def : input2315 = (.seq input2314 input1855) := by
  unfold input2315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2314 output1855)).val
theorem output2315_def : output2315 = (.seq output2314 output1855) := by
  unfold output2315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2315_skip : Flapjack.WordAlloc.isSkip output2315 = false := by
  rw [output2315_def]
  conv => lhs; cbv
  try rfl
theorem node2315_eq : Flapjack.WordAlloc.removeDeadStructural input2315 value974 value1 value2 = (output2315, value1162, value1) := by
  rw [input2315_def, output2315_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1855_eq]
  try dsimp only
  rw [node2314_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2315 input1854)).val
theorem input2316_def : input2316 = (.seq input2315 input1854) := by
  unfold input2316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2315 output1854)).val
theorem output2316_def : output2316 = (.seq output2315 output1854) := by
  unfold output2316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2316_skip : Flapjack.WordAlloc.isSkip output2316 = false := by
  rw [output2316_def]
  conv => lhs; cbv
  try rfl
theorem node2316_eq : Flapjack.WordAlloc.removeDeadStructural input2316 value973 value1 value2 = (output2316, value1162, value1) := by
  rw [input2316_def, output2316_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1854_eq]
  try dsimp only
  rw [node2315_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2316 input1853)).val
theorem input2317_def : input2317 = (.seq input2316 input1853) := by
  unfold input2317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2316 output1853)).val
theorem output2317_def : output2317 = (.seq output2316 output1853) := by
  unfold output2317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2317_skip : Flapjack.WordAlloc.isSkip output2317 = false := by
  rw [output2317_def]
  conv => lhs; cbv
  try rfl
theorem node2317_eq : Flapjack.WordAlloc.removeDeadStructural input2317 value972 value1 value2 = (output2317, value1162, value1) := by
  rw [input2317_def, output2317_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1853_eq]
  try dsimp only
  rw [node2316_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2317 input1852)).val
theorem input2318_def : input2318 = (.seq input2317 input1852) := by
  unfold input2318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2317 output1852)).val
theorem output2318_def : output2318 = (.seq output2317 output1852) := by
  unfold output2318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2318_skip : Flapjack.WordAlloc.isSkip output2318 = false := by
  rw [output2318_def]
  conv => lhs; cbv
  try rfl
theorem node2318_eq : Flapjack.WordAlloc.removeDeadStructural input2318 value971 value1 value2 = (output2318, value1162, value1) := by
  rw [input2318_def, output2318_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1852_eq]
  try dsimp only
  rw [node2317_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2318 input1851)).val
theorem input2319_def : input2319 = (.seq input2318 input1851) := by
  unfold input2319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2318 output1851)).val
theorem output2319_def : output2319 = (.seq output2318 output1851) := by
  unfold output2319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2319_skip : Flapjack.WordAlloc.isSkip output2319 = false := by
  rw [output2319_def]
  conv => lhs; cbv
  try rfl
theorem node2319_eq : Flapjack.WordAlloc.removeDeadStructural input2319 value968 value1 value2 = (output2319, value1162, value1) := by
  rw [input2319_def, output2319_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1851_eq]
  try dsimp only
  rw [node2318_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2319 input1846)).val
theorem input2320_def : input2320 = (.seq input2319 input1846) := by
  unfold input2320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2319 output1846)).val
theorem output2320_def : output2320 = (.seq output2319 output1846) := by
  unfold output2320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2320_skip : Flapjack.WordAlloc.isSkip output2320 = false := by
  rw [output2320_def]
  conv => lhs; cbv
  try rfl
theorem node2320_eq : Flapjack.WordAlloc.removeDeadStructural input2320 value968 value1 value2 = (output2320, value1162, value1) := by
  rw [input2320_def, output2320_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1846_eq]
  try dsimp only
  rw [node2319_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2320 input1845)).val
theorem input2321_def : input2321 = (.seq input2320 input1845) := by
  unfold input2321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2320 output1845)).val
theorem output2321_def : output2321 = (.seq output2320 output1845) := by
  unfold output2321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2321_skip : Flapjack.WordAlloc.isSkip output2321 = false := by
  rw [output2321_def]
  conv => lhs; cbv
  try rfl
theorem node2321_eq : Flapjack.WordAlloc.removeDeadStructural input2321 value967 value1 value2 = (output2321, value1162, value1) := by
  rw [input2321_def, output2321_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1845_eq]
  try dsimp only
  rw [node2320_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2321 input1844)).val
theorem input2322_def : input2322 = (.seq input2321 input1844) := by
  unfold input2322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2321 output1844)).val
theorem output2322_def : output2322 = (.seq output2321 output1844) := by
  unfold output2322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2322_skip : Flapjack.WordAlloc.isSkip output2322 = false := by
  rw [output2322_def]
  conv => lhs; cbv
  try rfl
theorem node2322_eq : Flapjack.WordAlloc.removeDeadStructural input2322 value966 value1 value2 = (output2322, value1162, value1) := by
  rw [input2322_def, output2322_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1844_eq]
  try dsimp only
  rw [node2321_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2322 input1843)).val
theorem input2323_def : input2323 = (.seq input2322 input1843) := by
  unfold input2323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2322 output1843)).val
theorem output2323_def : output2323 = (.seq output2322 output1843) := by
  unfold output2323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2323_skip : Flapjack.WordAlloc.isSkip output2323 = false := by
  rw [output2323_def]
  conv => lhs; cbv
  try rfl
theorem node2323_eq : Flapjack.WordAlloc.removeDeadStructural input2323 value961 value1 value2 = (output2323, value1162, value1) := by
  rw [input2323_def, output2323_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1843_eq]
  try dsimp only
  rw [node2322_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2323 input1816)).val
theorem input2324_def : input2324 = (.seq input2323 input1816) := by
  unfold input2324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2323 output1816)).val
theorem output2324_def : output2324 = (.seq output2323 output1816) := by
  unfold output2324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2324_skip : Flapjack.WordAlloc.isSkip output2324 = false := by
  rw [output2324_def]
  conv => lhs; cbv
  try rfl
theorem node2324_eq : Flapjack.WordAlloc.removeDeadStructural input2324 value961 value1 value2 = (output2324, value1162, value1) := by
  rw [input2324_def, output2324_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1816_eq]
  try dsimp only
  rw [node2323_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2324 input1815)).val
theorem input2325_def : input2325 = (.seq input2324 input1815) := by
  unfold input2325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2324 output1815)).val
theorem output2325_def : output2325 = (.seq output2324 output1815) := by
  unfold output2325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2325_skip : Flapjack.WordAlloc.isSkip output2325 = false := by
  rw [output2325_def]
  conv => lhs; cbv
  try rfl
theorem node2325_eq : Flapjack.WordAlloc.removeDeadStructural input2325 value960 value1 value2 = (output2325, value1162, value1) := by
  rw [input2325_def, output2325_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1815_eq]
  try dsimp only
  rw [node2324_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2325 input1814)).val
theorem input2326_def : input2326 = (.seq input2325 input1814) := by
  unfold input2326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2325 output1814)).val
theorem output2326_def : output2326 = (.seq output2325 output1814) := by
  unfold output2326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2326_skip : Flapjack.WordAlloc.isSkip output2326 = false := by
  rw [output2326_def]
  conv => lhs; cbv
  try rfl
theorem node2326_eq : Flapjack.WordAlloc.removeDeadStructural input2326 value959 value1 value2 = (output2326, value1162, value1) := by
  rw [input2326_def, output2326_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1814_eq]
  try dsimp only
  rw [node2325_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2326 input1813)).val
theorem input2327_def : input2327 = (.seq input2326 input1813) := by
  unfold input2327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2326 output1813)).val
theorem output2327_def : output2327 = (.seq output2326 output1813) := by
  unfold output2327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2327_skip : Flapjack.WordAlloc.isSkip output2327 = false := by
  rw [output2327_def]
  conv => lhs; cbv
  try rfl
theorem node2327_eq : Flapjack.WordAlloc.removeDeadStructural input2327 value954 value1 value2 = (output2327, value1162, value1) := by
  rw [input2327_def, output2327_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1813_eq]
  try dsimp only
  rw [node2326_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2327 input1786)).val
theorem input2328_def : input2328 = (.seq input2327 input1786) := by
  unfold input2328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2327 output1786)).val
theorem output2328_def : output2328 = (.seq output2327 output1786) := by
  unfold output2328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2328_skip : Flapjack.WordAlloc.isSkip output2328 = false := by
  rw [output2328_def]
  conv => lhs; cbv
  try rfl
theorem node2328_eq : Flapjack.WordAlloc.removeDeadStructural input2328 value954 value1 value2 = (output2328, value1162, value1) := by
  rw [input2328_def, output2328_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1786_eq]
  try dsimp only
  rw [node2327_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2328 input1785)).val
theorem input2329_def : input2329 = (.seq input2328 input1785) := by
  unfold input2329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2328 output1785)).val
theorem output2329_def : output2329 = (.seq output2328 output1785) := by
  unfold output2329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2329_skip : Flapjack.WordAlloc.isSkip output2329 = false := by
  rw [output2329_def]
  conv => lhs; cbv
  try rfl
theorem node2329_eq : Flapjack.WordAlloc.removeDeadStructural input2329 value951 value1 value2 = (output2329, value1162, value1) := by
  rw [input2329_def, output2329_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1785_eq]
  try dsimp only
  rw [node2328_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2329 input1780)).val
theorem input2330_def : input2330 = (.seq input2329 input1780) := by
  unfold input2330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2329 output1780)).val
theorem output2330_def : output2330 = (.seq output2329 output1780) := by
  unfold output2330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2330_skip : Flapjack.WordAlloc.isSkip output2330 = false := by
  rw [output2330_def]
  conv => lhs; cbv
  try rfl
theorem node2330_eq : Flapjack.WordAlloc.removeDeadStructural input2330 value517 value1 value2 = (output2330, value1162, value1) := by
  rw [input2330_def, output2330_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1780_eq]
  try dsimp only
  rw [node2329_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2330 input779)).val
theorem input2331_def : input2331 = (.seq input2330 input779) := by
  unfold input2331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2330 output779)).val
theorem output2331_def : output2331 = (.seq output2330 output779) := by
  unfold output2331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2331_skip : Flapjack.WordAlloc.isSkip output2331 = false := by
  rw [output2331_def]
  conv => lhs; cbv
  try rfl
theorem node2331_eq : Flapjack.WordAlloc.removeDeadStructural input2331 value517 value1 value2 = (output2331, value1162, value1) := by
  rw [input2331_def, output2331_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node779_eq]
  try dsimp only
  rw [node2330_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2331 input778)).val
theorem input2332_def : input2332 = (.seq input2331 input778) := by
  unfold input2332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2331 output778)).val
theorem output2332_def : output2332 = (.seq output2331 output778) := by
  unfold output2332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2332_skip : Flapjack.WordAlloc.isSkip output2332 = false := by
  rw [output2332_def]
  conv => lhs; cbv
  try rfl
theorem node2332_eq : Flapjack.WordAlloc.removeDeadStructural input2332 value516 value1 value2 = (output2332, value1162, value1) := by
  rw [input2332_def, output2332_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node778_eq]
  try dsimp only
  rw [node2331_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2332 input777)).val
theorem input2333_def : input2333 = (.seq input2332 input777) := by
  unfold input2333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2332 output777)).val
theorem output2333_def : output2333 = (.seq output2332 output777) := by
  unfold output2333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2333_skip : Flapjack.WordAlloc.isSkip output2333 = false := by
  rw [output2333_def]
  conv => lhs; cbv
  try rfl
theorem node2333_eq : Flapjack.WordAlloc.removeDeadStructural input2333 value515 value1 value2 = (output2333, value1162, value1) := by
  rw [input2333_def, output2333_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node777_eq]
  try dsimp only
  rw [node2332_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2333 input776)).val
theorem input2334_def : input2334 = (.seq input2333 input776) := by
  unfold input2334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2333 output776)).val
theorem output2334_def : output2334 = (.seq output2333 output776) := by
  unfold output2334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2334_skip : Flapjack.WordAlloc.isSkip output2334 = false := by
  rw [output2334_def]
  conv => lhs; cbv
  try rfl
theorem node2334_eq : Flapjack.WordAlloc.removeDeadStructural input2334 value514 value1 value2 = (output2334, value1162, value1) := by
  rw [input2334_def, output2334_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node776_eq]
  try dsimp only
  rw [node2333_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2334 input775)).val
theorem input2335_def : input2335 = (.seq input2334 input775) := by
  unfold input2335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2334 output775)).val
theorem output2335_def : output2335 = (.seq output2334 output775) := by
  unfold output2335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2335_skip : Flapjack.WordAlloc.isSkip output2335 = false := by
  rw [output2335_def]
  conv => lhs; cbv
  try rfl
theorem node2335_eq : Flapjack.WordAlloc.removeDeadStructural input2335 value513 value1 value2 = (output2335, value1162, value1) := by
  rw [input2335_def, output2335_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node775_eq]
  try dsimp only
  rw [node2334_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2335 input774)).val
theorem input2336_def : input2336 = (.seq input2335 input774) := by
  unfold input2336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2335 output774)).val
theorem output2336_def : output2336 = (.seq output2335 output774) := by
  unfold output2336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2336_skip : Flapjack.WordAlloc.isSkip output2336 = false := by
  rw [output2336_def]
  conv => lhs; cbv
  try rfl
theorem node2336_eq : Flapjack.WordAlloc.removeDeadStructural input2336 value512 value1 value2 = (output2336, value1162, value1) := by
  rw [input2336_def, output2336_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node774_eq]
  try dsimp only
  rw [node2335_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2336 input773)).val
theorem input2337_def : input2337 = (.seq input2336 input773) := by
  unfold input2337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2336 output773)).val
theorem output2337_def : output2337 = (.seq output2336 output773) := by
  unfold output2337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2337_skip : Flapjack.WordAlloc.isSkip output2337 = false := by
  rw [output2337_def]
  conv => lhs; cbv
  try rfl
theorem node2337_eq : Flapjack.WordAlloc.removeDeadStructural input2337 value511 value1 value2 = (output2337, value1162, value1) := by
  rw [input2337_def, output2337_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node773_eq]
  try dsimp only
  rw [node2336_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2337 input772)).val
theorem input2338_def : input2338 = (.seq input2337 input772) := by
  unfold input2338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2337 output772)).val
theorem output2338_def : output2338 = (.seq output2337 output772) := by
  unfold output2338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2338_skip : Flapjack.WordAlloc.isSkip output2338 = false := by
  rw [output2338_def]
  conv => lhs; cbv
  try rfl
theorem node2338_eq : Flapjack.WordAlloc.removeDeadStructural input2338 value510 value1 value2 = (output2338, value1162, value1) := by
  rw [input2338_def, output2338_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node772_eq]
  try dsimp only
  rw [node2337_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2338 input771)).val
theorem input2339_def : input2339 = (.seq input2338 input771) := by
  unfold input2339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2338 output771)).val
theorem output2339_def : output2339 = (.seq output2338 output771) := by
  unfold output2339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2339_skip : Flapjack.WordAlloc.isSkip output2339 = false := by
  rw [output2339_def]
  conv => lhs; cbv
  try rfl
theorem node2339_eq : Flapjack.WordAlloc.removeDeadStructural input2339 value509 value1 value2 = (output2339, value1162, value1) := by
  rw [input2339_def, output2339_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node771_eq]
  try dsimp only
  rw [node2338_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2339 input770)).val
theorem input2340_def : input2340 = (.seq input2339 input770) := by
  unfold input2340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2339 output770)).val
theorem output2340_def : output2340 = (.seq output2339 output770) := by
  unfold output2340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2340_skip : Flapjack.WordAlloc.isSkip output2340 = false := by
  rw [output2340_def]
  conv => lhs; cbv
  try rfl
theorem node2340_eq : Flapjack.WordAlloc.removeDeadStructural input2340 value508 value1 value2 = (output2340, value1162, value1) := by
  rw [input2340_def, output2340_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node770_eq]
  try dsimp only
  rw [node2339_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2340 input769)).val
theorem input2341_def : input2341 = (.seq input2340 input769) := by
  unfold input2341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2340 output769)).val
theorem output2341_def : output2341 = (.seq output2340 output769) := by
  unfold output2341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2341_skip : Flapjack.WordAlloc.isSkip output2341 = false := by
  rw [output2341_def]
  conv => lhs; cbv
  try rfl
theorem node2341_eq : Flapjack.WordAlloc.removeDeadStructural input2341 value507 value1 value2 = (output2341, value1162, value1) := by
  rw [input2341_def, output2341_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node769_eq]
  try dsimp only
  rw [node2340_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2341 input768)).val
theorem input2342_def : input2342 = (.seq input2341 input768) := by
  unfold input2342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2341 output768)).val
theorem output2342_def : output2342 = (.seq output2341 output768) := by
  unfold output2342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2342_skip : Flapjack.WordAlloc.isSkip output2342 = false := by
  rw [output2342_def]
  conv => lhs; cbv
  try rfl
theorem node2342_eq : Flapjack.WordAlloc.removeDeadStructural input2342 value506 value1 value2 = (output2342, value1162, value1) := by
  rw [input2342_def, output2342_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node768_eq]
  try dsimp only
  rw [node2341_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2342 input767)).val
theorem input2343_def : input2343 = (.seq input2342 input767) := by
  unfold input2343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2342 output767)).val
theorem output2343_def : output2343 = (.seq output2342 output767) := by
  unfold output2343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2343_skip : Flapjack.WordAlloc.isSkip output2343 = false := by
  rw [output2343_def]
  conv => lhs; cbv
  try rfl
theorem node2343_eq : Flapjack.WordAlloc.removeDeadStructural input2343 value505 value1 value2 = (output2343, value1162, value1) := by
  rw [input2343_def, output2343_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node767_eq]
  try dsimp only
  rw [node2342_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2343 input766)).val
theorem input2344_def : input2344 = (.seq input2343 input766) := by
  unfold input2344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2343 output766)).val
theorem output2344_def : output2344 = (.seq output2343 output766) := by
  unfold output2344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2344_skip : Flapjack.WordAlloc.isSkip output2344 = false := by
  rw [output2344_def]
  conv => lhs; cbv
  try rfl
theorem node2344_eq : Flapjack.WordAlloc.removeDeadStructural input2344 value502 value1 value2 = (output2344, value1162, value1) := by
  rw [input2344_def, output2344_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node766_eq]
  try dsimp only
  rw [node2343_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2344 input761)).val
theorem input2345_def : input2345 = (.seq input2344 input761) := by
  unfold input2345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2344 output761)).val
theorem output2345_def : output2345 = (.seq output2344 output761) := by
  unfold output2345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2345_skip : Flapjack.WordAlloc.isSkip output2345 = false := by
  rw [output2345_def]
  conv => lhs; cbv
  try rfl
theorem node2345_eq : Flapjack.WordAlloc.removeDeadStructural input2345 value502 value1 value2 = (output2345, value1162, value1) := by
  rw [input2345_def, output2345_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node761_eq]
  try dsimp only
  rw [node2344_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2345 input760)).val
theorem input2346_def : input2346 = (.seq input2345 input760) := by
  unfold input2346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2345 output760)).val
theorem output2346_def : output2346 = (.seq output2345 output760) := by
  unfold output2346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2346_skip : Flapjack.WordAlloc.isSkip output2346 = false := by
  rw [output2346_def]
  conv => lhs; cbv
  try rfl
theorem node2346_eq : Flapjack.WordAlloc.removeDeadStructural input2346 value501 value1 value2 = (output2346, value1162, value1) := by
  rw [input2346_def, output2346_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node760_eq]
  try dsimp only
  rw [node2345_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2346 input759)).val
theorem input2347_def : input2347 = (.seq input2346 input759) := by
  unfold input2347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2346 output759)).val
theorem output2347_def : output2347 = (.seq output2346 output759) := by
  unfold output2347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2347_skip : Flapjack.WordAlloc.isSkip output2347 = false := by
  rw [output2347_def]
  conv => lhs; cbv
  try rfl
theorem node2347_eq : Flapjack.WordAlloc.removeDeadStructural input2347 value500 value1 value2 = (output2347, value1162, value1) := by
  rw [input2347_def, output2347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node759_eq]
  try dsimp only
  rw [node2346_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2347 input758)).val
theorem input2348_def : input2348 = (.seq input2347 input758) := by
  unfold input2348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2347 output758)).val
theorem output2348_def : output2348 = (.seq output2347 output758) := by
  unfold output2348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2348_skip : Flapjack.WordAlloc.isSkip output2348 = false := by
  rw [output2348_def]
  conv => lhs; cbv
  try rfl
theorem node2348_eq : Flapjack.WordAlloc.removeDeadStructural input2348 value499 value1 value2 = (output2348, value1162, value1) := by
  rw [input2348_def, output2348_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node758_eq]
  try dsimp only
  rw [node2347_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2348 input757)).val
theorem input2349_def : input2349 = (.seq input2348 input757) := by
  unfold input2349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2348 output757)).val
theorem output2349_def : output2349 = (.seq output2348 output757) := by
  unfold output2349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2349_skip : Flapjack.WordAlloc.isSkip output2349 = false := by
  rw [output2349_def]
  conv => lhs; cbv
  try rfl
theorem node2349_eq : Flapjack.WordAlloc.removeDeadStructural input2349 value498 value1 value2 = (output2349, value1162, value1) := by
  rw [input2349_def, output2349_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node757_eq]
  try dsimp only
  rw [node2348_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2349 input756)).val
theorem input2350_def : input2350 = (.seq input2349 input756) := by
  unfold input2350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2349 output756)).val
theorem output2350_def : output2350 = (.seq output2349 output756) := by
  unfold output2350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2350_skip : Flapjack.WordAlloc.isSkip output2350 = false := by
  rw [output2350_def]
  conv => lhs; cbv
  try rfl
theorem node2350_eq : Flapjack.WordAlloc.removeDeadStructural input2350 value497 value1 value2 = (output2350, value1162, value1) := by
  rw [input2350_def, output2350_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node756_eq]
  try dsimp only
  rw [node2349_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2350 input755)).val
theorem input2351_def : input2351 = (.seq input2350 input755) := by
  unfold input2351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2350 output755)).val
theorem output2351_def : output2351 = (.seq output2350 output755) := by
  unfold output2351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2351_skip : Flapjack.WordAlloc.isSkip output2351 = false := by
  rw [output2351_def]
  conv => lhs; cbv
  try rfl
theorem node2351_eq : Flapjack.WordAlloc.removeDeadStructural input2351 value496 value1 value2 = (output2351, value1162, value1) := by
  rw [input2351_def, output2351_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node755_eq]
  try dsimp only
  rw [node2350_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2351 input754)).val
theorem input2352_def : input2352 = (.seq input2351 input754) := by
  unfold input2352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2351 output754)).val
theorem output2352_def : output2352 = (.seq output2351 output754) := by
  unfold output2352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2352_skip : Flapjack.WordAlloc.isSkip output2352 = false := by
  rw [output2352_def]
  conv => lhs; cbv
  try rfl
theorem node2352_eq : Flapjack.WordAlloc.removeDeadStructural input2352 value495 value1 value2 = (output2352, value1162, value1) := by
  rw [input2352_def, output2352_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node754_eq]
  try dsimp only
  rw [node2351_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2352 input753)).val
theorem input2353_def : input2353 = (.seq input2352 input753) := by
  unfold input2353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2352 output753)).val
theorem output2353_def : output2353 = (.seq output2352 output753) := by
  unfold output2353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2353_skip : Flapjack.WordAlloc.isSkip output2353 = false := by
  rw [output2353_def]
  conv => lhs; cbv
  try rfl
theorem node2353_eq : Flapjack.WordAlloc.removeDeadStructural input2353 value494 value1 value2 = (output2353, value1162, value1) := by
  rw [input2353_def, output2353_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node753_eq]
  try dsimp only
  rw [node2352_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2353 input752)).val
theorem input2354_def : input2354 = (.seq input2353 input752) := by
  unfold input2354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2353 output752)).val
theorem output2354_def : output2354 = (.seq output2353 output752) := by
  unfold output2354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2354_skip : Flapjack.WordAlloc.isSkip output2354 = false := by
  rw [output2354_def]
  conv => lhs; cbv
  try rfl
theorem node2354_eq : Flapjack.WordAlloc.removeDeadStructural input2354 value493 value1 value2 = (output2354, value1162, value1) := by
  rw [input2354_def, output2354_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node752_eq]
  try dsimp only
  rw [node2353_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2354 input751)).val
theorem input2355_def : input2355 = (.seq input2354 input751) := by
  unfold input2355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2354 output751)).val
theorem output2355_def : output2355 = (.seq output2354 output751) := by
  unfold output2355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2355_skip : Flapjack.WordAlloc.isSkip output2355 = false := by
  rw [output2355_def]
  conv => lhs; cbv
  try rfl
theorem node2355_eq : Flapjack.WordAlloc.removeDeadStructural input2355 value492 value1 value2 = (output2355, value1162, value1) := by
  rw [input2355_def, output2355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node751_eq]
  try dsimp only
  rw [node2354_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2355 input750)).val
theorem input2356_def : input2356 = (.seq input2355 input750) := by
  unfold input2356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2355 output750)).val
theorem output2356_def : output2356 = (.seq output2355 output750) := by
  unfold output2356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2356_skip : Flapjack.WordAlloc.isSkip output2356 = false := by
  rw [output2356_def]
  conv => lhs; cbv
  try rfl
theorem node2356_eq : Flapjack.WordAlloc.removeDeadStructural input2356 value491 value1 value2 = (output2356, value1162, value1) := by
  rw [input2356_def, output2356_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node750_eq]
  try dsimp only
  rw [node2355_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2356 input749)).val
theorem input2357_def : input2357 = (.seq input2356 input749) := by
  unfold input2357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2356 output749)).val
theorem output2357_def : output2357 = (.seq output2356 output749) := by
  unfold output2357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2357_skip : Flapjack.WordAlloc.isSkip output2357 = false := by
  rw [output2357_def]
  conv => lhs; cbv
  try rfl
theorem node2357_eq : Flapjack.WordAlloc.removeDeadStructural input2357 value490 value1 value2 = (output2357, value1162, value1) := by
  rw [input2357_def, output2357_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node749_eq]
  try dsimp only
  rw [node2356_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2357 input748)).val
theorem input2358_def : input2358 = (.seq input2357 input748) := by
  unfold input2358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2357 output748)).val
theorem output2358_def : output2358 = (.seq output2357 output748) := by
  unfold output2358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2358_skip : Flapjack.WordAlloc.isSkip output2358 = false := by
  rw [output2358_def]
  conv => lhs; cbv
  try rfl
theorem node2358_eq : Flapjack.WordAlloc.removeDeadStructural input2358 value487 value1 value2 = (output2358, value1162, value1) := by
  rw [input2358_def, output2358_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node748_eq]
  try dsimp only
  rw [node2357_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2358 input743)).val
theorem input2359_def : input2359 = (.seq input2358 input743) := by
  unfold input2359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2358 output743)).val
theorem output2359_def : output2359 = (.seq output2358 output743) := by
  unfold output2359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2359_skip : Flapjack.WordAlloc.isSkip output2359 = false := by
  rw [output2359_def]
  conv => lhs; cbv
  try rfl
theorem node2359_eq : Flapjack.WordAlloc.removeDeadStructural input2359 value487 value1 value2 = (output2359, value1162, value1) := by
  rw [input2359_def, output2359_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node743_eq]
  try dsimp only
  rw [node2358_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2359 input742)).val
theorem input2360_def : input2360 = (.seq input2359 input742) := by
  unfold input2360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2359 output742)).val
theorem output2360_def : output2360 = (.seq output2359 output742) := by
  unfold output2360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2360_skip : Flapjack.WordAlloc.isSkip output2360 = false := by
  rw [output2360_def]
  conv => lhs; cbv
  try rfl
theorem node2360_eq : Flapjack.WordAlloc.removeDeadStructural input2360 value486 value1 value2 = (output2360, value1162, value1) := by
  rw [input2360_def, output2360_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node742_eq]
  try dsimp only
  rw [node2359_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2360 input741)).val
theorem input2361_def : input2361 = (.seq input2360 input741) := by
  unfold input2361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2360 output741)).val
theorem output2361_def : output2361 = (.seq output2360 output741) := by
  unfold output2361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2361_skip : Flapjack.WordAlloc.isSkip output2361 = false := by
  rw [output2361_def]
  conv => lhs; cbv
  try rfl
theorem node2361_eq : Flapjack.WordAlloc.removeDeadStructural input2361 value485 value1 value2 = (output2361, value1162, value1) := by
  rw [input2361_def, output2361_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node741_eq]
  try dsimp only
  rw [node2360_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2361 input740)).val
theorem input2362_def : input2362 = (.seq input2361 input740) := by
  unfold input2362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2361 output740)).val
theorem output2362_def : output2362 = (.seq output2361 output740) := by
  unfold output2362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2362_skip : Flapjack.WordAlloc.isSkip output2362 = false := by
  rw [output2362_def]
  conv => lhs; cbv
  try rfl
theorem node2362_eq : Flapjack.WordAlloc.removeDeadStructural input2362 value484 value1 value2 = (output2362, value1162, value1) := by
  rw [input2362_def, output2362_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node740_eq]
  try dsimp only
  rw [node2361_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2363 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2362 input739)).val
theorem input2363_def : input2363 = (.seq input2362 input739) := by
  unfold input2363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2363 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2362 output739)).val
theorem output2363_def : output2363 = (.seq output2362 output739) := by
  unfold output2363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2363_skip : Flapjack.WordAlloc.isSkip output2363 = false := by
  rw [output2363_def]
  conv => lhs; cbv
  try rfl
theorem node2363_eq : Flapjack.WordAlloc.removeDeadStructural input2363 value483 value1 value2 = (output2363, value1162, value1) := by
  rw [input2363_def, output2363_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node739_eq]
  try dsimp only
  rw [node2362_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2363 input738)).val
theorem input2364_def : input2364 = (.seq input2363 input738) := by
  unfold input2364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2363 output738)).val
theorem output2364_def : output2364 = (.seq output2363 output738) := by
  unfold output2364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2364_skip : Flapjack.WordAlloc.isSkip output2364 = false := by
  rw [output2364_def]
  conv => lhs; cbv
  try rfl
theorem node2364_eq : Flapjack.WordAlloc.removeDeadStructural input2364 value482 value1 value2 = (output2364, value1162, value1) := by
  rw [input2364_def, output2364_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node738_eq]
  try dsimp only
  rw [node2363_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2364 input737)).val
theorem input2365_def : input2365 = (.seq input2364 input737) := by
  unfold input2365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2364 output737)).val
theorem output2365_def : output2365 = (.seq output2364 output737) := by
  unfold output2365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2365_skip : Flapjack.WordAlloc.isSkip output2365 = false := by
  rw [output2365_def]
  conv => lhs; cbv
  try rfl
theorem node2365_eq : Flapjack.WordAlloc.removeDeadStructural input2365 value481 value1 value2 = (output2365, value1162, value1) := by
  rw [input2365_def, output2365_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node737_eq]
  try dsimp only
  rw [node2364_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2365 input736)).val
theorem input2366_def : input2366 = (.seq input2365 input736) := by
  unfold input2366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2365 output736)).val
theorem output2366_def : output2366 = (.seq output2365 output736) := by
  unfold output2366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2366_skip : Flapjack.WordAlloc.isSkip output2366 = false := by
  rw [output2366_def]
  conv => lhs; cbv
  try rfl
theorem node2366_eq : Flapjack.WordAlloc.removeDeadStructural input2366 value480 value1 value2 = (output2366, value1162, value1) := by
  rw [input2366_def, output2366_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node736_eq]
  try dsimp only
  rw [node2365_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2366 input735)).val
theorem input2367_def : input2367 = (.seq input2366 input735) := by
  unfold input2367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2366 output735)).val
theorem output2367_def : output2367 = (.seq output2366 output735) := by
  unfold output2367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2367_skip : Flapjack.WordAlloc.isSkip output2367 = false := by
  rw [output2367_def]
  conv => lhs; cbv
  try rfl
theorem node2367_eq : Flapjack.WordAlloc.removeDeadStructural input2367 value479 value1 value2 = (output2367, value1162, value1) := by
  rw [input2367_def, output2367_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node735_eq]
  try dsimp only
  rw [node2366_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2367 input734)).val
theorem input2368_def : input2368 = (.seq input2367 input734) := by
  unfold input2368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2367 output734)).val
theorem output2368_def : output2368 = (.seq output2367 output734) := by
  unfold output2368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2368_skip : Flapjack.WordAlloc.isSkip output2368 = false := by
  rw [output2368_def]
  conv => lhs; cbv
  try rfl
theorem node2368_eq : Flapjack.WordAlloc.removeDeadStructural input2368 value478 value1 value2 = (output2368, value1162, value1) := by
  rw [input2368_def, output2368_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node734_eq]
  try dsimp only
  rw [node2367_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2368 input733)).val
theorem input2369_def : input2369 = (.seq input2368 input733) := by
  unfold input2369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2368 output733)).val
theorem output2369_def : output2369 = (.seq output2368 output733) := by
  unfold output2369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2369_skip : Flapjack.WordAlloc.isSkip output2369 = false := by
  rw [output2369_def]
  conv => lhs; cbv
  try rfl
theorem node2369_eq : Flapjack.WordAlloc.removeDeadStructural input2369 value477 value1 value2 = (output2369, value1162, value1) := by
  rw [input2369_def, output2369_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node733_eq]
  try dsimp only
  rw [node2368_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2369 input732)).val
theorem input2370_def : input2370 = (.seq input2369 input732) := by
  unfold input2370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2369 output732)).val
theorem output2370_def : output2370 = (.seq output2369 output732) := by
  unfold output2370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2370_skip : Flapjack.WordAlloc.isSkip output2370 = false := by
  rw [output2370_def]
  conv => lhs; cbv
  try rfl
theorem node2370_eq : Flapjack.WordAlloc.removeDeadStructural input2370 value476 value1 value2 = (output2370, value1162, value1) := by
  rw [input2370_def, output2370_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node732_eq]
  try dsimp only
  rw [node2369_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2370 input731)).val
theorem input2371_def : input2371 = (.seq input2370 input731) := by
  unfold input2371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2370 output731)).val
theorem output2371_def : output2371 = (.seq output2370 output731) := by
  unfold output2371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2371_skip : Flapjack.WordAlloc.isSkip output2371 = false := by
  rw [output2371_def]
  conv => lhs; cbv
  try rfl
theorem node2371_eq : Flapjack.WordAlloc.removeDeadStructural input2371 value475 value1 value2 = (output2371, value1162, value1) := by
  rw [input2371_def, output2371_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node731_eq]
  try dsimp only
  rw [node2370_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2371 input730)).val
theorem input2372_def : input2372 = (.seq input2371 input730) := by
  unfold input2372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2371 output730)).val
theorem output2372_def : output2372 = (.seq output2371 output730) := by
  unfold output2372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2372_skip : Flapjack.WordAlloc.isSkip output2372 = false := by
  rw [output2372_def]
  conv => lhs; cbv
  try rfl
theorem node2372_eq : Flapjack.WordAlloc.removeDeadStructural input2372 value472 value1 value2 = (output2372, value1162, value1) := by
  rw [input2372_def, output2372_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node730_eq]
  try dsimp only
  rw [node2371_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2372 input725)).val
theorem input2373_def : input2373 = (.seq input2372 input725) := by
  unfold input2373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2372 output725)).val
theorem output2373_def : output2373 = (.seq output2372 output725) := by
  unfold output2373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2373_skip : Flapjack.WordAlloc.isSkip output2373 = false := by
  rw [output2373_def]
  conv => lhs; cbv
  try rfl
theorem node2373_eq : Flapjack.WordAlloc.removeDeadStructural input2373 value472 value1 value2 = (output2373, value1162, value1) := by
  rw [input2373_def, output2373_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node725_eq]
  try dsimp only
  rw [node2372_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2373 input724)).val
theorem input2374_def : input2374 = (.seq input2373 input724) := by
  unfold input2374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2373 output724)).val
theorem output2374_def : output2374 = (.seq output2373 output724) := by
  unfold output2374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2374_skip : Flapjack.WordAlloc.isSkip output2374 = false := by
  rw [output2374_def]
  conv => lhs; cbv
  try rfl
theorem node2374_eq : Flapjack.WordAlloc.removeDeadStructural input2374 value471 value1 value2 = (output2374, value1162, value1) := by
  rw [input2374_def, output2374_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node724_eq]
  try dsimp only
  rw [node2373_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2374 input723)).val
theorem input2375_def : input2375 = (.seq input2374 input723) := by
  unfold input2375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2374 output723)).val
theorem output2375_def : output2375 = (.seq output2374 output723) := by
  unfold output2375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2375_skip : Flapjack.WordAlloc.isSkip output2375 = false := by
  rw [output2375_def]
  conv => lhs; cbv
  try rfl
theorem node2375_eq : Flapjack.WordAlloc.removeDeadStructural input2375 value470 value1 value2 = (output2375, value1162, value1) := by
  rw [input2375_def, output2375_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node723_eq]
  try dsimp only
  rw [node2374_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2376 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2375 input722)).val
theorem input2376_def : input2376 = (.seq input2375 input722) := by
  unfold input2376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2376 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2375 output722)).val
theorem output2376_def : output2376 = (.seq output2375 output722) := by
  unfold output2376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2376_skip : Flapjack.WordAlloc.isSkip output2376 = false := by
  rw [output2376_def]
  conv => lhs; cbv
  try rfl
theorem node2376_eq : Flapjack.WordAlloc.removeDeadStructural input2376 value469 value1 value2 = (output2376, value1162, value1) := by
  rw [input2376_def, output2376_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node722_eq]
  try dsimp only
  rw [node2375_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2376 input721)).val
theorem input2377_def : input2377 = (.seq input2376 input721) := by
  unfold input2377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2376 output721)).val
theorem output2377_def : output2377 = (.seq output2376 output721) := by
  unfold output2377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2377_skip : Flapjack.WordAlloc.isSkip output2377 = false := by
  rw [output2377_def]
  conv => lhs; cbv
  try rfl
theorem node2377_eq : Flapjack.WordAlloc.removeDeadStructural input2377 value468 value1 value2 = (output2377, value1162, value1) := by
  rw [input2377_def, output2377_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node721_eq]
  try dsimp only
  rw [node2376_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2377 input720)).val
theorem input2378_def : input2378 = (.seq input2377 input720) := by
  unfold input2378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2377 output720)).val
theorem output2378_def : output2378 = (.seq output2377 output720) := by
  unfold output2378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2378_skip : Flapjack.WordAlloc.isSkip output2378 = false := by
  rw [output2378_def]
  conv => lhs; cbv
  try rfl
theorem node2378_eq : Flapjack.WordAlloc.removeDeadStructural input2378 value467 value1 value2 = (output2378, value1162, value1) := by
  rw [input2378_def, output2378_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node720_eq]
  try dsimp only
  rw [node2377_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2378 input719)).val
theorem input2379_def : input2379 = (.seq input2378 input719) := by
  unfold input2379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2378 output719)).val
theorem output2379_def : output2379 = (.seq output2378 output719) := by
  unfold output2379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2379_skip : Flapjack.WordAlloc.isSkip output2379 = false := by
  rw [output2379_def]
  conv => lhs; cbv
  try rfl
theorem node2379_eq : Flapjack.WordAlloc.removeDeadStructural input2379 value466 value1 value2 = (output2379, value1162, value1) := by
  rw [input2379_def, output2379_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node719_eq]
  try dsimp only
  rw [node2378_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2379 input718)).val
theorem input2380_def : input2380 = (.seq input2379 input718) := by
  unfold input2380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2379 output718)).val
theorem output2380_def : output2380 = (.seq output2379 output718) := by
  unfold output2380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2380_skip : Flapjack.WordAlloc.isSkip output2380 = false := by
  rw [output2380_def]
  conv => lhs; cbv
  try rfl
theorem node2380_eq : Flapjack.WordAlloc.removeDeadStructural input2380 value465 value1 value2 = (output2380, value1162, value1) := by
  rw [input2380_def, output2380_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node718_eq]
  try dsimp only
  rw [node2379_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2380 input717)).val
theorem input2381_def : input2381 = (.seq input2380 input717) := by
  unfold input2381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2380 output717)).val
theorem output2381_def : output2381 = (.seq output2380 output717) := by
  unfold output2381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2381_skip : Flapjack.WordAlloc.isSkip output2381 = false := by
  rw [output2381_def]
  conv => lhs; cbv
  try rfl
theorem node2381_eq : Flapjack.WordAlloc.removeDeadStructural input2381 value464 value1 value2 = (output2381, value1162, value1) := by
  rw [input2381_def, output2381_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node717_eq]
  try dsimp only
  rw [node2380_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2381 input716)).val
theorem input2382_def : input2382 = (.seq input2381 input716) := by
  unfold input2382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2381 output716)).val
theorem output2382_def : output2382 = (.seq output2381 output716) := by
  unfold output2382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2382_skip : Flapjack.WordAlloc.isSkip output2382 = false := by
  rw [output2382_def]
  conv => lhs; cbv
  try rfl
theorem node2382_eq : Flapjack.WordAlloc.removeDeadStructural input2382 value463 value1 value2 = (output2382, value1162, value1) := by
  rw [input2382_def, output2382_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node716_eq]
  try dsimp only
  rw [node2381_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2382 input715)).val
theorem input2383_def : input2383 = (.seq input2382 input715) := by
  unfold input2383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2382 output715)).val
theorem output2383_def : output2383 = (.seq output2382 output715) := by
  unfold output2383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2383_skip : Flapjack.WordAlloc.isSkip output2383 = false := by
  rw [output2383_def]
  conv => lhs; cbv
  try rfl
theorem node2383_eq : Flapjack.WordAlloc.removeDeadStructural input2383 value462 value1 value2 = (output2383, value1162, value1) := by
  rw [input2383_def, output2383_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node715_eq]
  try dsimp only
  rw [node2382_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2384 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2383 input714)).val
theorem input2384_def : input2384 = (.seq input2383 input714) := by
  unfold input2384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2384 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2383 output714)).val
theorem output2384_def : output2384 = (.seq output2383 output714) := by
  unfold output2384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2384_skip : Flapjack.WordAlloc.isSkip output2384 = false := by
  rw [output2384_def]
  conv => lhs; cbv
  try rfl
theorem node2384_eq : Flapjack.WordAlloc.removeDeadStructural input2384 value461 value1 value2 = (output2384, value1162, value1) := by
  rw [input2384_def, output2384_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node714_eq]
  try dsimp only
  rw [node2383_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2384 input713)).val
theorem input2385_def : input2385 = (.seq input2384 input713) := by
  unfold input2385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2384 output713)).val
theorem output2385_def : output2385 = (.seq output2384 output713) := by
  unfold output2385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2385_skip : Flapjack.WordAlloc.isSkip output2385 = false := by
  rw [output2385_def]
  conv => lhs; cbv
  try rfl
theorem node2385_eq : Flapjack.WordAlloc.removeDeadStructural input2385 value460 value1 value2 = (output2385, value1162, value1) := by
  rw [input2385_def, output2385_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node713_eq]
  try dsimp only
  rw [node2384_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2385 input712)).val
theorem input2386_def : input2386 = (.seq input2385 input712) := by
  unfold input2386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2385 output712)).val
theorem output2386_def : output2386 = (.seq output2385 output712) := by
  unfold output2386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2386_skip : Flapjack.WordAlloc.isSkip output2386 = false := by
  rw [output2386_def]
  conv => lhs; cbv
  try rfl
theorem node2386_eq : Flapjack.WordAlloc.removeDeadStructural input2386 value457 value1 value2 = (output2386, value1162, value1) := by
  rw [input2386_def, output2386_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node712_eq]
  try dsimp only
  rw [node2385_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2386 input707)).val
theorem input2387_def : input2387 = (.seq input2386 input707) := by
  unfold input2387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2386 output707)).val
theorem output2387_def : output2387 = (.seq output2386 output707) := by
  unfold output2387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2387_skip : Flapjack.WordAlloc.isSkip output2387 = false := by
  rw [output2387_def]
  conv => lhs; cbv
  try rfl
theorem node2387_eq : Flapjack.WordAlloc.removeDeadStructural input2387 value457 value1 value2 = (output2387, value1162, value1) := by
  rw [input2387_def, output2387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node707_eq]
  try dsimp only
  rw [node2386_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2387 input706)).val
theorem input2388_def : input2388 = (.seq input2387 input706) := by
  unfold input2388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2387 output706)).val
theorem output2388_def : output2388 = (.seq output2387 output706) := by
  unfold output2388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2388_skip : Flapjack.WordAlloc.isSkip output2388 = false := by
  rw [output2388_def]
  conv => lhs; cbv
  try rfl
theorem node2388_eq : Flapjack.WordAlloc.removeDeadStructural input2388 value456 value1 value2 = (output2388, value1162, value1) := by
  rw [input2388_def, output2388_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node706_eq]
  try dsimp only
  rw [node2387_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2388 input705)).val
theorem input2389_def : input2389 = (.seq input2388 input705) := by
  unfold input2389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2388 output705)).val
theorem output2389_def : output2389 = (.seq output2388 output705) := by
  unfold output2389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2389_skip : Flapjack.WordAlloc.isSkip output2389 = false := by
  rw [output2389_def]
  conv => lhs; cbv
  try rfl
theorem node2389_eq : Flapjack.WordAlloc.removeDeadStructural input2389 value455 value1 value2 = (output2389, value1162, value1) := by
  rw [input2389_def, output2389_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node705_eq]
  try dsimp only
  rw [node2388_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2389 input704)).val
theorem input2390_def : input2390 = (.seq input2389 input704) := by
  unfold input2390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2389 output704)).val
theorem output2390_def : output2390 = (.seq output2389 output704) := by
  unfold output2390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2390_skip : Flapjack.WordAlloc.isSkip output2390 = false := by
  rw [output2390_def]
  conv => lhs; cbv
  try rfl
theorem node2390_eq : Flapjack.WordAlloc.removeDeadStructural input2390 value454 value1 value2 = (output2390, value1162, value1) := by
  rw [input2390_def, output2390_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node704_eq]
  try dsimp only
  rw [node2389_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2390 input703)).val
theorem input2391_def : input2391 = (.seq input2390 input703) := by
  unfold input2391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2390 output703)).val
theorem output2391_def : output2391 = (.seq output2390 output703) := by
  unfold output2391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2391_skip : Flapjack.WordAlloc.isSkip output2391 = false := by
  rw [output2391_def]
  conv => lhs; cbv
  try rfl
theorem node2391_eq : Flapjack.WordAlloc.removeDeadStructural input2391 value453 value1 value2 = (output2391, value1162, value1) := by
  rw [input2391_def, output2391_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node703_eq]
  try dsimp only
  rw [node2390_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2391 input702)).val
theorem input2392_def : input2392 = (.seq input2391 input702) := by
  unfold input2392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2391 output702)).val
theorem output2392_def : output2392 = (.seq output2391 output702) := by
  unfold output2392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2392_skip : Flapjack.WordAlloc.isSkip output2392 = false := by
  rw [output2392_def]
  conv => lhs; cbv
  try rfl
theorem node2392_eq : Flapjack.WordAlloc.removeDeadStructural input2392 value452 value1 value2 = (output2392, value1162, value1) := by
  rw [input2392_def, output2392_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node702_eq]
  try dsimp only
  rw [node2391_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2392 input701)).val
theorem input2393_def : input2393 = (.seq input2392 input701) := by
  unfold input2393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2392 output701)).val
theorem output2393_def : output2393 = (.seq output2392 output701) := by
  unfold output2393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2393_skip : Flapjack.WordAlloc.isSkip output2393 = false := by
  rw [output2393_def]
  conv => lhs; cbv
  try rfl
theorem node2393_eq : Flapjack.WordAlloc.removeDeadStructural input2393 value451 value1 value2 = (output2393, value1162, value1) := by
  rw [input2393_def, output2393_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node701_eq]
  try dsimp only
  rw [node2392_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2393 input700)).val
theorem input2394_def : input2394 = (.seq input2393 input700) := by
  unfold input2394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2393 output700)).val
theorem output2394_def : output2394 = (.seq output2393 output700) := by
  unfold output2394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2394_skip : Flapjack.WordAlloc.isSkip output2394 = false := by
  rw [output2394_def]
  conv => lhs; cbv
  try rfl
theorem node2394_eq : Flapjack.WordAlloc.removeDeadStructural input2394 value450 value1 value2 = (output2394, value1162, value1) := by
  rw [input2394_def, output2394_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node700_eq]
  try dsimp only
  rw [node2393_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2394 input699)).val
theorem input2395_def : input2395 = (.seq input2394 input699) := by
  unfold input2395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2394 output699)).val
theorem output2395_def : output2395 = (.seq output2394 output699) := by
  unfold output2395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2395_skip : Flapjack.WordAlloc.isSkip output2395 = false := by
  rw [output2395_def]
  conv => lhs; cbv
  try rfl
theorem node2395_eq : Flapjack.WordAlloc.removeDeadStructural input2395 value449 value1 value2 = (output2395, value1162, value1) := by
  rw [input2395_def, output2395_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node699_eq]
  try dsimp only
  rw [node2394_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2395 input698)).val
theorem input2396_def : input2396 = (.seq input2395 input698) := by
  unfold input2396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2395 output698)).val
theorem output2396_def : output2396 = (.seq output2395 output698) := by
  unfold output2396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2396_skip : Flapjack.WordAlloc.isSkip output2396 = false := by
  rw [output2396_def]
  conv => lhs; cbv
  try rfl
theorem node2396_eq : Flapjack.WordAlloc.removeDeadStructural input2396 value448 value1 value2 = (output2396, value1162, value1) := by
  rw [input2396_def, output2396_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node698_eq]
  try dsimp only
  rw [node2395_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2396 input697)).val
theorem input2397_def : input2397 = (.seq input2396 input697) := by
  unfold input2397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2396 output697)).val
theorem output2397_def : output2397 = (.seq output2396 output697) := by
  unfold output2397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2397_skip : Flapjack.WordAlloc.isSkip output2397 = false := by
  rw [output2397_def]
  conv => lhs; cbv
  try rfl
theorem node2397_eq : Flapjack.WordAlloc.removeDeadStructural input2397 value447 value1 value2 = (output2397, value1162, value1) := by
  rw [input2397_def, output2397_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node697_eq]
  try dsimp only
  rw [node2396_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2397 input696)).val
theorem input2398_def : input2398 = (.seq input2397 input696) := by
  unfold input2398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2397 output696)).val
theorem output2398_def : output2398 = (.seq output2397 output696) := by
  unfold output2398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2398_skip : Flapjack.WordAlloc.isSkip output2398 = false := by
  rw [output2398_def]
  conv => lhs; cbv
  try rfl
theorem node2398_eq : Flapjack.WordAlloc.removeDeadStructural input2398 value446 value1 value2 = (output2398, value1162, value1) := by
  rw [input2398_def, output2398_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node696_eq]
  try dsimp only
  rw [node2397_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2398 input695)).val
theorem input2399_def : input2399 = (.seq input2398 input695) := by
  unfold input2399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2398 output695)).val
theorem output2399_def : output2399 = (.seq output2398 output695) := by
  unfold output2399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2399_skip : Flapjack.WordAlloc.isSkip output2399 = false := by
  rw [output2399_def]
  conv => lhs; cbv
  try rfl
theorem node2399_eq : Flapjack.WordAlloc.removeDeadStructural input2399 value445 value1 value2 = (output2399, value1162, value1) := by
  rw [input2399_def, output2399_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node695_eq]
  try dsimp only
  rw [node2398_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2399 input694)).val
theorem input2400_def : input2400 = (.seq input2399 input694) := by
  unfold input2400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2399 output694)).val
theorem output2400_def : output2400 = (.seq output2399 output694) := by
  unfold output2400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2400_skip : Flapjack.WordAlloc.isSkip output2400 = false := by
  rw [output2400_def]
  conv => lhs; cbv
  try rfl
theorem node2400_eq : Flapjack.WordAlloc.removeDeadStructural input2400 value442 value1 value2 = (output2400, value1162, value1) := by
  rw [input2400_def, output2400_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node694_eq]
  try dsimp only
  rw [node2399_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2400 input689)).val
theorem input2401_def : input2401 = (.seq input2400 input689) := by
  unfold input2401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2400 output689)).val
theorem output2401_def : output2401 = (.seq output2400 output689) := by
  unfold output2401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2401_skip : Flapjack.WordAlloc.isSkip output2401 = false := by
  rw [output2401_def]
  conv => lhs; cbv
  try rfl
theorem node2401_eq : Flapjack.WordAlloc.removeDeadStructural input2401 value442 value1 value2 = (output2401, value1162, value1) := by
  rw [input2401_def, output2401_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node689_eq]
  try dsimp only
  rw [node2400_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2401 input688)).val
theorem input2402_def : input2402 = (.seq input2401 input688) := by
  unfold input2402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2401 output688)).val
theorem output2402_def : output2402 = (.seq output2401 output688) := by
  unfold output2402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2402_skip : Flapjack.WordAlloc.isSkip output2402 = false := by
  rw [output2402_def]
  conv => lhs; cbv
  try rfl
theorem node2402_eq : Flapjack.WordAlloc.removeDeadStructural input2402 value441 value1 value2 = (output2402, value1162, value1) := by
  rw [input2402_def, output2402_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node688_eq]
  try dsimp only
  rw [node2401_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2402 input687)).val
theorem input2403_def : input2403 = (.seq input2402 input687) := by
  unfold input2403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2402 output687)).val
theorem output2403_def : output2403 = (.seq output2402 output687) := by
  unfold output2403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2403_skip : Flapjack.WordAlloc.isSkip output2403 = false := by
  rw [output2403_def]
  conv => lhs; cbv
  try rfl
theorem node2403_eq : Flapjack.WordAlloc.removeDeadStructural input2403 value440 value1 value2 = (output2403, value1162, value1) := by
  rw [input2403_def, output2403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node687_eq]
  try dsimp only
  rw [node2402_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2403 input686)).val
theorem input2404_def : input2404 = (.seq input2403 input686) := by
  unfold input2404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2403 output686)).val
theorem output2404_def : output2404 = (.seq output2403 output686) := by
  unfold output2404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2404_skip : Flapjack.WordAlloc.isSkip output2404 = false := by
  rw [output2404_def]
  conv => lhs; cbv
  try rfl
theorem node2404_eq : Flapjack.WordAlloc.removeDeadStructural input2404 value325 value1 value2 = (output2404, value1162, value1) := by
  rw [input2404_def, output2404_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node686_eq]
  try dsimp only
  rw [node2403_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2404 input395)).val
theorem input2405_def : input2405 = (.seq input2404 input395) := by
  unfold input2405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2404 output395)).val
theorem output2405_def : output2405 = (.seq output2404 output395) := by
  unfold output2405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2405_skip : Flapjack.WordAlloc.isSkip output2405 = false := by
  rw [output2405_def]
  conv => lhs; cbv
  try rfl
theorem node2405_eq : Flapjack.WordAlloc.removeDeadStructural input2405 value325 value1 value2 = (output2405, value1162, value1) := by
  rw [input2405_def, output2405_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node395_eq]
  try dsimp only
  rw [node2404_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2405 input394)).val
theorem input2406_def : input2406 = (.seq input2405 input394) := by
  unfold input2406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2405 output394)).val
theorem output2406_def : output2406 = (.seq output2405 output394) := by
  unfold output2406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2406_skip : Flapjack.WordAlloc.isSkip output2406 = false := by
  rw [output2406_def]
  conv => lhs; cbv
  try rfl
theorem node2406_eq : Flapjack.WordAlloc.removeDeadStructural input2406 value324 value1 value2 = (output2406, value1162, value1) := by
  rw [input2406_def, output2406_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node394_eq]
  try dsimp only
  rw [node2405_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2406 input393)).val
theorem input2407_def : input2407 = (.seq input2406 input393) := by
  unfold input2407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2406 output393)).val
theorem output2407_def : output2407 = (.seq output2406 output393) := by
  unfold output2407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2407_skip : Flapjack.WordAlloc.isSkip output2407 = false := by
  rw [output2407_def]
  conv => lhs; cbv
  try rfl
theorem node2407_eq : Flapjack.WordAlloc.removeDeadStructural input2407 value323 value1 value2 = (output2407, value1162, value1) := by
  rw [input2407_def, output2407_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node393_eq]
  try dsimp only
  rw [node2406_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2408 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2407 input392)).val
theorem input2408_def : input2408 = (.seq input2407 input392) := by
  unfold input2408
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2408 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2407 output392)).val
theorem output2408_def : output2408 = (.seq output2407 output392) := by
  unfold output2408
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2408_skip : Flapjack.WordAlloc.isSkip output2408 = false := by
  rw [output2408_def]
  conv => lhs; cbv
  try rfl
theorem node2408_eq : Flapjack.WordAlloc.removeDeadStructural input2408 value322 value1 value2 = (output2408, value1162, value1) := by
  rw [input2408_def, output2408_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node392_eq]
  try dsimp only
  rw [node2407_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2409 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2408 input391)).val
theorem input2409_def : input2409 = (.seq input2408 input391) := by
  unfold input2409
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2409 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2408 output391)).val
theorem output2409_def : output2409 = (.seq output2408 output391) := by
  unfold output2409
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2409_skip : Flapjack.WordAlloc.isSkip output2409 = false := by
  rw [output2409_def]
  conv => lhs; cbv
  try rfl
theorem node2409_eq : Flapjack.WordAlloc.removeDeadStructural input2409 value321 value1 value2 = (output2409, value1162, value1) := by
  rw [input2409_def, output2409_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node391_eq]
  try dsimp only
  rw [node2408_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2410 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2409 input390)).val
theorem input2410_def : input2410 = (.seq input2409 input390) := by
  unfold input2410
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2410 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2409 output390)).val
theorem output2410_def : output2410 = (.seq output2409 output390) := by
  unfold output2410
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2410_skip : Flapjack.WordAlloc.isSkip output2410 = false := by
  rw [output2410_def]
  conv => lhs; cbv
  try rfl
theorem node2410_eq : Flapjack.WordAlloc.removeDeadStructural input2410 value320 value1 value2 = (output2410, value1162, value1) := by
  rw [input2410_def, output2410_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node390_eq]
  try dsimp only
  rw [node2409_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2411 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2410 input389)).val
theorem input2411_def : input2411 = (.seq input2410 input389) := by
  unfold input2411
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2411 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2410 output389)).val
theorem output2411_def : output2411 = (.seq output2410 output389) := by
  unfold output2411
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2411_skip : Flapjack.WordAlloc.isSkip output2411 = false := by
  rw [output2411_def]
  conv => lhs; cbv
  try rfl
theorem node2411_eq : Flapjack.WordAlloc.removeDeadStructural input2411 value319 value1 value2 = (output2411, value1162, value1) := by
  rw [input2411_def, output2411_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node389_eq]
  try dsimp only
  rw [node2410_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2412 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2411 input388)).val
theorem input2412_def : input2412 = (.seq input2411 input388) := by
  unfold input2412
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2412 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2411 output388)).val
theorem output2412_def : output2412 = (.seq output2411 output388) := by
  unfold output2412
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2412_skip : Flapjack.WordAlloc.isSkip output2412 = false := by
  rw [output2412_def]
  conv => lhs; cbv
  try rfl
theorem node2412_eq : Flapjack.WordAlloc.removeDeadStructural input2412 value318 value1 value2 = (output2412, value1162, value1) := by
  rw [input2412_def, output2412_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node388_eq]
  try dsimp only
  rw [node2411_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2413 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2412 input387)).val
theorem input2413_def : input2413 = (.seq input2412 input387) := by
  unfold input2413
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2413 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2412 output387)).val
theorem output2413_def : output2413 = (.seq output2412 output387) := by
  unfold output2413
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2413_skip : Flapjack.WordAlloc.isSkip output2413 = false := by
  rw [output2413_def]
  conv => lhs; cbv
  try rfl
theorem node2413_eq : Flapjack.WordAlloc.removeDeadStructural input2413 value317 value1 value2 = (output2413, value1162, value1) := by
  rw [input2413_def, output2413_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node387_eq]
  try dsimp only
  rw [node2412_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2414 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2413 input386)).val
theorem input2414_def : input2414 = (.seq input2413 input386) := by
  unfold input2414
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2414 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2413 output386)).val
theorem output2414_def : output2414 = (.seq output2413 output386) := by
  unfold output2414
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2414_skip : Flapjack.WordAlloc.isSkip output2414 = false := by
  rw [output2414_def]
  conv => lhs; cbv
  try rfl
theorem node2414_eq : Flapjack.WordAlloc.removeDeadStructural input2414 value316 value1 value2 = (output2414, value1162, value1) := by
  rw [input2414_def, output2414_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node386_eq]
  try dsimp only
  rw [node2413_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2415 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2414 input385)).val
theorem input2415_def : input2415 = (.seq input2414 input385) := by
  unfold input2415
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2415 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2414 output385)).val
theorem output2415_def : output2415 = (.seq output2414 output385) := by
  unfold output2415
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2415_skip : Flapjack.WordAlloc.isSkip output2415 = false := by
  rw [output2415_def]
  conv => lhs; cbv
  try rfl
theorem node2415_eq : Flapjack.WordAlloc.removeDeadStructural input2415 value315 value1 value2 = (output2415, value1162, value1) := by
  rw [input2415_def, output2415_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node385_eq]
  try dsimp only
  rw [node2414_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2416 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2415 input384)).val
theorem input2416_def : input2416 = (.seq input2415 input384) := by
  unfold input2416
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2416 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2415 output384)).val
theorem output2416_def : output2416 = (.seq output2415 output384) := by
  unfold output2416
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2416_skip : Flapjack.WordAlloc.isSkip output2416 = false := by
  rw [output2416_def]
  conv => lhs; cbv
  try rfl
theorem node2416_eq : Flapjack.WordAlloc.removeDeadStructural input2416 value314 value1 value2 = (output2416, value1162, value1) := by
  rw [input2416_def, output2416_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node384_eq]
  try dsimp only
  rw [node2415_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2417 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2416 input383)).val
theorem input2417_def : input2417 = (.seq input2416 input383) := by
  unfold input2417
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2417 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2416 output383)).val
theorem output2417_def : output2417 = (.seq output2416 output383) := by
  unfold output2417
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2417_skip : Flapjack.WordAlloc.isSkip output2417 = false := by
  rw [output2417_def]
  conv => lhs; cbv
  try rfl
theorem node2417_eq : Flapjack.WordAlloc.removeDeadStructural input2417 value313 value1 value2 = (output2417, value1162, value1) := by
  rw [input2417_def, output2417_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node383_eq]
  try dsimp only
  rw [node2416_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2418 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2417 input382)).val
theorem input2418_def : input2418 = (.seq input2417 input382) := by
  unfold input2418
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2418 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2417 output382)).val
theorem output2418_def : output2418 = (.seq output2417 output382) := by
  unfold output2418
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2418_skip : Flapjack.WordAlloc.isSkip output2418 = false := by
  rw [output2418_def]
  conv => lhs; cbv
  try rfl
theorem node2418_eq : Flapjack.WordAlloc.removeDeadStructural input2418 value310 value1 value2 = (output2418, value1162, value1) := by
  rw [input2418_def, output2418_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node382_eq]
  try dsimp only
  rw [node2417_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2419 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2418 input377)).val
theorem input2419_def : input2419 = (.seq input2418 input377) := by
  unfold input2419
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2419 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2418 output377)).val
theorem output2419_def : output2419 = (.seq output2418 output377) := by
  unfold output2419
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2419_skip : Flapjack.WordAlloc.isSkip output2419 = false := by
  rw [output2419_def]
  conv => lhs; cbv
  try rfl
theorem node2419_eq : Flapjack.WordAlloc.removeDeadStructural input2419 value310 value1 value2 = (output2419, value1162, value1) := by
  rw [input2419_def, output2419_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node377_eq]
  try dsimp only
  rw [node2418_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2420 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2419 input376)).val
theorem input2420_def : input2420 = (.seq input2419 input376) := by
  unfold input2420
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2420 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2419 output376)).val
theorem output2420_def : output2420 = (.seq output2419 output376) := by
  unfold output2420
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2420_skip : Flapjack.WordAlloc.isSkip output2420 = false := by
  rw [output2420_def]
  conv => lhs; cbv
  try rfl
theorem node2420_eq : Flapjack.WordAlloc.removeDeadStructural input2420 value309 value1 value2 = (output2420, value1162, value1) := by
  rw [input2420_def, output2420_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node376_eq]
  try dsimp only
  rw [node2419_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2421 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2420 input375)).val
theorem input2421_def : input2421 = (.seq input2420 input375) := by
  unfold input2421
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2421 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2420 output375)).val
theorem output2421_def : output2421 = (.seq output2420 output375) := by
  unfold output2421
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2421_skip : Flapjack.WordAlloc.isSkip output2421 = false := by
  rw [output2421_def]
  conv => lhs; cbv
  try rfl
theorem node2421_eq : Flapjack.WordAlloc.removeDeadStructural input2421 value308 value1 value2 = (output2421, value1162, value1) := by
  rw [input2421_def, output2421_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node375_eq]
  try dsimp only
  rw [node2420_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2422 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2421 input374)).val
theorem input2422_def : input2422 = (.seq input2421 input374) := by
  unfold input2422
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2422 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2421 output374)).val
theorem output2422_def : output2422 = (.seq output2421 output374) := by
  unfold output2422
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2422_skip : Flapjack.WordAlloc.isSkip output2422 = false := by
  rw [output2422_def]
  conv => lhs; cbv
  try rfl
theorem node2422_eq : Flapjack.WordAlloc.removeDeadStructural input2422 value307 value1 value2 = (output2422, value1162, value1) := by
  rw [input2422_def, output2422_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node374_eq]
  try dsimp only
  rw [node2421_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2423 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2422 input373)).val
theorem input2423_def : input2423 = (.seq input2422 input373) := by
  unfold input2423
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2423 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2422 output373)).val
theorem output2423_def : output2423 = (.seq output2422 output373) := by
  unfold output2423
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2423_skip : Flapjack.WordAlloc.isSkip output2423 = false := by
  rw [output2423_def]
  conv => lhs; cbv
  try rfl
theorem node2423_eq : Flapjack.WordAlloc.removeDeadStructural input2423 value306 value1 value2 = (output2423, value1162, value1) := by
  rw [input2423_def, output2423_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node373_eq]
  try dsimp only
  rw [node2422_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2424 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2423 input372)).val
theorem input2424_def : input2424 = (.seq input2423 input372) := by
  unfold input2424
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2424 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2423 output372)).val
theorem output2424_def : output2424 = (.seq output2423 output372) := by
  unfold output2424
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2424_skip : Flapjack.WordAlloc.isSkip output2424 = false := by
  rw [output2424_def]
  conv => lhs; cbv
  try rfl
theorem node2424_eq : Flapjack.WordAlloc.removeDeadStructural input2424 value305 value1 value2 = (output2424, value1162, value1) := by
  rw [input2424_def, output2424_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node372_eq]
  try dsimp only
  rw [node2423_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2425 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2424 input371)).val
theorem input2425_def : input2425 = (.seq input2424 input371) := by
  unfold input2425
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2425 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2424 output371)).val
theorem output2425_def : output2425 = (.seq output2424 output371) := by
  unfold output2425
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2425_skip : Flapjack.WordAlloc.isSkip output2425 = false := by
  rw [output2425_def]
  conv => lhs; cbv
  try rfl
theorem node2425_eq : Flapjack.WordAlloc.removeDeadStructural input2425 value304 value1 value2 = (output2425, value1162, value1) := by
  rw [input2425_def, output2425_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node371_eq]
  try dsimp only
  rw [node2424_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2426 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2425 input370)).val
theorem input2426_def : input2426 = (.seq input2425 input370) := by
  unfold input2426
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2426 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2425 output370)).val
theorem output2426_def : output2426 = (.seq output2425 output370) := by
  unfold output2426
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2426_skip : Flapjack.WordAlloc.isSkip output2426 = false := by
  rw [output2426_def]
  conv => lhs; cbv
  try rfl
theorem node2426_eq : Flapjack.WordAlloc.removeDeadStructural input2426 value303 value1 value2 = (output2426, value1162, value1) := by
  rw [input2426_def, output2426_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node370_eq]
  try dsimp only
  rw [node2425_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2427 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2426 input369)).val
theorem input2427_def : input2427 = (.seq input2426 input369) := by
  unfold input2427
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2427 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2426 output369)).val
theorem output2427_def : output2427 = (.seq output2426 output369) := by
  unfold output2427
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2427_skip : Flapjack.WordAlloc.isSkip output2427 = false := by
  rw [output2427_def]
  conv => lhs; cbv
  try rfl
theorem node2427_eq : Flapjack.WordAlloc.removeDeadStructural input2427 value302 value1 value2 = (output2427, value1162, value1) := by
  rw [input2427_def, output2427_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node369_eq]
  try dsimp only
  rw [node2426_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2428 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2427 input368)).val
theorem input2428_def : input2428 = (.seq input2427 input368) := by
  unfold input2428
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2428 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2427 output368)).val
theorem output2428_def : output2428 = (.seq output2427 output368) := by
  unfold output2428
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2428_skip : Flapjack.WordAlloc.isSkip output2428 = false := by
  rw [output2428_def]
  conv => lhs; cbv
  try rfl
theorem node2428_eq : Flapjack.WordAlloc.removeDeadStructural input2428 value301 value1 value2 = (output2428, value1162, value1) := by
  rw [input2428_def, output2428_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node368_eq]
  try dsimp only
  rw [node2427_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2429 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2428 input367)).val
theorem input2429_def : input2429 = (.seq input2428 input367) := by
  unfold input2429
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2429 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2428 output367)).val
theorem output2429_def : output2429 = (.seq output2428 output367) := by
  unfold output2429
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2429_skip : Flapjack.WordAlloc.isSkip output2429 = false := by
  rw [output2429_def]
  conv => lhs; cbv
  try rfl
theorem node2429_eq : Flapjack.WordAlloc.removeDeadStructural input2429 value300 value1 value2 = (output2429, value1162, value1) := by
  rw [input2429_def, output2429_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node367_eq]
  try dsimp only
  rw [node2428_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2430 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2429 input366)).val
theorem input2430_def : input2430 = (.seq input2429 input366) := by
  unfold input2430
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2430 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2429 output366)).val
theorem output2430_def : output2430 = (.seq output2429 output366) := by
  unfold output2430
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2430_skip : Flapjack.WordAlloc.isSkip output2430 = false := by
  rw [output2430_def]
  conv => lhs; cbv
  try rfl
theorem node2430_eq : Flapjack.WordAlloc.removeDeadStructural input2430 value299 value1 value2 = (output2430, value1162, value1) := by
  rw [input2430_def, output2430_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node366_eq]
  try dsimp only
  rw [node2429_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2431 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2430 input365)).val
theorem input2431_def : input2431 = (.seq input2430 input365) := by
  unfold input2431
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2431 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2430 output365)).val
theorem output2431_def : output2431 = (.seq output2430 output365) := by
  unfold output2431
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2431_skip : Flapjack.WordAlloc.isSkip output2431 = false := by
  rw [output2431_def]
  conv => lhs; cbv
  try rfl
theorem node2431_eq : Flapjack.WordAlloc.removeDeadStructural input2431 value298 value1 value2 = (output2431, value1162, value1) := by
  rw [input2431_def, output2431_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node365_eq]
  try dsimp only
  rw [node2430_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2432 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2431 input364)).val
theorem input2432_def : input2432 = (.seq input2431 input364) := by
  unfold input2432
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2432 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2431 output364)).val
theorem output2432_def : output2432 = (.seq output2431 output364) := by
  unfold output2432
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2432_skip : Flapjack.WordAlloc.isSkip output2432 = false := by
  rw [output2432_def]
  conv => lhs; cbv
  try rfl
theorem node2432_eq : Flapjack.WordAlloc.removeDeadStructural input2432 value295 value1 value2 = (output2432, value1162, value1) := by
  rw [input2432_def, output2432_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node364_eq]
  try dsimp only
  rw [node2431_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2433 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2432 input359)).val
theorem input2433_def : input2433 = (.seq input2432 input359) := by
  unfold input2433
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2433 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2432 output359)).val
theorem output2433_def : output2433 = (.seq output2432 output359) := by
  unfold output2433
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2433_skip : Flapjack.WordAlloc.isSkip output2433 = false := by
  rw [output2433_def]
  conv => lhs; cbv
  try rfl
theorem node2433_eq : Flapjack.WordAlloc.removeDeadStructural input2433 value295 value1 value2 = (output2433, value1162, value1) := by
  rw [input2433_def, output2433_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node359_eq]
  try dsimp only
  rw [node2432_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2434 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2433 input358)).val
theorem input2434_def : input2434 = (.seq input2433 input358) := by
  unfold input2434
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2434 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2433 output358)).val
theorem output2434_def : output2434 = (.seq output2433 output358) := by
  unfold output2434
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2434_skip : Flapjack.WordAlloc.isSkip output2434 = false := by
  rw [output2434_def]
  conv => lhs; cbv
  try rfl
theorem node2434_eq : Flapjack.WordAlloc.removeDeadStructural input2434 value294 value1 value2 = (output2434, value1162, value1) := by
  rw [input2434_def, output2434_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node358_eq]
  try dsimp only
  rw [node2433_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2435 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2434 input357)).val
theorem input2435_def : input2435 = (.seq input2434 input357) := by
  unfold input2435
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2435 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2434 output357)).val
theorem output2435_def : output2435 = (.seq output2434 output357) := by
  unfold output2435
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2435_skip : Flapjack.WordAlloc.isSkip output2435 = false := by
  rw [output2435_def]
  conv => lhs; cbv
  try rfl
theorem node2435_eq : Flapjack.WordAlloc.removeDeadStructural input2435 value293 value1 value2 = (output2435, value1162, value1) := by
  rw [input2435_def, output2435_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node357_eq]
  try dsimp only
  rw [node2434_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2436 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2435 input356)).val
theorem input2436_def : input2436 = (.seq input2435 input356) := by
  unfold input2436
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2436 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2435 output356)).val
theorem output2436_def : output2436 = (.seq output2435 output356) := by
  unfold output2436
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2436_skip : Flapjack.WordAlloc.isSkip output2436 = false := by
  rw [output2436_def]
  conv => lhs; cbv
  try rfl
theorem node2436_eq : Flapjack.WordAlloc.removeDeadStructural input2436 value292 value1 value2 = (output2436, value1162, value1) := by
  rw [input2436_def, output2436_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node356_eq]
  try dsimp only
  rw [node2435_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2437 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2436 input355)).val
theorem input2437_def : input2437 = (.seq input2436 input355) := by
  unfold input2437
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2437 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2436 output355)).val
theorem output2437_def : output2437 = (.seq output2436 output355) := by
  unfold output2437
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2437_skip : Flapjack.WordAlloc.isSkip output2437 = false := by
  rw [output2437_def]
  conv => lhs; cbv
  try rfl
theorem node2437_eq : Flapjack.WordAlloc.removeDeadStructural input2437 value291 value1 value2 = (output2437, value1162, value1) := by
  rw [input2437_def, output2437_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node355_eq]
  try dsimp only
  rw [node2436_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2438 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2437 input354)).val
theorem input2438_def : input2438 = (.seq input2437 input354) := by
  unfold input2438
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2438 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2437 output354)).val
theorem output2438_def : output2438 = (.seq output2437 output354) := by
  unfold output2438
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2438_skip : Flapjack.WordAlloc.isSkip output2438 = false := by
  rw [output2438_def]
  conv => lhs; cbv
  try rfl
theorem node2438_eq : Flapjack.WordAlloc.removeDeadStructural input2438 value290 value1 value2 = (output2438, value1162, value1) := by
  rw [input2438_def, output2438_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node354_eq]
  try dsimp only
  rw [node2437_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2439 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2438 input353)).val
theorem input2439_def : input2439 = (.seq input2438 input353) := by
  unfold input2439
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2439 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2438 output353)).val
theorem output2439_def : output2439 = (.seq output2438 output353) := by
  unfold output2439
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2439_skip : Flapjack.WordAlloc.isSkip output2439 = false := by
  rw [output2439_def]
  conv => lhs; cbv
  try rfl
theorem node2439_eq : Flapjack.WordAlloc.removeDeadStructural input2439 value289 value1 value2 = (output2439, value1162, value1) := by
  rw [input2439_def, output2439_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node353_eq]
  try dsimp only
  rw [node2438_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2440 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2439 input352)).val
theorem input2440_def : input2440 = (.seq input2439 input352) := by
  unfold input2440
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2440 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2439 output352)).val
theorem output2440_def : output2440 = (.seq output2439 output352) := by
  unfold output2440
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2440_skip : Flapjack.WordAlloc.isSkip output2440 = false := by
  rw [output2440_def]
  conv => lhs; cbv
  try rfl
theorem node2440_eq : Flapjack.WordAlloc.removeDeadStructural input2440 value286 value1 value2 = (output2440, value1162, value1) := by
  rw [input2440_def, output2440_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node352_eq]
  try dsimp only
  rw [node2439_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2441 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2440 input347)).val
theorem input2441_def : input2441 = (.seq input2440 input347) := by
  unfold input2441
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2441 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2440 output347)).val
theorem output2441_def : output2441 = (.seq output2440 output347) := by
  unfold output2441
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2441_skip : Flapjack.WordAlloc.isSkip output2441 = false := by
  rw [output2441_def]
  conv => lhs; cbv
  try rfl
theorem node2441_eq : Flapjack.WordAlloc.removeDeadStructural input2441 value286 value1 value2 = (output2441, value1162, value1) := by
  rw [input2441_def, output2441_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node347_eq]
  try dsimp only
  rw [node2440_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2442 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2441 input346)).val
theorem input2442_def : input2442 = (.seq input2441 input346) := by
  unfold input2442
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2442 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2441 output346)).val
theorem output2442_def : output2442 = (.seq output2441 output346) := by
  unfold output2442
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2442_skip : Flapjack.WordAlloc.isSkip output2442 = false := by
  rw [output2442_def]
  conv => lhs; cbv
  try rfl
theorem node2442_eq : Flapjack.WordAlloc.removeDeadStructural input2442 value285 value1 value2 = (output2442, value1162, value1) := by
  rw [input2442_def, output2442_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node346_eq]
  try dsimp only
  rw [node2441_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2443 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2442 input345)).val
theorem input2443_def : input2443 = (.seq input2442 input345) := by
  unfold input2443
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2443 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2442 output345)).val
theorem output2443_def : output2443 = (.seq output2442 output345) := by
  unfold output2443
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2443_skip : Flapjack.WordAlloc.isSkip output2443 = false := by
  rw [output2443_def]
  conv => lhs; cbv
  try rfl
theorem node2443_eq : Flapjack.WordAlloc.removeDeadStructural input2443 value284 value1 value2 = (output2443, value1162, value1) := by
  rw [input2443_def, output2443_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node345_eq]
  try dsimp only
  rw [node2442_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2444 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2443 input344)).val
theorem input2444_def : input2444 = (.seq input2443 input344) := by
  unfold input2444
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2444 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2443 output344)).val
theorem output2444_def : output2444 = (.seq output2443 output344) := by
  unfold output2444
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2444_skip : Flapjack.WordAlloc.isSkip output2444 = false := by
  rw [output2444_def]
  conv => lhs; cbv
  try rfl
theorem node2444_eq : Flapjack.WordAlloc.removeDeadStructural input2444 value283 value1 value2 = (output2444, value1162, value1) := by
  rw [input2444_def, output2444_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node344_eq]
  try dsimp only
  rw [node2443_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2445 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2444 input343)).val
theorem input2445_def : input2445 = (.seq input2444 input343) := by
  unfold input2445
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2445 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2444 output343)).val
theorem output2445_def : output2445 = (.seq output2444 output343) := by
  unfold output2445
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2445_skip : Flapjack.WordAlloc.isSkip output2445 = false := by
  rw [output2445_def]
  conv => lhs; cbv
  try rfl
theorem node2445_eq : Flapjack.WordAlloc.removeDeadStructural input2445 value282 value1 value2 = (output2445, value1162, value1) := by
  rw [input2445_def, output2445_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node343_eq]
  try dsimp only
  rw [node2444_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2446 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2445 input342)).val
theorem input2446_def : input2446 = (.seq input2445 input342) := by
  unfold input2446
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2446 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2445 output342)).val
theorem output2446_def : output2446 = (.seq output2445 output342) := by
  unfold output2446
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2446_skip : Flapjack.WordAlloc.isSkip output2446 = false := by
  rw [output2446_def]
  conv => lhs; cbv
  try rfl
theorem node2446_eq : Flapjack.WordAlloc.removeDeadStructural input2446 value281 value1 value2 = (output2446, value1162, value1) := by
  rw [input2446_def, output2446_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node342_eq]
  try dsimp only
  rw [node2445_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2447 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2446 input341)).val
theorem input2447_def : input2447 = (.seq input2446 input341) := by
  unfold input2447
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2447 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2446 output341)).val
theorem output2447_def : output2447 = (.seq output2446 output341) := by
  unfold output2447
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2447_skip : Flapjack.WordAlloc.isSkip output2447 = false := by
  rw [output2447_def]
  conv => lhs; cbv
  try rfl
theorem node2447_eq : Flapjack.WordAlloc.removeDeadStructural input2447 value280 value1 value2 = (output2447, value1162, value1) := by
  rw [input2447_def, output2447_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node341_eq]
  try dsimp only
  rw [node2446_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2448 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2447 input340)).val
theorem input2448_def : input2448 = (.seq input2447 input340) := by
  unfold input2448
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2448 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2447 output340)).val
theorem output2448_def : output2448 = (.seq output2447 output340) := by
  unfold output2448
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2448_skip : Flapjack.WordAlloc.isSkip output2448 = false := by
  rw [output2448_def]
  conv => lhs; cbv
  try rfl
theorem node2448_eq : Flapjack.WordAlloc.removeDeadStructural input2448 value279 value1 value2 = (output2448, value1162, value1) := by
  rw [input2448_def, output2448_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node340_eq]
  try dsimp only
  rw [node2447_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2449 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2448 input339)).val
theorem input2449_def : input2449 = (.seq input2448 input339) := by
  unfold input2449
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2449 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2448 output339)).val
theorem output2449_def : output2449 = (.seq output2448 output339) := by
  unfold output2449
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2449_skip : Flapjack.WordAlloc.isSkip output2449 = false := by
  rw [output2449_def]
  conv => lhs; cbv
  try rfl
theorem node2449_eq : Flapjack.WordAlloc.removeDeadStructural input2449 value278 value1 value2 = (output2449, value1162, value1) := by
  rw [input2449_def, output2449_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node339_eq]
  try dsimp only
  rw [node2448_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2450 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2449 input338)).val
theorem input2450_def : input2450 = (.seq input2449 input338) := by
  unfold input2450
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2450 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2449 output338)).val
theorem output2450_def : output2450 = (.seq output2449 output338) := by
  unfold output2450
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2450_skip : Flapjack.WordAlloc.isSkip output2450 = false := by
  rw [output2450_def]
  conv => lhs; cbv
  try rfl
theorem node2450_eq : Flapjack.WordAlloc.removeDeadStructural input2450 value277 value1 value2 = (output2450, value1162, value1) := by
  rw [input2450_def, output2450_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node338_eq]
  try dsimp only
  rw [node2449_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2451 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2450 input337)).val
theorem input2451_def : input2451 = (.seq input2450 input337) := by
  unfold input2451
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2451 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2450 output337)).val
theorem output2451_def : output2451 = (.seq output2450 output337) := by
  unfold output2451
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2451_skip : Flapjack.WordAlloc.isSkip output2451 = false := by
  rw [output2451_def]
  conv => lhs; cbv
  try rfl
theorem node2451_eq : Flapjack.WordAlloc.removeDeadStructural input2451 value276 value1 value2 = (output2451, value1162, value1) := by
  rw [input2451_def, output2451_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node337_eq]
  try dsimp only
  rw [node2450_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2452 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2451 input336)).val
theorem input2452_def : input2452 = (.seq input2451 input336) := by
  unfold input2452
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2452 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2451 output336)).val
theorem output2452_def : output2452 = (.seq output2451 output336) := by
  unfold output2452
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2452_skip : Flapjack.WordAlloc.isSkip output2452 = false := by
  rw [output2452_def]
  conv => lhs; cbv
  try rfl
theorem node2452_eq : Flapjack.WordAlloc.removeDeadStructural input2452 value275 value1 value2 = (output2452, value1162, value1) := by
  rw [input2452_def, output2452_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node336_eq]
  try dsimp only
  rw [node2451_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2453 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2452 input335)).val
theorem input2453_def : input2453 = (.seq input2452 input335) := by
  unfold input2453
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2453 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2452 output335)).val
theorem output2453_def : output2453 = (.seq output2452 output335) := by
  unfold output2453
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2453_skip : Flapjack.WordAlloc.isSkip output2453 = false := by
  rw [output2453_def]
  conv => lhs; cbv
  try rfl
theorem node2453_eq : Flapjack.WordAlloc.removeDeadStructural input2453 value274 value1 value2 = (output2453, value1162, value1) := by
  rw [input2453_def, output2453_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node335_eq]
  try dsimp only
  rw [node2452_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2454 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2453 input334)).val
theorem input2454_def : input2454 = (.seq input2453 input334) := by
  unfold input2454
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2454 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2453 output334)).val
theorem output2454_def : output2454 = (.seq output2453 output334) := by
  unfold output2454
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2454_skip : Flapjack.WordAlloc.isSkip output2454 = false := by
  rw [output2454_def]
  conv => lhs; cbv
  try rfl
theorem node2454_eq : Flapjack.WordAlloc.removeDeadStructural input2454 value271 value1 value2 = (output2454, value1162, value1) := by
  rw [input2454_def, output2454_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node334_eq]
  try dsimp only
  rw [node2453_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2455 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2454 input329)).val
theorem input2455_def : input2455 = (.seq input2454 input329) := by
  unfold input2455
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2455 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2454 output329)).val
theorem output2455_def : output2455 = (.seq output2454 output329) := by
  unfold output2455
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2455_skip : Flapjack.WordAlloc.isSkip output2455 = false := by
  rw [output2455_def]
  conv => lhs; cbv
  try rfl
theorem node2455_eq : Flapjack.WordAlloc.removeDeadStructural input2455 value271 value1 value2 = (output2455, value1162, value1) := by
  rw [input2455_def, output2455_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node329_eq]
  try dsimp only
  rw [node2454_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2456 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2455 input328)).val
theorem input2456_def : input2456 = (.seq input2455 input328) := by
  unfold input2456
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2456 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2455 output328)).val
theorem output2456_def : output2456 = (.seq output2455 output328) := by
  unfold output2456
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2456_skip : Flapjack.WordAlloc.isSkip output2456 = false := by
  rw [output2456_def]
  conv => lhs; cbv
  try rfl
theorem node2456_eq : Flapjack.WordAlloc.removeDeadStructural input2456 value270 value1 value2 = (output2456, value1162, value1) := by
  rw [input2456_def, output2456_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node328_eq]
  try dsimp only
  rw [node2455_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2457 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2456 input327)).val
theorem input2457_def : input2457 = (.seq input2456 input327) := by
  unfold input2457
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2457 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2456 output327)).val
theorem output2457_def : output2457 = (.seq output2456 output327) := by
  unfold output2457
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2457_skip : Flapjack.WordAlloc.isSkip output2457 = false := by
  rw [output2457_def]
  conv => lhs; cbv
  try rfl
theorem node2457_eq : Flapjack.WordAlloc.removeDeadStructural input2457 value269 value1 value2 = (output2457, value1162, value1) := by
  rw [input2457_def, output2457_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node327_eq]
  try dsimp only
  rw [node2456_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2458 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2457 input326)).val
theorem input2458_def : input2458 = (.seq input2457 input326) := by
  unfold input2458
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2458 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2457 output326)).val
theorem output2458_def : output2458 = (.seq output2457 output326) := by
  unfold output2458
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2458_skip : Flapjack.WordAlloc.isSkip output2458 = false := by
  rw [output2458_def]
  conv => lhs; cbv
  try rfl
theorem node2458_eq : Flapjack.WordAlloc.removeDeadStructural input2458 value268 value1 value2 = (output2458, value1162, value1) := by
  rw [input2458_def, output2458_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node326_eq]
  try dsimp only
  rw [node2457_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2459 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2458 input325)).val
theorem input2459_def : input2459 = (.seq input2458 input325) := by
  unfold input2459
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2459 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2458 output325)).val
theorem output2459_def : output2459 = (.seq output2458 output325) := by
  unfold output2459
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2459_skip : Flapjack.WordAlloc.isSkip output2459 = false := by
  rw [output2459_def]
  conv => lhs; cbv
  try rfl
theorem node2459_eq : Flapjack.WordAlloc.removeDeadStructural input2459 value267 value1 value2 = (output2459, value1162, value1) := by
  rw [input2459_def, output2459_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node325_eq]
  try dsimp only
  rw [node2458_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2460 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2459 input324)).val
theorem input2460_def : input2460 = (.seq input2459 input324) := by
  unfold input2460
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2460 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2459 output324)).val
theorem output2460_def : output2460 = (.seq output2459 output324) := by
  unfold output2460
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2460_skip : Flapjack.WordAlloc.isSkip output2460 = false := by
  rw [output2460_def]
  conv => lhs; cbv
  try rfl
theorem node2460_eq : Flapjack.WordAlloc.removeDeadStructural input2460 value266 value1 value2 = (output2460, value1162, value1) := by
  rw [input2460_def, output2460_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node324_eq]
  try dsimp only
  rw [node2459_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2461 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2460 input323)).val
theorem input2461_def : input2461 = (.seq input2460 input323) := by
  unfold input2461
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2461 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2460 output323)).val
theorem output2461_def : output2461 = (.seq output2460 output323) := by
  unfold output2461
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2461_skip : Flapjack.WordAlloc.isSkip output2461 = false := by
  rw [output2461_def]
  conv => lhs; cbv
  try rfl
theorem node2461_eq : Flapjack.WordAlloc.removeDeadStructural input2461 value265 value1 value2 = (output2461, value1162, value1) := by
  rw [input2461_def, output2461_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node323_eq]
  try dsimp only
  rw [node2460_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2462 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2461 input322)).val
theorem input2462_def : input2462 = (.seq input2461 input322) := by
  unfold input2462
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2462 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2461 output322)).val
theorem output2462_def : output2462 = (.seq output2461 output322) := by
  unfold output2462
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2462_skip : Flapjack.WordAlloc.isSkip output2462 = false := by
  rw [output2462_def]
  conv => lhs; cbv
  try rfl
theorem node2462_eq : Flapjack.WordAlloc.removeDeadStructural input2462 value264 value1 value2 = (output2462, value1162, value1) := by
  rw [input2462_def, output2462_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node322_eq]
  try dsimp only
  rw [node2461_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2463 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2462 input321)).val
theorem input2463_def : input2463 = (.seq input2462 input321) := by
  unfold input2463
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2463 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2462 output321)).val
theorem output2463_def : output2463 = (.seq output2462 output321) := by
  unfold output2463
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2463_skip : Flapjack.WordAlloc.isSkip output2463 = false := by
  rw [output2463_def]
  conv => lhs; cbv
  try rfl
theorem node2463_eq : Flapjack.WordAlloc.removeDeadStructural input2463 value263 value1 value2 = (output2463, value1162, value1) := by
  rw [input2463_def, output2463_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node321_eq]
  try dsimp only
  rw [node2462_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2464 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2463 input320)).val
theorem input2464_def : input2464 = (.seq input2463 input320) := by
  unfold input2464
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2464 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2463 output320)).val
theorem output2464_def : output2464 = (.seq output2463 output320) := by
  unfold output2464
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2464_skip : Flapjack.WordAlloc.isSkip output2464 = false := by
  rw [output2464_def]
  conv => lhs; cbv
  try rfl
theorem node2464_eq : Flapjack.WordAlloc.removeDeadStructural input2464 value262 value1 value2 = (output2464, value1162, value1) := by
  rw [input2464_def, output2464_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node320_eq]
  try dsimp only
  rw [node2463_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2465 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2464 input319)).val
theorem input2465_def : input2465 = (.seq input2464 input319) := by
  unfold input2465
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2465 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2464 output319)).val
theorem output2465_def : output2465 = (.seq output2464 output319) := by
  unfold output2465
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2465_skip : Flapjack.WordAlloc.isSkip output2465 = false := by
  rw [output2465_def]
  conv => lhs; cbv
  try rfl
theorem node2465_eq : Flapjack.WordAlloc.removeDeadStructural input2465 value261 value1 value2 = (output2465, value1162, value1) := by
  rw [input2465_def, output2465_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node319_eq]
  try dsimp only
  rw [node2464_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2466 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2465 input318)).val
theorem input2466_def : input2466 = (.seq input2465 input318) := by
  unfold input2466
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2466 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2465 output318)).val
theorem output2466_def : output2466 = (.seq output2465 output318) := by
  unfold output2466
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2466_skip : Flapjack.WordAlloc.isSkip output2466 = false := by
  rw [output2466_def]
  conv => lhs; cbv
  try rfl
theorem node2466_eq : Flapjack.WordAlloc.removeDeadStructural input2466 value260 value1 value2 = (output2466, value1162, value1) := by
  rw [input2466_def, output2466_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node318_eq]
  try dsimp only
  rw [node2465_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2467 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2466 input317)).val
theorem input2467_def : input2467 = (.seq input2466 input317) := by
  unfold input2467
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2467 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2466 output317)).val
theorem output2467_def : output2467 = (.seq output2466 output317) := by
  unfold output2467
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2467_skip : Flapjack.WordAlloc.isSkip output2467 = false := by
  rw [output2467_def]
  conv => lhs; cbv
  try rfl
theorem node2467_eq : Flapjack.WordAlloc.removeDeadStructural input2467 value259 value1 value2 = (output2467, value1162, value1) := by
  rw [input2467_def, output2467_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node317_eq]
  try dsimp only
  rw [node2466_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2468 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2467 input316)).val
theorem input2468_def : input2468 = (.seq input2467 input316) := by
  unfold input2468
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2468 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2467 output316)).val
theorem output2468_def : output2468 = (.seq output2467 output316) := by
  unfold output2468
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2468_skip : Flapjack.WordAlloc.isSkip output2468 = false := by
  rw [output2468_def]
  conv => lhs; cbv
  try rfl
theorem node2468_eq : Flapjack.WordAlloc.removeDeadStructural input2468 value256 value1 value2 = (output2468, value1162, value1) := by
  rw [input2468_def, output2468_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node316_eq]
  try dsimp only
  rw [node2467_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2469 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2468 input311)).val
theorem input2469_def : input2469 = (.seq input2468 input311) := by
  unfold input2469
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2469 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2468 output311)).val
theorem output2469_def : output2469 = (.seq output2468 output311) := by
  unfold output2469
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2469_skip : Flapjack.WordAlloc.isSkip output2469 = false := by
  rw [output2469_def]
  conv => lhs; cbv
  try rfl
theorem node2469_eq : Flapjack.WordAlloc.removeDeadStructural input2469 value256 value1 value2 = (output2469, value1162, value1) := by
  rw [input2469_def, output2469_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node311_eq]
  try dsimp only
  rw [node2468_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2470 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2469 input310)).val
theorem input2470_def : input2470 = (.seq input2469 input310) := by
  unfold input2470
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2470 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2469 output310)).val
theorem output2470_def : output2470 = (.seq output2469 output310) := by
  unfold output2470
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2470_skip : Flapjack.WordAlloc.isSkip output2470 = false := by
  rw [output2470_def]
  conv => lhs; cbv
  try rfl
theorem node2470_eq : Flapjack.WordAlloc.removeDeadStructural input2470 value255 value1 value2 = (output2470, value1162, value1) := by
  rw [input2470_def, output2470_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node310_eq]
  try dsimp only
  rw [node2469_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2471 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2470 input309)).val
theorem input2471_def : input2471 = (.seq input2470 input309) := by
  unfold input2471
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2471 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2470 output309)).val
theorem output2471_def : output2471 = (.seq output2470 output309) := by
  unfold output2471
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2471_skip : Flapjack.WordAlloc.isSkip output2471 = false := by
  rw [output2471_def]
  conv => lhs; cbv
  try rfl
theorem node2471_eq : Flapjack.WordAlloc.removeDeadStructural input2471 value254 value1 value2 = (output2471, value1162, value1) := by
  rw [input2471_def, output2471_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node309_eq]
  try dsimp only
  rw [node2470_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2472 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2471 input308)).val
theorem input2472_def : input2472 = (.seq input2471 input308) := by
  unfold input2472
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2472 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2471 output308)).val
theorem output2472_def : output2472 = (.seq output2471 output308) := by
  unfold output2472
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2472_skip : Flapjack.WordAlloc.isSkip output2472 = false := by
  rw [output2472_def]
  conv => lhs; cbv
  try rfl
theorem node2472_eq : Flapjack.WordAlloc.removeDeadStructural input2472 value253 value1 value2 = (output2472, value1162, value1) := by
  rw [input2472_def, output2472_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node308_eq]
  try dsimp only
  rw [node2471_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2473 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2472 input307)).val
theorem input2473_def : input2473 = (.seq input2472 input307) := by
  unfold input2473
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2473 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2472 output307)).val
theorem output2473_def : output2473 = (.seq output2472 output307) := by
  unfold output2473
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2473_skip : Flapjack.WordAlloc.isSkip output2473 = false := by
  rw [output2473_def]
  conv => lhs; cbv
  try rfl
theorem node2473_eq : Flapjack.WordAlloc.removeDeadStructural input2473 value252 value1 value2 = (output2473, value1162, value1) := by
  rw [input2473_def, output2473_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node307_eq]
  try dsimp only
  rw [node2472_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2474 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2473 input306)).val
theorem input2474_def : input2474 = (.seq input2473 input306) := by
  unfold input2474
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2474 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2473 output306)).val
theorem output2474_def : output2474 = (.seq output2473 output306) := by
  unfold output2474
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2474_skip : Flapjack.WordAlloc.isSkip output2474 = false := by
  rw [output2474_def]
  conv => lhs; cbv
  try rfl
theorem node2474_eq : Flapjack.WordAlloc.removeDeadStructural input2474 value251 value1 value2 = (output2474, value1162, value1) := by
  rw [input2474_def, output2474_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node306_eq]
  try dsimp only
  rw [node2473_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2475 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2474 input305)).val
theorem input2475_def : input2475 = (.seq input2474 input305) := by
  unfold input2475
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2475 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2474 output305)).val
theorem output2475_def : output2475 = (.seq output2474 output305) := by
  unfold output2475
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2475_skip : Flapjack.WordAlloc.isSkip output2475 = false := by
  rw [output2475_def]
  conv => lhs; cbv
  try rfl
theorem node2475_eq : Flapjack.WordAlloc.removeDeadStructural input2475 value250 value1 value2 = (output2475, value1162, value1) := by
  rw [input2475_def, output2475_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node305_eq]
  try dsimp only
  rw [node2474_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2476 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2475 input304)).val
theorem input2476_def : input2476 = (.seq input2475 input304) := by
  unfold input2476
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2476 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2475 output304)).val
theorem output2476_def : output2476 = (.seq output2475 output304) := by
  unfold output2476
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2476_skip : Flapjack.WordAlloc.isSkip output2476 = false := by
  rw [output2476_def]
  conv => lhs; cbv
  try rfl
theorem node2476_eq : Flapjack.WordAlloc.removeDeadStructural input2476 value249 value1 value2 = (output2476, value1162, value1) := by
  rw [input2476_def, output2476_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node304_eq]
  try dsimp only
  rw [node2475_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2477 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2476 input303)).val
theorem input2477_def : input2477 = (.seq input2476 input303) := by
  unfold input2477
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2477 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2476 output303)).val
theorem output2477_def : output2477 = (.seq output2476 output303) := by
  unfold output2477
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2477_skip : Flapjack.WordAlloc.isSkip output2477 = false := by
  rw [output2477_def]
  conv => lhs; cbv
  try rfl
theorem node2477_eq : Flapjack.WordAlloc.removeDeadStructural input2477 value248 value1 value2 = (output2477, value1162, value1) := by
  rw [input2477_def, output2477_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node303_eq]
  try dsimp only
  rw [node2476_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2478 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2477 input302)).val
theorem input2478_def : input2478 = (.seq input2477 input302) := by
  unfold input2478
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2478 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2477 output302)).val
theorem output2478_def : output2478 = (.seq output2477 output302) := by
  unfold output2478
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2478_skip : Flapjack.WordAlloc.isSkip output2478 = false := by
  rw [output2478_def]
  conv => lhs; cbv
  try rfl
theorem node2478_eq : Flapjack.WordAlloc.removeDeadStructural input2478 value247 value1 value2 = (output2478, value1162, value1) := by
  rw [input2478_def, output2478_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node302_eq]
  try dsimp only
  rw [node2477_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2479 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2478 input301)).val
theorem input2479_def : input2479 = (.seq input2478 input301) := by
  unfold input2479
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2479 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2478 output301)).val
theorem output2479_def : output2479 = (.seq output2478 output301) := by
  unfold output2479
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2479_skip : Flapjack.WordAlloc.isSkip output2479 = false := by
  rw [output2479_def]
  conv => lhs; cbv
  try rfl
theorem node2479_eq : Flapjack.WordAlloc.removeDeadStructural input2479 value246 value1 value2 = (output2479, value1162, value1) := by
  rw [input2479_def, output2479_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node301_eq]
  try dsimp only
  rw [node2478_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2480 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2479 input300)).val
theorem input2480_def : input2480 = (.seq input2479 input300) := by
  unfold input2480
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2480 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2479 output300)).val
theorem output2480_def : output2480 = (.seq output2479 output300) := by
  unfold output2480
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2480_skip : Flapjack.WordAlloc.isSkip output2480 = false := by
  rw [output2480_def]
  conv => lhs; cbv
  try rfl
theorem node2480_eq : Flapjack.WordAlloc.removeDeadStructural input2480 value245 value1 value2 = (output2480, value1162, value1) := by
  rw [input2480_def, output2480_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node300_eq]
  try dsimp only
  rw [node2479_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2481 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2480 input299)).val
theorem input2481_def : input2481 = (.seq input2480 input299) := by
  unfold input2481
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2481 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2480 output299)).val
theorem output2481_def : output2481 = (.seq output2480 output299) := by
  unfold output2481
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2481_skip : Flapjack.WordAlloc.isSkip output2481 = false := by
  rw [output2481_def]
  conv => lhs; cbv
  try rfl
theorem node2481_eq : Flapjack.WordAlloc.removeDeadStructural input2481 value244 value1 value2 = (output2481, value1162, value1) := by
  rw [input2481_def, output2481_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node299_eq]
  try dsimp only
  rw [node2480_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2482 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2481 input298)).val
theorem input2482_def : input2482 = (.seq input2481 input298) := by
  unfold input2482
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2482 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2481 output298)).val
theorem output2482_def : output2482 = (.seq output2481 output298) := by
  unfold output2482
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2482_skip : Flapjack.WordAlloc.isSkip output2482 = false := by
  rw [output2482_def]
  conv => lhs; cbv
  try rfl
theorem node2482_eq : Flapjack.WordAlloc.removeDeadStructural input2482 value241 value1 value2 = (output2482, value1162, value1) := by
  rw [input2482_def, output2482_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node298_eq]
  try dsimp only
  rw [node2481_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2483 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2482 input293)).val
theorem input2483_def : input2483 = (.seq input2482 input293) := by
  unfold input2483
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2483 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2482 output293)).val
theorem output2483_def : output2483 = (.seq output2482 output293) := by
  unfold output2483
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2483_skip : Flapjack.WordAlloc.isSkip output2483 = false := by
  rw [output2483_def]
  conv => lhs; cbv
  try rfl
theorem node2483_eq : Flapjack.WordAlloc.removeDeadStructural input2483 value241 value1 value2 = (output2483, value1162, value1) := by
  rw [input2483_def, output2483_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node293_eq]
  try dsimp only
  rw [node2482_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2484 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2483 input292)).val
theorem input2484_def : input2484 = (.seq input2483 input292) := by
  unfold input2484
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2484 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2483 output292)).val
theorem output2484_def : output2484 = (.seq output2483 output292) := by
  unfold output2484
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2484_skip : Flapjack.WordAlloc.isSkip output2484 = false := by
  rw [output2484_def]
  conv => lhs; cbv
  try rfl
theorem node2484_eq : Flapjack.WordAlloc.removeDeadStructural input2484 value240 value1 value2 = (output2484, value1162, value1) := by
  rw [input2484_def, output2484_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node292_eq]
  try dsimp only
  rw [node2483_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2485 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2484 input291)).val
theorem input2485_def : input2485 = (.seq input2484 input291) := by
  unfold input2485
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2485 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2484 output291)).val
theorem output2485_def : output2485 = (.seq output2484 output291) := by
  unfold output2485
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2485_skip : Flapjack.WordAlloc.isSkip output2485 = false := by
  rw [output2485_def]
  conv => lhs; cbv
  try rfl
theorem node2485_eq : Flapjack.WordAlloc.removeDeadStructural input2485 value239 value1 value2 = (output2485, value1162, value1) := by
  rw [input2485_def, output2485_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node291_eq]
  try dsimp only
  rw [node2484_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2486 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2485 input290)).val
theorem input2486_def : input2486 = (.seq input2485 input290) := by
  unfold input2486
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2486 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2485 output290)).val
theorem output2486_def : output2486 = (.seq output2485 output290) := by
  unfold output2486
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2486_skip : Flapjack.WordAlloc.isSkip output2486 = false := by
  rw [output2486_def]
  conv => lhs; cbv
  try rfl
theorem node2486_eq : Flapjack.WordAlloc.removeDeadStructural input2486 value238 value1 value2 = (output2486, value1162, value1) := by
  rw [input2486_def, output2486_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node290_eq]
  try dsimp only
  rw [node2485_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2487 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2486 input289)).val
theorem input2487_def : input2487 = (.seq input2486 input289) := by
  unfold input2487
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2487 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2486 output289)).val
theorem output2487_def : output2487 = (.seq output2486 output289) := by
  unfold output2487
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2487_skip : Flapjack.WordAlloc.isSkip output2487 = false := by
  rw [output2487_def]
  conv => lhs; cbv
  try rfl
theorem node2487_eq : Flapjack.WordAlloc.removeDeadStructural input2487 value237 value1 value2 = (output2487, value1162, value1) := by
  rw [input2487_def, output2487_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node289_eq]
  try dsimp only
  rw [node2486_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2488 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2487 input288)).val
theorem input2488_def : input2488 = (.seq input2487 input288) := by
  unfold input2488
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2488 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2487 output288)).val
theorem output2488_def : output2488 = (.seq output2487 output288) := by
  unfold output2488
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2488_skip : Flapjack.WordAlloc.isSkip output2488 = false := by
  rw [output2488_def]
  conv => lhs; cbv
  try rfl
theorem node2488_eq : Flapjack.WordAlloc.removeDeadStructural input2488 value236 value1 value2 = (output2488, value1162, value1) := by
  rw [input2488_def, output2488_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node288_eq]
  try dsimp only
  rw [node2487_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2489 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2488 input287)).val
theorem input2489_def : input2489 = (.seq input2488 input287) := by
  unfold input2489
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2489 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2488 output287)).val
theorem output2489_def : output2489 = (.seq output2488 output287) := by
  unfold output2489
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2489_skip : Flapjack.WordAlloc.isSkip output2489 = false := by
  rw [output2489_def]
  conv => lhs; cbv
  try rfl
theorem node2489_eq : Flapjack.WordAlloc.removeDeadStructural input2489 value235 value1 value2 = (output2489, value1162, value1) := by
  rw [input2489_def, output2489_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node287_eq]
  try dsimp only
  rw [node2488_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2490 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2489 input286)).val
theorem input2490_def : input2490 = (.seq input2489 input286) := by
  unfold input2490
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2490 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2489 output286)).val
theorem output2490_def : output2490 = (.seq output2489 output286) := by
  unfold output2490
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2490_skip : Flapjack.WordAlloc.isSkip output2490 = false := by
  rw [output2490_def]
  conv => lhs; cbv
  try rfl
theorem node2490_eq : Flapjack.WordAlloc.removeDeadStructural input2490 value232 value1 value2 = (output2490, value1162, value1) := by
  rw [input2490_def, output2490_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node286_eq]
  try dsimp only
  rw [node2489_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2491 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2490 input281)).val
theorem input2491_def : input2491 = (.seq input2490 input281) := by
  unfold input2491
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2491 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2490 output281)).val
theorem output2491_def : output2491 = (.seq output2490 output281) := by
  unfold output2491
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2491_skip : Flapjack.WordAlloc.isSkip output2491 = false := by
  rw [output2491_def]
  conv => lhs; cbv
  try rfl
theorem node2491_eq : Flapjack.WordAlloc.removeDeadStructural input2491 value232 value1 value2 = (output2491, value1162, value1) := by
  rw [input2491_def, output2491_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node281_eq]
  try dsimp only
  rw [node2490_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2492 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2491 input280)).val
theorem input2492_def : input2492 = (.seq input2491 input280) := by
  unfold input2492
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2492 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2491 output280)).val
theorem output2492_def : output2492 = (.seq output2491 output280) := by
  unfold output2492
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2492_skip : Flapjack.WordAlloc.isSkip output2492 = false := by
  rw [output2492_def]
  conv => lhs; cbv
  try rfl
theorem node2492_eq : Flapjack.WordAlloc.removeDeadStructural input2492 value231 value1 value2 = (output2492, value1162, value1) := by
  rw [input2492_def, output2492_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node280_eq]
  try dsimp only
  rw [node2491_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2493 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2492 input279)).val
theorem input2493_def : input2493 = (.seq input2492 input279) := by
  unfold input2493
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2493 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2492 output279)).val
theorem output2493_def : output2493 = (.seq output2492 output279) := by
  unfold output2493
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2493_skip : Flapjack.WordAlloc.isSkip output2493 = false := by
  rw [output2493_def]
  conv => lhs; cbv
  try rfl
theorem node2493_eq : Flapjack.WordAlloc.removeDeadStructural input2493 value230 value1 value2 = (output2493, value1162, value1) := by
  rw [input2493_def, output2493_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node279_eq]
  try dsimp only
  rw [node2492_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2494 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2493 input278)).val
theorem input2494_def : input2494 = (.seq input2493 input278) := by
  unfold input2494
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2494 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2493 output278)).val
theorem output2494_def : output2494 = (.seq output2493 output278) := by
  unfold output2494
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2494_skip : Flapjack.WordAlloc.isSkip output2494 = false := by
  rw [output2494_def]
  conv => lhs; cbv
  try rfl
theorem node2494_eq : Flapjack.WordAlloc.removeDeadStructural input2494 value229 value1 value2 = (output2494, value1162, value1) := by
  rw [input2494_def, output2494_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node278_eq]
  try dsimp only
  rw [node2493_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2495 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2494 input277)).val
theorem input2495_def : input2495 = (.seq input2494 input277) := by
  unfold input2495
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2495 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2494 output277)).val
theorem output2495_def : output2495 = (.seq output2494 output277) := by
  unfold output2495
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2495_skip : Flapjack.WordAlloc.isSkip output2495 = false := by
  rw [output2495_def]
  conv => lhs; cbv
  try rfl
theorem node2495_eq : Flapjack.WordAlloc.removeDeadStructural input2495 value228 value1 value2 = (output2495, value1162, value1) := by
  rw [input2495_def, output2495_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node277_eq]
  try dsimp only
  rw [node2494_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2496 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2495 input276)).val
theorem input2496_def : input2496 = (.seq input2495 input276) := by
  unfold input2496
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2496 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2495 output276)).val
theorem output2496_def : output2496 = (.seq output2495 output276) := by
  unfold output2496
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2496_skip : Flapjack.WordAlloc.isSkip output2496 = false := by
  rw [output2496_def]
  conv => lhs; cbv
  try rfl
theorem node2496_eq : Flapjack.WordAlloc.removeDeadStructural input2496 value227 value1 value2 = (output2496, value1162, value1) := by
  rw [input2496_def, output2496_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node276_eq]
  try dsimp only
  rw [node2495_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2497 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2496 input275)).val
theorem input2497_def : input2497 = (.seq input2496 input275) := by
  unfold input2497
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2497 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2496 output275)).val
theorem output2497_def : output2497 = (.seq output2496 output275) := by
  unfold output2497
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2497_skip : Flapjack.WordAlloc.isSkip output2497 = false := by
  rw [output2497_def]
  conv => lhs; cbv
  try rfl
theorem node2497_eq : Flapjack.WordAlloc.removeDeadStructural input2497 value226 value1 value2 = (output2497, value1162, value1) := by
  rw [input2497_def, output2497_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node275_eq]
  try dsimp only
  rw [node2496_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2498 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2497 input274)).val
theorem input2498_def : input2498 = (.seq input2497 input274) := by
  unfold input2498
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2498 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2497 output274)).val
theorem output2498_def : output2498 = (.seq output2497 output274) := by
  unfold output2498
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2498_skip : Flapjack.WordAlloc.isSkip output2498 = false := by
  rw [output2498_def]
  conv => lhs; cbv
  try rfl
theorem node2498_eq : Flapjack.WordAlloc.removeDeadStructural input2498 value225 value1 value2 = (output2498, value1162, value1) := by
  rw [input2498_def, output2498_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node274_eq]
  try dsimp only
  rw [node2497_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2499 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2498 input273)).val
theorem input2499_def : input2499 = (.seq input2498 input273) := by
  unfold input2499
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2499 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2498 output273)).val
theorem output2499_def : output2499 = (.seq output2498 output273) := by
  unfold output2499
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2499_skip : Flapjack.WordAlloc.isSkip output2499 = false := by
  rw [output2499_def]
  conv => lhs; cbv
  try rfl
theorem node2499_eq : Flapjack.WordAlloc.removeDeadStructural input2499 value224 value1 value2 = (output2499, value1162, value1) := by
  rw [input2499_def, output2499_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node273_eq]
  try dsimp only
  rw [node2498_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2500 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2499 input272)).val
theorem input2500_def : input2500 = (.seq input2499 input272) := by
  unfold input2500
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2500 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2499 output272)).val
theorem output2500_def : output2500 = (.seq output2499 output272) := by
  unfold output2500
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2500_skip : Flapjack.WordAlloc.isSkip output2500 = false := by
  rw [output2500_def]
  conv => lhs; cbv
  try rfl
theorem node2500_eq : Flapjack.WordAlloc.removeDeadStructural input2500 value223 value1 value2 = (output2500, value1162, value1) := by
  rw [input2500_def, output2500_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node272_eq]
  try dsimp only
  rw [node2499_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2501 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2500 input271)).val
theorem input2501_def : input2501 = (.seq input2500 input271) := by
  unfold input2501
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2501 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2500 output271)).val
theorem output2501_def : output2501 = (.seq output2500 output271) := by
  unfold output2501
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2501_skip : Flapjack.WordAlloc.isSkip output2501 = false := by
  rw [output2501_def]
  conv => lhs; cbv
  try rfl
theorem node2501_eq : Flapjack.WordAlloc.removeDeadStructural input2501 value222 value1 value2 = (output2501, value1162, value1) := by
  rw [input2501_def, output2501_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node271_eq]
  try dsimp only
  rw [node2500_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2502 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2501 input270)).val
theorem input2502_def : input2502 = (.seq input2501 input270) := by
  unfold input2502
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2502 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2501 output270)).val
theorem output2502_def : output2502 = (.seq output2501 output270) := by
  unfold output2502
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2502_skip : Flapjack.WordAlloc.isSkip output2502 = false := by
  rw [output2502_def]
  conv => lhs; cbv
  try rfl
theorem node2502_eq : Flapjack.WordAlloc.removeDeadStructural input2502 value221 value1 value2 = (output2502, value1162, value1) := by
  rw [input2502_def, output2502_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node270_eq]
  try dsimp only
  rw [node2501_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2503 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2502 input269)).val
theorem input2503_def : input2503 = (.seq input2502 input269) := by
  unfold input2503
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2503 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2502 output269)).val
theorem output2503_def : output2503 = (.seq output2502 output269) := by
  unfold output2503
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2503_skip : Flapjack.WordAlloc.isSkip output2503 = false := by
  rw [output2503_def]
  conv => lhs; cbv
  try rfl
theorem node2503_eq : Flapjack.WordAlloc.removeDeadStructural input2503 value220 value1 value2 = (output2503, value1162, value1) := by
  rw [input2503_def, output2503_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node269_eq]
  try dsimp only
  rw [node2502_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2504 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2503 input268)).val
theorem input2504_def : input2504 = (.seq input2503 input268) := by
  unfold input2504
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2504 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2503 output268)).val
theorem output2504_def : output2504 = (.seq output2503 output268) := by
  unfold output2504
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2504_skip : Flapjack.WordAlloc.isSkip output2504 = false := by
  rw [output2504_def]
  conv => lhs; cbv
  try rfl
theorem node2504_eq : Flapjack.WordAlloc.removeDeadStructural input2504 value217 value1 value2 = (output2504, value1162, value1) := by
  rw [input2504_def, output2504_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node268_eq]
  try dsimp only
  rw [node2503_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2505 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2504 input263)).val
theorem input2505_def : input2505 = (.seq input2504 input263) := by
  unfold input2505
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2505 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2504 output263)).val
theorem output2505_def : output2505 = (.seq output2504 output263) := by
  unfold output2505
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2505_skip : Flapjack.WordAlloc.isSkip output2505 = false := by
  rw [output2505_def]
  conv => lhs; cbv
  try rfl
theorem node2505_eq : Flapjack.WordAlloc.removeDeadStructural input2505 value217 value1 value2 = (output2505, value1162, value1) := by
  rw [input2505_def, output2505_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node263_eq]
  try dsimp only
  rw [node2504_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2506 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2505 input262)).val
theorem input2506_def : input2506 = (.seq input2505 input262) := by
  unfold input2506
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2506 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2505 output262)).val
theorem output2506_def : output2506 = (.seq output2505 output262) := by
  unfold output2506
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2506_skip : Flapjack.WordAlloc.isSkip output2506 = false := by
  rw [output2506_def]
  conv => lhs; cbv
  try rfl
theorem node2506_eq : Flapjack.WordAlloc.removeDeadStructural input2506 value216 value1 value2 = (output2506, value1162, value1) := by
  rw [input2506_def, output2506_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node262_eq]
  try dsimp only
  rw [node2505_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2507 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2506 input261)).val
theorem input2507_def : input2507 = (.seq input2506 input261) := by
  unfold input2507
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2507 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2506 output261)).val
theorem output2507_def : output2507 = (.seq output2506 output261) := by
  unfold output2507
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2507_skip : Flapjack.WordAlloc.isSkip output2507 = false := by
  rw [output2507_def]
  conv => lhs; cbv
  try rfl
theorem node2507_eq : Flapjack.WordAlloc.removeDeadStructural input2507 value215 value1 value2 = (output2507, value1162, value1) := by
  rw [input2507_def, output2507_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node261_eq]
  try dsimp only
  rw [node2506_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2508 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2507 input260)).val
theorem input2508_def : input2508 = (.seq input2507 input260) := by
  unfold input2508
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2508 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2507 output260)).val
theorem output2508_def : output2508 = (.seq output2507 output260) := by
  unfold output2508
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2508_skip : Flapjack.WordAlloc.isSkip output2508 = false := by
  rw [output2508_def]
  conv => lhs; cbv
  try rfl
theorem node2508_eq : Flapjack.WordAlloc.removeDeadStructural input2508 value214 value1 value2 = (output2508, value1162, value1) := by
  rw [input2508_def, output2508_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node260_eq]
  try dsimp only
  rw [node2507_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2509 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2508 input259)).val
theorem input2509_def : input2509 = (.seq input2508 input259) := by
  unfold input2509
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2509 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2508 output259)).val
theorem output2509_def : output2509 = (.seq output2508 output259) := by
  unfold output2509
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2509_skip : Flapjack.WordAlloc.isSkip output2509 = false := by
  rw [output2509_def]
  conv => lhs; cbv
  try rfl
theorem node2509_eq : Flapjack.WordAlloc.removeDeadStructural input2509 value213 value1 value2 = (output2509, value1162, value1) := by
  rw [input2509_def, output2509_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node259_eq]
  try dsimp only
  rw [node2508_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2510 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2509 input258)).val
theorem input2510_def : input2510 = (.seq input2509 input258) := by
  unfold input2510
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2510 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2509 output258)).val
theorem output2510_def : output2510 = (.seq output2509 output258) := by
  unfold output2510
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2510_skip : Flapjack.WordAlloc.isSkip output2510 = false := by
  rw [output2510_def]
  conv => lhs; cbv
  try rfl
theorem node2510_eq : Flapjack.WordAlloc.removeDeadStructural input2510 value212 value1 value2 = (output2510, value1162, value1) := by
  rw [input2510_def, output2510_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node258_eq]
  try dsimp only
  rw [node2509_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2511 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2510 input257)).val
theorem input2511_def : input2511 = (.seq input2510 input257) := by
  unfold input2511
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2511 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2510 output257)).val
theorem output2511_def : output2511 = (.seq output2510 output257) := by
  unfold output2511
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2511_skip : Flapjack.WordAlloc.isSkip output2511 = false := by
  rw [output2511_def]
  conv => lhs; cbv
  try rfl
theorem node2511_eq : Flapjack.WordAlloc.removeDeadStructural input2511 value211 value1 value2 = (output2511, value1162, value1) := by
  rw [input2511_def, output2511_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node257_eq]
  try dsimp only
  rw [node2510_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2512 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2511 input256)).val
theorem input2512_def : input2512 = (.seq input2511 input256) := by
  unfold input2512
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2512 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2511 output256)).val
theorem output2512_def : output2512 = (.seq output2511 output256) := by
  unfold output2512
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2512_skip : Flapjack.WordAlloc.isSkip output2512 = false := by
  rw [output2512_def]
  conv => lhs; cbv
  try rfl
theorem node2512_eq : Flapjack.WordAlloc.removeDeadStructural input2512 value210 value1 value2 = (output2512, value1162, value1) := by
  rw [input2512_def, output2512_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node256_eq]
  try dsimp only
  rw [node2511_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2513 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2512 input255)).val
theorem input2513_def : input2513 = (.seq input2512 input255) := by
  unfold input2513
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2513 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2512 output255)).val
theorem output2513_def : output2513 = (.seq output2512 output255) := by
  unfold output2513
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2513_skip : Flapjack.WordAlloc.isSkip output2513 = false := by
  rw [output2513_def]
  conv => lhs; cbv
  try rfl
theorem node2513_eq : Flapjack.WordAlloc.removeDeadStructural input2513 value209 value1 value2 = (output2513, value1162, value1) := by
  rw [input2513_def, output2513_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node255_eq]
  try dsimp only
  rw [node2512_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2514 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2513 input254)).val
theorem input2514_def : input2514 = (.seq input2513 input254) := by
  unfold input2514
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2514 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2513 output254)).val
theorem output2514_def : output2514 = (.seq output2513 output254) := by
  unfold output2514
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2514_skip : Flapjack.WordAlloc.isSkip output2514 = false := by
  rw [output2514_def]
  conv => lhs; cbv
  try rfl
theorem node2514_eq : Flapjack.WordAlloc.removeDeadStructural input2514 value208 value1 value2 = (output2514, value1162, value1) := by
  rw [input2514_def, output2514_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node254_eq]
  try dsimp only
  rw [node2513_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2515 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2514 input253)).val
theorem input2515_def : input2515 = (.seq input2514 input253) := by
  unfold input2515
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2515 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2514 output253)).val
theorem output2515_def : output2515 = (.seq output2514 output253) := by
  unfold output2515
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2515_skip : Flapjack.WordAlloc.isSkip output2515 = false := by
  rw [output2515_def]
  conv => lhs; cbv
  try rfl
theorem node2515_eq : Flapjack.WordAlloc.removeDeadStructural input2515 value207 value1 value2 = (output2515, value1162, value1) := by
  rw [input2515_def, output2515_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node253_eq]
  try dsimp only
  rw [node2514_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2516 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2515 input252)).val
theorem input2516_def : input2516 = (.seq input2515 input252) := by
  unfold input2516
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2516 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2515 output252)).val
theorem output2516_def : output2516 = (.seq output2515 output252) := by
  unfold output2516
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2516_skip : Flapjack.WordAlloc.isSkip output2516 = false := by
  rw [output2516_def]
  conv => lhs; cbv
  try rfl
theorem node2516_eq : Flapjack.WordAlloc.removeDeadStructural input2516 value206 value1 value2 = (output2516, value1162, value1) := by
  rw [input2516_def, output2516_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node252_eq]
  try dsimp only
  rw [node2515_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2517 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2516 input251)).val
theorem input2517_def : input2517 = (.seq input2516 input251) := by
  unfold input2517
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2517 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2516 output251)).val
theorem output2517_def : output2517 = (.seq output2516 output251) := by
  unfold output2517
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2517_skip : Flapjack.WordAlloc.isSkip output2517 = false := by
  rw [output2517_def]
  conv => lhs; cbv
  try rfl
theorem node2517_eq : Flapjack.WordAlloc.removeDeadStructural input2517 value205 value1 value2 = (output2517, value1162, value1) := by
  rw [input2517_def, output2517_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node251_eq]
  try dsimp only
  rw [node2516_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2518 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2517 input250)).val
theorem input2518_def : input2518 = (.seq input2517 input250) := by
  unfold input2518
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2518 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2517 output250)).val
theorem output2518_def : output2518 = (.seq output2517 output250) := by
  unfold output2518
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2518_skip : Flapjack.WordAlloc.isSkip output2518 = false := by
  rw [output2518_def]
  conv => lhs; cbv
  try rfl
theorem node2518_eq : Flapjack.WordAlloc.removeDeadStructural input2518 value202 value1 value2 = (output2518, value1162, value1) := by
  rw [input2518_def, output2518_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node250_eq]
  try dsimp only
  rw [node2517_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2519 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2518 input245)).val
theorem input2519_def : input2519 = (.seq input2518 input245) := by
  unfold input2519
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2519 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2518 output245)).val
theorem output2519_def : output2519 = (.seq output2518 output245) := by
  unfold output2519
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2519_skip : Flapjack.WordAlloc.isSkip output2519 = false := by
  rw [output2519_def]
  conv => lhs; cbv
  try rfl
theorem node2519_eq : Flapjack.WordAlloc.removeDeadStructural input2519 value202 value1 value2 = (output2519, value1162, value1) := by
  rw [input2519_def, output2519_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node245_eq]
  try dsimp only
  rw [node2518_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2520 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2519 input244)).val
theorem input2520_def : input2520 = (.seq input2519 input244) := by
  unfold input2520
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2520 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2519 output244)).val
theorem output2520_def : output2520 = (.seq output2519 output244) := by
  unfold output2520
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2520_skip : Flapjack.WordAlloc.isSkip output2520 = false := by
  rw [output2520_def]
  conv => lhs; cbv
  try rfl
theorem node2520_eq : Flapjack.WordAlloc.removeDeadStructural input2520 value201 value1 value2 = (output2520, value1162, value1) := by
  rw [input2520_def, output2520_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node244_eq]
  try dsimp only
  rw [node2519_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2521 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2520 input243)).val
theorem input2521_def : input2521 = (.seq input2520 input243) := by
  unfold input2521
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2521 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2520 output243)).val
theorem output2521_def : output2521 = (.seq output2520 output243) := by
  unfold output2521
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2521_skip : Flapjack.WordAlloc.isSkip output2521 = false := by
  rw [output2521_def]
  conv => lhs; cbv
  try rfl
theorem node2521_eq : Flapjack.WordAlloc.removeDeadStructural input2521 value200 value1 value2 = (output2521, value1162, value1) := by
  rw [input2521_def, output2521_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node243_eq]
  try dsimp only
  rw [node2520_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2522 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2521 input242)).val
theorem input2522_def : input2522 = (.seq input2521 input242) := by
  unfold input2522
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2522 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2521 output242)).val
theorem output2522_def : output2522 = (.seq output2521 output242) := by
  unfold output2522
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2522_skip : Flapjack.WordAlloc.isSkip output2522 = false := by
  rw [output2522_def]
  conv => lhs; cbv
  try rfl
theorem node2522_eq : Flapjack.WordAlloc.removeDeadStructural input2522 value199 value1 value2 = (output2522, value1162, value1) := by
  rw [input2522_def, output2522_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node242_eq]
  try dsimp only
  rw [node2521_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2523 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2522 input241)).val
theorem input2523_def : input2523 = (.seq input2522 input241) := by
  unfold input2523
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2523 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2522 output241)).val
theorem output2523_def : output2523 = (.seq output2522 output241) := by
  unfold output2523
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2523_skip : Flapjack.WordAlloc.isSkip output2523 = false := by
  rw [output2523_def]
  conv => lhs; cbv
  try rfl
theorem node2523_eq : Flapjack.WordAlloc.removeDeadStructural input2523 value198 value1 value2 = (output2523, value1162, value1) := by
  rw [input2523_def, output2523_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node241_eq]
  try dsimp only
  rw [node2522_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2524 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2523 input240)).val
theorem input2524_def : input2524 = (.seq input2523 input240) := by
  unfold input2524
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2524 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2523 output240)).val
theorem output2524_def : output2524 = (.seq output2523 output240) := by
  unfold output2524
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2524_skip : Flapjack.WordAlloc.isSkip output2524 = false := by
  rw [output2524_def]
  conv => lhs; cbv
  try rfl
theorem node2524_eq : Flapjack.WordAlloc.removeDeadStructural input2524 value197 value1 value2 = (output2524, value1162, value1) := by
  rw [input2524_def, output2524_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node240_eq]
  try dsimp only
  rw [node2523_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2525 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2524 input239)).val
theorem input2525_def : input2525 = (.seq input2524 input239) := by
  unfold input2525
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2525 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2524 output239)).val
theorem output2525_def : output2525 = (.seq output2524 output239) := by
  unfold output2525
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2525_skip : Flapjack.WordAlloc.isSkip output2525 = false := by
  rw [output2525_def]
  conv => lhs; cbv
  try rfl
theorem node2525_eq : Flapjack.WordAlloc.removeDeadStructural input2525 value196 value1 value2 = (output2525, value1162, value1) := by
  rw [input2525_def, output2525_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node239_eq]
  try dsimp only
  rw [node2524_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2526 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2525 input238)).val
theorem input2526_def : input2526 = (.seq input2525 input238) := by
  unfold input2526
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2526 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2525 output238)).val
theorem output2526_def : output2526 = (.seq output2525 output238) := by
  unfold output2526
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2526_skip : Flapjack.WordAlloc.isSkip output2526 = false := by
  rw [output2526_def]
  conv => lhs; cbv
  try rfl
theorem node2526_eq : Flapjack.WordAlloc.removeDeadStructural input2526 value195 value1 value2 = (output2526, value1162, value1) := by
  rw [input2526_def, output2526_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node238_eq]
  try dsimp only
  rw [node2525_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2527 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2526 input237)).val
theorem input2527_def : input2527 = (.seq input2526 input237) := by
  unfold input2527
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2527 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2526 output237)).val
theorem output2527_def : output2527 = (.seq output2526 output237) := by
  unfold output2527
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2527_skip : Flapjack.WordAlloc.isSkip output2527 = false := by
  rw [output2527_def]
  conv => lhs; cbv
  try rfl
theorem node2527_eq : Flapjack.WordAlloc.removeDeadStructural input2527 value194 value1 value2 = (output2527, value1162, value1) := by
  rw [input2527_def, output2527_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node237_eq]
  try dsimp only
  rw [node2526_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2528 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2527 input236)).val
theorem input2528_def : input2528 = (.seq input2527 input236) := by
  unfold input2528
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2528 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2527 output236)).val
theorem output2528_def : output2528 = (.seq output2527 output236) := by
  unfold output2528
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2528_skip : Flapjack.WordAlloc.isSkip output2528 = false := by
  rw [output2528_def]
  conv => lhs; cbv
  try rfl
theorem node2528_eq : Flapjack.WordAlloc.removeDeadStructural input2528 value193 value1 value2 = (output2528, value1162, value1) := by
  rw [input2528_def, output2528_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node236_eq]
  try dsimp only
  rw [node2527_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2529 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2528 input235)).val
theorem input2529_def : input2529 = (.seq input2528 input235) := by
  unfold input2529
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2529 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2528 output235)).val
theorem output2529_def : output2529 = (.seq output2528 output235) := by
  unfold output2529
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2529_skip : Flapjack.WordAlloc.isSkip output2529 = false := by
  rw [output2529_def]
  conv => lhs; cbv
  try rfl
theorem node2529_eq : Flapjack.WordAlloc.removeDeadStructural input2529 value192 value1 value2 = (output2529, value1162, value1) := by
  rw [input2529_def, output2529_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node235_eq]
  try dsimp only
  rw [node2528_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2530 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2529 input234)).val
theorem input2530_def : input2530 = (.seq input2529 input234) := by
  unfold input2530
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2530 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2529 output234)).val
theorem output2530_def : output2530 = (.seq output2529 output234) := by
  unfold output2530
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2530_skip : Flapjack.WordAlloc.isSkip output2530 = false := by
  rw [output2530_def]
  conv => lhs; cbv
  try rfl
theorem node2530_eq : Flapjack.WordAlloc.removeDeadStructural input2530 value191 value1 value2 = (output2530, value1162, value1) := by
  rw [input2530_def, output2530_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node234_eq]
  try dsimp only
  rw [node2529_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2531 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2530 input233)).val
theorem input2531_def : input2531 = (.seq input2530 input233) := by
  unfold input2531
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2531 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2530 output233)).val
theorem output2531_def : output2531 = (.seq output2530 output233) := by
  unfold output2531
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2531_skip : Flapjack.WordAlloc.isSkip output2531 = false := by
  rw [output2531_def]
  conv => lhs; cbv
  try rfl
theorem node2531_eq : Flapjack.WordAlloc.removeDeadStructural input2531 value190 value1 value2 = (output2531, value1162, value1) := by
  rw [input2531_def, output2531_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node233_eq]
  try dsimp only
  rw [node2530_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2532 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2531 input232)).val
theorem input2532_def : input2532 = (.seq input2531 input232) := by
  unfold input2532
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2532 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2531 output232)).val
theorem output2532_def : output2532 = (.seq output2531 output232) := by
  unfold output2532
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2532_skip : Flapjack.WordAlloc.isSkip output2532 = false := by
  rw [output2532_def]
  conv => lhs; cbv
  try rfl
theorem node2532_eq : Flapjack.WordAlloc.removeDeadStructural input2532 value187 value1 value2 = (output2532, value1162, value1) := by
  rw [input2532_def, output2532_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node232_eq]
  try dsimp only
  rw [node2531_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2533 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2532 input227)).val
theorem input2533_def : input2533 = (.seq input2532 input227) := by
  unfold input2533
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2533 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2532 output227)).val
theorem output2533_def : output2533 = (.seq output2532 output227) := by
  unfold output2533
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2533_skip : Flapjack.WordAlloc.isSkip output2533 = false := by
  rw [output2533_def]
  conv => lhs; cbv
  try rfl
theorem node2533_eq : Flapjack.WordAlloc.removeDeadStructural input2533 value187 value1 value2 = (output2533, value1162, value1) := by
  rw [input2533_def, output2533_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node227_eq]
  try dsimp only
  rw [node2532_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2534 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2533 input226)).val
theorem input2534_def : input2534 = (.seq input2533 input226) := by
  unfold input2534
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2534 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2533 output226)).val
theorem output2534_def : output2534 = (.seq output2533 output226) := by
  unfold output2534
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2534_skip : Flapjack.WordAlloc.isSkip output2534 = false := by
  rw [output2534_def]
  conv => lhs; cbv
  try rfl
theorem node2534_eq : Flapjack.WordAlloc.removeDeadStructural input2534 value186 value1 value2 = (output2534, value1162, value1) := by
  rw [input2534_def, output2534_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node226_eq]
  try dsimp only
  rw [node2533_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2535 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2534 input225)).val
theorem input2535_def : input2535 = (.seq input2534 input225) := by
  unfold input2535
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2535 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2534 output225)).val
theorem output2535_def : output2535 = (.seq output2534 output225) := by
  unfold output2535
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2535_skip : Flapjack.WordAlloc.isSkip output2535 = false := by
  rw [output2535_def]
  conv => lhs; cbv
  try rfl
theorem node2535_eq : Flapjack.WordAlloc.removeDeadStructural input2535 value185 value1 value2 = (output2535, value1162, value1) := by
  rw [input2535_def, output2535_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node225_eq]
  try dsimp only
  rw [node2534_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2536 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2535 input224)).val
theorem input2536_def : input2536 = (.seq input2535 input224) := by
  unfold input2536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2536 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2535 output224)).val
theorem output2536_def : output2536 = (.seq output2535 output224) := by
  unfold output2536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2536_skip : Flapjack.WordAlloc.isSkip output2536 = false := by
  rw [output2536_def]
  conv => lhs; cbv
  try rfl
theorem node2536_eq : Flapjack.WordAlloc.removeDeadStructural input2536 value184 value1 value2 = (output2536, value1162, value1) := by
  rw [input2536_def, output2536_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node224_eq]
  try dsimp only
  rw [node2535_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2536 input223)).val
theorem input2537_def : input2537 = (.seq input2536 input223) := by
  unfold input2537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2536 output223)).val
theorem output2537_def : output2537 = (.seq output2536 output223) := by
  unfold output2537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2537_skip : Flapjack.WordAlloc.isSkip output2537 = false := by
  rw [output2537_def]
  conv => lhs; cbv
  try rfl
theorem node2537_eq : Flapjack.WordAlloc.removeDeadStructural input2537 value183 value1 value2 = (output2537, value1162, value1) := by
  rw [input2537_def, output2537_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node223_eq]
  try dsimp only
  rw [node2536_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2537 input222)).val
theorem input2538_def : input2538 = (.seq input2537 input222) := by
  unfold input2538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2537 output222)).val
theorem output2538_def : output2538 = (.seq output2537 output222) := by
  unfold output2538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2538_skip : Flapjack.WordAlloc.isSkip output2538 = false := by
  rw [output2538_def]
  conv => lhs; cbv
  try rfl
theorem node2538_eq : Flapjack.WordAlloc.removeDeadStructural input2538 value182 value1 value2 = (output2538, value1162, value1) := by
  rw [input2538_def, output2538_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node222_eq]
  try dsimp only
  rw [node2537_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2538 input221)).val
theorem input2539_def : input2539 = (.seq input2538 input221) := by
  unfold input2539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2538 output221)).val
theorem output2539_def : output2539 = (.seq output2538 output221) := by
  unfold output2539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2539_skip : Flapjack.WordAlloc.isSkip output2539 = false := by
  rw [output2539_def]
  conv => lhs; cbv
  try rfl
theorem node2539_eq : Flapjack.WordAlloc.removeDeadStructural input2539 value181 value1 value2 = (output2539, value1162, value1) := by
  rw [input2539_def, output2539_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node221_eq]
  try dsimp only
  rw [node2538_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2539 input220)).val
theorem input2540_def : input2540 = (.seq input2539 input220) := by
  unfold input2540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2539 output220)).val
theorem output2540_def : output2540 = (.seq output2539 output220) := by
  unfold output2540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2540_skip : Flapjack.WordAlloc.isSkip output2540 = false := by
  rw [output2540_def]
  conv => lhs; cbv
  try rfl
theorem node2540_eq : Flapjack.WordAlloc.removeDeadStructural input2540 value180 value1 value2 = (output2540, value1162, value1) := by
  rw [input2540_def, output2540_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node220_eq]
  try dsimp only
  rw [node2539_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2540 input219)).val
theorem input2541_def : input2541 = (.seq input2540 input219) := by
  unfold input2541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2540 output219)).val
theorem output2541_def : output2541 = (.seq output2540 output219) := by
  unfold output2541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2541_skip : Flapjack.WordAlloc.isSkip output2541 = false := by
  rw [output2541_def]
  conv => lhs; cbv
  try rfl
theorem node2541_eq : Flapjack.WordAlloc.removeDeadStructural input2541 value179 value1 value2 = (output2541, value1162, value1) := by
  rw [input2541_def, output2541_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node219_eq]
  try dsimp only
  rw [node2540_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2541 input218)).val
theorem input2542_def : input2542 = (.seq input2541 input218) := by
  unfold input2542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2541 output218)).val
theorem output2542_def : output2542 = (.seq output2541 output218) := by
  unfold output2542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2542_skip : Flapjack.WordAlloc.isSkip output2542 = false := by
  rw [output2542_def]
  conv => lhs; cbv
  try rfl
theorem node2542_eq : Flapjack.WordAlloc.removeDeadStructural input2542 value178 value1 value2 = (output2542, value1162, value1) := by
  rw [input2542_def, output2542_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node218_eq]
  try dsimp only
  rw [node2541_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2542 input217)).val
theorem input2543_def : input2543 = (.seq input2542 input217) := by
  unfold input2543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2542 output217)).val
theorem output2543_def : output2543 = (.seq output2542 output217) := by
  unfold output2543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2543_skip : Flapjack.WordAlloc.isSkip output2543 = false := by
  rw [output2543_def]
  conv => lhs; cbv
  try rfl
theorem node2543_eq : Flapjack.WordAlloc.removeDeadStructural input2543 value177 value1 value2 = (output2543, value1162, value1) := by
  rw [input2543_def, output2543_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node217_eq]
  try dsimp only
  rw [node2542_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2543 input216)).val
theorem input2544_def : input2544 = (.seq input2543 input216) := by
  unfold input2544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2543 output216)).val
theorem output2544_def : output2544 = (.seq output2543 output216) := by
  unfold output2544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2544_skip : Flapjack.WordAlloc.isSkip output2544 = false := by
  rw [output2544_def]
  conv => lhs; cbv
  try rfl
theorem node2544_eq : Flapjack.WordAlloc.removeDeadStructural input2544 value176 value1 value2 = (output2544, value1162, value1) := by
  rw [input2544_def, output2544_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node216_eq]
  try dsimp only
  rw [node2543_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2544 input215)).val
theorem input2545_def : input2545 = (.seq input2544 input215) := by
  unfold input2545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2544 output215)).val
theorem output2545_def : output2545 = (.seq output2544 output215) := by
  unfold output2545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2545_skip : Flapjack.WordAlloc.isSkip output2545 = false := by
  rw [output2545_def]
  conv => lhs; cbv
  try rfl
theorem node2545_eq : Flapjack.WordAlloc.removeDeadStructural input2545 value175 value1 value2 = (output2545, value1162, value1) := by
  rw [input2545_def, output2545_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node215_eq]
  try dsimp only
  rw [node2544_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2545 input214)).val
theorem input2546_def : input2546 = (.seq input2545 input214) := by
  unfold input2546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2545 output214)).val
theorem output2546_def : output2546 = (.seq output2545 output214) := by
  unfold output2546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2546_skip : Flapjack.WordAlloc.isSkip output2546 = false := by
  rw [output2546_def]
  conv => lhs; cbv
  try rfl
theorem node2546_eq : Flapjack.WordAlloc.removeDeadStructural input2546 value172 value1 value2 = (output2546, value1162, value1) := by
  rw [input2546_def, output2546_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node214_eq]
  try dsimp only
  rw [node2545_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2546 input209)).val
theorem input2547_def : input2547 = (.seq input2546 input209) := by
  unfold input2547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2546 output209)).val
theorem output2547_def : output2547 = (.seq output2546 output209) := by
  unfold output2547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2547_skip : Flapjack.WordAlloc.isSkip output2547 = false := by
  rw [output2547_def]
  conv => lhs; cbv
  try rfl
theorem node2547_eq : Flapjack.WordAlloc.removeDeadStructural input2547 value172 value1 value2 = (output2547, value1162, value1) := by
  rw [input2547_def, output2547_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node209_eq]
  try dsimp only
  rw [node2546_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2547 input208)).val
theorem input2548_def : input2548 = (.seq input2547 input208) := by
  unfold input2548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2547 output208)).val
theorem output2548_def : output2548 = (.seq output2547 output208) := by
  unfold output2548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2548_skip : Flapjack.WordAlloc.isSkip output2548 = false := by
  rw [output2548_def]
  conv => lhs; cbv
  try rfl
theorem node2548_eq : Flapjack.WordAlloc.removeDeadStructural input2548 value171 value1 value2 = (output2548, value1162, value1) := by
  rw [input2548_def, output2548_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node208_eq]
  try dsimp only
  rw [node2547_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2548 input207)).val
theorem input2549_def : input2549 = (.seq input2548 input207) := by
  unfold input2549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2548 output207)).val
theorem output2549_def : output2549 = (.seq output2548 output207) := by
  unfold output2549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2549_skip : Flapjack.WordAlloc.isSkip output2549 = false := by
  rw [output2549_def]
  conv => lhs; cbv
  try rfl
theorem node2549_eq : Flapjack.WordAlloc.removeDeadStructural input2549 value170 value1 value2 = (output2549, value1162, value1) := by
  rw [input2549_def, output2549_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node207_eq]
  try dsimp only
  rw [node2548_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2549 input206)).val
theorem input2550_def : input2550 = (.seq input2549 input206) := by
  unfold input2550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2549 output206)).val
theorem output2550_def : output2550 = (.seq output2549 output206) := by
  unfold output2550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2550_skip : Flapjack.WordAlloc.isSkip output2550 = false := by
  rw [output2550_def]
  conv => lhs; cbv
  try rfl
theorem node2550_eq : Flapjack.WordAlloc.removeDeadStructural input2550 value169 value1 value2 = (output2550, value1162, value1) := by
  rw [input2550_def, output2550_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node206_eq]
  try dsimp only
  rw [node2549_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2550 input205)).val
theorem input2551_def : input2551 = (.seq input2550 input205) := by
  unfold input2551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2550 output205)).val
theorem output2551_def : output2551 = (.seq output2550 output205) := by
  unfold output2551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2551_skip : Flapjack.WordAlloc.isSkip output2551 = false := by
  rw [output2551_def]
  conv => lhs; cbv
  try rfl
theorem node2551_eq : Flapjack.WordAlloc.removeDeadStructural input2551 value168 value1 value2 = (output2551, value1162, value1) := by
  rw [input2551_def, output2551_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node205_eq]
  try dsimp only
  rw [node2550_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2551 input204)).val
theorem input2552_def : input2552 = (.seq input2551 input204) := by
  unfold input2552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2551 output204)).val
theorem output2552_def : output2552 = (.seq output2551 output204) := by
  unfold output2552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2552_skip : Flapjack.WordAlloc.isSkip output2552 = false := by
  rw [output2552_def]
  conv => lhs; cbv
  try rfl
theorem node2552_eq : Flapjack.WordAlloc.removeDeadStructural input2552 value167 value1 value2 = (output2552, value1162, value1) := by
  rw [input2552_def, output2552_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node204_eq]
  try dsimp only
  rw [node2551_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2552 input203)).val
theorem input2553_def : input2553 = (.seq input2552 input203) := by
  unfold input2553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2552 output203)).val
theorem output2553_def : output2553 = (.seq output2552 output203) := by
  unfold output2553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2553_skip : Flapjack.WordAlloc.isSkip output2553 = false := by
  rw [output2553_def]
  conv => lhs; cbv
  try rfl
theorem node2553_eq : Flapjack.WordAlloc.removeDeadStructural input2553 value166 value1 value2 = (output2553, value1162, value1) := by
  rw [input2553_def, output2553_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node203_eq]
  try dsimp only
  rw [node2552_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2553 input202)).val
theorem input2554_def : input2554 = (.seq input2553 input202) := by
  unfold input2554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2553 output202)).val
theorem output2554_def : output2554 = (.seq output2553 output202) := by
  unfold output2554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2554_skip : Flapjack.WordAlloc.isSkip output2554 = false := by
  rw [output2554_def]
  conv => lhs; cbv
  try rfl
theorem node2554_eq : Flapjack.WordAlloc.removeDeadStructural input2554 value165 value1 value2 = (output2554, value1162, value1) := by
  rw [input2554_def, output2554_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node202_eq]
  try dsimp only
  rw [node2553_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2554 input201)).val
theorem input2555_def : input2555 = (.seq input2554 input201) := by
  unfold input2555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2554 output201)).val
theorem output2555_def : output2555 = (.seq output2554 output201) := by
  unfold output2555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2555_skip : Flapjack.WordAlloc.isSkip output2555 = false := by
  rw [output2555_def]
  conv => lhs; cbv
  try rfl
theorem node2555_eq : Flapjack.WordAlloc.removeDeadStructural input2555 value164 value1 value2 = (output2555, value1162, value1) := by
  rw [input2555_def, output2555_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node201_eq]
  try dsimp only
  rw [node2554_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2555 input200)).val
theorem input2556_def : input2556 = (.seq input2555 input200) := by
  unfold input2556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2555 output200)).val
theorem output2556_def : output2556 = (.seq output2555 output200) := by
  unfold output2556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2556_skip : Flapjack.WordAlloc.isSkip output2556 = false := by
  rw [output2556_def]
  conv => lhs; cbv
  try rfl
theorem node2556_eq : Flapjack.WordAlloc.removeDeadStructural input2556 value163 value1 value2 = (output2556, value1162, value1) := by
  rw [input2556_def, output2556_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node200_eq]
  try dsimp only
  rw [node2555_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2556 input199)).val
theorem input2557_def : input2557 = (.seq input2556 input199) := by
  unfold input2557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2556 output199)).val
theorem output2557_def : output2557 = (.seq output2556 output199) := by
  unfold output2557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2557_skip : Flapjack.WordAlloc.isSkip output2557 = false := by
  rw [output2557_def]
  conv => lhs; cbv
  try rfl
theorem node2557_eq : Flapjack.WordAlloc.removeDeadStructural input2557 value162 value1 value2 = (output2557, value1162, value1) := by
  rw [input2557_def, output2557_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node199_eq]
  try dsimp only
  rw [node2556_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2557 input198)).val
theorem input2558_def : input2558 = (.seq input2557 input198) := by
  unfold input2558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2557 output198)).val
theorem output2558_def : output2558 = (.seq output2557 output198) := by
  unfold output2558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2558_skip : Flapjack.WordAlloc.isSkip output2558 = false := by
  rw [output2558_def]
  conv => lhs; cbv
  try rfl
theorem node2558_eq : Flapjack.WordAlloc.removeDeadStructural input2558 value161 value1 value2 = (output2558, value1162, value1) := by
  rw [input2558_def, output2558_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node198_eq]
  try dsimp only
  rw [node2557_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input2559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2558 input197)).val
theorem input2559_def : input2559 = (.seq input2558 input197) := by
  unfold input2559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2558 output197)).val
theorem output2559_def : output2559 = (.seq output2558 output197) := by
  unfold output2559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2559_skip : Flapjack.WordAlloc.isSkip output2559 = false := by
  rw [output2559_def]
  conv => lhs; cbv
  try rfl
theorem node2559_eq : Flapjack.WordAlloc.removeDeadStructural input2559 value160 value1 value2 = (output2559, value1162, value1) := by
  rw [input2559_def, output2559_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node197_eq]
  try dsimp only
  rw [node2558_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node2559_eq
end InitECandidate.Proofs.DeadStages783
