import InitECandidate.Solver.Compiler.LabToTarget.Common
import Flapjack.Compiler.Backend.LabToTarget.EncodingValidity
import Flapjack.Compiler.Backend.LabToTarget.PositionAppend

/-!
# Discharging `StepCostOk` from checkable code facts

* `LinesBounded L code2`: every target line carries at most `L` bytes (a finite check over
  the concrete `removeLabels` output).
* `posStepBounded_of_linesBounded`: with the zero-length labels guaranteed by `allEncOk`
  (part of `stateRel`), `LinesBounded L code2` gives `PosStepBounded L code2`.
* `noInstall_of_codeSimilar`: `noInstall` transfers from the source lab code to the
  similar target code.
-/

namespace InitECandidate.Solver.Compiler.LabToTarget

open Flapjack Flapjack.Compiler.Encoders.Asm
open Flapjack.Compiler.Backend.LabSem
open Flapjack.Compiler.Backend Flapjack.Compiler.Backend.LabLang Flapjack.Compiler.Backend.LabToTarget
open Flapjack.Compiler.Backend.LabProps

set_option autoImplicit false

/-- Every target line (instruction encoding plus NOP padding) has at most `L` bytes. -/
def LinesBounded {width : Nat} [NeZero width] (L : Nat) (code : LabProgHOL width) : Prop :=
  ∀ sec ∈ code, ∀ line ∈ sec.lines, (lineBytes line).length ≤ L

/-- Boolean checker for `LinesBounded`, for kernel evaluation on a concrete target program
(e.g. next to the `allEncOkLight conf padded = true` check of a concrete `removeLabels` run). -/
def linesBoundedB {width : Nat} [NeZero width] (L : Nat) (code : LabProgHOL width) : Bool :=
  code.all fun sec => sec.lines.all fun line => decide ((lineBytes line).length ≤ L)

theorem linesBounded_of_linesBoundedB {width : Nat} [NeZero width] (L : Nat)
    (code : LabProgHOL width) (h : linesBoundedB L code = true) : LinesBounded L code := by
  intro sec hsec line hline
  simp only [linesBoundedB, List.all_eq_true, decide_eq_true_eq] at h
  exact h sec hsec line hline

theorem posStepBounded_aux {width : Nat} [NeZero width] (L : Nat) (code : LabProgHOL width) :
    (∀ sec ∈ code, secLabelZero sec) → LinesBounded L code →
    ∀ i pos, posVal (i + 1) pos code ≤ posVal i pos code + L := by
  induction code with
  | nil => intro _ _ i pos; simp [posVal]
  | cons sec code ih =>
    rcases sec with ⟨k, lines⟩
    intro h hL
    have htail : ∀ sec ∈ code, secLabelZero sec := fun sec hm => h sec (by simp [hm])
    have hLtail : LinesBounded L code := fun sec hm => hL sec (by simp [hm])
    have hlines : ∀ line ∈ lines, labelZero line := h ⟨k, lines⟩ (by simp)
    have hLlines : ∀ line ∈ lines, (lineBytes line).length ≤ L := hL ⟨k, lines⟩ (by simp)
    clear h hL
    induction lines with
    | nil => intro i pos; simp only [posVal]; exact ih htail hLtail i pos
    | cons line lines ihLines =>
      have hhead := hlines line (by simp)
      have hLhead := hLlines line (by simp)
      have ht : ∀ line ∈ lines, labelZero line := fun line hm => hlines line (by simp [hm])
      have hLt : ∀ line ∈ lines, (lineBytes line).length ≤ L :=
        fun line hm => hLlines line (by simp [hm])
      have hzero : ∀ pos, posVal 0 pos (⟨k, lines⟩ :: code) = pos := fun pos =>
        secLabelZero_posVal_zero _ pos (by
          intro sec hm
          rcases List.mem_cons.mp hm with rfl | hm
          · exact ht
          · exact htail sec hm)
      intro i pos
      cases line with
      | label sid lid n =>
        simp only [labelZero] at hhead
        subst n
        simp only [posVal, isLabelHOL, ↓reduceIte, lineLength, Nat.add_zero]
        exact ihLines ht hLt i pos
      | asm b bytes l =>
        simp only [lineBytes] at hLhead
        simp only [posVal, isLabelHOL, Bool.false_eq_true, ↓reduceIte, lineLength,
          Nat.add_one_ne_zero, Nat.add_sub_cancel]
        by_cases hi : i = 0
        · subst hi; simp only [↓reduceIte, hzero]; omega
        · simp only [hi, ↓reduceIte]
          have := ihLines ht hLt (i - 1) (pos + bytes.length)
          rwa [show i - 1 + 1 = i by omega] at this
      | labAsm a w bytes l =>
        simp only [lineBytes] at hLhead
        simp only [posVal, isLabelHOL, Bool.false_eq_true, ↓reduceIte, lineLength,
          Nat.add_one_ne_zero, Nat.add_sub_cancel]
        by_cases hi : i = 0
        · subst hi; simp only [↓reduceIte, hzero]; omega
        · simp only [hi, ↓reduceIte]
          have := ihLines ht hLt (i - 1) (pos + bytes.length)
          rwa [show i - 1 + 1 = i by omega] at this

