import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadStages875.Parallel.Data.Chunk012
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages875.Parallel
@[irreducible, cbv_opaque] def input3328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3327 input2668)).val
theorem input3328_def : input3328 = (.seq input3327 input2668) := by
  unfold input3328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3327 output2668)).val
theorem output3328_def : output3328 = (.seq output3327 output2668) := by
  unfold output3328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3328_skip : Flapjack.WordAlloc.isSkip output3328 = false := by
  rw [output3328_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3328 input2667)).val
theorem input3329_def : input3329 = (.seq input3328 input2667) := by
  unfold input3329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3328 output2667)).val
theorem output3329_def : output3329 = (.seq output3328 output2667) := by
  unfold output3329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3329_skip : Flapjack.WordAlloc.isSkip output3329 = false := by
  rw [output3329_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3329 input2666)).val
theorem input3330_def : input3330 = (.seq input3329 input2666) := by
  unfold input3330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3329 output2666)).val
theorem output3330_def : output3330 = (.seq output3329 output2666) := by
  unfold output3330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3330_skip : Flapjack.WordAlloc.isSkip output3330 = false := by
  rw [output3330_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3330 input2661)).val
theorem input3331_def : input3331 = (.seq input3330 input2661) := by
  unfold input3331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3330 output2661)).val
theorem output3331_def : output3331 = (.seq output3330 output2661) := by
  unfold output3331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3331_skip : Flapjack.WordAlloc.isSkip output3331 = false := by
  rw [output3331_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3331 input2660)).val
theorem input3332_def : input3332 = (.seq input3331 input2660) := by
  unfold input3332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3331 output2660)).val
theorem output3332_def : output3332 = (.seq output3331 output2660) := by
  unfold output3332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3332_skip : Flapjack.WordAlloc.isSkip output3332 = false := by
  rw [output3332_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3332 input2659)).val
theorem input3333_def : input3333 = (.seq input3332 input2659) := by
  unfold input3333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3332 output2659)).val
theorem output3333_def : output3333 = (.seq output3332 output2659) := by
  unfold output3333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3333_skip : Flapjack.WordAlloc.isSkip output3333 = false := by
  rw [output3333_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3333 input2658)).val
theorem input3334_def : input3334 = (.seq input3333 input2658) := by
  unfold input3334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3333 output2658)).val
theorem output3334_def : output3334 = (.seq output3333 output2658) := by
  unfold output3334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3334_skip : Flapjack.WordAlloc.isSkip output3334 = false := by
  rw [output3334_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3334 input2631)).val
theorem input3335_def : input3335 = (.seq input3334 input2631) := by
  unfold input3335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3334 output2631)).val
theorem output3335_def : output3335 = (.seq output3334 output2631) := by
  unfold output3335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3335_skip : Flapjack.WordAlloc.isSkip output3335 = false := by
  rw [output3335_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3335 input2630)).val
theorem input3336_def : input3336 = (.seq input3335 input2630) := by
  unfold input3336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3335 output2630)).val
theorem output3336_def : output3336 = (.seq output3335 output2630) := by
  unfold output3336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3336_skip : Flapjack.WordAlloc.isSkip output3336 = false := by
  rw [output3336_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3336 input2625)).val
theorem input3337_def : input3337 = (.seq input3336 input2625) := by
  unfold input3337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3336 output2625)).val
theorem output3337_def : output3337 = (.seq output3336 output2625) := by
  unfold output3337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3337_skip : Flapjack.WordAlloc.isSkip output3337 = false := by
  rw [output3337_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3337 input2620)).val
theorem input3338_def : input3338 = (.seq input3337 input2620) := by
  unfold input3338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3337 output2620)).val
theorem output3338_def : output3338 = (.seq output3337 output2620) := by
  unfold output3338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3338_skip : Flapjack.WordAlloc.isSkip output3338 = false := by
  rw [output3338_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3338 input2619)).val
theorem input3339_def : input3339 = (.seq input3338 input2619) := by
  unfold input3339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3338 output2619)).val
theorem output3339_def : output3339 = (.seq output3338 output2619) := by
  unfold output3339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3339_skip : Flapjack.WordAlloc.isSkip output3339 = false := by
  rw [output3339_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3339 input2618)).val
theorem input3340_def : input3340 = (.seq input3339 input2618) := by
  unfold input3340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3339 output2618)).val
theorem output3340_def : output3340 = (.seq output3339 output2618) := by
  unfold output3340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3340_skip : Flapjack.WordAlloc.isSkip output3340 = false := by
  rw [output3340_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3340 input2609)).val
theorem input3341_def : input3341 = (.seq input3340 input2609) := by
  unfold input3341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3340 output2609)).val
theorem output3341_def : output3341 = (.seq output3340 output2609) := by
  unfold output3341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3341_skip : Flapjack.WordAlloc.isSkip output3341 = false := by
  rw [output3341_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3341 input2608)).val
theorem input3342_def : input3342 = (.seq input3341 input2608) := by
  unfold input3342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3341 output2608)).val
theorem output3342_def : output3342 = (.seq output3341 output2608) := by
  unfold output3342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3342_skip : Flapjack.WordAlloc.isSkip output3342 = false := by
  rw [output3342_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3342 input2605)).val
theorem input3343_def : input3343 = (.seq input3342 input2605) := by
  unfold input3343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3342 output2605)).val
theorem output3343_def : output3343 = (.seq output3342 output2605) := by
  unfold output3343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3343_skip : Flapjack.WordAlloc.isSkip output3343 = false := by
  rw [output3343_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3343 input2604)).val
theorem input3344_def : input3344 = (.seq input3343 input2604) := by
  unfold input3344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3343 output2604)).val
theorem output3344_def : output3344 = (.seq output3343 output2604) := by
  unfold output3344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3344_skip : Flapjack.WordAlloc.isSkip output3344 = false := by
  rw [output3344_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3344 input2603)).val
theorem input3345_def : input3345 = (.seq input3344 input2603) := by
  unfold input3345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3344 output2603)).val
theorem output3345_def : output3345 = (.seq output3344 output2603) := by
  unfold output3345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3345_skip : Flapjack.WordAlloc.isSkip output3345 = false := by
  rw [output3345_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3345 input2602)).val
theorem input3346_def : input3346 = (.seq input3345 input2602) := by
  unfold input3346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3345 output2602)).val
theorem output3346_def : output3346 = (.seq output3345 output2602) := by
  unfold output3346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3346_skip : Flapjack.WordAlloc.isSkip output3346 = false := by
  rw [output3346_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3346 input2484)).val
theorem input3347_def : input3347 = (.seq input3346 input2484) := by
  unfold input3347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3346 output2484)).val
theorem output3347_def : output3347 = (.seq output3346 output2484) := by
  unfold output3347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3347_skip : Flapjack.WordAlloc.isSkip output3347 = false := by
  rw [output3347_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3347 input2483)).val
theorem input3348_def : input3348 = (.seq input3347 input2483) := by
  unfold input3348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3347 output2483)).val
theorem output3348_def : output3348 = (.seq output3347 output2483) := by
  unfold output3348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3348_skip : Flapjack.WordAlloc.isSkip output3348 = false := by
  rw [output3348_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3348 input2482)).val
theorem input3349_def : input3349 = (.seq input3348 input2482) := by
  unfold input3349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3348 output2482)).val
theorem output3349_def : output3349 = (.seq output3348 output2482) := by
  unfold output3349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3349_skip : Flapjack.WordAlloc.isSkip output3349 = false := by
  rw [output3349_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3349 input2481)).val
theorem input3350_def : input3350 = (.seq input3349 input2481) := by
  unfold input3350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3349 output2481)).val
theorem output3350_def : output3350 = (.seq output3349 output2481) := by
  unfold output3350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3350_skip : Flapjack.WordAlloc.isSkip output3350 = false := by
  rw [output3350_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3350 input2476)).val
theorem input3351_def : input3351 = (.seq input3350 input2476) := by
  unfold input3351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3350 output2476)).val
theorem output3351_def : output3351 = (.seq output3350 output2476) := by
  unfold output3351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3351_skip : Flapjack.WordAlloc.isSkip output3351 = false := by
  rw [output3351_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3351 input2473)).val
theorem input3352_def : input3352 = (.seq input3351 input2473) := by
  unfold input3352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3351 output2473)).val
theorem output3352_def : output3352 = (.seq output3351 output2473) := by
  unfold output3352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3352_skip : Flapjack.WordAlloc.isSkip output3352 = false := by
  rw [output3352_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3352 input2468)).val
theorem input3353_def : input3353 = (.seq input3352 input2468) := by
  unfold input3353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3352 output2468)).val
theorem output3353_def : output3353 = (.seq output3352 output2468) := by
  unfold output3353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3353_skip : Flapjack.WordAlloc.isSkip output3353 = false := by
  rw [output3353_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3353 input2467)).val
theorem input3354_def : input3354 = (.seq input3353 input2467) := by
  unfold input3354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3353 output2467)).val
theorem output3354_def : output3354 = (.seq output3353 output2467) := by
  unfold output3354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3354_skip : Flapjack.WordAlloc.isSkip output3354 = false := by
  rw [output3354_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3354 input2466)).val
theorem input3355_def : input3355 = (.seq input3354 input2466) := by
  unfold input3355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3354 output2466)).val
theorem output3355_def : output3355 = (.seq output3354 output2466) := by
  unfold output3355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3355_skip : Flapjack.WordAlloc.isSkip output3355 = false := by
  rw [output3355_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3355 input2465)).val
theorem input3356_def : input3356 = (.seq input3355 input2465) := by
  unfold input3356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3355 output2465)).val
theorem output3356_def : output3356 = (.seq output3355 output2465) := by
  unfold output3356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3356_skip : Flapjack.WordAlloc.isSkip output3356 = false := by
  rw [output3356_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3356 input2464)).val
theorem input3357_def : input3357 = (.seq input3356 input2464) := by
  unfold input3357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3356 output2464)).val
theorem output3357_def : output3357 = (.seq output3356 output2464) := by
  unfold output3357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3357_skip : Flapjack.WordAlloc.isSkip output3357 = false := by
  rw [output3357_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3357 input2223)).val
theorem input3358_def : input3358 = (.seq input3357 input2223) := by
  unfold input3358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3357 output2223)).val
theorem output3358_def : output3358 = (.seq output3357 output2223) := by
  unfold output3358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3358_skip : Flapjack.WordAlloc.isSkip output3358 = false := by
  rw [output3358_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3358 input2222)).val
theorem input3359_def : input3359 = (.seq input3358 input2222) := by
  unfold input3359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3358 output2222)).val
theorem output3359_def : output3359 = (.seq output3358 output2222) := by
  unfold output3359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3359_skip : Flapjack.WordAlloc.isSkip output3359 = false := by
  rw [output3359_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3359 input2219)).val
theorem input3360_def : input3360 = (.seq input3359 input2219) := by
  unfold input3360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3359 output2219)).val
theorem output3360_def : output3360 = (.seq output3359 output2219) := by
  unfold output3360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3360_skip : Flapjack.WordAlloc.isSkip output3360 = false := by
  rw [output3360_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3360 input2218)).val
