import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadStages233.Parallel.Data.Chunk004
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages233.Parallel
def value658 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))))

@[irreducible, cbv_opaque] def input1280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2, 449), (4, 453), (6, 457), (8, 461)])).val
theorem input1280_def : input1280 = (Flapjack.WordLangProgHOL.move 1 [(2, 449), (4, 453), (6, 457), (8, 461)]) := by
  unfold input1280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2, 449), (4, 453), (6, 457), (8, 461)])).val
theorem output1280_def : output1280 = (Flapjack.WordLangProgHOL.move 1 [(2, 449), (4, 453), (6, 457), (8, 461)]) := by
  unfold output1280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1280_skip : Flapjack.WordAlloc.isSkip output1280 = false := by
  rw [output1280_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1280 input1279)).val
theorem input1281_def : input1281 = (.seq input1280 input1279) := by
  unfold input1281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1280 output1279)).val
theorem output1281_def : output1281 = (.seq output1280 output1279) := by
  unfold output1281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1281_skip : Flapjack.WordAlloc.isSkip output1281 = false := by
  rw [output1281_def]
  kernel_rfl


def value659 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0
  [(467, 329), (471, 333), (475, 337), (479, 341), (483, 457), (487, 349), (491, 353), (495, 449), (499, 361),
    (503, 365), (507, 369), (511, 373), (515, 377), (519, 381), (523, 385), (527, 389), (531, 393), (535, 461),
    (539, 401), (543, 405), (547, 453), (551, 413), (555, 417), (559, 421), (563, 425), (567, 429)])).val
theorem input1282_def : input1282 = (Flapjack.WordLangProgHOL.move 0
  [(467, 329), (471, 333), (475, 337), (479, 341), (483, 457), (487, 349), (491, 353), (495, 449), (499, 361),
    (503, 365), (507, 369), (511, 373), (515, 377), (519, 381), (523, 385), (527, 389), (531, 393), (535, 461),
    (539, 401), (543, 405), (547, 453), (551, 413), (555, 417), (559, 421), (563, 425), (567, 429)]) := by
  unfold input1282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0
  [(467, 329), (471, 333), (475, 337), (479, 341), (483, 457), (487, 349), (491, 353), (495, 449), (499, 361),
    (503, 365), (507, 369), (511, 373), (515, 377), (519, 381), (523, 385), (527, 389), (531, 393), (535, 461),
    (539, 401), (543, 405), (547, 453), (551, 413), (555, 417), (559, 421), (563, 425), (567, 429)])).val
theorem output1282_def : output1282 = (Flapjack.WordLangProgHOL.move 0
  [(467, 329), (471, 333), (475, 337), (479, 341), (483, 457), (487, 349), (491, 353), (495, 449), (499, 361),
    (503, 365), (507, 369), (511, 373), (515, 377), (519, 381), (523, 385), (527, 389), (531, 393), (535, 461),
    (539, 401), (543, 405), (547, 453), (551, 413), (555, 417), (559, 421), (563, 425), (567, 429)]) := by
  unfold output1282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1282_skip : Flapjack.WordAlloc.isSkip output1282 = false := by
  rw [output1282_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1282 input1281)).val
theorem input1283_def : input1283 = (.seq input1282 input1281) := by
  unfold input1283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1282 output1281)).val
theorem output1283_def : output1283 = (.seq output1282 output1281) := by
  unfold output1283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1283_skip : Flapjack.WordAlloc.isSkip output1283 = false := by
  rw [output1283_def]
  kernel_rfl


def value660 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(461, 397)])).val
theorem input1284_def : input1284 = (Flapjack.WordLangProgHOL.move 0 [(461, 397)]) := by
  unfold input1284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(461, 397)])).val
theorem output1284_def : output1284 = (Flapjack.WordLangProgHOL.move 0 [(461, 397)]) := by
  unfold output1284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1284_skip : Flapjack.WordAlloc.isSkip output1284 = false := by
  rw [output1284_def]
  kernel_rfl


def value661 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(457, 345)])).val
theorem input1285_def : input1285 = (Flapjack.WordLangProgHOL.move 0 [(457, 345)]) := by
  unfold input1285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(457, 345)])).val
theorem output1285_def : output1285 = (Flapjack.WordLangProgHOL.move 0 [(457, 345)]) := by
  unfold output1285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1285_skip : Flapjack.WordAlloc.isSkip output1285 = false := by
  rw [output1285_def]
  kernel_rfl


def value662 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(453, 409)])).val
theorem input1286_def : input1286 = (Flapjack.WordLangProgHOL.move 0 [(453, 409)]) := by
  unfold input1286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(453, 409)])).val
theorem output1286_def : output1286 = (Flapjack.WordLangProgHOL.move 0 [(453, 409)]) := by
  unfold output1286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1286_skip : Flapjack.WordAlloc.isSkip output1286 = false := by
  rw [output1286_def]
  kernel_rfl


def value663 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(449, 357)])).val
theorem input1287_def : input1287 = (Flapjack.WordLangProgHOL.move 0 [(449, 357)]) := by
  unfold input1287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(449, 357)])).val
theorem output1287_def : output1287 = (Flapjack.WordLangProgHOL.move 0 [(449, 357)]) := by
  unfold output1287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1287_skip : Flapjack.WordAlloc.isSkip output1287 = false := by
  rw [output1287_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1288 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input1288_def : input1288 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input1288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1288 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output1288_def : output1288 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output1288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1288_skip : Flapjack.WordAlloc.isSkip output1288 = false := by
  rw [output1288_def]
  kernel_rfl


def value664 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))

@[irreducible, cbv_opaque] def input1289 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq
          (Flapjack.WordLangProgHOL.move 0
            [(329, 223), (333, 227), (337, 231), (341, 235), (345, 239), (349, 243), (353, 247), (357, 251), (361, 255),
              (365, 259), (369, 263), (373, 267), (377, 271), (381, 275), (385, 279), (389, 283), (393, 287),
              (397, 291), (401, 295), (405, 299), (409, 303), (413, 307), (417, 311), (421, 315), (425, 319),
              (429, 323)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(433, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 441 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(445, 433)]))),
      233, 2))
  (some 225) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq
          (Flapjack.WordLangProgHOL.move 0
            [(329, 223), (333, 227), (337, 231), (341, 235), (345, 239), (349, 243), (353, 247), (357, 251), (361, 255),
              (365, 259), (369, 263), (373, 267), (377, 271), (381, 275), (385, 279), (389, 283), (393, 287),
              (397, 291), (401, 295), (405, 299), (409, 303), (413, 307), (417, 311), (421, 315), (425, 319),
              (429, 323)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(437, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 437)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip (Flapjack.WordLangProgHOL.move 1 [(441, 437)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 445 0#64)))),
      233, 3)))).val
theorem input1289_def : input1289 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq
          (Flapjack.WordLangProgHOL.move 0
            [(329, 223), (333, 227), (337, 231), (341, 235), (345, 239), (349, 243), (353, 247), (357, 251), (361, 255),
              (365, 259), (369, 263), (373, 267), (377, 271), (381, 275), (385, 279), (389, 283), (393, 287),
              (397, 291), (401, 295), (405, 299), (409, 303), (413, 307), (417, 311), (421, 315), (425, 319),
              (429, 323)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(433, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 441 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(445, 433)]))),
      233, 2))
  (some 225) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq
          (Flapjack.WordLangProgHOL.move 0
            [(329, 223), (333, 227), (337, 231), (341, 235), (345, 239), (349, 243), (353, 247), (357, 251), (361, 255),
              (365, 259), (369, 263), (373, 267), (377, 271), (381, 275), (385, 279), (389, 283), (393, 287),
              (397, 291), (401, 295), (405, 299), (409, 303), (413, 307), (417, 311), (421, 315), (425, 319),
              (429, 323)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(437, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 437)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip (Flapjack.WordLangProgHOL.move 1 [(441, 437)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 445 0#64)))),
      233, 3))) := by
  unfold input1289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1289 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0
        [(329, 223), (333, 227), (337, 231), (341, 235), (345, 239), (349, 243), (353, 247), (357, 251), (361, 255),
          (365, 259), (369, 263), (373, 267), (377, 271), (381, 275), (385, 279), (389, 283), (393, 287), (397, 291),
          (401, 295), (405, 299), (409, 303), (413, 307), (417, 311), (421, 315), (425, 319), (429, 323)],
      233, 2))
  (some 225) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.move 0
          [(329, 223), (333, 227), (337, 231), (341, 235), (345, 239), (349, 243), (353, 247), (357, 251), (361, 255),
            (365, 259), (369, 263), (373, 267), (377, 271), (381, 275), (385, 279), (389, 283), (393, 287), (397, 291),
            (401, 295), (405, 299), (409, 303), (413, 307), (417, 311), (421, 315), (425, 319), (429, 323)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(437, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 437)])
            (Flapjack.WordLangProgHOL.raise 2))),
      233, 3)))).val
theorem output1289_def : output1289 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0
        [(329, 223), (333, 227), (337, 231), (341, 235), (345, 239), (349, 243), (353, 247), (357, 251), (361, 255),
          (365, 259), (369, 263), (373, 267), (377, 271), (381, 275), (385, 279), (389, 283), (393, 287), (397, 291),
          (401, 295), (405, 299), (409, 303), (413, 307), (417, 311), (421, 315), (425, 319), (429, 323)],
      233, 2))
  (some 225) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.move 0
          [(329, 223), (333, 227), (337, 231), (341, 235), (345, 239), (349, 243), (353, 247), (357, 251), (361, 255),
            (365, 259), (369, 263), (373, 267), (377, 271), (381, 275), (385, 279), (389, 283), (393, 287), (397, 291),
            (401, 295), (405, 299), (409, 303), (413, 307), (417, 311), (421, 315), (425, 319), (429, 323)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(437, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 437)])
            (Flapjack.WordLangProgHOL.raise 2))),
      233, 3))) := by
  unfold output1289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1289_skip : Flapjack.WordAlloc.isSkip output1289 = false := by
  rw [output1289_def]
  kernel_rfl


def value665 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))

@[irreducible, cbv_opaque] def input1290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2, 217)])).val
theorem input1290_def : input1290 = (Flapjack.WordLangProgHOL.move 1 [(2, 217)]) := by
  unfold input1290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2, 217)])).val
theorem output1290_def : output1290 = (Flapjack.WordLangProgHOL.move 1 [(2, 217)]) := by
  unfold output1290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1290_skip : Flapjack.WordAlloc.isSkip output1290 = false := by
  rw [output1290_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1290 input1289)).val
theorem input1291_def : input1291 = (.seq input1290 input1289) := by
  unfold input1291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1290 output1289)).val
theorem output1291_def : output1291 = (.seq output1290 output1289) := by
  unfold output1291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1291_skip : Flapjack.WordAlloc.isSkip output1291 = false := by
  rw [output1291_def]
  kernel_rfl


def value666 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0
  [(223, 113), (227, 177), (231, 145), (235, 209), (239, 129), (243, 193), (247, 161), (251, 121), (255, 185),
    (259, 153), (263, 137), (267, 201), (271, 169), (275, 217), (279, 181), (283, 149), (287, 213), (291, 133),
    (295, 197), (299, 165), (303, 125), (307, 189), (311, 157), (315, 141), (319, 205), (323, 173)])).val
theorem input1292_def : input1292 = (Flapjack.WordLangProgHOL.move 0
  [(223, 113), (227, 177), (231, 145), (235, 209), (239, 129), (243, 193), (247, 161), (251, 121), (255, 185),
    (259, 153), (263, 137), (267, 201), (271, 169), (275, 217), (279, 181), (283, 149), (287, 213), (291, 133),
    (295, 197), (299, 165), (303, 125), (307, 189), (311, 157), (315, 141), (319, 205), (323, 173)]) := by
  unfold input1292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0
  [(223, 113), (227, 177), (231, 145), (235, 209), (239, 129), (243, 193), (247, 161), (251, 121), (255, 185),
    (259, 153), (263, 137), (267, 201), (271, 169), (275, 217), (279, 181), (283, 149), (287, 213), (291, 133),
    (295, 197), (299, 165), (303, 125), (307, 189), (311, 157), (315, 141), (319, 205), (323, 173)])).val
