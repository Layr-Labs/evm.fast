import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadStages184.Parallel.Data.Chunk008
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages184.Parallel
def value1033 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 61 0#64))).val
theorem input2304_def : input2304 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 61 0#64)) := by
  unfold input2304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 61 0#64))).val
theorem output2304_def : output2304 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 61 0#64)) := by
  unfold output2304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2304_skip : Flapjack.WordAlloc.isSkip output2304 = false := by
  rw [output2304_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 57 53 (Flapjack.WordRegImm.imm 7#64))))).val
theorem input2305_def : input2305 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 57 53 (Flapjack.WordRegImm.imm 7#64)))) := by
  unfold input2305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 57 53 (Flapjack.WordRegImm.imm 7#64))))).val
theorem output2305_def : output2305 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 57 53 (Flapjack.WordRegImm.imm 7#64)))) := by
  unfold output2305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2305_skip : Flapjack.WordAlloc.isSkip output2305 = false := by
  rw [output2305_def]
  kernel_rfl


def value1034 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(53, 37)])).val
theorem input2306_def : input2306 = (Flapjack.WordLangProgHOL.move 0 [(53, 37)]) := by
  unfold input2306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(53, 37)])).val
theorem output2306_def : output2306 = (Flapjack.WordLangProgHOL.move 0 [(53, 37)]) := by
  unfold output2306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2306_skip : Flapjack.WordAlloc.isSkip output2306 = false := by
  rw [output2306_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2306 input2305)).val
theorem input2307_def : input2307 = (.seq input2306 input2305) := by
  unfold input2307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2306 output2305)).val
theorem output2307_def : output2307 = (.seq output2306 output2305) := by
  unfold output2307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2307_skip : Flapjack.WordAlloc.isSkip output2307 = false := by
  rw [output2307_def]
  kernel_rfl


def value1035 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 49 0#64))).val
theorem input2308_def : input2308 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 49 0#64)) := by
  unfold input2308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 49 0#64))).val
theorem output2308_def : output2308 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 49 0#64)) := by
  unfold output2308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2308_skip : Flapjack.WordAlloc.isSkip output2308 = false := by
  rw [output2308_def]
  kernel_rfl


def value1036 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input2309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 45 14695981039346656037#64))).val
theorem input2309_def : input2309 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 45 14695981039346656037#64)) := by
  unfold input2309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 45 14695981039346656037#64))).val
theorem output2309_def : output2309 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 45 14695981039346656037#64)) := by
  unfold output2309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2309_skip : Flapjack.WordAlloc.isSkip output2309 = false := by
  rw [output2309_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2309 input2308)).val
theorem input2310_def : input2310 = (.seq input2309 input2308) := by
  unfold input2310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2309 output2308)).val
theorem output2310_def : output2310 = (.seq output2309 output2308) := by
  unfold output2310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2310_skip : Flapjack.WordAlloc.isSkip output2310 = false := by
  rw [output2310_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2310 input2307)).val
theorem input2311_def : input2311 = (.seq input2310 input2307) := by
  unfold input2311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2310 output2307)).val
theorem output2311_def : output2311 = (.seq output2310 output2307) := by
  unfold output2311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2311_skip : Flapjack.WordAlloc.isSkip output2311 = false := by
  rw [output2311_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2311 input2304)).val
theorem input2312_def : input2312 = (.seq input2311 input2304) := by
  unfold input2312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2311 output2304)).val
theorem output2312_def : output2312 = (.seq output2311 output2304) := by
  unfold output2312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2312_skip : Flapjack.WordAlloc.isSkip output2312 = false := by
  rw [output2312_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2312 input2303)).val
theorem input2313_def : input2313 = (.seq input2312 input2303) := by
  unfold input2313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2312 output2303)).val
theorem output2313_def : output2313 = (.seq output2312 output2303) := by
  unfold output2313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2313_skip : Flapjack.WordAlloc.isSkip output2313 = false := by
  rw [output2313_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2313 input306)).val
theorem input2314_def : input2314 = (.seq input2313 input306) := by
  unfold input2314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2313 output306)).val
theorem output2314_def : output2314 = (.seq output2313 output306) := by
  unfold output2314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2314_skip : Flapjack.WordAlloc.isSkip output2314 = false := by
  rw [output2314_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2314 input305)).val
theorem input2315_def : input2315 = (.seq input2314 input305) := by
  unfold input2315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2314 output305)).val
theorem output2315_def : output2315 = (.seq output2314 output305) := by
  unfold output2315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2315_skip : Flapjack.WordAlloc.isSkip output2315 = false := by
  rw [output2315_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2315 input304)).val
theorem input2316_def : input2316 = (.seq input2315 input304) := by
  unfold input2316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2315 output304)).val
theorem output2316_def : output2316 = (.seq output2315 output304) := by
  unfold output2316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2316_skip : Flapjack.WordAlloc.isSkip output2316 = false := by
  rw [output2316_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2316 input303)).val
theorem input2317_def : input2317 = (.seq input2316 input303) := by
  unfold input2317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2316 output303)).val
theorem output2317_def : output2317 = (.seq output2316 output303) := by
  unfold output2317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2317_skip : Flapjack.WordAlloc.isSkip output2317 = false := by
  rw [output2317_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2317 input101)).val