theorem input3361_def : input3361 = (.seq input3360 input2218) := by
  unfold input3361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3360 output2218)).val
theorem output3361_def : output3361 = (.seq output3360 output2218) := by
  unfold output3361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3361_skip : Flapjack.WordAlloc.isSkip output3361 = false := by
  rw [output3361_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3361 input2217)).val
theorem input3362_def : input3362 = (.seq input3361 input2217) := by
  unfold input3362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3361 output2217)).val
theorem output3362_def : output3362 = (.seq output3361 output2217) := by
  unfold output3362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3362_skip : Flapjack.WordAlloc.isSkip output3362 = false := by
  rw [output3362_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3363 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3362 input2214)).val
theorem input3363_def : input3363 = (.seq input3362 input2214) := by
  unfold input3363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3363 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3362 output2214)).val
theorem output3363_def : output3363 = (.seq output3362 output2214) := by
  unfold output3363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3363_skip : Flapjack.WordAlloc.isSkip output3363 = false := by
  rw [output3363_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3363 input2211)).val
theorem input3364_def : input3364 = (.seq input3363 input2211) := by
  unfold input3364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3363 output2211)).val
theorem output3364_def : output3364 = (.seq output3363 output2211) := by
  unfold output3364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3364_skip : Flapjack.WordAlloc.isSkip output3364 = false := by
  rw [output3364_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3364 input2208)).val
theorem input3365_def : input3365 = (.seq input3364 input2208) := by
  unfold input3365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3364 output2208)).val
theorem output3365_def : output3365 = (.seq output3364 output2208) := by
  unfold output3365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3365_skip : Flapjack.WordAlloc.isSkip output3365 = false := by
  rw [output3365_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3365 input2207)).val
theorem input3366_def : input3366 = (.seq input3365 input2207) := by
  unfold input3366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3365 output2207)).val
theorem output3366_def : output3366 = (.seq output3365 output2207) := by
  unfold output3366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3366_skip : Flapjack.WordAlloc.isSkip output3366 = false := by
  rw [output3366_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3366 input2204)).val
theorem input3367_def : input3367 = (.seq input3366 input2204) := by
  unfold input3367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3366 output2204)).val
theorem output3367_def : output3367 = (.seq output3366 output2204) := by
  unfold output3367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3367_skip : Flapjack.WordAlloc.isSkip output3367 = false := by
  rw [output3367_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3367 input2201)).val
theorem input3368_def : input3368 = (.seq input3367 input2201) := by
  unfold input3368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3367 output2201)).val
theorem output3368_def : output3368 = (.seq output3367 output2201) := by
  unfold output3368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3368_skip : Flapjack.WordAlloc.isSkip output3368 = false := by
  rw [output3368_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3368 input2200)).val
theorem input3369_def : input3369 = (.seq input3368 input2200) := by
  unfold input3369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3368 output2200)).val
theorem output3369_def : output3369 = (.seq output3368 output2200) := by
  unfold output3369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3369_skip : Flapjack.WordAlloc.isSkip output3369 = false := by
  rw [output3369_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3369 input2199)).val
theorem input3370_def : input3370 = (.seq input3369 input2199) := by
  unfold input3370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3369 output2199)).val
theorem output3370_def : output3370 = (.seq output3369 output2199) := by
  unfold output3370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3370_skip : Flapjack.WordAlloc.isSkip output3370 = false := by
  rw [output3370_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3370 input2196)).val
theorem input3371_def : input3371 = (.seq input3370 input2196) := by
  unfold input3371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3370 output2196)).val
theorem output3371_def : output3371 = (.seq output3370 output2196) := by
  unfold output3371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3371_skip : Flapjack.WordAlloc.isSkip output3371 = false := by
  rw [output3371_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3371 input2193)).val
theorem input3372_def : input3372 = (.seq input3371 input2193) := by
  unfold input3372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3371 output2193)).val
theorem output3372_def : output3372 = (.seq output3371 output2193) := by
  unfold output3372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3372_skip : Flapjack.WordAlloc.isSkip output3372 = false := by
  rw [output3372_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3372 input2192)).val
theorem input3373_def : input3373 = (.seq input3372 input2192) := by
  unfold input3373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3372 output2192)).val
theorem output3373_def : output3373 = (.seq output3372 output2192) := by
  unfold output3373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3373_skip : Flapjack.WordAlloc.isSkip output3373 = false := by
  rw [output3373_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3373 input2191)).val
theorem input3374_def : input3374 = (.seq input3373 input2191) := by
  unfold input3374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3373 output2191)).val
theorem output3374_def : output3374 = (.seq output3373 output2191) := by
  unfold output3374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3374_skip : Flapjack.WordAlloc.isSkip output3374 = false := by
  rw [output3374_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3374 input2188)).val
theorem input3375_def : input3375 = (.seq input3374 input2188) := by
  unfold input3375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3374 output2188)).val
theorem output3375_def : output3375 = (.seq output3374 output2188) := by
  unfold output3375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3375_skip : Flapjack.WordAlloc.isSkip output3375 = false := by
  rw [output3375_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3376 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3375 input2187)).val
theorem input3376_def : input3376 = (.seq input3375 input2187) := by
  unfold input3376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3376 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3375 output2187)).val
theorem output3376_def : output3376 = (.seq output3375 output2187) := by
  unfold output3376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3376_skip : Flapjack.WordAlloc.isSkip output3376 = false := by
  rw [output3376_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3376 input2182)).val
theorem input3377_def : input3377 = (.seq input3376 input2182) := by
  unfold input3377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3376 output2182)).val
theorem output3377_def : output3377 = (.seq output3376 output2182) := by
  unfold output3377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3377_skip : Flapjack.WordAlloc.isSkip output3377 = false := by
  rw [output3377_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3377 input2181)).val
theorem input3378_def : input3378 = (.seq input3377 input2181) := by
  unfold input3378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3377 output2181)).val
theorem output3378_def : output3378 = (.seq output3377 output2181) := by
  unfold output3378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3378_skip : Flapjack.WordAlloc.isSkip output3378 = false := by
  rw [output3378_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3378 input2180)).val
theorem input3379_def : input3379 = (.seq input3378 input2180) := by
  unfold input3379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3378 output2180)).val
theorem output3379_def : output3379 = (.seq output3378 output2180) := by
  unfold output3379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3379_skip : Flapjack.WordAlloc.isSkip output3379 = false := by
  rw [output3379_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3379 input2179)).val
theorem input3380_def : input3380 = (.seq input3379 input2179) := by
  unfold input3380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3379 output2179)).val
theorem output3380_def : output3380 = (.seq output3379 output2179) := by
  unfold output3380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3380_skip : Flapjack.WordAlloc.isSkip output3380 = false := by
  rw [output3380_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3380 input2128)).val
theorem input3381_def : input3381 = (.seq input3380 input2128) := by
  unfold input3381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3380 output2128)).val
theorem output3381_def : output3381 = (.seq output3380 output2128) := by
  unfold output3381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3381_skip : Flapjack.WordAlloc.isSkip output3381 = false := by
  rw [output3381_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3381 input2127)).val
theorem input3382_def : input3382 = (.seq input3381 input2127) := by
  unfold input3382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3381 output2127)).val
theorem output3382_def : output3382 = (.seq output3381 output2127) := by
  unfold output3382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3382_skip : Flapjack.WordAlloc.isSkip output3382 = false := by
  rw [output3382_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3382 input2126)).val
theorem input3383_def : input3383 = (.seq input3382 input2126) := by
  unfold input3383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3382 output2126)).val
theorem output3383_def : output3383 = (.seq output3382 output2126) := by
  unfold output3383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3383_skip : Flapjack.WordAlloc.isSkip output3383 = false := by
  rw [output3383_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3384 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3383 input2121)).val
theorem input3384_def : input3384 = (.seq input3383 input2121) := by
  unfold input3384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3384 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3383 output2121)).val
theorem output3384_def : output3384 = (.seq output3383 output2121) := by
  unfold output3384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3384_skip : Flapjack.WordAlloc.isSkip output3384 = false := by
  rw [output3384_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3384 input2120)).val
theorem input3385_def : input3385 = (.seq input3384 input2120) := by
  unfold input3385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3384 output2120)).val
theorem output3385_def : output3385 = (.seq output3384 output2120) := by
  unfold output3385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3385_skip : Flapjack.WordAlloc.isSkip output3385 = false := by
  rw [output3385_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3385 input2119)).val
theorem input3386_def : input3386 = (.seq input3385 input2119) := by
  unfold input3386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3385 output2119)).val
theorem output3386_def : output3386 = (.seq output3385 output2119) := by
  unfold output3386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3386_skip : Flapjack.WordAlloc.isSkip output3386 = false := by
  rw [output3386_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3386 input2118)).val
theorem input3387_def : input3387 = (.seq input3386 input2118) := by
  unfold input3387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3386 output2118)).val
theorem output3387_def : output3387 = (.seq output3386 output2118) := by
  unfold output3387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3387_skip : Flapjack.WordAlloc.isSkip output3387 = false := by
  rw [output3387_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3387 input2067)).val
theorem input3388_def : input3388 = (.seq input3387 input2067) := by
  unfold input3388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3387 output2067)).val
theorem output3388_def : output3388 = (.seq output3387 output2067) := by
  unfold output3388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3388_skip : Flapjack.WordAlloc.isSkip output3388 = false := by
  rw [output3388_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3388 input2066)).val
theorem input3389_def : input3389 = (.seq input3388 input2066) := by
  unfold input3389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3388 output2066)).val
theorem output3389_def : output3389 = (.seq output3388 output2066) := by
  unfold output3389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3389_skip : Flapjack.WordAlloc.isSkip output3389 = false := by
  rw [output3389_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3389 input2063)).val
theorem input3390_def : input3390 = (.seq input3389 input2063) := by
  unfold input3390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3389)).val
theorem output3390_def : output3390 = (output3389) := by
  unfold output3390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3390_skip : Flapjack.WordAlloc.isSkip output3390 = false := by
  rw [output3390_def]
  exact output3389_skip


@[irreducible, cbv_opaque] def input3391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3390 input2062)).val
theorem input3391_def : input3391 = (.seq input3390 input2062) := by
  unfold input3391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3390 output2062)).val
theorem output3391_def : output3391 = (.seq output3390 output2062) := by
  unfold output3391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3391_skip : Flapjack.WordAlloc.isSkip output3391 = false := by
  rw [output3391_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3391 input2061)).val
theorem input3392_def : input3392 = (.seq input3391 input2061) := by
  unfold input3392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3391 output2061)).val
theorem output3392_def : output3392 = (.seq output3391 output2061) := by
  unfold output3392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3392_skip : Flapjack.WordAlloc.isSkip output3392 = false := by
  rw [output3392_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3392 input2058)).val
theorem input3393_def : input3393 = (.seq input3392 input2058) := by
  unfold input3393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3392 output2058)).val
theorem output3393_def : output3393 = (.seq output3392 output2058) := by
  unfold output3393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3393_skip : Flapjack.WordAlloc.isSkip output3393 = false := by
  rw [output3393_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3393 input2055)).val
