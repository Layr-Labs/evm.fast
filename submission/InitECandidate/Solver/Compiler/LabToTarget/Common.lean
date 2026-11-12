import InitECandidate.Solver.Compiler.LabToTarget.Step
import Flapjack.Compiler.Backend.LabToTarget.CompileCorrect.Common
import Flapjack.Compiler.Backend.LabToTarget.Navigation

/-!
# Bounded `compile_correct`: statement shape and the composition step

`CompileCorrectForB bound q L S Q s1` is Flapjack's `CompileCorrectFor S Q s1`
(`Flapjack/Compiler/Backend/LabToTarget/CompileCorrect/Common.lean`) with

* `encoderCorrect mc.target` strengthened to `encoderCorrectBounded mc.target bound`,
* the extra hypothesis `StepCostOk bound q L mc code2` (every instruction takes at most
  `(encode i).length / q` machine steps, every target line is at most `L` bytes long, and the
  target code contains no `Install`), and
* the target clock made explicit and bounded: the target run uses `k + e` clock where
  `k + B * s2.clock ≤ B * s1.clock + H` with `B = L / q + 1` and `H = L / q`, for the
  residual clock `e = 0` if the source result is `TimeOut` and any `e ≠ 0` otherwise.

So `k` (target steps proper) is at most `B` per executed source instruction (source clock
consumed `s1.clock - s2.clock`), plus `H` for the final `Halt` / FFI-`final` line; the
residual `e = 1` covers the final halt/FFI-entry transition of `evaluateTargetHOL`.
-/

namespace InitECandidate.Solver.Compiler.LabToTarget

open Flapjack Flapjack.Compiler.Encoders Flapjack.Compiler.Encoders.Asm
open Flapjack.Compiler.Encoders.AsmSem Flapjack.Compiler.Encoders.AsmProps
open Flapjack.Compiler.Backend.LabSem Flapjack.Compiler.Backend.Semantics.TargetProps
open Flapjack.Compiler.Backend Flapjack.Compiler.Backend.LabLang Flapjack.Compiler.Backend.LabToTarget
open InitECandidate.Solver.EncoderBound

set_option autoImplicit false

/-- Consecutive source PCs are at most `L` bytes apart in the target code: every executed
target line (instruction plus NOP padding) has at most `L` bytes. -/
def PosStepBounded {width : Nat} [NeZero width] (L : Nat) (code2 : LabProgHOL width) : Prop :=
  ∀ pc, posVal (pc + 1) 0 code2 ≤ posVal pc 0 code2 + L

/-- The cost hypotheses of the bounded theorem: `q > 0` bytes per machine step of every
encoded instruction (RISC-V: `q = 4`, `bound = riscvStepBound`), at most `L` bytes per
target line, and no `Install` in the target code. -/
def StepCostOk {width : Nat} [NeZero width] {S Q : Type} (bound : HolAsm width → Nat)
    (q L : Nat) (mc : MachineConfig width S Q) (code2 : LabProgHOL width) : Prop :=
  0 < q ∧ (∀ i, q * (bound i + 1) ≤ (mc.target.config.encode i).length) ∧
    LabProps.noInstall code2 ∧ PosStepBounded L code2

/-- Bounded `CompileCorrectFor`. Per-instruction cost `L / q + 1`, final-line cost `L / q`. -/
def CompileCorrectForB {width : Nat} [NeZero width] (bound : HolAsm width → Nat) (q L : Nat)
    (S Q : Type) {F : Type} (s1 : LabSem.State width Config F) : Prop :=
  ∀ (res : MachineResult) (mc : MachineConfig width S Q) (s2 : LabSem.State width Config F)
    (code2 : LabProgHOL width) (labs : Spt (Spt Nat)) (t1 : AsmState width) (ms1 : S)
    (p : BitVec width),
    oracleTie mc ms1 s1 ∧ evaluate s1 = (res, s2) ∧ res ≠ .error ∧
      encoderCorrectBounded mc.target bound ∧ stateRel (mc, code2, labs, p) s1 t1 ms1 ∧
      StepCostOk bound q L mc code2 →
    ∃ k ms2, k + (L / q + 1) * s2.clock ≤ (L / q + 1) * s1.clock + L / q ∧
      ∀ e, (res = .timeOut ↔ e = 0) →
        evaluateTargetHOL mc s1.ffi (k + e) ms1 = (res, ms2, s2.ffi)