theorem input2318_def : input2318 = (.seq input2317 input101) := by
  unfold input2318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2317 output101)).val
theorem output2318_def : output2318 = (.seq output2317 output101) := by
  unfold output2318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2318_skip : Flapjack.WordAlloc.isSkip output2318 = false := by
  rw [output2318_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2318 input100)).val
theorem input2319_def : input2319 = (.seq input2318 input100) := by
  unfold input2319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2318 output100)).val
theorem output2319_def : output2319 = (.seq output2318 output100) := by
  unfold output2319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2319_skip : Flapjack.WordAlloc.isSkip output2319 = false := by
  rw [output2319_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2319 input99)).val
theorem input2320_def : input2320 = (.seq input2319 input99) := by
  unfold input2320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2319 output99)).val
theorem output2320_def : output2320 = (.seq output2319 output99) := by
  unfold output2320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2320_skip : Flapjack.WordAlloc.isSkip output2320 = false := by
  rw [output2320_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2320 input27)).val
theorem input2321_def : input2321 = (.seq input2320 input27) := by
  unfold input2321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2320 output27)).val
theorem output2321_def : output2321 = (.seq output2320 output27) := by
  unfold output2321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2321_skip : Flapjack.WordAlloc.isSkip output2321 = false := by
  rw [output2321_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2321 input26)).val
theorem input2322_def : input2322 = (.seq input2321 input26) := by
  unfold input2322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2321 output26)).val
theorem output2322_def : output2322 = (.seq output2321 output26) := by
  unfold output2322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2322_skip : Flapjack.WordAlloc.isSkip output2322 = false := by
  rw [output2322_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2322 input19)).val
theorem input2323_def : input2323 = (.seq input2322 input19) := by
  unfold input2323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2322 output19)).val
theorem output2323_def : output2323 = (.seq output2322 output19) := by
  unfold output2323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2323_skip : Flapjack.WordAlloc.isSkip output2323 = false := by
  rw [output2323_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2323 input18)).val
theorem input2324_def : input2324 = (.seq input2323 input18) := by
  unfold input2324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2323 output18)).val
theorem output2324_def : output2324 = (.seq output2323 output18) := by
  unfold output2324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2324_skip : Flapjack.WordAlloc.isSkip output2324 = false := by
  rw [output2324_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2324 input17)).val
theorem input2325_def : input2325 = (.seq input2324 input17) := by
  unfold input2325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2324 output17)).val
theorem output2325_def : output2325 = (.seq output2324 output17) := by
  unfold output2325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2325_skip : Flapjack.WordAlloc.isSkip output2325 = false := by
  rw [output2325_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2325 input16)).val
theorem input2326_def : input2326 = (.seq input2325 input16) := by
  unfold input2326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2325 output16)).val
theorem output2326_def : output2326 = (.seq output2325 output16) := by
  unfold output2326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2326_skip : Flapjack.WordAlloc.isSkip output2326 = false := by
  rw [output2326_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2326 input11)).val
theorem input2327_def : input2327 = (.seq input2326 input11) := by
  unfold input2327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2326 output11)).val
theorem output2327_def : output2327 = (.seq output2326 output11) := by
  unfold output2327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2327_skip : Flapjack.WordAlloc.isSkip output2327 = false := by
  rw [output2327_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2327 input10)).val
theorem input2328_def : input2328 = (.seq input2327 input10) := by
  unfold input2328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2327 output10)).val
theorem output2328_def : output2328 = (.seq output2327 output10) := by
  unfold output2328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2328_skip : Flapjack.WordAlloc.isSkip output2328 = false := by
  rw [output2328_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2328 input9)).val
theorem input2329_def : input2329 = (.seq input2328 input9) := by
  unfold input2329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2328 output9)).val
theorem output2329_def : output2329 = (.seq output2328 output9) := by
  unfold output2329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2329_skip : Flapjack.WordAlloc.isSkip output2329 = false := by
  rw [output2329_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2329 input2)).val
theorem input2330_def : input2330 = (.seq input2329 input2) := by
  unfold input2330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2329 output2)).val
theorem output2330_def : output2330 = (.seq output2329 output2) := by
  unfold output2330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2330_skip : Flapjack.WordAlloc.isSkip output2330 = false := by
  rw [output2330_def]
  kernel_rfl


def value1037 : Flapjack.NumSet :=
Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln

@[irreducible, cbv_opaque] def input2331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(33, 0), (37, 2), (41, 4)])).val
theorem input2331_def : input2331 = (Flapjack.WordLangProgHOL.move 1 [(33, 0), (37, 2), (41, 4)]) := by
  unfold input2331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(33, 0), (37, 2), (41, 4)])).val
theorem output2331_def : output2331 = (Flapjack.WordLangProgHOL.move 1 [(33, 0), (37, 2), (41, 4)]) := by
  unfold output2331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2331_skip : Flapjack.WordAlloc.isSkip output2331 = false := by
  rw [output2331_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2331 input2330)).val
theorem input2332_def : input2332 = (.seq input2331 input2330) := by
  unfold input2332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2331 output2330)).val
theorem output2332_def : output2332 = (.seq output2331 output2330) := by
  unfold output2332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2332_skip : Flapjack.WordAlloc.isSkip output2332 = false := by
  rw [output2332_def]
  kernel_rfl



end InitECandidate.Proofs.DeadStages184.Parallel