theorem input3394_def : input3394 = (.seq input3393 input2055) := by
  unfold input3394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3393 output2055)).val
theorem output3394_def : output3394 = (.seq output3393 output2055) := by
  unfold output3394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3394_skip : Flapjack.WordAlloc.isSkip output3394 = false := by
  rw [output3394_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3394 input2054)).val
theorem input3395_def : input3395 = (.seq input3394 input2054) := by
  unfold input3395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3394 output2054)).val
theorem output3395_def : output3395 = (.seq output3394 output2054) := by
  unfold output3395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3395_skip : Flapjack.WordAlloc.isSkip output3395 = false := by
  rw [output3395_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3395 input2053)).val
theorem input3396_def : input3396 = (.seq input3395 input2053) := by
  unfold input3396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3395 output2053)).val
theorem output3396_def : output3396 = (.seq output3395 output2053) := by
  unfold output3396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3396_skip : Flapjack.WordAlloc.isSkip output3396 = false := by
  rw [output3396_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3396 input2050)).val
theorem input3397_def : input3397 = (.seq input3396 input2050) := by
  unfold input3397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3396)).val
theorem output3397_def : output3397 = (output3396) := by
  unfold output3397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3397_skip : Flapjack.WordAlloc.isSkip output3397 = false := by
  rw [output3397_def]
  exact output3396_skip


@[irreducible, cbv_opaque] def input3398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3397 input2049)).val
theorem input3398_def : input3398 = (.seq input3397 input2049) := by
  unfold input3398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3397 output2049)).val
theorem output3398_def : output3398 = (.seq output3397 output2049) := by
  unfold output3398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3398_skip : Flapjack.WordAlloc.isSkip output3398 = false := by
  rw [output3398_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3398 input2048)).val
theorem input3399_def : input3399 = (.seq input3398 input2048) := by
  unfold input3399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3398 output2048)).val
theorem output3399_def : output3399 = (.seq output3398 output2048) := by
  unfold output3399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3399_skip : Flapjack.WordAlloc.isSkip output3399 = false := by
  rw [output3399_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3399 input2043)).val
theorem input3400_def : input3400 = (.seq input3399 input2043) := by
  unfold input3400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3399 output2043)).val
theorem output3400_def : output3400 = (.seq output3399 output2043) := by
  unfold output3400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3400_skip : Flapjack.WordAlloc.isSkip output3400 = false := by
  rw [output3400_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3400 input2042)).val
theorem input3401_def : input3401 = (.seq input3400 input2042) := by
  unfold input3401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3400 output2042)).val
theorem output3401_def : output3401 = (.seq output3400 output2042) := by
  unfold output3401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3401_skip : Flapjack.WordAlloc.isSkip output3401 = false := by
  rw [output3401_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3401 input2041)).val
theorem input3402_def : input3402 = (.seq input3401 input2041) := by
  unfold input3402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3401 output2041)).val
theorem output3402_def : output3402 = (.seq output3401 output2041) := by
  unfold output3402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3402_skip : Flapjack.WordAlloc.isSkip output3402 = false := by
  rw [output3402_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3402 input2040)).val
theorem input3403_def : input3403 = (.seq input3402 input2040) := by
  unfold input3403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3402 output2040)).val
theorem output3403_def : output3403 = (.seq output3402 output2040) := by
  unfold output3403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3403_skip : Flapjack.WordAlloc.isSkip output3403 = false := by
  rw [output3403_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3403 input2039)).val
theorem input3404_def : input3404 = (.seq input3403 input2039) := by
  unfold input3404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3403 output2039)).val
theorem output3404_def : output3404 = (.seq output3403 output2039) := by
  unfold output3404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3404_skip : Flapjack.WordAlloc.isSkip output3404 = false := by
  rw [output3404_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3404 input2034)).val
theorem input3405_def : input3405 = (.seq input3404 input2034) := by
  unfold input3405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3404 output2034)).val
theorem output3405_def : output3405 = (.seq output3404 output2034) := by
  unfold output3405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3405_skip : Flapjack.WordAlloc.isSkip output3405 = false := by
  rw [output3405_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3405 input2033)).val
theorem input3406_def : input3406 = (.seq input3405 input2033) := by
  unfold input3406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3405 output2033)).val
theorem output3406_def : output3406 = (.seq output3405 output2033) := by
  unfold output3406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3406_skip : Flapjack.WordAlloc.isSkip output3406 = false := by
  rw [output3406_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3406 input2030)).val
theorem input3407_def : input3407 = (.seq input3406 input2030) := by
  unfold input3407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3406 output2030)).val
theorem output3407_def : output3407 = (.seq output3406 output2030) := by
  unfold output3407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3407_skip : Flapjack.WordAlloc.isSkip output3407 = false := by
  rw [output3407_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3408 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3407 input2029)).val
theorem input3408_def : input3408 = (.seq input3407 input2029) := by
  unfold input3408
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3408 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3407 output2029)).val
theorem output3408_def : output3408 = (.seq output3407 output2029) := by
  unfold output3408
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3408_skip : Flapjack.WordAlloc.isSkip output3408 = false := by
  rw [output3408_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3409 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3408 input2028)).val
theorem input3409_def : input3409 = (.seq input3408 input2028) := by
  unfold input3409
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3409 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3408 output2028)).val
theorem output3409_def : output3409 = (.seq output3408 output2028) := by
  unfold output3409
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3409_skip : Flapjack.WordAlloc.isSkip output3409 = false := by
  rw [output3409_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3410 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3409 input2025)).val
theorem input3410_def : input3410 = (.seq input3409 input2025) := by
  unfold input3410
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3410 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3409 output2025)).val
theorem output3410_def : output3410 = (.seq output3409 output2025) := by
  unfold output3410
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3410_skip : Flapjack.WordAlloc.isSkip output3410 = false := by
  rw [output3410_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3411 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3410 input2022)).val
theorem input3411_def : input3411 = (.seq input3410 input2022) := by
  unfold input3411
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3411 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3410 output2022)).val
theorem output3411_def : output3411 = (.seq output3410 output2022) := by
  unfold output3411
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3411_skip : Flapjack.WordAlloc.isSkip output3411 = false := by
  rw [output3411_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3412 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3411 input2021)).val
theorem input3412_def : input3412 = (.seq input3411 input2021) := by
  unfold input3412
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3412 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3411 output2021)).val
theorem output3412_def : output3412 = (.seq output3411 output2021) := by
  unfold output3412
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3412_skip : Flapjack.WordAlloc.isSkip output3412 = false := by
  rw [output3412_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3413 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3412 input2020)).val
theorem input3413_def : input3413 = (.seq input3412 input2020) := by
  unfold input3413
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3413 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3412 output2020)).val
theorem output3413_def : output3413 = (.seq output3412 output2020) := by
  unfold output3413
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3413_skip : Flapjack.WordAlloc.isSkip output3413 = false := by
  rw [output3413_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3414 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3413 input2017)).val
theorem input3414_def : input3414 = (.seq input3413 input2017) := by
  unfold input3414
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3414 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3413 output2017)).val
theorem output3414_def : output3414 = (.seq output3413 output2017) := by
  unfold output3414
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3414_skip : Flapjack.WordAlloc.isSkip output3414 = false := by
  rw [output3414_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3415 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3414 input2014)).val
theorem input3415_def : input3415 = (.seq input3414 input2014) := by
  unfold input3415
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3415 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3414 output2014)).val
theorem output3415_def : output3415 = (.seq output3414 output2014) := by
  unfold output3415
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3415_skip : Flapjack.WordAlloc.isSkip output3415 = false := by
  rw [output3415_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3416 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3415 input2013)).val
theorem input3416_def : input3416 = (.seq input3415 input2013) := by
  unfold input3416
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3416 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3415 output2013)).val
theorem output3416_def : output3416 = (.seq output3415 output2013) := by
  unfold output3416
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3416_skip : Flapjack.WordAlloc.isSkip output3416 = false := by
  rw [output3416_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3417 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3416 input2012)).val
theorem input3417_def : input3417 = (.seq input3416 input2012) := by
  unfold input3417
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3417 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3416 output2012)).val
theorem output3417_def : output3417 = (.seq output3416 output2012) := by
  unfold output3417
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3417_skip : Flapjack.WordAlloc.isSkip output3417 = false := by
  rw [output3417_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3418 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3417 input2009)).val
theorem input3418_def : input3418 = (.seq input3417 input2009) := by
  unfold input3418
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3418 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3417 output2009)).val
theorem output3418_def : output3418 = (.seq output3417 output2009) := by
  unfold output3418
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3418_skip : Flapjack.WordAlloc.isSkip output3418 = false := by
  rw [output3418_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3419 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3418 input2004)).val
theorem input3419_def : input3419 = (.seq input3418 input2004) := by
  unfold input3419
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3419 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3418 output2004)).val
theorem output3419_def : output3419 = (.seq output3418 output2004) := by
  unfold output3419
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3419_skip : Flapjack.WordAlloc.isSkip output3419 = false := by
  rw [output3419_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3420 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3419 input2003)).val
theorem input3420_def : input3420 = (.seq input3419 input2003) := by
  unfold input3420
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3420 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3419 output2003)).val
theorem output3420_def : output3420 = (.seq output3419 output2003) := by
  unfold output3420
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3420_skip : Flapjack.WordAlloc.isSkip output3420 = false := by
  rw [output3420_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3421 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3420 input2002)).val
theorem input3421_def : input3421 = (.seq input3420 input2002) := by
  unfold input3421
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3421 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3420 output2002)).val
theorem output3421_def : output3421 = (.seq output3420 output2002) := by
  unfold output3421
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3421_skip : Flapjack.WordAlloc.isSkip output3421 = false := by
  rw [output3421_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3422 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3421 input1995)).val
theorem input3422_def : input3422 = (.seq input3421 input1995) := by
  unfold input3422
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3422 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3421 output1995)).val
theorem output3422_def : output3422 = (.seq output3421 output1995) := by
  unfold output3422
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3422_skip : Flapjack.WordAlloc.isSkip output3422 = false := by
  rw [output3422_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3423 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3422 input1994)).val
theorem input3423_def : input3423 = (.seq input3422 input1994) := by
  unfold input3423
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3423 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3422 output1994)).val
theorem output3423_def : output3423 = (.seq output3422 output1994) := by
  unfold output3423
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3423_skip : Flapjack.WordAlloc.isSkip output3423 = false := by
  rw [output3423_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3424 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3423 input1991)).val
theorem input3424_def : input3424 = (.seq input3423 input1991) := by
  unfold input3424
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3424 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3423 output1991)).val
theorem output3424_def : output3424 = (.seq output3423 output1991) := by
  unfold output3424
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3424_skip : Flapjack.WordAlloc.isSkip output3424 = false := by
  rw [output3424_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3425 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3424 input1988)).val
theorem input3425_def : input3425 = (.seq input3424 input1988) := by
  unfold input3425
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3425 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3424 output1988)).val
theorem output3425_def : output3425 = (.seq output3424 output1988) := by
  unfold output3425
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3425_skip : Flapjack.WordAlloc.isSkip output3425 = false := by
  rw [output3425_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3426 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3425 input1987)).val