theorem output1292_def : output1292 = (Flapjack.WordLangProgHOL.move 0
  [(223, 113), (227, 177), (231, 145), (235, 209), (239, 129), (243, 193), (247, 161), (251, 121), (255, 185),
    (259, 153), (263, 137), (267, 201), (271, 169), (275, 217), (279, 181), (283, 149), (287, 213), (291, 133),
    (295, 197), (299, 165), (303, 125), (307, 189), (311, 157), (315, 141), (319, 205), (323, 173)]) := by
  unfold output1292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1292_skip : Flapjack.WordAlloc.isSkip output1292 = false := by
  rw [output1292_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1292 input1291)).val
theorem input1293_def : input1293 = (.seq input1292 input1291) := by
  unfold input1293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1292 output1291)).val
theorem output1293_def : output1293 = (.seq output1292 output1291) := by
  unfold output1293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1293_skip : Flapjack.WordAlloc.isSkip output1293 = false := by
  rw [output1293_def]
  kernel_rfl


def value667 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(217, 117)])).val
theorem input1294_def : input1294 = (Flapjack.WordLangProgHOL.move 0 [(217, 117)]) := by
  unfold input1294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(217, 117)])).val
theorem output1294_def : output1294 = (Flapjack.WordLangProgHOL.move 0 [(217, 117)]) := by
  unfold output1294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1294_skip : Flapjack.WordAlloc.isSkip output1294 = false := by
  rw [output1294_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1294 input1293)).val
theorem input1295_def : input1295 = (.seq input1294 input1293) := by
  unfold input1295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1294 output1293)).val
theorem output1295_def : output1295 = (.seq output1294 output1293) := by
  unfold output1295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1295_skip : Flapjack.WordAlloc.isSkip output1295 = false := by
  rw [output1295_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1295 input1288)).val
theorem input1296_def : input1296 = (.seq input1295 input1288) := by
  unfold input1296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1295 output1288)).val
theorem output1296_def : output1296 = (.seq output1295 output1288) := by
  unfold output1296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1296_skip : Flapjack.WordAlloc.isSkip output1296 = false := by
  rw [output1296_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1296 input1287)).val
theorem input1297_def : input1297 = (.seq input1296 input1287) := by
  unfold input1297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1296 output1287)).val
theorem output1297_def : output1297 = (.seq output1296 output1287) := by
  unfold output1297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1297_skip : Flapjack.WordAlloc.isSkip output1297 = false := by
  rw [output1297_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1297 input1286)).val
theorem input1298_def : input1298 = (.seq input1297 input1286) := by
  unfold input1298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1297 output1286)).val
theorem output1298_def : output1298 = (.seq output1297 output1286) := by
  unfold output1298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1298_skip : Flapjack.WordAlloc.isSkip output1298 = false := by
  rw [output1298_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1298 input1285)).val
theorem input1299_def : input1299 = (.seq input1298 input1285) := by
  unfold input1299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1298 output1285)).val
theorem output1299_def : output1299 = (.seq output1298 output1285) := by
  unfold output1299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1299_skip : Flapjack.WordAlloc.isSkip output1299 = false := by
  rw [output1299_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1299 input1284)).val
theorem input1300_def : input1300 = (.seq input1299 input1284) := by
  unfold input1300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1299 output1284)).val
theorem output1300_def : output1300 = (.seq output1299 output1284) := by
  unfold output1300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1300_skip : Flapjack.WordAlloc.isSkip output1300 = false := by
  rw [output1300_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1300 input1283)).val
theorem input1301_def : input1301 = (.seq input1300 input1283) := by
  unfold input1301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1300 output1283)).val
theorem output1301_def : output1301 = (.seq output1300 output1283) := by
  unfold output1301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1301_skip : Flapjack.WordAlloc.isSkip output1301 = false := by
  rw [output1301_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1301 input1278)).val
theorem input1302_def : input1302 = (.seq input1301 input1278) := by
  unfold input1302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1301 output1278)).val
theorem output1302_def : output1302 = (.seq output1301 output1278) := by
  unfold output1302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1302_skip : Flapjack.WordAlloc.isSkip output1302 = false := by
  rw [output1302_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1302 input1277)).val
theorem input1303_def : input1303 = (.seq input1302 input1277) := by
  unfold input1303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1302 output1277)).val
theorem output1303_def : output1303 = (.seq output1302 output1277) := by
  unfold output1303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1303_skip : Flapjack.WordAlloc.isSkip output1303 = false := by
  rw [output1303_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1303 input1276)).val
theorem input1304_def : input1304 = (.seq input1303 input1276) := by
  unfold input1304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1303 output1276)).val
theorem output1304_def : output1304 = (.seq output1303 output1276) := by
  unfold output1304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1304_skip : Flapjack.WordAlloc.isSkip output1304 = false := by
  rw [output1304_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1304 input1275)).val
theorem input1305_def : input1305 = (.seq input1304 input1275) := by
  unfold input1305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1304 output1275)).val
theorem output1305_def : output1305 = (.seq output1304 output1275) := by
  unfold output1305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1305_skip : Flapjack.WordAlloc.isSkip output1305 = false := by
  rw [output1305_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1305 input1274)).val
theorem input1306_def : input1306 = (.seq input1305 input1274) := by
  unfold input1306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1305 output1274)).val
theorem output1306_def : output1306 = (.seq output1305 output1274) := by
  unfold output1306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1306_skip : Flapjack.WordAlloc.isSkip output1306 = false := by
  rw [output1306_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1306 input1273)).val
theorem input1307_def : input1307 = (.seq input1306 input1273) := by
  unfold input1307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1306 output1273)).val
theorem output1307_def : output1307 = (.seq output1306 output1273) := by
  unfold output1307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1307_skip : Flapjack.WordAlloc.isSkip output1307 = false := by
  rw [output1307_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1307 input1268)).val
theorem input1308_def : input1308 = (.seq input1307 input1268) := by
  unfold input1308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1307 output1268)).val
theorem output1308_def : output1308 = (.seq output1307 output1268) := by
  unfold output1308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1308_skip : Flapjack.WordAlloc.isSkip output1308 = false := by
  rw [output1308_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1308 input1267)).val
theorem input1309_def : input1309 = (.seq input1308 input1267) := by
  unfold input1309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1308 output1267)).val
theorem output1309_def : output1309 = (.seq output1308 output1267) := by
  unfold output1309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1309_skip : Flapjack.WordAlloc.isSkip output1309 = false := by
  rw [output1309_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1309 input1266)).val
theorem input1310_def : input1310 = (.seq input1309 input1266) := by
  unfold input1310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1309 output1266)).val
theorem output1310_def : output1310 = (.seq output1309 output1266) := by
  unfold output1310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1310_skip : Flapjack.WordAlloc.isSkip output1310 = false := by
  rw [output1310_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1310 input1265)).val
theorem input1311_def : input1311 = (.seq input1310 input1265) := by
  unfold input1311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1310 output1265)).val
theorem output1311_def : output1311 = (.seq output1310 output1265) := by
  unfold output1311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1311_skip : Flapjack.WordAlloc.isSkip output1311 = false := by
  rw [output1311_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1311 input1260)).val
theorem input1312_def : input1312 = (.seq input1311 input1260) := by
  unfold input1312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1311 output1260)).val
theorem output1312_def : output1312 = (.seq output1311 output1260) := by
  unfold output1312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1312_skip : Flapjack.WordAlloc.isSkip output1312 = false := by
  rw [output1312_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1312 input1259)).val
theorem input1313_def : input1313 = (.seq input1312 input1259) := by
  unfold input1313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1312 output1259)).val
theorem output1313_def : output1313 = (.seq output1312 output1259) := by
  unfold output1313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1313_skip : Flapjack.WordAlloc.isSkip output1313 = false := by
  rw [output1313_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1313 input1258)).val
theorem input1314_def : input1314 = (.seq input1313 input1258) := by
  unfold input1314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1313 output1258)).val
theorem output1314_def : output1314 = (.seq output1313 output1258) := by
  unfold output1314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1314_skip : Flapjack.WordAlloc.isSkip output1314 = false := by
  rw [output1314_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1314 input1257)).val
theorem input1315_def : input1315 = (.seq input1314 input1257) := by
  unfold input1315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1314 output1257)).val
theorem output1315_def : output1315 = (.seq output1314 output1257) := by
  unfold output1315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1315_skip : Flapjack.WordAlloc.isSkip output1315 = false := by
  rw [output1315_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1315 input1226)).val
theorem input1316_def : input1316 = (.seq input1315 input1226) := by
  unfold input1316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1315 output1226)).val
theorem output1316_def : output1316 = (.seq output1315 output1226) := by
  unfold output1316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1316_skip : Flapjack.WordAlloc.isSkip output1316 = false := by
  rw [output1316_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1316 input1225)).val
theorem input1317_def : input1317 = (.seq input1316 input1225) := by
  unfold input1317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1316 output1225)).val
theorem output1317_def : output1317 = (.seq output1316 output1225) := by
  unfold output1317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1317_skip : Flapjack.WordAlloc.isSkip output1317 = false := by
  rw [output1317_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1317 input1220)).val
theorem input1318_def : input1318 = (.seq input1317 input1220) := by
  unfold input1318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1317 output1220)).val
theorem output1318_def : output1318 = (.seq output1317 output1220) := by
  unfold output1318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1318_skip : Flapjack.WordAlloc.isSkip output1318 = false := by
  rw [output1318_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1318 input1219)).val
theorem input1319_def : input1319 = (.seq input1318 input1219) := by
  unfold input1319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1318)).val
theorem output1319_def : output1319 = (output1318) := by
  unfold output1319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1319_skip : Flapjack.WordAlloc.isSkip output1319 = false := by
  rw [output1319_def]
  exact output1318_skip


@[irreducible, cbv_opaque] def input1320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1319 input1218)).val
theorem input1320_def : input1320 = (.seq input1319 input1218) := by
  unfold input1320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1319 output1218)).val
theorem output1320_def : output1320 = (.seq output1319 output1218) := by
  unfold output1320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1320_skip : Flapjack.WordAlloc.isSkip output1320 = false := by
  rw [output1320_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1320 input1211)).val
theorem input1321_def : input1321 = (.seq input1320 input1211) := by
  unfold input1321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1320 output1211)).val
theorem output1321_def : output1321 = (.seq output1320 output1211) := by
  unfold output1321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1321_skip : Flapjack.WordAlloc.isSkip output1321 = false := by
  rw [output1321_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1321 input1210)).val
theorem input1322_def : input1322 = (.seq input1321 input1210) := by
  unfold input1322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1321 output1210)).val
theorem output1322_def : output1322 = (.seq output1321 output1210) := by
  unfold output1322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1322_skip : Flapjack.WordAlloc.isSkip output1322 = false := by
  rw [output1322_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1322 input1209)).val
theorem input1323_def : input1323 = (.seq input1322 input1209) := by
  unfold input1323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1322 output1209)).val
theorem output1323_def : output1323 = (.seq output1322 output1209) := by
  unfold output1323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1323_skip : Flapjack.WordAlloc.isSkip output1323 = false := by
  rw [output1323_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1323 input1204)).val
theorem input1324_def : input1324 = (.seq input1323 input1204) := by
  unfold input1324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1323 output1204)).val
theorem output1324_def : output1324 = (.seq output1323 output1204) := by
  unfold output1324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1324_skip : Flapjack.WordAlloc.isSkip output1324 = false := by
  rw [output1324_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1324 input1203)).val
theorem input1325_def : input1325 = (.seq input1324 input1203) := by
  unfold input1325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1324 output1203)).val
theorem output1325_def : output1325 = (.seq output1324 output1203) := by
  unfold output1325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1325_skip : Flapjack.WordAlloc.isSkip output1325 = false := by
  rw [output1325_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1325 input1200)).val
