import InitECandidate.Solver.Compiler.LabToTarget.Asm
import InitECandidate.Solver.Compiler.LabToTarget.Control
import InitECandidate.Solver.Compiler.LabToTarget.Cbw
import InitECandidate.Solver.Compiler.LabToTarget.ShareMem
import InitECandidate.Solver.Compiler.LabToTarget.CallFfi
import Flapjack.Compiler.Backend.LabToTarget.CompileCorrect.Assembly

/-!
# Bounded `compile_correct` (lab → target)

`compileCorrectForB_all` is Flapjack's `compileCorrectFor_all`
(`Flapjack/Compiler/Backend/LabToTarget/CompileCorrect/Assembly.lean`): the bounded cases
combined by strong induction on the source clock. `compileCorrect_bounded` is the bounded
counterpart of Flapjack's `compileCorrect`.
-/

namespace InitECandidate.Solver.Compiler.LabToTarget

open Flapjack Flapjack.Compiler.Encoders Flapjack.Compiler.Encoders.Asm
open Flapjack.Compiler.Encoders.AsmSem Flapjack.Compiler.Encoders.AsmProps
open Flapjack.Compiler.Backend.LabSem Flapjack.Compiler.Backend.Semantics.TargetProps
open Flapjack.Compiler.Backend Flapjack.Compiler.Backend.LabLang Flapjack.Compiler.Backend.LabToTarget
open InitECandidate.Solver.EncoderBound

set_option autoImplicit false