theorem input3426_def : input3426 = (.seq input3425 input1987) := by
  unfold input3426
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3426 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3425 output1987)).val
theorem output3426_def : output3426 = (.seq output3425 output1987) := by
  unfold output3426
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3426_skip : Flapjack.WordAlloc.isSkip output3426 = false := by
  rw [output3426_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3427 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3426 input1986)).val
theorem input3427_def : input3427 = (.seq input3426 input1986) := by
  unfold input3427
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3427 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3426 output1986)).val
theorem output3427_def : output3427 = (.seq output3426 output1986) := by
  unfold output3427
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3427_skip : Flapjack.WordAlloc.isSkip output3427 = false := by
  rw [output3427_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3428 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3427 input1983)).val
theorem input3428_def : input3428 = (.seq input3427 input1983) := by
  unfold input3428
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3428 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3427 output1983)).val
theorem output3428_def : output3428 = (.seq output3427 output1983) := by
  unfold output3428
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3428_skip : Flapjack.WordAlloc.isSkip output3428 = false := by
  rw [output3428_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3429 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3428 input1980)).val
theorem input3429_def : input3429 = (.seq input3428 input1980) := by
  unfold input3429
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3429 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3428 output1980)).val
theorem output3429_def : output3429 = (.seq output3428 output1980) := by
  unfold output3429
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3429_skip : Flapjack.WordAlloc.isSkip output3429 = false := by
  rw [output3429_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3430 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3429 input1979)).val
theorem input3430_def : input3430 = (.seq input3429 input1979) := by
  unfold input3430
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3430 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3429 output1979)).val
theorem output3430_def : output3430 = (.seq output3429 output1979) := by
  unfold output3430
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3430_skip : Flapjack.WordAlloc.isSkip output3430 = false := by
  rw [output3430_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3431 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3430 input1978)).val
theorem input3431_def : input3431 = (.seq input3430 input1978) := by
  unfold input3431
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3431 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3430 output1978)).val
theorem output3431_def : output3431 = (.seq output3430 output1978) := by
  unfold output3431
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3431_skip : Flapjack.WordAlloc.isSkip output3431 = false := by
  rw [output3431_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3432 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3431 input1975)).val
theorem input3432_def : input3432 = (.seq input3431 input1975) := by
  unfold input3432
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3432 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3431 output1975)).val
theorem output3432_def : output3432 = (.seq output3431 output1975) := by
  unfold output3432
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3432_skip : Flapjack.WordAlloc.isSkip output3432 = false := by
  rw [output3432_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3433 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3432 input1972)).val
theorem input3433_def : input3433 = (.seq input3432 input1972) := by
  unfold input3433
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3433 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3432 output1972)).val
theorem output3433_def : output3433 = (.seq output3432 output1972) := by
  unfold output3433
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3433_skip : Flapjack.WordAlloc.isSkip output3433 = false := by
  rw [output3433_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3434 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3433 input1969)).val
theorem input3434_def : input3434 = (.seq input3433 input1969) := by
  unfold input3434
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3434 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3433 output1969)).val
theorem output3434_def : output3434 = (.seq output3433 output1969) := by
  unfold output3434
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3434_skip : Flapjack.WordAlloc.isSkip output3434 = false := by
  rw [output3434_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3435 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3434 input1968)).val
theorem input3435_def : input3435 = (.seq input3434 input1968) := by
  unfold input3435
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3435 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3434 output1968)).val
theorem output3435_def : output3435 = (.seq output3434 output1968) := by
  unfold output3435
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3435_skip : Flapjack.WordAlloc.isSkip output3435 = false := by
  rw [output3435_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3436 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3435 input1965)).val
theorem input3436_def : input3436 = (.seq input3435 input1965) := by
  unfold input3436
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3436 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3435 output1965)).val
theorem output3436_def : output3436 = (.seq output3435 output1965) := by
  unfold output3436
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3436_skip : Flapjack.WordAlloc.isSkip output3436 = false := by
  rw [output3436_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3437 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3436 input1962)).val
theorem input3437_def : input3437 = (.seq input3436 input1962) := by
  unfold input3437
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3437 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3436 output1962)).val
theorem output3437_def : output3437 = (.seq output3436 output1962) := by
  unfold output3437
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3437_skip : Flapjack.WordAlloc.isSkip output3437 = false := by
  rw [output3437_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3438 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3437 input1961)).val
theorem input3438_def : input3438 = (.seq input3437 input1961) := by
  unfold input3438
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3438 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3437 output1961)).val
theorem output3438_def : output3438 = (.seq output3437 output1961) := by
  unfold output3438
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3438_skip : Flapjack.WordAlloc.isSkip output3438 = false := by
  rw [output3438_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3439 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3438 input1960)).val
theorem input3439_def : input3439 = (.seq input3438 input1960) := by
  unfold input3439
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3439 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3438 output1960)).val
theorem output3439_def : output3439 = (.seq output3438 output1960) := by
  unfold output3439
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3439_skip : Flapjack.WordAlloc.isSkip output3439 = false := by
  rw [output3439_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3440 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3439 input1957)).val
theorem input3440_def : input3440 = (.seq input3439 input1957) := by
  unfold input3440
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3440 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3439 output1957)).val
theorem output3440_def : output3440 = (.seq output3439 output1957) := by
  unfold output3440
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3440_skip : Flapjack.WordAlloc.isSkip output3440 = false := by
  rw [output3440_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3441 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3440 input1954)).val
theorem input3441_def : input3441 = (.seq input3440 input1954) := by
  unfold input3441
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3441 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3440 output1954)).val
theorem output3441_def : output3441 = (.seq output3440 output1954) := by
  unfold output3441
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3441_skip : Flapjack.WordAlloc.isSkip output3441 = false := by
  rw [output3441_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3442 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3441 input1953)).val
theorem input3442_def : input3442 = (.seq input3441 input1953) := by
  unfold input3442
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3442 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3441 output1953)).val
theorem output3442_def : output3442 = (.seq output3441 output1953) := by
  unfold output3442
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3442_skip : Flapjack.WordAlloc.isSkip output3442 = false := by
  rw [output3442_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3443 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3442 input1952)).val
theorem input3443_def : input3443 = (.seq input3442 input1952) := by
  unfold input3443
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3443 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3442 output1952)).val
theorem output3443_def : output3443 = (.seq output3442 output1952) := by
  unfold output3443
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3443_skip : Flapjack.WordAlloc.isSkip output3443 = false := by
  rw [output3443_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3444 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3443 input1949)).val
theorem input3444_def : input3444 = (.seq input3443 input1949) := by
  unfold input3444
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3444 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3443 output1949)).val
theorem output3444_def : output3444 = (.seq output3443 output1949) := by
  unfold output3444
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3444_skip : Flapjack.WordAlloc.isSkip output3444 = false := by
  rw [output3444_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3445 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3444 input1946)).val
theorem input3445_def : input3445 = (.seq input3444 input1946) := by
  unfold input3445
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3445 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3444 output1946)).val
theorem output3445_def : output3445 = (.seq output3444 output1946) := by
  unfold output3445
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3445_skip : Flapjack.WordAlloc.isSkip output3445 = false := by
  rw [output3445_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3446 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3445 input1943)).val
theorem input3446_def : input3446 = (.seq input3445 input1943) := by
  unfold input3446
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3446 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3445 output1943)).val
theorem output3446_def : output3446 = (.seq output3445 output1943) := by
  unfold output3446
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3446_skip : Flapjack.WordAlloc.isSkip output3446 = false := by
  rw [output3446_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3447 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3446 input1940)).val
theorem input3447_def : input3447 = (.seq input3446 input1940) := by
  unfold input3447
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3447 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3446 output1940)).val
theorem output3447_def : output3447 = (.seq output3446 output1940) := by
  unfold output3447
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3447_skip : Flapjack.WordAlloc.isSkip output3447 = false := by
  rw [output3447_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3448 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3447 input1937)).val
theorem input3448_def : input3448 = (.seq input3447 input1937) := by
  unfold input3448
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3448 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3447 output1937)).val
theorem output3448_def : output3448 = (.seq output3447 output1937) := by
  unfold output3448
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3448_skip : Flapjack.WordAlloc.isSkip output3448 = false := by
  rw [output3448_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3449 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3448 input1934)).val
theorem input3449_def : input3449 = (.seq input3448 input1934) := by
  unfold input3449
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3449 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3448 output1934)).val
theorem output3449_def : output3449 = (.seq output3448 output1934) := by
  unfold output3449
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3449_skip : Flapjack.WordAlloc.isSkip output3449 = false := by
  rw [output3449_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3450 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3449 input1933)).val
theorem input3450_def : input3450 = (.seq input3449 input1933) := by
  unfold input3450
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3450 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3449 output1933)).val
theorem output3450_def : output3450 = (.seq output3449 output1933) := by
  unfold output3450
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3450_skip : Flapjack.WordAlloc.isSkip output3450 = false := by
  rw [output3450_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3451 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3450 input1930)).val
theorem input3451_def : input3451 = (.seq input3450 input1930) := by
  unfold input3451
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3451 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3450 output1930)).val
theorem output3451_def : output3451 = (.seq output3450 output1930) := by
  unfold output3451
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3451_skip : Flapjack.WordAlloc.isSkip output3451 = false := by
  rw [output3451_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3452 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3451 input1929)).val
theorem input3452_def : input3452 = (.seq input3451 input1929) := by
  unfold input3452
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3452 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3451 output1929)).val
theorem output3452_def : output3452 = (.seq output3451 output1929) := by
  unfold output3452
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3452_skip : Flapjack.WordAlloc.isSkip output3452 = false := by
  rw [output3452_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3453 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3452 input1926)).val
theorem input3453_def : input3453 = (.seq input3452 input1926) := by
  unfold input3453
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3453 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3452 output1926)).val
theorem output3453_def : output3453 = (.seq output3452 output1926) := by
  unfold output3453
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3453_skip : Flapjack.WordAlloc.isSkip output3453 = false := by
  rw [output3453_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3454 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3453 input1925)).val
theorem input3454_def : input3454 = (.seq input3453 input1925) := by
  unfold input3454
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3454 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3453 output1925)).val
theorem output3454_def : output3454 = (.seq output3453 output1925) := by
  unfold output3454
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3454_skip : Flapjack.WordAlloc.isSkip output3454 = false := by
  rw [output3454_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3455 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3454 input1922)).val
theorem input3455_def : input3455 = (.seq input3454 input1922) := by
  unfold input3455
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3455 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3454 output1922)).val
theorem output3455_def : output3455 = (.seq output3454 output1922) := by
  unfold output3455
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3455_skip : Flapjack.WordAlloc.isSkip output3455 = false := by
  rw [output3455_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3456 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3455 input1921)).val
theorem input3456_def : input3456 = (.seq input3455 input1921) := by
  unfold input3456
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3456 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3455 output1921)).val
theorem output3456_def : output3456 = (.seq output3455 output1921) := by
  unfold output3456
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3456_skip : Flapjack.WordAlloc.isSkip output3456 = false := by
  rw [output3456_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3457 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3456 input1918)).val