theorem input1326_def : input1326 = (.seq input1325 input1200) := by
  unfold input1326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1325 output1200)).val
theorem output1326_def : output1326 = (.seq output1325 output1200) := by
  unfold output1326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1326_skip : Flapjack.WordAlloc.isSkip output1326 = false := by
  rw [output1326_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1326 input1199)).val
theorem input1327_def : input1327 = (.seq input1326 input1199) := by
  unfold input1327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1326 output1199)).val
theorem output1327_def : output1327 = (.seq output1326 output1199) := by
  unfold output1327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1327_skip : Flapjack.WordAlloc.isSkip output1327 = false := by
  rw [output1327_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1327 input1198)).val
theorem input1328_def : input1328 = (.seq input1327 input1198) := by
  unfold input1328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1327 output1198)).val
theorem output1328_def : output1328 = (.seq output1327 output1198) := by
  unfold output1328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1328_skip : Flapjack.WordAlloc.isSkip output1328 = false := by
  rw [output1328_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1328 input1197)).val
theorem input1329_def : input1329 = (.seq input1328 input1197) := by
  unfold input1329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1328 output1197)).val
theorem output1329_def : output1329 = (.seq output1328 output1197) := by
  unfold output1329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1329_skip : Flapjack.WordAlloc.isSkip output1329 = false := by
  rw [output1329_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1329 input1196)).val
theorem input1330_def : input1330 = (.seq input1329 input1196) := by
  unfold input1330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1329 output1196)).val
theorem output1330_def : output1330 = (.seq output1329 output1196) := by
  unfold output1330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1330_skip : Flapjack.WordAlloc.isSkip output1330 = false := by
  rw [output1330_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1330 input1195)).val
theorem input1331_def : input1331 = (.seq input1330 input1195) := by
  unfold input1331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1330 output1195)).val
theorem output1331_def : output1331 = (.seq output1330 output1195) := by
  unfold output1331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1331_skip : Flapjack.WordAlloc.isSkip output1331 = false := by
  rw [output1331_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1331 input1194)).val
theorem input1332_def : input1332 = (.seq input1331 input1194) := by
  unfold input1332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1331 output1194)).val
theorem output1332_def : output1332 = (.seq output1331 output1194) := by
  unfold output1332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1332_skip : Flapjack.WordAlloc.isSkip output1332 = false := by
  rw [output1332_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1332 input1193)).val
theorem input1333_def : input1333 = (.seq input1332 input1193) := by
  unfold input1333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1332 output1193)).val
theorem output1333_def : output1333 = (.seq output1332 output1193) := by
  unfold output1333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1333_skip : Flapjack.WordAlloc.isSkip output1333 = false := by
  rw [output1333_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1333 input1192)).val
theorem input1334_def : input1334 = (.seq input1333 input1192) := by
  unfold input1334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1333 output1192)).val
theorem output1334_def : output1334 = (.seq output1333 output1192) := by
  unfold output1334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1334_skip : Flapjack.WordAlloc.isSkip output1334 = false := by
  rw [output1334_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1334 input1187)).val
theorem input1335_def : input1335 = (.seq input1334 input1187) := by
  unfold input1335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1334 output1187)).val
theorem output1335_def : output1335 = (.seq output1334 output1187) := by
  unfold output1335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1335_skip : Flapjack.WordAlloc.isSkip output1335 = false := by
  rw [output1335_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1335 input1186)).val
theorem input1336_def : input1336 = (.seq input1335 input1186) := by
  unfold input1336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1335 output1186)).val
theorem output1336_def : output1336 = (.seq output1335 output1186) := by
  unfold output1336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1336_skip : Flapjack.WordAlloc.isSkip output1336 = false := by
  rw [output1336_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1336 input1183)).val
theorem input1337_def : input1337 = (.seq input1336 input1183) := by
  unfold input1337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1336 output1183)).val
theorem output1337_def : output1337 = (.seq output1336 output1183) := by
  unfold output1337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1337_skip : Flapjack.WordAlloc.isSkip output1337 = false := by
  rw [output1337_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1337 input1182)).val
theorem input1338_def : input1338 = (.seq input1337 input1182) := by
  unfold input1338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1337 output1182)).val
theorem output1338_def : output1338 = (.seq output1337 output1182) := by
  unfold output1338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1338_skip : Flapjack.WordAlloc.isSkip output1338 = false := by
  rw [output1338_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1338 input1181)).val
theorem input1339_def : input1339 = (.seq input1338 input1181) := by
  unfold input1339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1338 output1181)).val
theorem output1339_def : output1339 = (.seq output1338 output1181) := by
  unfold output1339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1339_skip : Flapjack.WordAlloc.isSkip output1339 = false := by
  rw [output1339_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1339 input1180)).val
theorem input1340_def : input1340 = (.seq input1339 input1180) := by
  unfold input1340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1339 output1180)).val
theorem output1340_def : output1340 = (.seq output1339 output1180) := by
  unfold output1340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1340_skip : Flapjack.WordAlloc.isSkip output1340 = false := by
  rw [output1340_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1340 input1179)).val
theorem input1341_def : input1341 = (.seq input1340 input1179) := by
  unfold input1341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1340 output1179)).val
theorem output1341_def : output1341 = (.seq output1340 output1179) := by
  unfold output1341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1341_skip : Flapjack.WordAlloc.isSkip output1341 = false := by
  rw [output1341_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1341 input1178)).val
theorem input1342_def : input1342 = (.seq input1341 input1178) := by
  unfold input1342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1341 output1178)).val
theorem output1342_def : output1342 = (.seq output1341 output1178) := by
  unfold output1342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1342_skip : Flapjack.WordAlloc.isSkip output1342 = false := by
  rw [output1342_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1342 input1177)).val
theorem input1343_def : input1343 = (.seq input1342 input1177) := by
  unfold input1343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1342 output1177)).val
theorem output1343_def : output1343 = (.seq output1342 output1177) := by
  unfold output1343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1343_skip : Flapjack.WordAlloc.isSkip output1343 = false := by
  rw [output1343_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1343 input1176)).val
theorem input1344_def : input1344 = (.seq input1343 input1176) := by
  unfold input1344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1343 output1176)).val
theorem output1344_def : output1344 = (.seq output1343 output1176) := by
  unfold output1344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1344_skip : Flapjack.WordAlloc.isSkip output1344 = false := by
  rw [output1344_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1344 input1175)).val
theorem input1345_def : input1345 = (.seq input1344 input1175) := by
  unfold input1345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1344 output1175)).val
theorem output1345_def : output1345 = (.seq output1344 output1175) := by
  unfold output1345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1345_skip : Flapjack.WordAlloc.isSkip output1345 = false := by
  rw [output1345_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1345 input1170)).val
theorem input1346_def : input1346 = (.seq input1345 input1170) := by
  unfold input1346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1345 output1170)).val
theorem output1346_def : output1346 = (.seq output1345 output1170) := by
  unfold output1346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1346_skip : Flapjack.WordAlloc.isSkip output1346 = false := by
  rw [output1346_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1346 input1169)).val
theorem input1347_def : input1347 = (.seq input1346 input1169) := by
  unfold input1347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1346 output1169)).val
theorem output1347_def : output1347 = (.seq output1346 output1169) := by
  unfold output1347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1347_skip : Flapjack.WordAlloc.isSkip output1347 = false := by
  rw [output1347_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1347 input1166)).val
theorem input1348_def : input1348 = (.seq input1347 input1166) := by
  unfold input1348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1347 output1166)).val
theorem output1348_def : output1348 = (.seq output1347 output1166) := by
  unfold output1348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1348_skip : Flapjack.WordAlloc.isSkip output1348 = false := by
  rw [output1348_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1348 input1161)).val
theorem input1349_def : input1349 = (.seq input1348 input1161) := by
  unfold input1349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1348 output1161)).val
theorem output1349_def : output1349 = (.seq output1348 output1161) := by
  unfold output1349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1349_skip : Flapjack.WordAlloc.isSkip output1349 = false := by
  rw [output1349_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1349 input1160)).val
theorem input1350_def : input1350 = (.seq input1349 input1160) := by
  unfold input1350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1349 output1160)).val
theorem output1350_def : output1350 = (.seq output1349 output1160) := by
  unfold output1350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1350_skip : Flapjack.WordAlloc.isSkip output1350 = false := by
  rw [output1350_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1350 input1157)).val
theorem input1351_def : input1351 = (.seq input1350 input1157) := by
  unfold input1351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1350 output1157)).val
theorem output1351_def : output1351 = (.seq output1350 output1157) := by
  unfold output1351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1351_skip : Flapjack.WordAlloc.isSkip output1351 = false := by
  rw [output1351_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1351 input1156)).val
theorem input1352_def : input1352 = (.seq input1351 input1156) := by
  unfold input1352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1351 output1156)).val
theorem output1352_def : output1352 = (.seq output1351 output1156) := by
  unfold output1352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1352_skip : Flapjack.WordAlloc.isSkip output1352 = false := by
  rw [output1352_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1352 input1155)).val
theorem input1353_def : input1353 = (.seq input1352 input1155) := by
  unfold input1353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1352 output1155)).val
theorem output1353_def : output1353 = (.seq output1352 output1155) := by
  unfold output1353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1353_skip : Flapjack.WordAlloc.isSkip output1353 = false := by
  rw [output1353_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1353 input1154)).val
theorem input1354_def : input1354 = (.seq input1353 input1154) := by
  unfold input1354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1353 output1154)).val
theorem output1354_def : output1354 = (.seq output1353 output1154) := by
  unfold output1354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1354_skip : Flapjack.WordAlloc.isSkip output1354 = false := by
  rw [output1354_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1354 input1153)).val
theorem input1355_def : input1355 = (.seq input1354 input1153) := by
  unfold input1355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1354 output1153)).val
theorem output1355_def : output1355 = (.seq output1354 output1153) := by
  unfold output1355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1355_skip : Flapjack.WordAlloc.isSkip output1355 = false := by
  rw [output1355_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1355 input1152)).val
theorem input1356_def : input1356 = (.seq input1355 input1152) := by
  unfold input1356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1355 output1152)).val
theorem output1356_def : output1356 = (.seq output1355 output1152) := by
  unfold output1356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1356_skip : Flapjack.WordAlloc.isSkip output1356 = false := by
  rw [output1356_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1356 input1151)).val
theorem input1357_def : input1357 = (.seq input1356 input1151) := by
  unfold input1357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1356 output1151)).val
theorem output1357_def : output1357 = (.seq output1356 output1151) := by
  unfold output1357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1357_skip : Flapjack.WordAlloc.isSkip output1357 = false := by
  rw [output1357_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1357 input1150)).val
theorem input1358_def : input1358 = (.seq input1357 input1150) := by
  unfold input1358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1357 output1150)).val
theorem output1358_def : output1358 = (.seq output1357 output1150) := by
  unfold output1358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1358_skip : Flapjack.WordAlloc.isSkip output1358 = false := by
  rw [output1358_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1358 input1149)).val
theorem input1359_def : input1359 = (.seq input1358 input1149) := by
  unfold input1359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1358 output1149)).val
theorem output1359_def : output1359 = (.seq output1358 output1149) := by
  unfold output1359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1359_skip : Flapjack.WordAlloc.isSkip output1359 = false := by
  rw [output1359_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1359 input1144)).val
theorem input1360_def : input1360 = (.seq input1359 input1144) := by
  unfold input1360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1359 output1144)).val
theorem output1360_def : output1360 = (.seq output1359 output1144) := by
  unfold output1360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1360_skip : Flapjack.WordAlloc.isSkip output1360 = false := by
  rw [output1360_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1360 input1143)).val
theorem input1361_def : input1361 = (.seq input1360 input1143) := by
  unfold input1361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1360 output1143)).val
theorem output1361_def : output1361 = (.seq output1360 output1143) := by
  unfold output1361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1361_skip : Flapjack.WordAlloc.isSkip output1361 = false := by
  rw [output1361_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1361 input1140)).val