/-- `LinesBounded L code2` and `allEncOk` (from `stateRel`) give `PosStepBounded L code2`. -/
theorem posStepBounded_of_linesBounded {width : Nat} [NeZero width] (L : Nat)
    (code2 : LabProgHOL width) (c : AsmConfigExact width) (labs : Spt (Spt Nat))
    (ffis : List HolFfiName) (n : Nat) (henc : allEncOk c labs ffis n code2)
    (hL : LinesBounded L code2) : PosStepBounded L code2 := fun pc =>
  posStepBounded_aux L code2 (allEncOk_implies_secLabelZero c labs ffis n code2 henc) hL pc 0

/-- `noInstall` of the source lab code transfers to similar target code. -/
theorem noInstall_of_codeSimilar {width : Nat} [NeZero width] (code code2 : LabProgHOL width)
    (hsim : codeSimilar code code2) (hni : noInstall code) : noInstall code2 := by
  intro pc w bytes l hj
  have hfj := codeSimilar_asmFetchAux pc code code2 hsim
  rw [hj] at hfj
  revert hfj
  cases hf : asmFetchAux pc code with
  | none => intro h; cases h
  | some j =>
    intro h
    cases h with
    | some hsimj =>
      cases j with
      | label => exact hsimj.elim
      | asm => exact hsimj.elim
      | labAsm a w' b' l' =>
        simp only [lineSimilar] at hsimj
        subst hsimj
        exact hni pc w' b' l' hf

/-- `StepCostOk` from its checkable ingredients and the state relation. -/
theorem stepCostOk_of_stateRel {width : Nat} [NeZero width] {S Q F : Type}
    (bound : HolAsm width → Nat) (q L : Nat) (mc : MachineConfig width S Q)
    (code2 : LabProgHOL width) (labs : Spt (Spt Nat)) (p : BitVec width)
    (s : LabSem.State width Config F) (t : AsmState width) (ms : S)
    (hrel : stateRel (mc, code2, labs, p) s t ms) (hq0 : 0 < q)
    (hq : ∀ i, q * (bound i + 1) ≤ (mc.target.config.encode i).length)
    (hni : noInstall s.code) (hL : LinesBounded L code2) :
    StepCostOk bound q L mc code2 := by
  obtain ⟨-, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -,
    -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, c47, -, c49, -⟩ := hrel
  exact ⟨hq0, hq, noInstall_of_codeSimilar _ _ c49 hni,
    posStepBounded_of_linesBounded L code2 _ _ _ _ c47 hL⟩

end InitECandidate.Solver.Compiler.LabToTarget