theorem input3457_def : input3457 = (.seq input3456 input1918) := by
  unfold input3457
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3457 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3456)).val
theorem output3457_def : output3457 = (output3456) := by
  unfold output3457
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3457_skip : Flapjack.WordAlloc.isSkip output3457 = false := by
  rw [output3457_def]
  exact output3456_skip


@[irreducible, cbv_opaque] def input3458 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3457 input1917)).val
theorem input3458_def : input3458 = (.seq input3457 input1917) := by
  unfold input3458
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3458 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3457)).val
theorem output3458_def : output3458 = (output3457) := by
  unfold output3458
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3458_skip : Flapjack.WordAlloc.isSkip output3458 = false := by
  rw [output3458_def]
  exact output3457_skip


@[irreducible, cbv_opaque] def input3459 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3458 input1916)).val
theorem input3459_def : input3459 = (.seq input3458 input1916) := by
  unfold input3459
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3459 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3458 output1916)).val
theorem output3459_def : output3459 = (.seq output3458 output1916) := by
  unfold output3459
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3459_skip : Flapjack.WordAlloc.isSkip output3459 = false := by
  rw [output3459_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3460 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3459 input1915)).val
theorem input3460_def : input3460 = (.seq input3459 input1915) := by
  unfold input3460
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3460 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3459 output1915)).val
theorem output3460_def : output3460 = (.seq output3459 output1915) := by
  unfold output3460
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3460_skip : Flapjack.WordAlloc.isSkip output3460 = false := by
  rw [output3460_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3461 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3460 input1914)).val
theorem input3461_def : input3461 = (.seq input3460 input1914) := by
  unfold input3461
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3461 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3460 output1914)).val
theorem output3461_def : output3461 = (.seq output3460 output1914) := by
  unfold output3461
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3461_skip : Flapjack.WordAlloc.isSkip output3461 = false := by
  rw [output3461_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3462 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3461 input1909)).val
theorem input3462_def : input3462 = (.seq input3461 input1909) := by
  unfold input3462
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3462 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3461 output1909)).val
theorem output3462_def : output3462 = (.seq output3461 output1909) := by
  unfold output3462
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3462_skip : Flapjack.WordAlloc.isSkip output3462 = false := by
  rw [output3462_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3463 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3462 input1908)).val
theorem input3463_def : input3463 = (.seq input3462 input1908) := by
  unfold input3463
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3463 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3462 output1908)).val
theorem output3463_def : output3463 = (.seq output3462 output1908) := by
  unfold output3463
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3463_skip : Flapjack.WordAlloc.isSkip output3463 = false := by
  rw [output3463_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3464 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3463 input1907)).val
theorem input3464_def : input3464 = (.seq input3463 input1907) := by
  unfold input3464
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3464 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3463 output1907)).val
theorem output3464_def : output3464 = (.seq output3463 output1907) := by
  unfold output3464
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3464_skip : Flapjack.WordAlloc.isSkip output3464 = false := by
  rw [output3464_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3465 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3464 input1906)).val
theorem input3465_def : input3465 = (.seq input3464 input1906) := by
  unfold input3465
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3465 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3464)).val
theorem output3465_def : output3465 = (output3464) := by
  unfold output3465
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3465_skip : Flapjack.WordAlloc.isSkip output3465 = false := by
  rw [output3465_def]
  exact output3464_skip


@[irreducible, cbv_opaque] def input3466 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3465 input1905)).val
theorem input3466_def : input3466 = (.seq input3465 input1905) := by
  unfold input3466
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3466 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3465 output1905)).val
theorem output3466_def : output3466 = (.seq output3465 output1905) := by
  unfold output3466
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3466_skip : Flapjack.WordAlloc.isSkip output3466 = false := by
  rw [output3466_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3467 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3466 input1904)).val
theorem input3467_def : input3467 = (.seq input3466 input1904) := by
  unfold input3467
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3467 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3466 output1904)).val
theorem output3467_def : output3467 = (.seq output3466 output1904) := by
  unfold output3467
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3467_skip : Flapjack.WordAlloc.isSkip output3467 = false := by
  rw [output3467_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3468 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3467 input1899)).val
theorem input3468_def : input3468 = (.seq input3467 input1899) := by
  unfold input3468
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3468 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3467 output1899)).val
theorem output3468_def : output3468 = (.seq output3467 output1899) := by
  unfold output3468
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3468_skip : Flapjack.WordAlloc.isSkip output3468 = false := by
  rw [output3468_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3469 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3468 input1898)).val
theorem input3469_def : input3469 = (.seq input3468 input1898) := by
  unfold input3469
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3469 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3468 output1898)).val
theorem output3469_def : output3469 = (.seq output3468 output1898) := by
  unfold output3469
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3469_skip : Flapjack.WordAlloc.isSkip output3469 = false := by
  rw [output3469_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3470 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3469 input1897)).val
theorem input3470_def : input3470 = (.seq input3469 input1897) := by
  unfold input3470
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3470 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3469 output1897)).val
theorem output3470_def : output3470 = (.seq output3469 output1897) := by
  unfold output3470
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3470_skip : Flapjack.WordAlloc.isSkip output3470 = false := by
  rw [output3470_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3471 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3470 input1896)).val
theorem input3471_def : input3471 = (.seq input3470 input1896) := by
  unfold input3471
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3471 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3470 output1896)).val
theorem output3471_def : output3471 = (.seq output3470 output1896) := by
  unfold output3471
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3471_skip : Flapjack.WordAlloc.isSkip output3471 = false := by
  rw [output3471_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3472 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3471 input1798)).val
theorem input3472_def : input3472 = (.seq input3471 input1798) := by
  unfold input3472
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3472 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3471 output1798)).val
theorem output3472_def : output3472 = (.seq output3471 output1798) := by
  unfold output3472
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3472_skip : Flapjack.WordAlloc.isSkip output3472 = false := by
  rw [output3472_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3473 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3472 input1797)).val
theorem input3473_def : input3473 = (.seq input3472 input1797) := by
  unfold input3473
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3473 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3472 output1797)).val
theorem output3473_def : output3473 = (.seq output3472 output1797) := by
  unfold output3473
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3473_skip : Flapjack.WordAlloc.isSkip output3473 = false := by
  rw [output3473_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3474 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3473 input1796)).val
theorem input3474_def : input3474 = (.seq input3473 input1796) := by
  unfold input3474
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3474 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3473 output1796)).val
theorem output3474_def : output3474 = (.seq output3473 output1796) := by
  unfold output3474
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3474_skip : Flapjack.WordAlloc.isSkip output3474 = false := by
  rw [output3474_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3475 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3474 input1795)).val
theorem input3475_def : input3475 = (.seq input3474 input1795) := by
  unfold input3475
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3475 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3474 output1795)).val
theorem output3475_def : output3475 = (.seq output3474 output1795) := by
  unfold output3475
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3475_skip : Flapjack.WordAlloc.isSkip output3475 = false := by
  rw [output3475_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3476 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3475 input1709)).val
theorem input3476_def : input3476 = (.seq input3475 input1709) := by
  unfold input3476
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3476 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3475 output1709)).val
theorem output3476_def : output3476 = (.seq output3475 output1709) := by
  unfold output3476
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3476_skip : Flapjack.WordAlloc.isSkip output3476 = false := by
  rw [output3476_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3477 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3476 input1708)).val
theorem input3477_def : input3477 = (.seq input3476 input1708) := by
  unfold input3477
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3477 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3476)).val
theorem output3477_def : output3477 = (output3476) := by
  unfold output3477
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3477_skip : Flapjack.WordAlloc.isSkip output3477 = false := by
  rw [output3477_def]
  exact output3476_skip


@[irreducible, cbv_opaque] def input3478 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3477 input1707)).val
theorem input3478_def : input3478 = (.seq input3477 input1707) := by
  unfold input3478
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3478 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3477)).val
theorem output3478_def : output3478 = (output3477) := by
  unfold output3478
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3478_skip : Flapjack.WordAlloc.isSkip output3478 = false := by
  rw [output3478_def]
  exact output3477_skip


@[irreducible, cbv_opaque] def input3479 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3478 input1706)).val
theorem input3479_def : input3479 = (.seq input3478 input1706) := by
  unfold input3479
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3479 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3478 output1706)).val
theorem output3479_def : output3479 = (.seq output3478 output1706) := by
  unfold output3479
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3479_skip : Flapjack.WordAlloc.isSkip output3479 = false := by
  rw [output3479_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3480 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3479 input1705)).val
theorem input3480_def : input3480 = (.seq input3479 input1705) := by
  unfold input3480
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3480 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3479 output1705)).val
theorem output3480_def : output3480 = (.seq output3479 output1705) := by
  unfold output3480
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3480_skip : Flapjack.WordAlloc.isSkip output3480 = false := by
  rw [output3480_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3481 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3480 input1704)).val
theorem input3481_def : input3481 = (.seq input3480 input1704) := by
  unfold input3481
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3481 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3480 output1704)).val
theorem output3481_def : output3481 = (.seq output3480 output1704) := by
  unfold output3481
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3481_skip : Flapjack.WordAlloc.isSkip output3481 = false := by
  rw [output3481_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3482 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3481 input1699)).val
theorem input3482_def : input3482 = (.seq input3481 input1699) := by
  unfold input3482
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3482 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3481 output1699)).val
theorem output3482_def : output3482 = (.seq output3481 output1699) := by
  unfold output3482
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3482_skip : Flapjack.WordAlloc.isSkip output3482 = false := by
  rw [output3482_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3483 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3482 input1698)).val
theorem input3483_def : input3483 = (.seq input3482 input1698) := by
  unfold input3483
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3483 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3482 output1698)).val
theorem output3483_def : output3483 = (.seq output3482 output1698) := by
  unfold output3483
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3483_skip : Flapjack.WordAlloc.isSkip output3483 = false := by
  rw [output3483_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3484 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3483 input1697)).val
theorem input3484_def : input3484 = (.seq input3483 input1697) := by
  unfold input3484
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3484 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3483 output1697)).val
theorem output3484_def : output3484 = (.seq output3483 output1697) := by
  unfold output3484
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3484_skip : Flapjack.WordAlloc.isSkip output3484 = false := by
  rw [output3484_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3485 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3484 input1696)).val
theorem input3485_def : input3485 = (.seq input3484 input1696) := by
  unfold input3485
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3485 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3484 output1696)).val
theorem output3485_def : output3485 = (.seq output3484 output1696) := by
  unfold output3485
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3485_skip : Flapjack.WordAlloc.isSkip output3485 = false := by
  rw [output3485_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3486 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3485 input1602)).val
theorem input3486_def : input3486 = (.seq input3485 input1602) := by
  unfold input3486
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3486 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3485 output1602)).val
theorem output3486_def : output3486 = (.seq output3485 output1602) := by
  unfold output3486
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3486_skip : Flapjack.WordAlloc.isSkip output3486 = false := by
  rw [output3486_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3487 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3486 input1601)).val
theorem input3487_def : input3487 = (.seq input3486 input1601) := by
  unfold input3487
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3487 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3486)).val
theorem output3487_def : output3487 = (output3486) := by
  unfold output3487
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3487_skip : Flapjack.WordAlloc.isSkip output3487 = false := by
  rw [output3487_def]
  exact output3486_skip