theorem input1362_def : input1362 = (.seq input1361 input1140) := by
  unfold input1362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1361 output1140)).val
theorem output1362_def : output1362 = (.seq output1361 output1140) := by
  unfold output1362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1362_skip : Flapjack.WordAlloc.isSkip output1362 = false := by
  rw [output1362_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1363 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1362 input1135)).val
theorem input1363_def : input1363 = (.seq input1362 input1135) := by
  unfold input1363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1363 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1362 output1135)).val
theorem output1363_def : output1363 = (.seq output1362 output1135) := by
  unfold output1363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1363_skip : Flapjack.WordAlloc.isSkip output1363 = false := by
  rw [output1363_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1363 input1134)).val
theorem input1364_def : input1364 = (.seq input1363 input1134) := by
  unfold input1364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1363 output1134)).val
theorem output1364_def : output1364 = (.seq output1363 output1134) := by
  unfold output1364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1364_skip : Flapjack.WordAlloc.isSkip output1364 = false := by
  rw [output1364_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1364 input1131)).val
theorem input1365_def : input1365 = (.seq input1364 input1131) := by
  unfold input1365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1364 output1131)).val
theorem output1365_def : output1365 = (.seq output1364 output1131) := by
  unfold output1365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1365_skip : Flapjack.WordAlloc.isSkip output1365 = false := by
  rw [output1365_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1365 input1130)).val
theorem input1366_def : input1366 = (.seq input1365 input1130) := by
  unfold input1366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1365 output1130)).val
theorem output1366_def : output1366 = (.seq output1365 output1130) := by
  unfold output1366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1366_skip : Flapjack.WordAlloc.isSkip output1366 = false := by
  rw [output1366_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1366 input1129)).val
theorem input1367_def : input1367 = (.seq input1366 input1129) := by
  unfold input1367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1366 output1129)).val
theorem output1367_def : output1367 = (.seq output1366 output1129) := by
  unfold output1367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1367_skip : Flapjack.WordAlloc.isSkip output1367 = false := by
  rw [output1367_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1367 input1128)).val
theorem input1368_def : input1368 = (.seq input1367 input1128) := by
  unfold input1368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1367 output1128)).val
theorem output1368_def : output1368 = (.seq output1367 output1128) := by
  unfold output1368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1368_skip : Flapjack.WordAlloc.isSkip output1368 = false := by
  rw [output1368_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1368 input1127)).val
theorem input1369_def : input1369 = (.seq input1368 input1127) := by
  unfold input1369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1368 output1127)).val
theorem output1369_def : output1369 = (.seq output1368 output1127) := by
  unfold output1369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1369_skip : Flapjack.WordAlloc.isSkip output1369 = false := by
  rw [output1369_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1369 input1126)).val
theorem input1370_def : input1370 = (.seq input1369 input1126) := by
  unfold input1370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1369 output1126)).val
theorem output1370_def : output1370 = (.seq output1369 output1126) := by
  unfold output1370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1370_skip : Flapjack.WordAlloc.isSkip output1370 = false := by
  rw [output1370_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1370 input1125)).val
theorem input1371_def : input1371 = (.seq input1370 input1125) := by
  unfold input1371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1370 output1125)).val
theorem output1371_def : output1371 = (.seq output1370 output1125) := by
  unfold output1371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1371_skip : Flapjack.WordAlloc.isSkip output1371 = false := by
  rw [output1371_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1371 input1124)).val
theorem input1372_def : input1372 = (.seq input1371 input1124) := by
  unfold input1372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1371 output1124)).val
theorem output1372_def : output1372 = (.seq output1371 output1124) := by
  unfold output1372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1372_skip : Flapjack.WordAlloc.isSkip output1372 = false := by
  rw [output1372_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1372 input1123)).val
theorem input1373_def : input1373 = (.seq input1372 input1123) := by
  unfold input1373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1372 output1123)).val
theorem output1373_def : output1373 = (.seq output1372 output1123) := by
  unfold output1373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1373_skip : Flapjack.WordAlloc.isSkip output1373 = false := by
  rw [output1373_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1373 input1118)).val
theorem input1374_def : input1374 = (.seq input1373 input1118) := by
  unfold input1374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1373 output1118)).val
theorem output1374_def : output1374 = (.seq output1373 output1118) := by
  unfold output1374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1374_skip : Flapjack.WordAlloc.isSkip output1374 = false := by
  rw [output1374_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1374 input1117)).val
theorem input1375_def : input1375 = (.seq input1374 input1117) := by
  unfold input1375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1374 output1117)).val
theorem output1375_def : output1375 = (.seq output1374 output1117) := by
  unfold output1375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1375_skip : Flapjack.WordAlloc.isSkip output1375 = false := by
  rw [output1375_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1376 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1375 input1114)).val
theorem input1376_def : input1376 = (.seq input1375 input1114) := by
  unfold input1376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1376 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1375 output1114)).val
theorem output1376_def : output1376 = (.seq output1375 output1114) := by
  unfold output1376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1376_skip : Flapjack.WordAlloc.isSkip output1376 = false := by
  rw [output1376_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1376 input1113)).val
theorem input1377_def : input1377 = (.seq input1376 input1113) := by
  unfold input1377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1376 output1113)).val
theorem output1377_def : output1377 = (.seq output1376 output1113) := by
  unfold output1377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1377_skip : Flapjack.WordAlloc.isSkip output1377 = false := by
  rw [output1377_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1377 input1112)).val
theorem input1378_def : input1378 = (.seq input1377 input1112) := by
  unfold input1378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1377 output1112)).val
theorem output1378_def : output1378 = (.seq output1377 output1112) := by
  unfold output1378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1378_skip : Flapjack.WordAlloc.isSkip output1378 = false := by
  rw [output1378_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1378 input1111)).val
theorem input1379_def : input1379 = (.seq input1378 input1111) := by
  unfold input1379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1378 output1111)).val
theorem output1379_def : output1379 = (.seq output1378 output1111) := by
  unfold output1379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1379_skip : Flapjack.WordAlloc.isSkip output1379 = false := by
  rw [output1379_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1379 input1110)).val
theorem input1380_def : input1380 = (.seq input1379 input1110) := by
  unfold input1380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1379 output1110)).val
theorem output1380_def : output1380 = (.seq output1379 output1110) := by
  unfold output1380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1380_skip : Flapjack.WordAlloc.isSkip output1380 = false := by
  rw [output1380_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1380 input1109)).val
theorem input1381_def : input1381 = (.seq input1380 input1109) := by
  unfold input1381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1380 output1109)).val
theorem output1381_def : output1381 = (.seq output1380 output1109) := by
  unfold output1381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1381_skip : Flapjack.WordAlloc.isSkip output1381 = false := by
  rw [output1381_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1381 input1108)).val
theorem input1382_def : input1382 = (.seq input1381 input1108) := by
  unfold input1382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1381 output1108)).val
theorem output1382_def : output1382 = (.seq output1381 output1108) := by
  unfold output1382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1382_skip : Flapjack.WordAlloc.isSkip output1382 = false := by
  rw [output1382_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1382 input1107)).val
theorem input1383_def : input1383 = (.seq input1382 input1107) := by
  unfold input1383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1382 output1107)).val
theorem output1383_def : output1383 = (.seq output1382 output1107) := by
  unfold output1383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1383_skip : Flapjack.WordAlloc.isSkip output1383 = false := by
  rw [output1383_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1384 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1383 input1106)).val
theorem input1384_def : input1384 = (.seq input1383 input1106) := by
  unfold input1384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1384 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1383 output1106)).val
theorem output1384_def : output1384 = (.seq output1383 output1106) := by
  unfold output1384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1384_skip : Flapjack.WordAlloc.isSkip output1384 = false := by
  rw [output1384_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1384 input1101)).val
theorem input1385_def : input1385 = (.seq input1384 input1101) := by
  unfold input1385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1384 output1101)).val
theorem output1385_def : output1385 = (.seq output1384 output1101) := by
  unfold output1385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1385_skip : Flapjack.WordAlloc.isSkip output1385 = false := by
  rw [output1385_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1385 input1100)).val
theorem input1386_def : input1386 = (.seq input1385 input1100) := by
  unfold input1386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1385 output1100)).val
theorem output1386_def : output1386 = (.seq output1385 output1100) := by
  unfold output1386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1386_skip : Flapjack.WordAlloc.isSkip output1386 = false := by
  rw [output1386_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1386 input1097)).val
theorem input1387_def : input1387 = (.seq input1386 input1097) := by
  unfold input1387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1386 output1097)).val
theorem output1387_def : output1387 = (.seq output1386 output1097) := by
  unfold output1387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1387_skip : Flapjack.WordAlloc.isSkip output1387 = false := by
  rw [output1387_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1387 input1096)).val
theorem input1388_def : input1388 = (.seq input1387 input1096) := by
  unfold input1388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1387 output1096)).val
theorem output1388_def : output1388 = (.seq output1387 output1096) := by
  unfold output1388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1388_skip : Flapjack.WordAlloc.isSkip output1388 = false := by
  rw [output1388_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1388 input1095)).val
theorem input1389_def : input1389 = (.seq input1388 input1095) := by
  unfold input1389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1388 output1095)).val
theorem output1389_def : output1389 = (.seq output1388 output1095) := by
  unfold output1389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1389_skip : Flapjack.WordAlloc.isSkip output1389 = false := by
  rw [output1389_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1389 input1094)).val
theorem input1390_def : input1390 = (.seq input1389 input1094) := by
  unfold input1390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1389 output1094)).val
theorem output1390_def : output1390 = (.seq output1389 output1094) := by
  unfold output1390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1390_skip : Flapjack.WordAlloc.isSkip output1390 = false := by
  rw [output1390_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1390 input1093)).val
theorem input1391_def : input1391 = (.seq input1390 input1093) := by
  unfold input1391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1390 output1093)).val
theorem output1391_def : output1391 = (.seq output1390 output1093) := by
  unfold output1391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1391_skip : Flapjack.WordAlloc.isSkip output1391 = false := by
  rw [output1391_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1391 input1092)).val
theorem input1392_def : input1392 = (.seq input1391 input1092) := by
  unfold input1392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1391 output1092)).val
theorem output1392_def : output1392 = (.seq output1391 output1092) := by
  unfold output1392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1392_skip : Flapjack.WordAlloc.isSkip output1392 = false := by
  rw [output1392_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1392 input1091)).val
theorem input1393_def : input1393 = (.seq input1392 input1091) := by
  unfold input1393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1392 output1091)).val
theorem output1393_def : output1393 = (.seq output1392 output1091) := by
  unfold output1393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1393_skip : Flapjack.WordAlloc.isSkip output1393 = false := by
  rw [output1393_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1393 input1090)).val
theorem input1394_def : input1394 = (.seq input1393 input1090) := by
  unfold input1394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1393 output1090)).val
theorem output1394_def : output1394 = (.seq output1393 output1090) := by
  unfold output1394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1394_skip : Flapjack.WordAlloc.isSkip output1394 = false := by
  rw [output1394_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1394 input1089)).val
theorem input1395_def : input1395 = (.seq input1394 input1089) := by
  unfold input1395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1394 output1089)).val
theorem output1395_def : output1395 = (.seq output1394 output1089) := by
  unfold output1395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1395_skip : Flapjack.WordAlloc.isSkip output1395 = false := by
  rw [output1395_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1395 input1084)).val
theorem input1396_def : input1396 = (.seq input1395 input1084) := by
  unfold input1396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1395 output1084)).val
theorem output1396_def : output1396 = (.seq output1395 output1084) := by
  unfold output1396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1396_skip : Flapjack.WordAlloc.isSkip output1396 = false := by
  rw [output1396_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1396 input1083)).val
theorem input1397_def : input1397 = (.seq input1396 input1083) := by
  unfold input1397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1396 output1083)).val
theorem output1397_def : output1397 = (.seq output1396 output1083) := by
  unfold output1397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1397_skip : Flapjack.WordAlloc.isSkip output1397 = false := by
  rw [output1397_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1397 input1080)).val