/-- A target line of `n ≤ L` bytes (by `PosStepBounded`) simulated in `l` steps with
`q * l ≤ n` costs at most `L / q` steps. -/
theorem lineSteps_le {width : Nat} [NeZero width] {S Q : Type} {bound : HolAsm width → Nat}
    {q L : Nat} {mc : MachineConfig width S Q} {code2 : LabProgHOL width} {pc n l : Nat}
    (hcost : StepCostOk bound q L mc code2)
    (hpos : posVal (pc + 1) 0 code2 = posVal pc 0 code2 + n) (hql : q * l ≤ n) :
    l ≤ L / q := by
  have hn : n ≤ L := by have := hcost.2.2.2 pc; omega
  exact (Nat.le_div_iff_mul_le hcost.1).mpr (by rw [Nat.mul_comm]; omega)

/-- Clock arithmetic of one source step costing `l ≤ B` target steps. -/
theorem clockBound_step {B H k c c' c2 l : Nat} (hc : c' = c - 1) (hc0 : c ≠ 0)
    (hb : k + B * c2 ≤ B * c' + H) (hl : l ≤ B) : k + l + B * c2 ≤ B * c + H := by
  have e : B * c = B * c' + B := by rw [hc, ← Nat.mul_succ]; congr 1; omega
  rw [e]
  omega

/-- Clock arithmetic of a final source step (`Halt`, FFI `final`) costing `l ≤ A`
target steps without consuming source clock. -/
theorem clockBound_final {A B c l : Nat} (hl : l ≤ A) : l + B * c ≤ B * c + A := by
  omega

/-- Bounded `compileCorrect_step`: one simulated target step of `l ≤ L / q` machine
steps followed by the induction hypothesis for the next source state. -/
theorem compileCorrect_step_bounded {width : Nat} [NeZero width] {S Q F : Type}
    {bound : HolAsm width → Nat} {q L : Nat}
    {mc : MachineConfig width S Q} {code2 : LabProgHOL width} {labs : Spt (Spt Nat)}
    {p : BitVec width} {s1 s1' s2 : LabSem.State width Config F} {t1' : AsmState width}
    {ms1 ms2 : S} {res : MachineResult} {l : Nat}
    (ht : oracleTie mc ms1 s1) (hec : encoderCorrectBounded mc.target bound)
    (hcost : StepCostOk bound q L mc code2) (hclock : s1.clock ≠ 0)
    (hl : ∀ k, evaluateTargetHOL mc s1.ffi (k + l) ms1 =
        evaluateTargetHOL (shiftInterfer l mc) s1.ffi k ms2 ∧
      findNextInterference mc s1.ffi (k + l) ms1 =
        findNextInterference (shiftInterfer l mc) s1.ffi k ms2)
    (hlB : l ≤ L / q)
    (hs' : s1'.clock = s1.clock - 1 ∧ s1'.ffi = s1.ffi ∧ s1'.ioRegs = s1.ioRegs ∧
      s1'.ioFpRegs = s1.ioFpRegs ∧ s1'.ccRegs = s1.ccRegs ∧ s1'.ccFpRegs = s1.ccFpRegs)
    (hrel' : stateRel (shiftInterfer l mc, code2, labs, p) s1' t1' ms2)
    (hev : evaluate s1' = (res, s2)) (hres : res ≠ .error)
    (ih : CompileCorrectForB bound q L S Q s1') :
    ∃ k ms3, k + (L / q + 1) * s2.clock ≤ (L / q + 1) * s1.clock + L / q ∧
      ∀ e, (res = .timeOut ↔ e = 0) →
        evaluateTargetHOL mc s1.ffi (k + e) ms1 = (res, ms3, s2.ffi) := by
  obtain ⟨hc, hffi, hio, hiofp, hcc, hccfp⟩ := hs'
  have ht' : oracleTie (shiftInterfer l mc) ms2 s1' :=
    oracleTie_step mc ms1 ms2 s1 s1' l ⟨ht, fun k => (hl k).2, hio, hiofp, hcc, hccfp, hffi⟩
  obtain ⟨k', ms3, hb, hk⟩ := ih res (shiftInterfer l mc) s2 code2 labs t1' ms2 p
    ⟨ht', hev, hres, hec, hrel', hcost⟩
  refine ⟨k' + l, ms3, clockBound_step hc hclock hb (Nat.le_succ_of_le hlB), fun e he => ?_⟩
  rw [show k' + l + e = (k' + e) + l by omega, (hl _).1, ← hffi]
  exact hk e he

/-- A source state whose evaluation is an `Error` satisfies the conclusion vacuously. -/
theorem compileCorrectB_error {width : Nat} [NeZero width] {S Q F : Type}
    {bound : HolAsm width → Nat} {q L : Nat}
    (s1 : LabSem.State width Config F) (h : evaluate s1 = (.error, s1)) :
    CompileCorrectForB bound q L S Q s1 := by
  rintro res mc s2 code2 labs t1 ms1 p ⟨-, hev, hres, -, -, -⟩
  rw [h] at hev
  exact absurd (Prod.mk.inj hev).1.symm hres

/-- A timed-out source state is matched by the target with no clock at all. -/
theorem compileCorrectB_timeOut {width : Nat} [NeZero width] {S Q F : Type}
    {bound : HolAsm width → Nat} {q L : Nat}
    (s1 : LabSem.State width Config F) (hc : s1.clock = 0) :
    CompileCorrectForB bound q L S Q s1 := by
  rintro res mc s2 code2 labs t1 ms1 p ⟨-, hev, -, -, -, -⟩
  rw [evaluate, if_pos hc] at hev
  obtain ⟨rfl, rfl⟩ := Prod.mk.inj hev
  refine ⟨0, ms1, by rw [Nat.zero_add]; exact Nat.le_add_right _ _, fun e he => ?_⟩
  obtain rfl : e = 0 := he.mp rfl
  rfl

/-- The `Install` case is vacuous: `StepCostOk` excludes `Install` from the target code,
and the fetched source line is similar to the target line at the same PC. -/
theorem compileCorrectB_install {width : Nat} [NeZero width] {S Q F : Type}
    {bound : HolAsm width → Nat} {q L : Nat}
    (s1 : LabSem.State width Config F) (w : BitVec width) (bytes : List (BitVec 8)) (n : Nat)
    (hfetch : asmFetch s1 = some (.labAsm .install w bytes n)) :
    CompileCorrectForB bound q L S Q s1 := by
  rintro res mc s2 code2 labs t1 ms1 p ⟨-, -, -, -, hrel, hcost⟩
  obtain ⟨-, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -,
    -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, c49, -⟩ := hrel
  have hfj := codeSimilar_asmFetchAux s1.pc s1.code code2 c49
  rw [show asmFetchAux s1.pc s1.code = asmFetch s1 from rfl, hfetch] at hfj
  obtain ⟨j, hj, hsimj⟩ : ∃ j, asmFetchAux s1.pc code2 = some j ∧
      lineSimilar (.labAsm .install w bytes n) j := by
    revert hfj
    cases asmFetchAux s1.pc code2 with
    | none => intro h; cases h
    | some j => intro h; cases h; exact ⟨j, rfl, by assumption⟩
  cases j with
  | label => exact hsimj.elim
  | asm => exact hsimj.elim
  | labAsm a w' b' l' =>
    simp only [lineSimilar] at hsimj
    subst hsimj
    exact absurd hj (hcost.2.2.1 s1.pc w' b' l')

end InitECandidate.Solver.Compiler.LabToTarget