@[irreducible, cbv_opaque] def input3488 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3487 input1600)).val
theorem input3488_def : input3488 = (.seq input3487 input1600) := by
  unfold input3488
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3488 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3487 output1600)).val
theorem output3488_def : output3488 = (.seq output3487 output1600) := by
  unfold output3488
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3488_skip : Flapjack.WordAlloc.isSkip output3488 = false := by
  rw [output3488_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3489 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3488 input1599)).val
theorem input3489_def : input3489 = (.seq input3488 input1599) := by
  unfold input3489
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3489 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3488 output1599)).val
theorem output3489_def : output3489 = (.seq output3488 output1599) := by
  unfold output3489
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3489_skip : Flapjack.WordAlloc.isSkip output3489 = false := by
  rw [output3489_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3490 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3489 input1594)).val
theorem input3490_def : input3490 = (.seq input3489 input1594) := by
  unfold input3490
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3490 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3489 output1594)).val
theorem output3490_def : output3490 = (.seq output3489 output1594) := by
  unfold output3490
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3490_skip : Flapjack.WordAlloc.isSkip output3490 = false := by
  rw [output3490_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3491 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3490 input1593)).val
theorem input3491_def : input3491 = (.seq input3490 input1593) := by
  unfold input3491
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3491 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3490 output1593)).val
theorem output3491_def : output3491 = (.seq output3490 output1593) := by
  unfold output3491
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3491_skip : Flapjack.WordAlloc.isSkip output3491 = false := by
  rw [output3491_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3492 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3491 input1590)).val
theorem input3492_def : input3492 = (.seq input3491 input1590) := by
  unfold input3492
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3492 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3491 output1590)).val
theorem output3492_def : output3492 = (.seq output3491 output1590) := by
  unfold output3492
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3492_skip : Flapjack.WordAlloc.isSkip output3492 = false := by
  rw [output3492_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3493 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3492 input1589)).val
theorem input3493_def : input3493 = (.seq input3492 input1589) := by
  unfold input3493
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3493 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3492 output1589)).val
theorem output3493_def : output3493 = (.seq output3492 output1589) := by
  unfold output3493
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3493_skip : Flapjack.WordAlloc.isSkip output3493 = false := by
  rw [output3493_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3494 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3493 input1364)).val
theorem input3494_def : input3494 = (.seq input3493 input1364) := by
  unfold input3494
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3494 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3493 output1364)).val
theorem output3494_def : output3494 = (.seq output3493 output1364) := by
  unfold output3494
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3494_skip : Flapjack.WordAlloc.isSkip output3494 = false := by
  rw [output3494_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3495 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3494 input1363)).val
theorem input3495_def : input3495 = (.seq input3494 input1363) := by
  unfold input3495
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3495 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3494 output1363)).val
theorem output3495_def : output3495 = (.seq output3494 output1363) := by
  unfold output3495
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3495_skip : Flapjack.WordAlloc.isSkip output3495 = false := by
  rw [output3495_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3496 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3495 input1360)).val
theorem input3496_def : input3496 = (.seq input3495 input1360) := by
  unfold input3496
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3496 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3495)).val
theorem output3496_def : output3496 = (output3495) := by
  unfold output3496
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3496_skip : Flapjack.WordAlloc.isSkip output3496 = false := by
  rw [output3496_def]
  exact output3495_skip


@[irreducible, cbv_opaque] def input3497 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3496 input1359)).val
theorem input3497_def : input3497 = (.seq input3496 input1359) := by
  unfold input3497
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3497 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3496 output1359)).val
theorem output3497_def : output3497 = (.seq output3496 output1359) := by
  unfold output3497
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3497_skip : Flapjack.WordAlloc.isSkip output3497 = false := by
  rw [output3497_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3498 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3497 input1358)).val
theorem input3498_def : input3498 = (.seq input3497 input1358) := by
  unfold input3498
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3498 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3497 output1358)).val
theorem output3498_def : output3498 = (.seq output3497 output1358) := by
  unfold output3498
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3498_skip : Flapjack.WordAlloc.isSkip output3498 = false := by
  rw [output3498_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3499 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3498 input1355)).val
theorem input3499_def : input3499 = (.seq input3498 input1355) := by
  unfold input3499
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3499 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3498 output1355)).val
theorem output3499_def : output3499 = (.seq output3498 output1355) := by
  unfold output3499
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3499_skip : Flapjack.WordAlloc.isSkip output3499 = false := by
  rw [output3499_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3500 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3499 input1354)).val
theorem input3500_def : input3500 = (.seq input3499 input1354) := by
  unfold input3500
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3500 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3499 output1354)).val
theorem output3500_def : output3500 = (.seq output3499 output1354) := by
  unfold output3500
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3500_skip : Flapjack.WordAlloc.isSkip output3500 = false := by
  rw [output3500_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3501 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3500 input1351)).val
theorem input3501_def : input3501 = (.seq input3500 input1351) := by
  unfold input3501
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3501 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3500)).val
theorem output3501_def : output3501 = (output3500) := by
  unfold output3501
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3501_skip : Flapjack.WordAlloc.isSkip output3501 = false := by
  rw [output3501_def]
  exact output3500_skip


@[irreducible, cbv_opaque] def input3502 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3501 input1350)).val
theorem input3502_def : input3502 = (.seq input3501 input1350) := by
  unfold input3502
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3502 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3501 output1350)).val
theorem output3502_def : output3502 = (.seq output3501 output1350) := by
  unfold output3502
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3502_skip : Flapjack.WordAlloc.isSkip output3502 = false := by
  rw [output3502_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3503 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3502 input1349)).val
theorem input3503_def : input3503 = (.seq input3502 input1349) := by
  unfold input3503
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3503 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3502 output1349)).val
theorem output3503_def : output3503 = (.seq output3502 output1349) := by
  unfold output3503
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3503_skip : Flapjack.WordAlloc.isSkip output3503 = false := by
  rw [output3503_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3504 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3503 input1344)).val
theorem input3504_def : input3504 = (.seq input3503 input1344) := by
  unfold input3504
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3504 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3503 output1344)).val
theorem output3504_def : output3504 = (.seq output3503 output1344) := by
  unfold output3504
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3504_skip : Flapjack.WordAlloc.isSkip output3504 = false := by
  rw [output3504_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3505 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3504 input1343)).val
theorem input3505_def : input3505 = (.seq input3504 input1343) := by
  unfold input3505
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3505 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3504 output1343)).val
theorem output3505_def : output3505 = (.seq output3504 output1343) := by
  unfold output3505
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3505_skip : Flapjack.WordAlloc.isSkip output3505 = false := by
  rw [output3505_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3506 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3505 input1340)).val
theorem input3506_def : input3506 = (.seq input3505 input1340) := by
  unfold input3506
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3506 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3505 output1340)).val
theorem output3506_def : output3506 = (.seq output3505 output1340) := by
  unfold output3506
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3506_skip : Flapjack.WordAlloc.isSkip output3506 = false := by
  rw [output3506_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3507 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3506 input1339)).val
theorem input3507_def : input3507 = (.seq input3506 input1339) := by
  unfold input3507
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3507 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3506 output1339)).val
theorem output3507_def : output3507 = (.seq output3506 output1339) := by
  unfold output3507
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3507_skip : Flapjack.WordAlloc.isSkip output3507 = false := by
  rw [output3507_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3508 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3507 input1338)).val
theorem input3508_def : input3508 = (.seq input3507 input1338) := by
  unfold input3508
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3508 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3507 output1338)).val
theorem output3508_def : output3508 = (.seq output3507 output1338) := by
  unfold output3508
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3508_skip : Flapjack.WordAlloc.isSkip output3508 = false := by
  rw [output3508_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3509 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3508 input1335)).val
theorem input3509_def : input3509 = (.seq input3508 input1335) := by
  unfold input3509
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3509 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3508 output1335)).val
theorem output3509_def : output3509 = (.seq output3508 output1335) := by
  unfold output3509
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3509_skip : Flapjack.WordAlloc.isSkip output3509 = false := by
  rw [output3509_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3510 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3509 input1332)).val
theorem input3510_def : input3510 = (.seq input3509 input1332) := by
  unfold input3510
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3510 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3509 output1332)).val
theorem output3510_def : output3510 = (.seq output3509 output1332) := by
  unfold output3510
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3510_skip : Flapjack.WordAlloc.isSkip output3510 = false := by
  rw [output3510_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3511 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3510 input1331)).val
theorem input3511_def : input3511 = (.seq input3510 input1331) := by
  unfold input3511
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3511 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3510 output1331)).val
theorem output3511_def : output3511 = (.seq output3510 output1331) := by
  unfold output3511
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3511_skip : Flapjack.WordAlloc.isSkip output3511 = false := by
  rw [output3511_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3512 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3511 input1330)).val
theorem input3512_def : input3512 = (.seq input3511 input1330) := by
  unfold input3512
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3512 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3511 output1330)).val
theorem output3512_def : output3512 = (.seq output3511 output1330) := by
  unfold output3512
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3512_skip : Flapjack.WordAlloc.isSkip output3512 = false := by
  rw [output3512_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3513 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3512 input1327)).val
theorem input3513_def : input3513 = (.seq input3512 input1327) := by
  unfold input3513
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3513 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3512 output1327)).val
theorem output3513_def : output3513 = (.seq output3512 output1327) := by
  unfold output3513
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3513_skip : Flapjack.WordAlloc.isSkip output3513 = false := by
  rw [output3513_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3514 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3513 input1326)).val
theorem input3514_def : input3514 = (.seq input3513 input1326) := by
  unfold input3514
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3514 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3513 output1326)).val
theorem output3514_def : output3514 = (.seq output3513 output1326) := by
  unfold output3514
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3514_skip : Flapjack.WordAlloc.isSkip output3514 = false := by
  rw [output3514_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3515 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3514 input1321)).val
theorem input3515_def : input3515 = (.seq input3514 input1321) := by
  unfold input3515
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3515 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3514 output1321)).val
theorem output3515_def : output3515 = (.seq output3514 output1321) := by
  unfold output3515
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3515_skip : Flapjack.WordAlloc.isSkip output3515 = false := by
  rw [output3515_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3516 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3515 input1320)).val
theorem input3516_def : input3516 = (.seq input3515 input1320) := by
  unfold input3516
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3516 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3515 output1320)).val
theorem output3516_def : output3516 = (.seq output3515 output1320) := by
  unfold output3516
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3516_skip : Flapjack.WordAlloc.isSkip output3516 = false := by
  rw [output3516_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3517 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3516 input1307)).val
theorem input3517_def : input3517 = (.seq input3516 input1307) := by
  unfold input3517
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3517 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3516 output1307)).val
theorem output3517_def : output3517 = (.seq output3516 output1307) := by
  unfold output3517
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3517_skip : Flapjack.WordAlloc.isSkip output3517 = false := by
  rw [output3517_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3518 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3517 input1306)).val
theorem input3518_def : input3518 = (.seq input3517 input1306) := by
  unfold input3518
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3518 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3517 output1306)).val
theorem output3518_def : output3518 = (.seq output3517 output1306) := by
  unfold output3518
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3518_skip : Flapjack.WordAlloc.isSkip output3518 = false := by
  rw [output3518_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3519 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3518 input1301)).val