theorem input1398_def : input1398 = (.seq input1397 input1080) := by
  unfold input1398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1397 output1080)).val
theorem output1398_def : output1398 = (.seq output1397 output1080) := by
  unfold output1398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1398_skip : Flapjack.WordAlloc.isSkip output1398 = false := by
  rw [output1398_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1398 input1075)).val
theorem input1399_def : input1399 = (.seq input1398 input1075) := by
  unfold input1399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1398 output1075)).val
theorem output1399_def : output1399 = (.seq output1398 output1075) := by
  unfold output1399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1399_skip : Flapjack.WordAlloc.isSkip output1399 = false := by
  rw [output1399_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1399 input1074)).val
theorem input1400_def : input1400 = (.seq input1399 input1074) := by
  unfold input1400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1399 output1074)).val
theorem output1400_def : output1400 = (.seq output1399 output1074) := by
  unfold output1400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1400_skip : Flapjack.WordAlloc.isSkip output1400 = false := by
  rw [output1400_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1400 input1071)).val
theorem input1401_def : input1401 = (.seq input1400 input1071) := by
  unfold input1401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1400 output1071)).val
theorem output1401_def : output1401 = (.seq output1400 output1071) := by
  unfold output1401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1401_skip : Flapjack.WordAlloc.isSkip output1401 = false := by
  rw [output1401_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1401 input1070)).val
theorem input1402_def : input1402 = (.seq input1401 input1070) := by
  unfold input1402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1401 output1070)).val
theorem output1402_def : output1402 = (.seq output1401 output1070) := by
  unfold output1402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1402_skip : Flapjack.WordAlloc.isSkip output1402 = false := by
  rw [output1402_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1402 input1069)).val
theorem input1403_def : input1403 = (.seq input1402 input1069) := by
  unfold input1403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1402 output1069)).val
theorem output1403_def : output1403 = (.seq output1402 output1069) := by
  unfold output1403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1403_skip : Flapjack.WordAlloc.isSkip output1403 = false := by
  rw [output1403_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1403 input1068)).val
theorem input1404_def : input1404 = (.seq input1403 input1068) := by
  unfold input1404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1403 output1068)).val
theorem output1404_def : output1404 = (.seq output1403 output1068) := by
  unfold output1404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1404_skip : Flapjack.WordAlloc.isSkip output1404 = false := by
  rw [output1404_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1404 input1067)).val
theorem input1405_def : input1405 = (.seq input1404 input1067) := by
  unfold input1405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1404 output1067)).val
theorem output1405_def : output1405 = (.seq output1404 output1067) := by
  unfold output1405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1405_skip : Flapjack.WordAlloc.isSkip output1405 = false := by
  rw [output1405_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1405 input1066)).val
theorem input1406_def : input1406 = (.seq input1405 input1066) := by
  unfold input1406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1405 output1066)).val
theorem output1406_def : output1406 = (.seq output1405 output1066) := by
  unfold output1406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1406_skip : Flapjack.WordAlloc.isSkip output1406 = false := by
  rw [output1406_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1406 input1065)).val
theorem input1407_def : input1407 = (.seq input1406 input1065) := by
  unfold input1407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1406 output1065)).val
theorem output1407_def : output1407 = (.seq output1406 output1065) := by
  unfold output1407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1407_skip : Flapjack.WordAlloc.isSkip output1407 = false := by
  rw [output1407_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1408 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1407 input1064)).val
theorem input1408_def : input1408 = (.seq input1407 input1064) := by
  unfold input1408
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1408 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1407 output1064)).val
theorem output1408_def : output1408 = (.seq output1407 output1064) := by
  unfold output1408
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1408_skip : Flapjack.WordAlloc.isSkip output1408 = false := by
  rw [output1408_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1409 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1408 input1063)).val
theorem input1409_def : input1409 = (.seq input1408 input1063) := by
  unfold input1409
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1409 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1408 output1063)).val
theorem output1409_def : output1409 = (.seq output1408 output1063) := by
  unfold output1409
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1409_skip : Flapjack.WordAlloc.isSkip output1409 = false := by
  rw [output1409_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1410 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1409 input1058)).val
theorem input1410_def : input1410 = (.seq input1409 input1058) := by
  unfold input1410
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1410 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1409 output1058)).val
theorem output1410_def : output1410 = (.seq output1409 output1058) := by
  unfold output1410
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1410_skip : Flapjack.WordAlloc.isSkip output1410 = false := by
  rw [output1410_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1411 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1410 input1057)).val
theorem input1411_def : input1411 = (.seq input1410 input1057) := by
  unfold input1411
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1411 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1410 output1057)).val
theorem output1411_def : output1411 = (.seq output1410 output1057) := by
  unfold output1411
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1411_skip : Flapjack.WordAlloc.isSkip output1411 = false := by
  rw [output1411_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1412 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1411 input1054)).val
theorem input1412_def : input1412 = (.seq input1411 input1054) := by
  unfold input1412
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1412 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1411 output1054)).val
theorem output1412_def : output1412 = (.seq output1411 output1054) := by
  unfold output1412
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1412_skip : Flapjack.WordAlloc.isSkip output1412 = false := by
  rw [output1412_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1413 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1412 input1049)).val
theorem input1413_def : input1413 = (.seq input1412 input1049) := by
  unfold input1413
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1413 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1412 output1049)).val
theorem output1413_def : output1413 = (.seq output1412 output1049) := by
  unfold output1413
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1413_skip : Flapjack.WordAlloc.isSkip output1413 = false := by
  rw [output1413_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1414 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1413 input1048)).val
theorem input1414_def : input1414 = (.seq input1413 input1048) := by
  unfold input1414
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1414 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1413 output1048)).val
theorem output1414_def : output1414 = (.seq output1413 output1048) := by
  unfold output1414
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1414_skip : Flapjack.WordAlloc.isSkip output1414 = false := by
  rw [output1414_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1415 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1414 input1045)).val
theorem input1415_def : input1415 = (.seq input1414 input1045) := by
  unfold input1415
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1415 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1414 output1045)).val
theorem output1415_def : output1415 = (.seq output1414 output1045) := by
  unfold output1415
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1415_skip : Flapjack.WordAlloc.isSkip output1415 = false := by
  rw [output1415_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1416 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1415 input1044)).val
theorem input1416_def : input1416 = (.seq input1415 input1044) := by
  unfold input1416
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1416 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1415 output1044)).val
theorem output1416_def : output1416 = (.seq output1415 output1044) := by
  unfold output1416
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1416_skip : Flapjack.WordAlloc.isSkip output1416 = false := by
  rw [output1416_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1417 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1416 input1043)).val
theorem input1417_def : input1417 = (.seq input1416 input1043) := by
  unfold input1417
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1417 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1416 output1043)).val
theorem output1417_def : output1417 = (.seq output1416 output1043) := by
  unfold output1417
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1417_skip : Flapjack.WordAlloc.isSkip output1417 = false := by
  rw [output1417_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1418 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1417 input1042)).val
theorem input1418_def : input1418 = (.seq input1417 input1042) := by
  unfold input1418
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1418 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1417 output1042)).val
theorem output1418_def : output1418 = (.seq output1417 output1042) := by
  unfold output1418
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1418_skip : Flapjack.WordAlloc.isSkip output1418 = false := by
  rw [output1418_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1419 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1418 input1041)).val
theorem input1419_def : input1419 = (.seq input1418 input1041) := by
  unfold input1419
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1419 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1418 output1041)).val
theorem output1419_def : output1419 = (.seq output1418 output1041) := by
  unfold output1419
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1419_skip : Flapjack.WordAlloc.isSkip output1419 = false := by
  rw [output1419_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1420 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1419 input1040)).val
theorem input1420_def : input1420 = (.seq input1419 input1040) := by
  unfold input1420
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1420 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1419 output1040)).val
theorem output1420_def : output1420 = (.seq output1419 output1040) := by
  unfold output1420
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1420_skip : Flapjack.WordAlloc.isSkip output1420 = false := by
  rw [output1420_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1421 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1420 input1039)).val
theorem input1421_def : input1421 = (.seq input1420 input1039) := by
  unfold input1421
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1421 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1420 output1039)).val
theorem output1421_def : output1421 = (.seq output1420 output1039) := by
  unfold output1421
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1421_skip : Flapjack.WordAlloc.isSkip output1421 = false := by
  rw [output1421_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1422 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1421 input1038)).val
theorem input1422_def : input1422 = (.seq input1421 input1038) := by
  unfold input1422
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1422 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1421 output1038)).val
theorem output1422_def : output1422 = (.seq output1421 output1038) := by
  unfold output1422
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1422_skip : Flapjack.WordAlloc.isSkip output1422 = false := by
  rw [output1422_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1423 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1422 input1037)).val
theorem input1423_def : input1423 = (.seq input1422 input1037) := by
  unfold input1423
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1423 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1422 output1037)).val
theorem output1423_def : output1423 = (.seq output1422 output1037) := by
  unfold output1423
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1423_skip : Flapjack.WordAlloc.isSkip output1423 = false := by
  rw [output1423_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1424 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1423 input1032)).val
theorem input1424_def : input1424 = (.seq input1423 input1032) := by
  unfold input1424
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1424 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1423 output1032)).val
theorem output1424_def : output1424 = (.seq output1423 output1032) := by
  unfold output1424
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1424_skip : Flapjack.WordAlloc.isSkip output1424 = false := by
  rw [output1424_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1425 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1424 input1031)).val
theorem input1425_def : input1425 = (.seq input1424 input1031) := by
  unfold input1425
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1425 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1424 output1031)).val
theorem output1425_def : output1425 = (.seq output1424 output1031) := by
  unfold output1425
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1425_skip : Flapjack.WordAlloc.isSkip output1425 = false := by
  rw [output1425_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1426 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1425 input1028)).val
theorem input1426_def : input1426 = (.seq input1425 input1028) := by
  unfold input1426
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1426 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1425 output1028)).val
theorem output1426_def : output1426 = (.seq output1425 output1028) := by
  unfold output1426
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1426_skip : Flapjack.WordAlloc.isSkip output1426 = false := by
  rw [output1426_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1427 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1426 input1025)).val
theorem input1427_def : input1427 = (.seq input1426 input1025) := by
  unfold input1427
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1427 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1426 output1025)).val
theorem output1427_def : output1427 = (.seq output1426 output1025) := by
  unfold output1427
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1427_skip : Flapjack.WordAlloc.isSkip output1427 = false := by
  rw [output1427_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1428 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1427 input1022)).val
theorem input1428_def : input1428 = (.seq input1427 input1022) := by
  unfold input1428
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1428 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1427 output1022)).val
theorem output1428_def : output1428 = (.seq output1427 output1022) := by
  unfold output1428
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1428_skip : Flapjack.WordAlloc.isSkip output1428 = false := by
  rw [output1428_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1429 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1428 input1019)).val
theorem input1429_def : input1429 = (.seq input1428 input1019) := by
  unfold input1429
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1429 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1428 output1019)).val
theorem output1429_def : output1429 = (.seq output1428 output1019) := by
  unfold output1429
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1429_skip : Flapjack.WordAlloc.isSkip output1429 = false := by
  rw [output1429_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1430 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1429 input1016)).val
theorem input1430_def : input1430 = (.seq input1429 input1016) := by
  unfold input1430
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1430 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1429 output1016)).val
theorem output1430_def : output1430 = (.seq output1429 output1016) := by
  unfold output1430
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1430_skip : Flapjack.WordAlloc.isSkip output1430 = false := by
  rw [output1430_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1431 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1430 input1013)).val
theorem input1431_def : input1431 = (.seq input1430 input1013) := by
  unfold input1431
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1431 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1430 output1013)).val
theorem output1431_def : output1431 = (.seq output1430 output1013) := by
  unfold output1431
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1431_skip : Flapjack.WordAlloc.isSkip output1431 = false := by
  rw [output1431_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1432 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1431 input1010)).val