/-- Every source state satisfies the bounded `compile_correct` conclusion (Flapjack's
`compileCorrectFor_all`, case for case). -/
theorem compileCorrectForB_all {width : Nat} [NeZero width] {S Q F : Type}
    (bound : HolAsm width → Nat) (q L : Nat)
    (s1 : LabSem.State width Config F) : CompileCorrectForB bound q L S Q s1 := by
  induction hcl : s1.clock using Nat.strong_induction_on generalizing s1 with
  | _ c ihc =>
  have IH : ∀ s' : LabSem.State width Config F, s'.clock < s1.clock →
      CompileCorrectForB bound q L S Q s' := fun s' hs => ihc _ (hcl ▸ hs) s' rfl
  by_cases hc : s1.clock = 0
  · exact compileCorrectB_timeOut s1 hc
  have herr : ∀ (h : evaluate s1 = (.error, s1)), CompileCorrectForB bound q L S Q s1 :=
    compileCorrectB_error s1
  cases hf : asmFetch s1 with
  | none => exact herr (by rw [evaluate]; simp [hc, hf])
  | some line =>
  cases line with
  | label => exact herr (by rw [evaluate]; simp [hc, hf])
  | asm a bytes n =>
    cases a with
    | asmi i =>
      cases i with
      | inst ins =>
        exact compileCorrectB_asmInst s1 ins bytes n hc hf fun _ => IH _ (by
          obtain ⟨-, -, hcl', -⟩ := asmInstConsts ins s1
          simp [incPc, decClock, hcl']; omega)
      | jumpReg r =>
        exact compileCorrectB_jumpReg s1 r bytes n hc hf fun _ _ _ _ _ => IH _ (by
          simp [LabSem.updPc, decClock]; omega)
      | _ => exact herr (by rw [evaluate]; simp [hc, hf])
    | cbw r1 r2 =>
      exact compileCorrectB_cbw s1 r1 r2 bytes n hc hf fun _ _ _ _ _ _ => IH _ (by
        simp [incPc, decClock]; omega)
    | shareMem m r ad =>
      exact compileCorrectB_shareMem s1 m r ad bytes n hc hf fun ffi' bs s' hs => IH _ (by
        have := shareMemOp_ret_clock m r ad s1 s' ffi' bs hs
        simp only; omega)
  | labAsm a w bytes n =>
    cases a with
    | jump jt =>
      exact compileCorrectB_jump s1 jt w bytes n hc hf fun _ _ => IH _ (by
        simp [LabSem.updPc, decClock]; omega)
    | jumpCmp cmp rr ri jt =>
      exact compileCorrectB_jumpCmp s1 cmp rr ri jt w bytes n hc hf
        (fun _ => IH _ (by simp [incPc, decClock]; omega))
        (fun _ _ _ => IH _ (by simp [LabSem.updPc, decClock]; omega))
    | call lab => exact compileCorrectB_call s1 lab w bytes n hf
    | locValue reg lab =>
      exact compileCorrectB_locValue s1 reg lab w bytes n hc hf fun _ => IH _ (by
        simp [incPc, decClock, LabSem.updReg]; omega)
    | install => exact compileCorrectB_install s1 w bytes n hf
    | callFFI name =>
      exact compileCorrectB_callFFI s1 name w bytes n hc hf
        fun _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ => IH _ (by simp only; omega)
    | halt => exact compileCorrectB_halt s1 w bytes n hc hf

/-- **Bounded `compile_correct`** (Flapjack's `compileCorrect`, with
`encoderCorrect mc.target` strengthened to `encoderCorrectBounded mc.target bound` and the
cost hypotheses `StepCostOk bound q L mc code2`).

The target run spends `k` evaluator steps proper, where
`k ≤ (L / q + 1) * (s1.clock - s2.clock) + L / q`
(`s1.clock - s2.clock` = source clock consumed = number of executed lab instructions other
than the final `Halt` / FFI-`final` one), plus a residual clock `e`: with `e = 0` for a
`TimeOut` result and with any `e ≠ 0` (in particular `e = 1`) for a `Halt` result, the target
evaluator returns the same result and final FFI state. -/
theorem compileCorrect_bounded {width : Nat} [NeZero width] {S Q F : Type}
    (bound : HolAsm width → Nat) (q L : Nat)
    (p : BitVec width) (s1 : LabSem.State width Config F)
    (res : MachineResult) (mc : MachineConfig width S Q)
    (s2 : LabSem.State width Config F) (code2 : LabProgHOL width)
    (labs : Spt (Spt Nat)) (t1 : AsmState width) (ms1 : S) :
    oracleTie mc ms1 s1 ∧ evaluate s1 = (res, s2) ∧ res ≠ .error ∧
      encoderCorrectBounded mc.target bound ∧ stateRel (mc, code2, labs, p) s1 t1 ms1 ∧
      StepCostOk bound q L mc code2 →
    ∃ (k : Nat) (ms2 : S), k ≤ (L / q + 1) * (s1.clock - s2.clock) + L / q ∧
      ∀ e, (res = .timeOut ↔ e = 0) →
        evaluateTargetHOL mc s1.ffi (k + e) ms1 = (res, ms2, s2.ffi) := by
  intro h
  obtain ⟨k, ms2, hb, hk⟩ := compileCorrectForB_all bound q L s1 res mc s2 code2 labs t1 ms1 p h
  refine ⟨k, ms2, ?_, hk⟩
  rw [Nat.mul_sub]
  omega

/-- Halting form of `compileCorrect_bounded`: a source run ending in `Halt outcome` is
matched by a halting target run of at most `(L / q + 1) * (s1.clock - s2.clock) + L / q + 1`
evaluator steps, and by every larger clock. -/
theorem compileCorrect_bounded_halt {width : Nat} [NeZero width] {S Q F : Type}
    (bound : HolAsm width → Nat) (q L : Nat)
    (p : BitVec width) (s1 : LabSem.State width Config F)
    (outcome : HolOutcome) (mc : MachineConfig width S Q)
    (s2 : LabSem.State width Config F) (code2 : LabProgHOL width)
    (labs : Spt (Spt Nat)) (t1 : AsmState width) (ms1 : S)
    (h : oracleTie mc ms1 s1 ∧ evaluate s1 = (.halt outcome, s2) ∧
      encoderCorrectBounded mc.target bound ∧ stateRel (mc, code2, labs, p) s1 t1 ms1 ∧
      StepCostOk bound q L mc code2) :
    ∃ (N : Nat) (ms2 : S), N ≤ (L / q + 1) * (s1.clock - s2.clock) + L / q + 1 ∧
      ∀ N', N ≤ N' →
        evaluateTargetHOL mc s1.ffi N' ms1 = (.halt outcome, ms2, s2.ffi) := by
  obtain ⟨ht, hev, hec, hrel, hcost⟩ := h
  obtain ⟨k, ms2, hb, hk⟩ := compileCorrect_bounded bound q L p s1 (.halt outcome) mc s2 code2
    labs t1 ms1 ⟨ht, hev, (by intro h; cases h), hec, hrel, hcost⟩
  refine ⟨k + 1, ms2, by omega, fun N' hN' => ?_⟩
  obtain ⟨e, rfl⟩ : ∃ e, N' = k + e := ⟨N' - k, by omega⟩
  exact hk e ⟨fun h => (by cases h), fun h => absurd h (by omega)⟩

end InitECandidate.Solver.Compiler.LabToTarget