theorem input3519_def : input3519 = (.seq input3518 input1301) := by
  unfold input3519
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3519 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3518 output1301)).val
theorem output3519_def : output3519 = (.seq output3518 output1301) := by
  unfold output3519
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3519_skip : Flapjack.WordAlloc.isSkip output3519 = false := by
  rw [output3519_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3520 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3519 input1300)).val
theorem input3520_def : input3520 = (.seq input3519 input1300) := by
  unfold input3520
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3520 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3519 output1300)).val
theorem output3520_def : output3520 = (.seq output3519 output1300) := by
  unfold output3520
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3520_skip : Flapjack.WordAlloc.isSkip output3520 = false := by
  rw [output3520_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3521 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3520 input1299)).val
theorem input3521_def : input3521 = (.seq input3520 input1299) := by
  unfold input3521
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3521 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3520 output1299)).val
theorem output3521_def : output3521 = (.seq output3520 output1299) := by
  unfold output3521
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3521_skip : Flapjack.WordAlloc.isSkip output3521 = false := by
  rw [output3521_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3522 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3521 input1296)).val
theorem input3522_def : input3522 = (.seq input3521 input1296) := by
  unfold input3522
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3522 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3521 output1296)).val
theorem output3522_def : output3522 = (.seq output3521 output1296) := by
  unfold output3522
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3522_skip : Flapjack.WordAlloc.isSkip output3522 = false := by
  rw [output3522_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3523 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3522 input1291)).val
theorem input3523_def : input3523 = (.seq input3522 input1291) := by
  unfold input3523
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3523 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3522 output1291)).val
theorem output3523_def : output3523 = (.seq output3522 output1291) := by
  unfold output3523
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3523_skip : Flapjack.WordAlloc.isSkip output3523 = false := by
  rw [output3523_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3524 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3523 input1290)).val
theorem input3524_def : input3524 = (.seq input3523 input1290) := by
  unfold input3524
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3524 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3523 output1290)).val
theorem output3524_def : output3524 = (.seq output3523 output1290) := by
  unfold output3524
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3524_skip : Flapjack.WordAlloc.isSkip output3524 = false := by
  rw [output3524_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3525 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3524 input1285)).val
theorem input3525_def : input3525 = (.seq input3524 input1285) := by
  unfold input3525
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3525 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3524 output1285)).val
theorem output3525_def : output3525 = (.seq output3524 output1285) := by
  unfold output3525
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3525_skip : Flapjack.WordAlloc.isSkip output3525 = false := by
  rw [output3525_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3526 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3525 input1284)).val
theorem input3526_def : input3526 = (.seq input3525 input1284) := by
  unfold input3526
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3526 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3525 output1284)).val
theorem output3526_def : output3526 = (.seq output3525 output1284) := by
  unfold output3526
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3526_skip : Flapjack.WordAlloc.isSkip output3526 = false := by
  rw [output3526_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3527 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3526 input1283)).val
theorem input3527_def : input3527 = (.seq input3526 input1283) := by
  unfold input3527
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3527 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3526 output1283)).val
theorem output3527_def : output3527 = (.seq output3526 output1283) := by
  unfold output3527
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3527_skip : Flapjack.WordAlloc.isSkip output3527 = false := by
  rw [output3527_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3528 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3527 input1278)).val
theorem input3528_def : input3528 = (.seq input3527 input1278) := by
  unfold input3528
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3528 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3527 output1278)).val
theorem output3528_def : output3528 = (.seq output3527 output1278) := by
  unfold output3528
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3528_skip : Flapjack.WordAlloc.isSkip output3528 = false := by
  rw [output3528_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3529 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3528 input1277)).val
theorem input3529_def : input3529 = (.seq input3528 input1277) := by
  unfold input3529
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3529 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3528 output1277)).val
theorem output3529_def : output3529 = (.seq output3528 output1277) := by
  unfold output3529
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3529_skip : Flapjack.WordAlloc.isSkip output3529 = false := by
  rw [output3529_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3530 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3529 input1272)).val
theorem input3530_def : input3530 = (.seq input3529 input1272) := by
  unfold input3530
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3530 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3529 output1272)).val
theorem output3530_def : output3530 = (.seq output3529 output1272) := by
  unfold output3530
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3530_skip : Flapjack.WordAlloc.isSkip output3530 = false := by
  rw [output3530_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3531 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3530 input1271)).val
theorem input3531_def : input3531 = (.seq input3530 input1271) := by
  unfold input3531
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3531 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3530 output1271)).val
theorem output3531_def : output3531 = (.seq output3530 output1271) := by
  unfold output3531
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3531_skip : Flapjack.WordAlloc.isSkip output3531 = false := by
  rw [output3531_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3532 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3531 input1270)).val
theorem input3532_def : input3532 = (.seq input3531 input1270) := by
  unfold input3532
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3532 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3531 output1270)).val
theorem output3532_def : output3532 = (.seq output3531 output1270) := by
  unfold output3532
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3532_skip : Flapjack.WordAlloc.isSkip output3532 = false := by
  rw [output3532_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3533 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3532 input1269)).val
theorem input3533_def : input3533 = (.seq input3532 input1269) := by
  unfold input3533
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3533 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3532 output1269)).val
theorem output3533_def : output3533 = (.seq output3532 output1269) := by
  unfold output3533
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3533_skip : Flapjack.WordAlloc.isSkip output3533 = false := by
  rw [output3533_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3534 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3533 input1268)).val
theorem input3534_def : input3534 = (.seq input3533 input1268) := by
  unfold input3534
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3534 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3533 output1268)).val
theorem output3534_def : output3534 = (.seq output3533 output1268) := by
  unfold output3534
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3534_skip : Flapjack.WordAlloc.isSkip output3534 = false := by
  rw [output3534_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3535 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3534 input1267)).val
theorem input3535_def : input3535 = (.seq input3534 input1267) := by
  unfold input3535
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3535 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3534 output1267)).val
theorem output3535_def : output3535 = (.seq output3534 output1267) := by
  unfold output3535
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3535_skip : Flapjack.WordAlloc.isSkip output3535 = false := by
  rw [output3535_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3536 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3535 input1262)).val
theorem input3536_def : input3536 = (.seq input3535 input1262) := by
  unfold input3536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3536 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3535 output1262)).val
theorem output3536_def : output3536 = (.seq output3535 output1262) := by
  unfold output3536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3536_skip : Flapjack.WordAlloc.isSkip output3536 = false := by
  rw [output3536_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3536 input1261)).val
theorem input3537_def : input3537 = (.seq input3536 input1261) := by
  unfold input3537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3536 output1261)).val
theorem output3537_def : output3537 = (.seq output3536 output1261) := by
  unfold output3537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3537_skip : Flapjack.WordAlloc.isSkip output3537 = false := by
  rw [output3537_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3537 input1260)).val
theorem input3538_def : input3538 = (.seq input3537 input1260) := by
  unfold input3538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3537 output1260)).val
theorem output3538_def : output3538 = (.seq output3537 output1260) := by
  unfold output3538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3538_skip : Flapjack.WordAlloc.isSkip output3538 = false := by
  rw [output3538_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3538 input1259)).val
theorem input3539_def : input3539 = (.seq input3538 input1259) := by
  unfold input3539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3538 output1259)).val
theorem output3539_def : output3539 = (.seq output3538 output1259) := by
  unfold output3539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3539_skip : Flapjack.WordAlloc.isSkip output3539 = false := by
  rw [output3539_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3539 input1258)).val
theorem input3540_def : input3540 = (.seq input3539 input1258) := by
  unfold input3540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3539 output1258)).val
theorem output3540_def : output3540 = (.seq output3539 output1258) := by
  unfold output3540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3540_skip : Flapjack.WordAlloc.isSkip output3540 = false := by
  rw [output3540_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3540 input1257)).val
theorem input3541_def : input3541 = (.seq input3540 input1257) := by
  unfold input3541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3540 output1257)).val
theorem output3541_def : output3541 = (.seq output3540 output1257) := by
  unfold output3541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3541_skip : Flapjack.WordAlloc.isSkip output3541 = false := by
  rw [output3541_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3541 input1248)).val
theorem input3542_def : input3542 = (.seq input3541 input1248) := by
  unfold input3542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3541 output1248)).val
theorem output3542_def : output3542 = (.seq output3541 output1248) := by
  unfold output3542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3542_skip : Flapjack.WordAlloc.isSkip output3542 = false := by
  rw [output3542_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3542 input1239)).val
theorem input3543_def : input3543 = (.seq input3542 input1239) := by
  unfold input3543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3542 output1239)).val
theorem output3543_def : output3543 = (.seq output3542 output1239) := by
  unfold output3543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3543_skip : Flapjack.WordAlloc.isSkip output3543 = false := by
  rw [output3543_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3543 input1230)).val
theorem input3544_def : input3544 = (.seq input3543 input1230) := by
  unfold input3544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3543 output1230)).val
theorem output3544_def : output3544 = (.seq output3543 output1230) := by
  unfold output3544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3544_skip : Flapjack.WordAlloc.isSkip output3544 = false := by
  rw [output3544_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3544 input1221)).val
theorem input3545_def : input3545 = (.seq input3544 input1221) := by
  unfold input3545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3544 output1221)).val
theorem output3545_def : output3545 = (.seq output3544 output1221) := by
  unfold output3545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3545_skip : Flapjack.WordAlloc.isSkip output3545 = false := by
  rw [output3545_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3545 input1216)).val
theorem input3546_def : input3546 = (.seq input3545 input1216) := by
  unfold input3546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3545 output1216)).val
theorem output3546_def : output3546 = (.seq output3545 output1216) := by
  unfold output3546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3546_skip : Flapjack.WordAlloc.isSkip output3546 = false := by
  rw [output3546_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3546 input1215)).val
theorem input3547_def : input3547 = (.seq input3546 input1215) := by
  unfold input3547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3546 output1215)).val
theorem output3547_def : output3547 = (.seq output3546 output1215) := by
  unfold output3547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3547_skip : Flapjack.WordAlloc.isSkip output3547 = false := by
  rw [output3547_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3547 input1214)).val
theorem input3548_def : input3548 = (.seq input3547 input1214) := by
  unfold input3548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3547 output1214)).val
theorem output3548_def : output3548 = (.seq output3547 output1214) := by
  unfold output3548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3548_skip : Flapjack.WordAlloc.isSkip output3548 = false := by
  rw [output3548_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3548 input1213)).val
theorem input3549_def : input3549 = (.seq input3548 input1213) := by
  unfold input3549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3548 output1213)).val
theorem output3549_def : output3549 = (.seq output3548 output1213) := by
  unfold output3549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3549_skip : Flapjack.WordAlloc.isSkip output3549 = false := by
  rw [output3549_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3549 input1212)).val
theorem input3550_def : input3550 = (.seq input3549 input1212) := by
  unfold input3550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3549 output1212)).val
theorem output3550_def : output3550 = (.seq output3549 output1212) := by
  unfold output3550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3550_skip : Flapjack.WordAlloc.isSkip output3550 = false := by
  rw [output3550_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3550 input1211)).val