theorem input1432_def : input1432 = (.seq input1431 input1010) := by
  unfold input1432
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1432 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1431 output1010)).val
theorem output1432_def : output1432 = (.seq output1431 output1010) := by
  unfold output1432
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1432_skip : Flapjack.WordAlloc.isSkip output1432 = false := by
  rw [output1432_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1433 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1432 input1007)).val
theorem input1433_def : input1433 = (.seq input1432 input1007) := by
  unfold input1433
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1433 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1432 output1007)).val
theorem output1433_def : output1433 = (.seq output1432 output1007) := by
  unfold output1433
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1433_skip : Flapjack.WordAlloc.isSkip output1433 = false := by
  rw [output1433_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1434 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1433 input1004)).val
theorem input1434_def : input1434 = (.seq input1433 input1004) := by
  unfold input1434
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1434 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1433 output1004)).val
theorem output1434_def : output1434 = (.seq output1433 output1004) := by
  unfold output1434
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1434_skip : Flapjack.WordAlloc.isSkip output1434 = false := by
  rw [output1434_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1435 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1434 input999)).val
theorem input1435_def : input1435 = (.seq input1434 input999) := by
  unfold input1435
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1435 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1434 output999)).val
theorem output1435_def : output1435 = (.seq output1434 output999) := by
  unfold output1435
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1435_skip : Flapjack.WordAlloc.isSkip output1435 = false := by
  rw [output1435_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1436 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1435 input998)).val
theorem input1436_def : input1436 = (.seq input1435 input998) := by
  unfold input1436
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1436 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1435 output998)).val
theorem output1436_def : output1436 = (.seq output1435 output998) := by
  unfold output1436
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1436_skip : Flapjack.WordAlloc.isSkip output1436 = false := by
  rw [output1436_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1437 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1436 input995)).val
theorem input1437_def : input1437 = (.seq input1436 input995) := by
  unfold input1437
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1437 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1436 output995)).val
theorem output1437_def : output1437 = (.seq output1436 output995) := by
  unfold output1437
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1437_skip : Flapjack.WordAlloc.isSkip output1437 = false := by
  rw [output1437_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1438 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1437 input992)).val
theorem input1438_def : input1438 = (.seq input1437 input992) := by
  unfold input1438
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1438 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1437 output992)).val
theorem output1438_def : output1438 = (.seq output1437 output992) := by
  unfold output1438
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1438_skip : Flapjack.WordAlloc.isSkip output1438 = false := by
  rw [output1438_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1439 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1438 input989)).val
theorem input1439_def : input1439 = (.seq input1438 input989) := by
  unfold input1439
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1439 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1438 output989)).val
theorem output1439_def : output1439 = (.seq output1438 output989) := by
  unfold output1439
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1439_skip : Flapjack.WordAlloc.isSkip output1439 = false := by
  rw [output1439_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1440 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1439 input986)).val
theorem input1440_def : input1440 = (.seq input1439 input986) := by
  unfold input1440
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1440 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1439 output986)).val
theorem output1440_def : output1440 = (.seq output1439 output986) := by
  unfold output1440
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1440_skip : Flapjack.WordAlloc.isSkip output1440 = false := by
  rw [output1440_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1441 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1440 input983)).val
theorem input1441_def : input1441 = (.seq input1440 input983) := by
  unfold input1441
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1441 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1440 output983)).val
theorem output1441_def : output1441 = (.seq output1440 output983) := by
  unfold output1441
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1441_skip : Flapjack.WordAlloc.isSkip output1441 = false := by
  rw [output1441_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1442 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1441 input980)).val
theorem input1442_def : input1442 = (.seq input1441 input980) := by
  unfold input1442
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1442 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1441 output980)).val
theorem output1442_def : output1442 = (.seq output1441 output980) := by
  unfold output1442
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1442_skip : Flapjack.WordAlloc.isSkip output1442 = false := by
  rw [output1442_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1443 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1442 input977)).val
theorem input1443_def : input1443 = (.seq input1442 input977) := by
  unfold input1443
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1443 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1442 output977)).val
theorem output1443_def : output1443 = (.seq output1442 output977) := by
  unfold output1443
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1443_skip : Flapjack.WordAlloc.isSkip output1443 = false := by
  rw [output1443_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1444 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1443 input974)).val
theorem input1444_def : input1444 = (.seq input1443 input974) := by
  unfold input1444
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1444 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1443 output974)).val
theorem output1444_def : output1444 = (.seq output1443 output974) := by
  unfold output1444
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1444_skip : Flapjack.WordAlloc.isSkip output1444 = false := by
  rw [output1444_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1445 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1444 input971)).val
theorem input1445_def : input1445 = (.seq input1444 input971) := by
  unfold input1445
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1445 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1444 output971)).val
theorem output1445_def : output1445 = (.seq output1444 output971) := by
  unfold output1445
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1445_skip : Flapjack.WordAlloc.isSkip output1445 = false := by
  rw [output1445_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1446 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1445 input966)).val
theorem input1446_def : input1446 = (.seq input1445 input966) := by
  unfold input1446
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1446 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1445 output966)).val
theorem output1446_def : output1446 = (.seq output1445 output966) := by
  unfold output1446
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1446_skip : Flapjack.WordAlloc.isSkip output1446 = false := by
  rw [output1446_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1447 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1446 input965)).val
theorem input1447_def : input1447 = (.seq input1446 input965) := by
  unfold input1447
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1447 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1446 output965)).val
theorem output1447_def : output1447 = (.seq output1446 output965) := by
  unfold output1447
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1447_skip : Flapjack.WordAlloc.isSkip output1447 = false := by
  rw [output1447_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1448 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1447 input962)).val
theorem input1448_def : input1448 = (.seq input1447 input962) := by
  unfold input1448
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1448 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1447 output962)).val
theorem output1448_def : output1448 = (.seq output1447 output962) := by
  unfold output1448
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1448_skip : Flapjack.WordAlloc.isSkip output1448 = false := by
  rw [output1448_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1449 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1448 input959)).val
theorem input1449_def : input1449 = (.seq input1448 input959) := by
  unfold input1449
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1449 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1448 output959)).val
theorem output1449_def : output1449 = (.seq output1448 output959) := by
  unfold output1449
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1449_skip : Flapjack.WordAlloc.isSkip output1449 = false := by
  rw [output1449_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1450 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1449 input956)).val
theorem input1450_def : input1450 = (.seq input1449 input956) := by
  unfold input1450
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1450 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1449 output956)).val
theorem output1450_def : output1450 = (.seq output1449 output956) := by
  unfold output1450
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1450_skip : Flapjack.WordAlloc.isSkip output1450 = false := by
  rw [output1450_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1451 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1450 input953)).val
theorem input1451_def : input1451 = (.seq input1450 input953) := by
  unfold input1451
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1451 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1450 output953)).val
theorem output1451_def : output1451 = (.seq output1450 output953) := by
  unfold output1451
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1451_skip : Flapjack.WordAlloc.isSkip output1451 = false := by
  rw [output1451_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1452 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1451 input950)).val
theorem input1452_def : input1452 = (.seq input1451 input950) := by
  unfold input1452
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1452 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1451 output950)).val
theorem output1452_def : output1452 = (.seq output1451 output950) := by
  unfold output1452
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1452_skip : Flapjack.WordAlloc.isSkip output1452 = false := by
  rw [output1452_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1453 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1452 input947)).val
theorem input1453_def : input1453 = (.seq input1452 input947) := by
  unfold input1453
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1453 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1452 output947)).val
theorem output1453_def : output1453 = (.seq output1452 output947) := by
  unfold output1453
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1453_skip : Flapjack.WordAlloc.isSkip output1453 = false := by
  rw [output1453_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1454 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1453 input944)).val
theorem input1454_def : input1454 = (.seq input1453 input944) := by
  unfold input1454
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1454 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1453 output944)).val
theorem output1454_def : output1454 = (.seq output1453 output944) := by
  unfold output1454
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1454_skip : Flapjack.WordAlloc.isSkip output1454 = false := by
  rw [output1454_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1455 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1454 input941)).val
theorem input1455_def : input1455 = (.seq input1454 input941) := by
  unfold input1455
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1455 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1454 output941)).val
theorem output1455_def : output1455 = (.seq output1454 output941) := by
  unfold output1455
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1455_skip : Flapjack.WordAlloc.isSkip output1455 = false := by
  rw [output1455_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1456 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1455 input938)).val
theorem input1456_def : input1456 = (.seq input1455 input938) := by
  unfold input1456
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1456 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1455 output938)).val
theorem output1456_def : output1456 = (.seq output1455 output938) := by
  unfold output1456
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1456_skip : Flapjack.WordAlloc.isSkip output1456 = false := by
  rw [output1456_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1457 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1456 input933)).val
theorem input1457_def : input1457 = (.seq input1456 input933) := by
  unfold input1457
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1457 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1456 output933)).val
theorem output1457_def : output1457 = (.seq output1456 output933) := by
  unfold output1457
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1457_skip : Flapjack.WordAlloc.isSkip output1457 = false := by
  rw [output1457_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1458 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1457 input932)).val
theorem input1458_def : input1458 = (.seq input1457 input932) := by
  unfold input1458
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1458 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1457 output932)).val
theorem output1458_def : output1458 = (.seq output1457 output932) := by
  unfold output1458
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1458_skip : Flapjack.WordAlloc.isSkip output1458 = false := by
  rw [output1458_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1459 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1458 input929)).val
theorem input1459_def : input1459 = (.seq input1458 input929) := by
  unfold input1459
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1459 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1458 output929)).val
theorem output1459_def : output1459 = (.seq output1458 output929) := by
  unfold output1459
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1459_skip : Flapjack.WordAlloc.isSkip output1459 = false := by
  rw [output1459_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1460 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1459 input926)).val
theorem input1460_def : input1460 = (.seq input1459 input926) := by
  unfold input1460
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1460 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1459 output926)).val
theorem output1460_def : output1460 = (.seq output1459 output926) := by
  unfold output1460
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1460_skip : Flapjack.WordAlloc.isSkip output1460 = false := by
  rw [output1460_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1461 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1460 input923)).val
theorem input1461_def : input1461 = (.seq input1460 input923) := by
  unfold input1461
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1461 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1460 output923)).val
theorem output1461_def : output1461 = (.seq output1460 output923) := by
  unfold output1461
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1461_skip : Flapjack.WordAlloc.isSkip output1461 = false := by
  rw [output1461_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1462 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1461 input920)).val
theorem input1462_def : input1462 = (.seq input1461 input920) := by
  unfold input1462
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1462 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1461 output920)).val
theorem output1462_def : output1462 = (.seq output1461 output920) := by
  unfold output1462
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1462_skip : Flapjack.WordAlloc.isSkip output1462 = false := by
  rw [output1462_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1463 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1462 input917)).val
theorem input1463_def : input1463 = (.seq input1462 input917) := by
  unfold input1463
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1463 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1462 output917)).val
theorem output1463_def : output1463 = (.seq output1462 output917) := by
  unfold output1463
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1463_skip : Flapjack.WordAlloc.isSkip output1463 = false := by
  rw [output1463_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1464 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1463 input914)).val
theorem input1464_def : input1464 = (.seq input1463 input914) := by
  unfold input1464
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1464 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1463 output914)).val
theorem output1464_def : output1464 = (.seq output1463 output914) := by
  unfold output1464
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1464_skip : Flapjack.WordAlloc.isSkip output1464 = false := by
  rw [output1464_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1465 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1464 input911)).val
theorem input1465_def : input1465 = (.seq input1464 input911) := by
  unfold input1465
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1465 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1464 output911)).val
theorem output1465_def : output1465 = (.seq output1464 output911) := by
  unfold output1465
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1465_skip : Flapjack.WordAlloc.isSkip output1465 = false := by
  rw [output1465_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1466 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1465 input908)).val
theorem input1466_def : input1466 = (.seq input1465 input908) := by
  unfold input1466
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1466 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1465 output908)).val
theorem output1466_def : output1466 = (.seq output1465 output908) := by
  unfold output1466
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1466_skip : Flapjack.WordAlloc.isSkip output1466 = false := by
  rw [output1466_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1467 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1466 input905)).val
theorem input1467_def : input1467 = (.seq input1466 input905) := by
  unfold input1467
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1467 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1466 output905)).val
theorem output1467_def : output1467 = (.seq output1466 output905) := by
  unfold output1467
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1467_skip : Flapjack.WordAlloc.isSkip output1467 = false := by
  rw [output1467_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1468 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1467 input900)).val
theorem input1468_def : input1468 = (.seq input1467 input900) := by
  unfold input1468
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1468 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1467 output900)).val
theorem output1468_def : output1468 = (.seq output1467 output900) := by
  unfold output1468
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1468_skip : Flapjack.WordAlloc.isSkip output1468 = false := by
  rw [output1468_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1469 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1468 input899)).val
theorem input1469_def : input1469 = (.seq input1468 input899) := by
  unfold input1469
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1469 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1468 output899)).val
theorem output1469_def : output1469 = (.seq output1468 output899) := by
  unfold output1469
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1469_skip : Flapjack.WordAlloc.isSkip output1469 = false := by
  rw [output1469_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1470 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1469 input896)).val
theorem input1470_def : input1470 = (.seq input1469 input896) := by
  unfold input1470
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1470 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1469 output896)).val
theorem output1470_def : output1470 = (.seq output1469 output896) := by
  unfold output1470
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1470_skip : Flapjack.WordAlloc.isSkip output1470 = false := by
  rw [output1470_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1471 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1470 input893)).val
theorem input1471_def : input1471 = (.seq input1470 input893) := by
  unfold input1471
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1471 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1470 output893)).val
theorem output1471_def : output1471 = (.seq output1470 output893) := by
  unfold output1471
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1471_skip : Flapjack.WordAlloc.isSkip output1471 = false := by
  rw [output1471_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1472 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1471 input890)).val
theorem input1472_def : input1472 = (.seq input1471 input890) := by
  unfold input1472
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1472 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1471 output890)).val
theorem output1472_def : output1472 = (.seq output1471 output890) := by
  unfold output1472
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1472_skip : Flapjack.WordAlloc.isSkip output1472 = false := by
  rw [output1472_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1473 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1472 input887)).val
theorem input1473_def : input1473 = (.seq input1472 input887) := by
  unfold input1473
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1473 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1472 output887)).val
theorem output1473_def : output1473 = (.seq output1472 output887) := by
  unfold output1473
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1473_skip : Flapjack.WordAlloc.isSkip output1473 = false := by
  rw [output1473_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1474 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1473 input884)).val
theorem input1474_def : input1474 = (.seq input1473 input884) := by
  unfold input1474
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1474 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1473 output884)).val
theorem output1474_def : output1474 = (.seq output1473 output884) := by
  unfold output1474
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1474_skip : Flapjack.WordAlloc.isSkip output1474 = false := by
  rw [output1474_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1475 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1474 input881)).val
theorem input1475_def : input1475 = (.seq input1474 input881) := by
  unfold input1475
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1475 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1474 output881)).val
theorem output1475_def : output1475 = (.seq output1474 output881) := by
  unfold output1475
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1475_skip : Flapjack.WordAlloc.isSkip output1475 = false := by
  rw [output1475_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1476 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1475 input878)).val
theorem input1476_def : input1476 = (.seq input1475 input878) := by
  unfold input1476
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1476 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1475 output878)).val
theorem output1476_def : output1476 = (.seq output1475 output878) := by
  unfold output1476
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1476_skip : Flapjack.WordAlloc.isSkip output1476 = false := by
  rw [output1476_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1477 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1476 input875)).val
theorem input1477_def : input1477 = (.seq input1476 input875) := by
  unfold input1477
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1477 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1476 output875)).val
theorem output1477_def : output1477 = (.seq output1476 output875) := by
  unfold output1477
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1477_skip : Flapjack.WordAlloc.isSkip output1477 = false := by
  rw [output1477_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1478 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1477 input872)).val
theorem input1478_def : input1478 = (.seq input1477 input872) := by
  unfold input1478
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1478 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1477 output872)).val
theorem output1478_def : output1478 = (.seq output1477 output872) := by
  unfold output1478
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1478_skip : Flapjack.WordAlloc.isSkip output1478 = false := by
  rw [output1478_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1479 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1478 input867)).val
theorem input1479_def : input1479 = (.seq input1478 input867) := by
  unfold input1479
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1479 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1478 output867)).val
theorem output1479_def : output1479 = (.seq output1478 output867) := by
  unfold output1479
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1479_skip : Flapjack.WordAlloc.isSkip output1479 = false := by
  rw [output1479_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1480 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1479 input866)).val
theorem input1480_def : input1480 = (.seq input1479 input866) := by
  unfold input1480
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1480 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1479 output866)).val
theorem output1480_def : output1480 = (.seq output1479 output866) := by
  unfold output1480
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1480_skip : Flapjack.WordAlloc.isSkip output1480 = false := by
  rw [output1480_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1481 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1480 input863)).val
theorem input1481_def : input1481 = (.seq input1480 input863) := by
  unfold input1481
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1481 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1480 output863)).val
theorem output1481_def : output1481 = (.seq output1480 output863) := by
  unfold output1481
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1481_skip : Flapjack.WordAlloc.isSkip output1481 = false := by
  rw [output1481_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1482 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1481 input860)).val
theorem input1482_def : input1482 = (.seq input1481 input860) := by
  unfold input1482
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1482 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1481 output860)).val
theorem output1482_def : output1482 = (.seq output1481 output860) := by
  unfold output1482
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1482_skip : Flapjack.WordAlloc.isSkip output1482 = false := by
  rw [output1482_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1483 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1482 input857)).val
theorem input1483_def : input1483 = (.seq input1482 input857) := by
  unfold input1483
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1483 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1482 output857)).val
theorem output1483_def : output1483 = (.seq output1482 output857) := by
  unfold output1483
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1483_skip : Flapjack.WordAlloc.isSkip output1483 = false := by
  rw [output1483_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1484 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1483 input854)).val
theorem input1484_def : input1484 = (.seq input1483 input854) := by
  unfold input1484
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1484 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1483 output854)).val
theorem output1484_def : output1484 = (.seq output1483 output854) := by
  unfold output1484
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1484_skip : Flapjack.WordAlloc.isSkip output1484 = false := by
  rw [output1484_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1485 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1484 input851)).val
theorem input1485_def : input1485 = (.seq input1484 input851) := by
  unfold input1485
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1485 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1484 output851)).val
theorem output1485_def : output1485 = (.seq output1484 output851) := by
  unfold output1485
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1485_skip : Flapjack.WordAlloc.isSkip output1485 = false := by
  rw [output1485_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1486 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1485 input848)).val
theorem input1486_def : input1486 = (.seq input1485 input848) := by
  unfold input1486
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1486 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1485 output848)).val
theorem output1486_def : output1486 = (.seq output1485 output848) := by
  unfold output1486
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1486_skip : Flapjack.WordAlloc.isSkip output1486 = false := by
  rw [output1486_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1487 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1486 input845)).val
theorem input1487_def : input1487 = (.seq input1486 input845) := by
  unfold input1487
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1487 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1486 output845)).val
theorem output1487_def : output1487 = (.seq output1486 output845) := by
  unfold output1487
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1487_skip : Flapjack.WordAlloc.isSkip output1487 = false := by
  rw [output1487_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1488 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1487 input842)).val
theorem input1488_def : input1488 = (.seq input1487 input842) := by
  unfold input1488
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1488 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1487 output842)).val
theorem output1488_def : output1488 = (.seq output1487 output842) := by
  unfold output1488
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1488_skip : Flapjack.WordAlloc.isSkip output1488 = false := by
  rw [output1488_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1489 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1488 input839)).val
theorem input1489_def : input1489 = (.seq input1488 input839) := by
  unfold input1489
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1489 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1488 output839)).val
theorem output1489_def : output1489 = (.seq output1488 output839) := by
  unfold output1489
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1489_skip : Flapjack.WordAlloc.isSkip output1489 = false := by
  rw [output1489_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1490 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1489 input834)).val
theorem input1490_def : input1490 = (.seq input1489 input834) := by
  unfold input1490
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1490 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1489 output834)).val
theorem output1490_def : output1490 = (.seq output1489 output834) := by
  unfold output1490
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1490_skip : Flapjack.WordAlloc.isSkip output1490 = false := by
  rw [output1490_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1491 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1490 input833)).val
theorem input1491_def : input1491 = (.seq input1490 input833) := by
  unfold input1491
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1491 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1490 output833)).val
theorem output1491_def : output1491 = (.seq output1490 output833) := by
  unfold output1491
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1491_skip : Flapjack.WordAlloc.isSkip output1491 = false := by
  rw [output1491_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1492 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1491 input830)).val
theorem input1492_def : input1492 = (.seq input1491 input830) := by
  unfold input1492
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1492 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1491 output830)).val
theorem output1492_def : output1492 = (.seq output1491 output830) := by
  unfold output1492
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1492_skip : Flapjack.WordAlloc.isSkip output1492 = false := by
  rw [output1492_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1493 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1492 input827)).val
theorem input1493_def : input1493 = (.seq input1492 input827) := by
  unfold input1493
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1493 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1492 output827)).val
theorem output1493_def : output1493 = (.seq output1492 output827) := by
  unfold output1493
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1493_skip : Flapjack.WordAlloc.isSkip output1493 = false := by
  rw [output1493_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1494 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1493 input824)).val
theorem input1494_def : input1494 = (.seq input1493 input824) := by
  unfold input1494
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1494 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1493 output824)).val
theorem output1494_def : output1494 = (.seq output1493 output824) := by
  unfold output1494
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1494_skip : Flapjack.WordAlloc.isSkip output1494 = false := by
  rw [output1494_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1495 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1494 input821)).val
theorem input1495_def : input1495 = (.seq input1494 input821) := by
  unfold input1495
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1495 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1494 output821)).val
theorem output1495_def : output1495 = (.seq output1494 output821) := by
  unfold output1495
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1495_skip : Flapjack.WordAlloc.isSkip output1495 = false := by
  rw [output1495_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1496 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1495 input818)).val
theorem input1496_def : input1496 = (.seq input1495 input818) := by
  unfold input1496
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1496 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1495 output818)).val
theorem output1496_def : output1496 = (.seq output1495 output818) := by
  unfold output1496
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1496_skip : Flapjack.WordAlloc.isSkip output1496 = false := by
  rw [output1496_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1497 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1496 input815)).val
theorem input1497_def : input1497 = (.seq input1496 input815) := by
  unfold input1497
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1497 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1496 output815)).val
theorem output1497_def : output1497 = (.seq output1496 output815) := by
  unfold output1497
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1497_skip : Flapjack.WordAlloc.isSkip output1497 = false := by
  rw [output1497_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1498 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1497 input812)).val
theorem input1498_def : input1498 = (.seq input1497 input812) := by
  unfold input1498
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1498 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1497 output812)).val
theorem output1498_def : output1498 = (.seq output1497 output812) := by
  unfold output1498
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1498_skip : Flapjack.WordAlloc.isSkip output1498 = false := by
  rw [output1498_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1499 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1498 input809)).val
theorem input1499_def : input1499 = (.seq input1498 input809) := by
  unfold input1499
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1499 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1498 output809)).val
theorem output1499_def : output1499 = (.seq output1498 output809) := by
  unfold output1499
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1499_skip : Flapjack.WordAlloc.isSkip output1499 = false := by
  rw [output1499_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1500 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1499 input806)).val
theorem input1500_def : input1500 = (.seq input1499 input806) := by
  unfold input1500
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1500 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1499 output806)).val
theorem output1500_def : output1500 = (.seq output1499 output806) := by
  unfold output1500
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1500_skip : Flapjack.WordAlloc.isSkip output1500 = false := by
  rw [output1500_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1501 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1500 input801)).val
theorem input1501_def : input1501 = (.seq input1500 input801) := by
  unfold input1501
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1501 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1500 output801)).val
theorem output1501_def : output1501 = (.seq output1500 output801) := by
  unfold output1501
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1501_skip : Flapjack.WordAlloc.isSkip output1501 = false := by
  rw [output1501_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1502 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1501 input800)).val