theorem input3551_def : input3551 = (.seq input3550 input1211) := by
  unfold input3551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3550 output1211)).val
theorem output3551_def : output3551 = (.seq output3550 output1211) := by
  unfold output3551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3551_skip : Flapjack.WordAlloc.isSkip output3551 = false := by
  rw [output3551_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3551 input1210)).val
theorem input3552_def : input3552 = (.seq input3551 input1210) := by
  unfold input3552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3551 output1210)).val
theorem output3552_def : output3552 = (.seq output3551 output1210) := by
  unfold output3552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3552_skip : Flapjack.WordAlloc.isSkip output3552 = false := by
  rw [output3552_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3552 input1205)).val
theorem input3553_def : input3553 = (.seq input3552 input1205) := by
  unfold input3553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3552 output1205)).val
theorem output3553_def : output3553 = (.seq output3552 output1205) := by
  unfold output3553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3553_skip : Flapjack.WordAlloc.isSkip output3553 = false := by
  rw [output3553_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3553 input1204)).val
theorem input3554_def : input3554 = (.seq input3553 input1204) := by
  unfold input3554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3553 output1204)).val
theorem output3554_def : output3554 = (.seq output3553 output1204) := by
  unfold output3554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3554_skip : Flapjack.WordAlloc.isSkip output3554 = false := by
  rw [output3554_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3554 input1203)).val
theorem input3555_def : input3555 = (.seq input3554 input1203) := by
  unfold input3555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3554 output1203)).val
theorem output3555_def : output3555 = (.seq output3554 output1203) := by
  unfold output3555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3555_skip : Flapjack.WordAlloc.isSkip output3555 = false := by
  rw [output3555_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3555 input1202)).val
theorem input3556_def : input3556 = (.seq input3555 input1202) := by
  unfold input3556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3555 output1202)).val
theorem output3556_def : output3556 = (.seq output3555 output1202) := by
  unfold output3556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3556_skip : Flapjack.WordAlloc.isSkip output3556 = false := by
  rw [output3556_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3556 input1201)).val
theorem input3557_def : input3557 = (.seq input3556 input1201) := by
  unfold input3557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3556 output1201)).val
theorem output3557_def : output3557 = (.seq output3556 output1201) := by
  unfold output3557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3557_skip : Flapjack.WordAlloc.isSkip output3557 = false := by
  rw [output3557_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3557 input1200)).val
theorem input3558_def : input3558 = (.seq input3557 input1200) := by
  unfold input3558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3557 output1200)).val
theorem output3558_def : output3558 = (.seq output3557 output1200) := by
  unfold output3558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3558_skip : Flapjack.WordAlloc.isSkip output3558 = false := by
  rw [output3558_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3558 input1199)).val
theorem input3559_def : input3559 = (.seq input3558 input1199) := by
  unfold input3559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3558 output1199)).val
theorem output3559_def : output3559 = (.seq output3558 output1199) := by
  unfold output3559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3559_skip : Flapjack.WordAlloc.isSkip output3559 = false := by
  rw [output3559_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3559 input1194)).val
theorem input3560_def : input3560 = (.seq input3559 input1194) := by
  unfold input3560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3559 output1194)).val
theorem output3560_def : output3560 = (.seq output3559 output1194) := by
  unfold output3560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3560_skip : Flapjack.WordAlloc.isSkip output3560 = false := by
  rw [output3560_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3560 input1193)).val
theorem input3561_def : input3561 = (.seq input3560 input1193) := by
  unfold input3561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3560 output1193)).val
theorem output3561_def : output3561 = (.seq output3560 output1193) := by
  unfold output3561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3561_skip : Flapjack.WordAlloc.isSkip output3561 = false := by
  rw [output3561_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3561 input1184)).val
theorem input3562_def : input3562 = (.seq input3561 input1184) := by
  unfold input3562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3561 output1184)).val
theorem output3562_def : output3562 = (.seq output3561 output1184) := by
  unfold output3562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3562_skip : Flapjack.WordAlloc.isSkip output3562 = false := by
  rw [output3562_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3562 input1183)).val
theorem input3563_def : input3563 = (.seq input3562 input1183) := by
  unfold input3563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3562 output1183)).val
theorem output3563_def : output3563 = (.seq output3562 output1183) := by
  unfold output3563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3563_skip : Flapjack.WordAlloc.isSkip output3563 = false := by
  rw [output3563_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3563 input1182)).val
theorem input3564_def : input3564 = (.seq input3563 input1182) := by
  unfold input3564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3563 output1182)).val
theorem output3564_def : output3564 = (.seq output3563 output1182) := by
  unfold output3564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3564_skip : Flapjack.WordAlloc.isSkip output3564 = false := by
  rw [output3564_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3564 input1181)).val
theorem input3565_def : input3565 = (.seq input3564 input1181) := by
  unfold input3565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3564 output1181)).val
theorem output3565_def : output3565 = (.seq output3564 output1181) := by
  unfold output3565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3565_skip : Flapjack.WordAlloc.isSkip output3565 = false := by
  rw [output3565_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3565 input1180)).val
theorem input3566_def : input3566 = (.seq input3565 input1180) := by
  unfold input3566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3565 output1180)).val
theorem output3566_def : output3566 = (.seq output3565 output1180) := by
  unfold output3566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3566_skip : Flapjack.WordAlloc.isSkip output3566 = false := by
  rw [output3566_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3566 input1175)).val
theorem input3567_def : input3567 = (.seq input3566 input1175) := by
  unfold input3567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3566 output1175)).val
theorem output3567_def : output3567 = (.seq output3566 output1175) := by
  unfold output3567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3567_skip : Flapjack.WordAlloc.isSkip output3567 = false := by
  rw [output3567_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3567 input1174)).val
theorem input3568_def : input3568 = (.seq input3567 input1174) := by
  unfold input3568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3567 output1174)).val
theorem output3568_def : output3568 = (.seq output3567 output1174) := by
  unfold output3568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3568_skip : Flapjack.WordAlloc.isSkip output3568 = false := by
  rw [output3568_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3568 input1167)).val
theorem input3569_def : input3569 = (.seq input3568 input1167) := by
  unfold input3569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3568 output1167)).val
theorem output3569_def : output3569 = (.seq output3568 output1167) := by
  unfold output3569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3569_skip : Flapjack.WordAlloc.isSkip output3569 = false := by
  rw [output3569_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3569 input1166)).val
theorem input3570_def : input3570 = (.seq input3569 input1166) := by
  unfold input3570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3569 output1166)).val
theorem output3570_def : output3570 = (.seq output3569 output1166) := by
  unfold output3570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3570_skip : Flapjack.WordAlloc.isSkip output3570 = false := by
  rw [output3570_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3570 input1165)).val
theorem input3571_def : input3571 = (.seq input3570 input1165) := by
  unfold input3571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3570 output1165)).val
theorem output3571_def : output3571 = (.seq output3570 output1165) := by
  unfold output3571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3571_skip : Flapjack.WordAlloc.isSkip output3571 = false := by
  rw [output3571_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3571 input1164)).val
theorem input3572_def : input3572 = (.seq input3571 input1164) := by
  unfold input3572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3571 output1164)).val
theorem output3572_def : output3572 = (.seq output3571 output1164) := by
  unfold output3572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3572_skip : Flapjack.WordAlloc.isSkip output3572 = false := by
  rw [output3572_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3572 input1143)).val
theorem input3573_def : input3573 = (.seq input3572 input1143) := by
  unfold input3573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3572 output1143)).val
theorem output3573_def : output3573 = (.seq output3572 output1143) := by
  unfold output3573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3573_skip : Flapjack.WordAlloc.isSkip output3573 = false := by
  rw [output3573_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3573 input1142)).val
theorem input3574_def : input3574 = (.seq input3573 input1142) := by
  unfold input3574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3573 output1142)).val
theorem output3574_def : output3574 = (.seq output3573 output1142) := by
  unfold output3574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3574_skip : Flapjack.WordAlloc.isSkip output3574 = false := by
  rw [output3574_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3574 input1137)).val
theorem input3575_def : input3575 = (.seq input3574 input1137) := by
  unfold input3575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3574 output1137)).val
theorem output3575_def : output3575 = (.seq output3574 output1137) := by
  unfold output3575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3575_skip : Flapjack.WordAlloc.isSkip output3575 = false := by
  rw [output3575_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3575 input1136)).val
theorem input3576_def : input3576 = (.seq input3575 input1136) := by
  unfold input3576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3575 output1136)).val
theorem output3576_def : output3576 = (.seq output3575 output1136) := by
  unfold output3576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3576_skip : Flapjack.WordAlloc.isSkip output3576 = false := by
  rw [output3576_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3576 input1131)).val
theorem input3577_def : input3577 = (.seq input3576 input1131) := by
  unfold input3577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3576 output1131)).val
theorem output3577_def : output3577 = (.seq output3576 output1131) := by
  unfold output3577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3577_skip : Flapjack.WordAlloc.isSkip output3577 = false := by
  rw [output3577_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3577 input1130)).val
theorem input3578_def : input3578 = (.seq input3577 input1130) := by
  unfold input3578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3577 output1130)).val
theorem output3578_def : output3578 = (.seq output3577 output1130) := by
  unfold output3578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3578_skip : Flapjack.WordAlloc.isSkip output3578 = false := by
  rw [output3578_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3578 input1123)).val
theorem input3579_def : input3579 = (.seq input3578 input1123) := by
  unfold input3579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3578 output1123)).val
theorem output3579_def : output3579 = (.seq output3578 output1123) := by
  unfold output3579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3579_skip : Flapjack.WordAlloc.isSkip output3579 = false := by
  rw [output3579_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3579 input1110)).val
theorem input3580_def : input3580 = (.seq input3579 input1110) := by
  unfold input3580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3579 output1110)).val
theorem output3580_def : output3580 = (.seq output3579 output1110) := by
  unfold output3580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3580_skip : Flapjack.WordAlloc.isSkip output3580 = false := by
  rw [output3580_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3580 input1109)).val
theorem input3581_def : input3581 = (.seq input3580 input1109) := by
  unfold input3581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3580 output1109)).val
theorem output3581_def : output3581 = (.seq output3580 output1109) := by
  unfold output3581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3581_skip : Flapjack.WordAlloc.isSkip output3581 = false := by
  rw [output3581_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3581 input1106)).val
theorem input3582_def : input3582 = (.seq input3581 input1106) := by
  unfold input3582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3581 output1106)).val
theorem output3582_def : output3582 = (.seq output3581 output1106) := by
  unfold output3582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3582_skip : Flapjack.WordAlloc.isSkip output3582 = false := by
  rw [output3582_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3582 input1097)).val
theorem input3583_def : input3583 = (.seq input3582 input1097) := by
  unfold input3583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3582 output1097)).val
theorem output3583_def : output3583 = (.seq output3582 output1097) := by
  unfold output3583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3583_skip : Flapjack.WordAlloc.isSkip output3583 = false := by
  rw [output3583_def]
  kernel_rfl



end InitECandidate.Proofs.DeadStages875.Parallel