theorem input1502_def : input1502 = (.seq input1501 input800) := by
  unfold input1502
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1502 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1501 output800)).val
theorem output1502_def : output1502 = (.seq output1501 output800) := by
  unfold output1502
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1502_skip : Flapjack.WordAlloc.isSkip output1502 = false := by
  rw [output1502_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1503 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1502 input797)).val
theorem input1503_def : input1503 = (.seq input1502 input797) := by
  unfold input1503
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1503 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1502 output797)).val
theorem output1503_def : output1503 = (.seq output1502 output797) := by
  unfold output1503
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1503_skip : Flapjack.WordAlloc.isSkip output1503 = false := by
  rw [output1503_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1504 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1503 input794)).val
theorem input1504_def : input1504 = (.seq input1503 input794) := by
  unfold input1504
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1504 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1503 output794)).val
theorem output1504_def : output1504 = (.seq output1503 output794) := by
  unfold output1504
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1504_skip : Flapjack.WordAlloc.isSkip output1504 = false := by
  rw [output1504_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1505 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1504 input791)).val
theorem input1505_def : input1505 = (.seq input1504 input791) := by
  unfold input1505
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1505 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1504 output791)).val
theorem output1505_def : output1505 = (.seq output1504 output791) := by
  unfold output1505
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1505_skip : Flapjack.WordAlloc.isSkip output1505 = false := by
  rw [output1505_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1506 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1505 input788)).val
theorem input1506_def : input1506 = (.seq input1505 input788) := by
  unfold input1506
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1506 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1505 output788)).val
theorem output1506_def : output1506 = (.seq output1505 output788) := by
  unfold output1506
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1506_skip : Flapjack.WordAlloc.isSkip output1506 = false := by
  rw [output1506_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1507 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1506 input785)).val
theorem input1507_def : input1507 = (.seq input1506 input785) := by
  unfold input1507
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1507 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1506 output785)).val
theorem output1507_def : output1507 = (.seq output1506 output785) := by
  unfold output1507
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1507_skip : Flapjack.WordAlloc.isSkip output1507 = false := by
  rw [output1507_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1508 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1507 input782)).val
theorem input1508_def : input1508 = (.seq input1507 input782) := by
  unfold input1508
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1508 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1507 output782)).val
theorem output1508_def : output1508 = (.seq output1507 output782) := by
  unfold output1508
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1508_skip : Flapjack.WordAlloc.isSkip output1508 = false := by
  rw [output1508_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1509 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1508 input779)).val
theorem input1509_def : input1509 = (.seq input1508 input779) := by
  unfold input1509
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1509 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1508 output779)).val
theorem output1509_def : output1509 = (.seq output1508 output779) := by
  unfold output1509
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1509_skip : Flapjack.WordAlloc.isSkip output1509 = false := by
  rw [output1509_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1510 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1509 input776)).val
theorem input1510_def : input1510 = (.seq input1509 input776) := by
  unfold input1510
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1510 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1509 output776)).val
theorem output1510_def : output1510 = (.seq output1509 output776) := by
  unfold output1510
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1510_skip : Flapjack.WordAlloc.isSkip output1510 = false := by
  rw [output1510_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1511 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1510 input773)).val
theorem input1511_def : input1511 = (.seq input1510 input773) := by
  unfold input1511
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1511 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1510 output773)).val
theorem output1511_def : output1511 = (.seq output1510 output773) := by
  unfold output1511
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1511_skip : Flapjack.WordAlloc.isSkip output1511 = false := by
  rw [output1511_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1512 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1511 input768)).val
theorem input1512_def : input1512 = (.seq input1511 input768) := by
  unfold input1512
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1512 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1511 output768)).val
theorem output1512_def : output1512 = (.seq output1511 output768) := by
  unfold output1512
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1512_skip : Flapjack.WordAlloc.isSkip output1512 = false := by
  rw [output1512_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1513 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1512 input767)).val
theorem input1513_def : input1513 = (.seq input1512 input767) := by
  unfold input1513
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1513 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1512 output767)).val
theorem output1513_def : output1513 = (.seq output1512 output767) := by
  unfold output1513
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1513_skip : Flapjack.WordAlloc.isSkip output1513 = false := by
  rw [output1513_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1514 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1513 input764)).val
theorem input1514_def : input1514 = (.seq input1513 input764) := by
  unfold input1514
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1514 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1513 output764)).val
theorem output1514_def : output1514 = (.seq output1513 output764) := by
  unfold output1514
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1514_skip : Flapjack.WordAlloc.isSkip output1514 = false := by
  rw [output1514_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1515 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1514 input761)).val
theorem input1515_def : input1515 = (.seq input1514 input761) := by
  unfold input1515
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1515 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1514 output761)).val
theorem output1515_def : output1515 = (.seq output1514 output761) := by
  unfold output1515
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1515_skip : Flapjack.WordAlloc.isSkip output1515 = false := by
  rw [output1515_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1516 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1515 input758)).val
theorem input1516_def : input1516 = (.seq input1515 input758) := by
  unfold input1516
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1516 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1515 output758)).val
theorem output1516_def : output1516 = (.seq output1515 output758) := by
  unfold output1516
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1516_skip : Flapjack.WordAlloc.isSkip output1516 = false := by
  rw [output1516_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1517 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1516 input755)).val
theorem input1517_def : input1517 = (.seq input1516 input755) := by
  unfold input1517
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1517 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1516 output755)).val
theorem output1517_def : output1517 = (.seq output1516 output755) := by
  unfold output1517
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1517_skip : Flapjack.WordAlloc.isSkip output1517 = false := by
  rw [output1517_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1518 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1517 input752)).val
theorem input1518_def : input1518 = (.seq input1517 input752) := by
  unfold input1518
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1518 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1517 output752)).val
theorem output1518_def : output1518 = (.seq output1517 output752) := by
  unfold output1518
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1518_skip : Flapjack.WordAlloc.isSkip output1518 = false := by
  rw [output1518_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1519 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1518 input749)).val
theorem input1519_def : input1519 = (.seq input1518 input749) := by
  unfold input1519
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1519 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1518 output749)).val
theorem output1519_def : output1519 = (.seq output1518 output749) := by
  unfold output1519
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1519_skip : Flapjack.WordAlloc.isSkip output1519 = false := by
  rw [output1519_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1520 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1519 input746)).val
theorem input1520_def : input1520 = (.seq input1519 input746) := by
  unfold input1520
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1520 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1519 output746)).val
theorem output1520_def : output1520 = (.seq output1519 output746) := by
  unfold output1520
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1520_skip : Flapjack.WordAlloc.isSkip output1520 = false := by
  rw [output1520_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1521 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1520 input743)).val
theorem input1521_def : input1521 = (.seq input1520 input743) := by
  unfold input1521
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1521 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1520 output743)).val
theorem output1521_def : output1521 = (.seq output1520 output743) := by
  unfold output1521
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1521_skip : Flapjack.WordAlloc.isSkip output1521 = false := by
  rw [output1521_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1522 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1521 input740)).val
theorem input1522_def : input1522 = (.seq input1521 input740) := by
  unfold input1522
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1522 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1521 output740)).val
theorem output1522_def : output1522 = (.seq output1521 output740) := by
  unfold output1522
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1522_skip : Flapjack.WordAlloc.isSkip output1522 = false := by
  rw [output1522_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1523 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1522 input735)).val
theorem input1523_def : input1523 = (.seq input1522 input735) := by
  unfold input1523
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1523 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1522 output735)).val
theorem output1523_def : output1523 = (.seq output1522 output735) := by
  unfold output1523
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1523_skip : Flapjack.WordAlloc.isSkip output1523 = false := by
  rw [output1523_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1524 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1523 input734)).val
theorem input1524_def : input1524 = (.seq input1523 input734) := by
  unfold input1524
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1524 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1523 output734)).val
theorem output1524_def : output1524 = (.seq output1523 output734) := by
  unfold output1524
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1524_skip : Flapjack.WordAlloc.isSkip output1524 = false := by
  rw [output1524_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1525 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1524 input731)).val
theorem input1525_def : input1525 = (.seq input1524 input731) := by
  unfold input1525
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1525 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1524 output731)).val
theorem output1525_def : output1525 = (.seq output1524 output731) := by
  unfold output1525
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1525_skip : Flapjack.WordAlloc.isSkip output1525 = false := by
  rw [output1525_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1526 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1525 input728)).val
theorem input1526_def : input1526 = (.seq input1525 input728) := by
  unfold input1526
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1526 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1525 output728)).val
theorem output1526_def : output1526 = (.seq output1525 output728) := by
  unfold output1526
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1526_skip : Flapjack.WordAlloc.isSkip output1526 = false := by
  rw [output1526_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1527 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1526 input725)).val
theorem input1527_def : input1527 = (.seq input1526 input725) := by
  unfold input1527
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1527 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1526 output725)).val
theorem output1527_def : output1527 = (.seq output1526 output725) := by
  unfold output1527
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1527_skip : Flapjack.WordAlloc.isSkip output1527 = false := by
  rw [output1527_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1528 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1527 input722)).val
theorem input1528_def : input1528 = (.seq input1527 input722) := by
  unfold input1528
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1528 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1527 output722)).val
theorem output1528_def : output1528 = (.seq output1527 output722) := by
  unfold output1528
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1528_skip : Flapjack.WordAlloc.isSkip output1528 = false := by
  rw [output1528_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1529 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1528 input719)).val
theorem input1529_def : input1529 = (.seq input1528 input719) := by
  unfold input1529
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1529 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1528 output719)).val
theorem output1529_def : output1529 = (.seq output1528 output719) := by
  unfold output1529
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1529_skip : Flapjack.WordAlloc.isSkip output1529 = false := by
  rw [output1529_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1530 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1529 input716)).val
theorem input1530_def : input1530 = (.seq input1529 input716) := by
  unfold input1530
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1530 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1529 output716)).val
theorem output1530_def : output1530 = (.seq output1529 output716) := by
  unfold output1530
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1530_skip : Flapjack.WordAlloc.isSkip output1530 = false := by
  rw [output1530_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1531 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1530 input713)).val
theorem input1531_def : input1531 = (.seq input1530 input713) := by
  unfold input1531
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1531 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1530 output713)).val
theorem output1531_def : output1531 = (.seq output1530 output713) := by
  unfold output1531
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1531_skip : Flapjack.WordAlloc.isSkip output1531 = false := by
  rw [output1531_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1532 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1531 input710)).val
theorem input1532_def : input1532 = (.seq input1531 input710) := by
  unfold input1532
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1532 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1531 output710)).val
theorem output1532_def : output1532 = (.seq output1531 output710) := by
  unfold output1532
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1532_skip : Flapjack.WordAlloc.isSkip output1532 = false := by
  rw [output1532_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1533 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1532 input707)).val
theorem input1533_def : input1533 = (.seq input1532 input707) := by
  unfold input1533
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1533 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1532 output707)).val
theorem output1533_def : output1533 = (.seq output1532 output707) := by
  unfold output1533
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1533_skip : Flapjack.WordAlloc.isSkip output1533 = false := by
  rw [output1533_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1534 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1533 input702)).val
theorem input1534_def : input1534 = (.seq input1533 input702) := by
  unfold input1534
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1534 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1533 output702)).val
theorem output1534_def : output1534 = (.seq output1533 output702) := by
  unfold output1534
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1534_skip : Flapjack.WordAlloc.isSkip output1534 = false := by
  rw [output1534_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1535 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1534 input701)).val
theorem input1535_def : input1535 = (.seq input1534 input701) := by
  unfold input1535
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1535 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1534 output701)).val
theorem output1535_def : output1535 = (.seq output1534 output701) := by
  unfold output1535
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1535_skip : Flapjack.WordAlloc.isSkip output1535 = false := by
  rw [output1535_def]
  kernel_rfl



end InitECandidate.Proofs.DeadStages233.Parallel
