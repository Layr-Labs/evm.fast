import InitECandidate.Solver.Compiler.Flatten.Induction
import Flapjack.Compiler.Backend.StackToLab.Proofs.FlattenSemantics

/-!
# Bounded `flatten_call_correct` and the semantics-level entry runs

Bounded counterparts of Flapjack's `flattenCallCorrect`
(`StackToLab/Proofs/FlattenCallCorrect.lean`) and `stackRunsSim`
(`StackToLab/Proofs/FlattenSemantics.lean`), and the halting form consumed by the
lab → target bound: a whole StackSem call of the start procedure from clock `k` that ends in a
complete result (halt / final FFI / return to the halting procedure `1`) is matched by a
halting LabSem run from clock `k - 1 + ck` with

  `ck ≤ (2 * S + 2) * (k - 1 - s2.clock) + 4 * S`

(`k - 1 - s2.clock` = StackSem ticks consumed by the start procedure's body, i.e. the call's
total `Δ = k - s2.clock` minus the call's own tick; `4 * S` covers the body's and the halting
procedure's straight-line code), and the LabSem run ends with at least `s2.clock` left.
-/

namespace InitECandidate.Solver.Compiler.Flatten

open Flapjack hiding flattenHOL findLabHOL
open Flapjack.Compiler.Backend Flapjack.Compiler.Backend.StackToLab.Proofs
open Flapjack.Compiler.Backend.StackToLab (flattenHOL findLabHOL negateHOL compileJumpHOL isSeqHOL
  progToSectionHOL stackIsSkip)
open Flapjack.Compiler.Backend.LabLang Flapjack.Compiler.Backend.LabSem
open Flapjack.Compiler.Encoders.Asm Flapjack.Compiler.Backend.StackLang
open Flapjack.Compiler.Backend.StackToLab.Proofs.CodeInstalled
open Flapjack.Compiler.Backend.StackToLab.Proofs.StateRel
open Flapjack.Compiler.Backend.StackToLab.Proofs.FlattenHelpers
open Flapjack.Compiler.Backend.StackToLab.Proofs.FlattenCorrect
open Flapjack.Compiler.Backend.StackToLab.Proofs.FlattenCallCorrect
open Flapjack.Compiler.Backend.StackToLab.Proofs.FlattenSemantics

set_option autoImplicit false

/-- Bounded `flatten_call_correct`: Flapjack's `flattenCallCorrect` with `CodeBounded S s1`,
the witness bounded by `(2 * S + 2) * (s1.clock - 1 - s2.clock) + 4 * S`, and, unless the run
times out, at least the StackSem clock left at the LabSem halt. -/
theorem flattenCallCorrect_bounded {width : Nat} [NeZero width] {C F : Type} {S start : Nat}
    {s1 s2 : StackSemStateFiniteExact width C F} {res : Option (StackSemResult width)}
    {t1 : Flapjack.Compiler.Backend.LabSem.State width C F} :
    StackSemEvaluate.evaluate ((.call none (.inl start) none : HolProg width), s1) = (res, s2) ∧
    stateRel s1 t1 ∧
    locToPc start 0 t1.code = some t1.pc ∧
    res ≠ some .error ∧
    (res ≠ some .timeOut →
      (∃ w : BitVec width, res = some (.halt (.word w))) ∨
      (∃ f, res = some (.finalFFI f)) ∨
      (∃ n, res = some (.result (.loc n 0)) ∧
        ∀ s : StackSemStateFiniteExact width C F, sptSubspt s1.code s.code ∧ s.clock ≠ 0 →
          ∃ t, StackSemEvaluate.evaluate ((.call none (.inl n) none : HolProg width), s) =
              (some (.halt (.word 0)), t) ∧
            t.ffi = s.ffi ∧ t.clock = s.clock - 1)) →
    CodeBounded S s1 →
    ∃ (ck : Nat) (r2 : MachineResult) (t2 : Flapjack.Compiler.Backend.LabSem.State width C F),
      ck ≤ (2 * S + 2) * (s1.clock - 1 - s2.clock) + 4 * S ∧
      evaluate { t1 with clock := t1.clock - 1 + ck } = (r2, t2) ∧
      (∀ f, res = some (.finalFFI f) → r2 = .halt (.ffiOutcome f)) ∧
      (∀ w, res = some (.halt w) → r2 =
        match w with
        | .word w => if w = 0 then .halt .success else .halt .resourceLimitHit
        | _ => .error) ∧
      (∀ n, res = some (.result (.loc n 0)) → r2 = .halt .success) ∧
      t2.ffi = s2.ffi ∧
      r2 ≠ .error ∧ (res = some .timeOut → r2 = .timeOut) ∧
      (r2 ≠ .timeOut → s2.clock ≤ t2.clock) := by
  rintro ⟨ev, rel, hpc, nerr, hres⟩ hcb
  have clk := relClock rel
  obtain ⟨prog, hlook, ⟨h0, rfl, rfl⟩ | ⟨h0, x, rfl, hbad, e2⟩⟩ := callNoneInlCases ev nerr
  · -- clock zero: both sides time out at once
    refine ⟨0, .timeOut, { t1 with clock := t1.clock - 1 + 0 }, Nat.zero_le _, ?_, by simp,
      by simp, by simp, ?_, by simp, fun _ => rfl, fun h => absurd rfl h⟩
    · rw [evaluate, if_pos (by simp; omega)]
    · simp [StackSemStateOps.emptyEnv, relFfi rel]
  obtain ⟨caP, pc', instP, entry⟩ := relCode rel hlook
  rw [hpc] at entry
  cases entry
  have rel' : stateRel (StackSemStateOps.decClock s1) { t1 with clock := t1.clock - 1 } :=
    StateRel.stateRelDecClock rel
  have nx : x ≠ .error := fun h => nerr (by rw [h])
  have hq := hcb.1 start prog hlook
  obtain ⟨ck, t2, hck, h⟩ := flattenPropBAll S prog (StackSemStateOps.decClock s1) true
    (some x) s2 start (StackAlloc.nextLabHOL prog 2) [] [] { t1 with clock := t1.clock - 1 }
    ⟨e2, nerr, rel', caP, instP, by simp [hpc]⟩ (codeBounded_decClock hcb) hq
  have hck' : ck ≤ (2 * S + 2) * (s1.clock - 1 - s2.clock) + 2 * S := by
    have e : (StackSemStateOps.decClock s1).clock = s1.clock - 1 := rfl
    unfold flatBound at hck
    rw [e] at hck
    omega
  rcases x with v | v | k | k | v | _ | f | _
  · -- `Result v`: only `Loc n 0` is allowed, and procedure `n` halts
    obtain ⟨w, hw⟩ | ⟨f, hf⟩ | ⟨n, hn, hh⟩ := hres (by simp)
    · simp at hw
    · simp at hf
    simp only [Option.some.injEq, StackSemResult.result.injEq] at hn
    subst hn
    simp only [haltView, Option.map_some, resultView] at h
    obtain ⟨run, -, -, -, -, -, -, hcover, hw⟩ := h
    have hsub : sptSubspt s1.code s2.code := by
      simpa [StackSemStateOps.decClock] using
        (StackProps.EvaluateMono.evaluateMono _ _ _ _ e2).2
    obtain ⟨t, evh, tffi, tclk⟩ := hh { s2 with clock := s2.clock + 1 } ⟨hsub, by simp⟩
    obtain ⟨prog2, hlook2, ⟨h0', -⟩ | ⟨-, x2, hx2, -, e3⟩⟩ := callNoneInlCases evh (by simp)
    · simp at h0'
    simp only [Option.some.injEq] at hx2
    subst hx2
    have hdc : StackSemStateOps.decClock { s2 with clock := s2.clock + 1 } = s2 := by
      simp [StackSemStateOps.decClock]
    rw [hdc] at e3
    simp only at hlook2
    obtain ⟨w, hw'⟩ := Option.isSome_iff_exists.mp (hcover n (by simp [hlook2]))
    obtain ⟨rfl, rel2⟩ := hw w hw'
    obtain ⟨caP2, pc2, instP2, entry2⟩ := relCode rel2 hlook2
    rw [hw'] at entry2
    cases entry2
    have hcb2 : CodeBounded S s2 := codeBounded_evaluate e2 (codeBounded_decClock hcb)
    have hq2 := hcb2.1 n prog2 hlook2
    obtain ⟨ck', t3, hck2, h3⟩ := flattenPropBAll S prog2 s2 true (some (.halt (.word 0))) t n
      (StackAlloc.nextLabHOL prog2 2) [] [] t2 ⟨e3, by simp, rel2, caP2, instP2, by simp [hw']⟩
      hcb2 hq2
    simp only [haltView, haltWordView, if_true] at h3
    have tclk' : t.clock = s2.clock := by simpa using tclk
    have hck2' : ck' ≤ 2 * S := by
      unfold flatBound at hck2
      rw [tclk', Nat.sub_self, Nat.mul_zero] at hck2
      omega
    refine ⟨ck + ck', .halt .success, t3, by omega, ?_, by simp, by simp, fun _ _ => rfl, ?_,
      by simp, by simp, fun _ => by rw [← tclk']; exact h3.2.2⟩
    · have r1 := run ck'
      rw [show t1.clock - 1 + (ck + ck') = t1.clock - 1 + ck + ck' by omega, r1]
      exact h3.1
    · rw [h3.2.1, tffi]
  · -- `Exception`: excluded by the hypothesis
    rcases hres (by simp) with ⟨w, hw⟩ | ⟨f, hf⟩ | ⟨n, hn, -⟩
    · simp at hw
    · simp at hf
    · simp at hn
  · simp [StackSemControl.badFunReturn] at hbad
  · simp [StackSemControl.badFunReturn] at hbad
  · -- `Halt v`
    obtain ⟨w, hw⟩ | ⟨f, hf⟩ | ⟨n, hn, -⟩ := hres (by simp)
    · simp only [Option.some.injEq, StackSemResult.halt.injEq] at hw
      subst hw
      simp only [haltView] at h
      refine ⟨ck, haltWordView (.word w), t2, by omega, h.1, by simp, ?_, by simp, h.2.1, ?_,
        by simp, fun _ => h.2.2⟩
      · intro w' hw'
        simp only [Option.some.injEq, StackSemResult.halt.injEq] at hw'
        subst hw'
        rfl
      · simp only [haltWordView]; split <;> simp
    · simp at hf
    · simp at hn
  · -- `TimeOut`
    simp only [haltView, Option.map_some, resultView] at h
    obtain ⟨run, -, -, -, -, -, -, hffi, hclk⟩ := h
    refine ⟨ck, .timeOut, { t2 with clock := t2.clock + 0 }, by omega, ?_, by simp, by simp,
      by simp, hffi, by simp, fun _ => rfl, fun h => absurd rfl h⟩
    have r0 := run 0
    simp only [Nat.add_zero] at r0 ⊢
    rw [r0, evaluate, if_pos (by simp [hclk])]
  · -- `FinalFFI f`
    simp only [haltView] at h
    have hf2 : ∀ f', (some (.finalFFI f) : Option (StackSemResult width)) = some (.finalFFI f') →
        MachineResult.halt (.ffiOutcome f) = .halt (.ffiOutcome f') := by
      intro f' hf'
      simp only [Option.some.injEq, StackSemResult.finalFFI.injEq] at hf'
      rw [hf']
    exact ⟨ck, _, t2, by omega, h.1, hf2, by simp, by simp, h.2.1, by simp,
      by simp, fun _ => h.2.2⟩
  · exact (nx rfl).elim

/-- The complete results of a StackSem entry run. -/
theorem stackEntryClass_complete {width : Nat} [NeZero width]
    {res : Option (StackSemResult width)} {o : HolOutcome}
    (h : stackEntryClass res = .CompleteResult o) :
    (∃ w : BitVec width, res = some (.halt (.word w)) ∧
      o = if w = 0 then HolOutcome.success else HolOutcome.resourceLimitHit) ∨
    (∃ e, res = some (.finalFFI e) ∧ o = HolOutcome.ffiOutcome e) ∨
    (res = some (.result (.loc 1 0)) ∧ o = HolOutcome.success) := by
  rcases res with _ | x
  · simp [stackEntryClass] at h
  rcases x with v | v | _ | _ | v | _ | e | _
  · rcases v with w | ⟨a, b⟩
    · simp [stackEntryClass] at h
    · by_cases hab : a = 1 ∧ b = 0
      · obtain ⟨rfl, rfl⟩ := hab
        simp only [stackEntryClass, if_true, CrepToLoopSemanticsRunRes.CompleteResult.injEq] at h
        exact .inr (.inr ⟨rfl, h.symm⟩)
      · simp only [stackEntryClass] at h
        rw [if_neg (by simpa using hab)] at h
        cases h
  · simp [stackEntryClass] at h
  · simp [stackEntryClass] at h
  · simp [stackEntryClass] at h
  · rcases v with w | ⟨a, b⟩
    · simp only [stackEntryClass, CrepToLoopSemanticsRunRes.CompleteResult.injEq] at h
      exact .inl ⟨w, rfl, h.symm⟩
    · simp [stackEntryClass] at h
  · simp [stackEntryClass] at h
  · simp only [stackEntryClass, CrepToLoopSemanticsRunRes.CompleteResult.injEq] at h
    exact .inr (.inl ⟨e, rfl, h.symm⟩)
  · simp [stackEntryClass] at h

/-- Bounded `stackRunsSim`: the StackSem entry run from clock `k` is matched by the LabSem run
from clock `k + k' - 1` (the classification and events agree) with
`k' ≤ (2 * S + 2) * k + 4 * S`. -/
theorem stackRunsSim_bounded {width : Nat} [NeZero width] {C F : Type} {S start : Nat}
    {s1 : StackSemStateFiniteExact width C F}
    {s2 : Flapjack.Compiler.Backend.LabSem.State width C F}
    (halt : haltAssum C F s1.code) (rel : stateRel s1 s2)
    (hpc : locToPc start 0 s2.code = some s2.pc) (hcb : CodeBounded S s1) :
    ∀ k r ev, stackRuns start s1 k = (r, ev) → r ≠ .RunError →
      ∃ k', k' ≤ (2 * S + 2) * k + 4 * S ∧ labRuns s2 (k + k') = (r, ev) := by
  intro k r ev hk hr
  simp only [stackRuns] at hk
  rcases he : StackSemEvaluate.evaluate ((.call none (.inl start) none : HolProg width),
    { s1 with clock := k }) with ⟨res, s2'⟩
  rw [he] at hk
  simp only [Prod.map, Prod.mk.injEq] at hk
  obtain ⟨rfl, rfl⟩ := hk
  have nerr : res ≠ some .error := by rintro rfl; simp [stackEntryClass] at hr
  rcases Nat.eq_zero_or_pos k with rfl | kpos
  · -- clock zero: both sides time out at once
    obtain ⟨-, -, ⟨-, rfl, rfl⟩ | ⟨h0, -⟩⟩ := callNoneInlCases he nerr
    · refine ⟨0, Nat.zero_le _, ?_⟩
      simp only [labRuns, Nat.add_zero, Nat.zero_sub]
      rw [evaluate, if_pos rfl]
      simp [Prod.map, labEntryClass, stackEntryClass, StackSemStateOps.emptyEnv,
        FlattenCorrect.relFfi rel]
    · exact absurd rfl h0
  have hres : res ≠ some .timeOut →
      (∃ w : BitVec width, res = some (.halt (.word w))) ∨
      (∃ f, res = some (.finalFFI f)) ∨
      (∃ n, res = some (.result (.loc n 0)) ∧
        ∀ s : StackSemStateFiniteExact width C F,
          sptSubspt { s1 with clock := k }.code s.code ∧ s.clock ≠ 0 →
          ∃ t, StackSemEvaluate.evaluate ((.call none (.inl n) none : HolProg width), s) =
              (some (.halt (.word 0)), t) ∧
            t.ffi = s.ffi ∧ t.clock = s.clock - 1) := by
    intro hto
    rcases res with _ | x
    · simp [stackEntryClass] at hr
    rcases x with v | v | _ | _ | v | _ | e | _
    · rcases v with w | ⟨a, b⟩
      · simp [stackEntryClass] at hr
      · by_cases hab : a = 1 ∧ b = 0
        · obtain ⟨rfl, rfl⟩ := hab
          exact .inr (.inr ⟨1, rfl, halt⟩)
        · simp [stackEntryClass] at hr; omega
    · simp [stackEntryClass] at hr
    · simp [stackEntryClass] at hr
    · simp [stackEntryClass] at hr
    · rcases v with w | ⟨a, b⟩
      · exact .inl ⟨w, rfl⟩
      · simp [stackEntryClass] at hr
    · exact absurd rfl hto
    · exact .inr (.inl ⟨e, rfl⟩)
    · simp [stackEntryClass] at hr
  obtain ⟨ck, r2, t2, hck, he2, hf, hh, hrs, hffi, hne, hto, -⟩ :=
    flattenCallCorrect_bounded (S := S) (start := start) (s1 := { s1 with clock := k })
      (t1 := { s2 with clock := k }) (res := res) (s2 := s2')
      ⟨he, stateRelWithClock rel, by simpa using hpc, nerr, hres⟩ hcb
  refine ⟨ck, ?_, ?_⟩
  · have : (2 * S + 2) * (k - 1 - s2'.clock) ≤ (2 * S + 2) * k :=
      Nat.mul_le_mul_left _ (by omega)
    have hck2 : ck ≤ (2 * S + 2) * (k - 1 - s2'.clock) + 4 * S := hck
    omega
  simp only [labRuns]
  rw [show k + ck - 1 = k - 1 + ck by omega]
  simp only at he2
  rw [he2]
  simp only [Prod.map, Prod.mk.injEq, hffi, and_true]
  rcases res with _ | x
  · simp [stackEntryClass] at hr
  rcases x with v | v | _ | _ | v | _ | e | _
  · rcases v with w | ⟨a, b⟩
    · simp [stackEntryClass] at hr
    · by_cases hab : a = 1 ∧ b = 0
      · obtain ⟨rfl, rfl⟩ := hab
        rw [hrs 1 rfl]
        simp [labEntryClass, stackEntryClass]
      · simp [stackEntryClass] at hr; omega
  · simp [stackEntryClass] at hr
  · simp [stackEntryClass] at hr
  · simp [stackEntryClass] at hr
  · rcases v with w | ⟨a, b⟩
    · rw [hh _ rfl]
      simp only [stackEntryClass]
      split_ifs <;> rfl
    · simp [stackEntryClass] at hr
  · rw [hto rfl]; rfl
  · rw [hf e rfl]; rfl
  · simp [stackEntryClass] at hr

/-- **Halting StackSem entry runs are matched by halting LabSem runs, with a bounded clock.**
If the StackSem call of the start procedure from clock `k` ends (state `s2`) in a complete
result with outcome `o`, then LabSem started at the procedure's entry with clock
`k - 1 + ck` halts with outcome `o` and the same FFI state, where
`ck ≤ (2 * S + 2) * (k - 1 - s2.clock) + 4 * S`, and the LabSem run ends with at least
`s2.clock` left: it consumes at most `(k - 1 - s2.clock) + ck` LabSem ticks. -/
theorem stackCall_labHalt_bounded {width : Nat} [NeZero width] {C F : Type} {S start : Nat}
    {s1 : StackSemStateFiniteExact width C F}
    {t : Flapjack.Compiler.Backend.LabSem.State width C F}
    (halt : haltAssum C F s1.code) (rel : stateRel s1 t)
    (hpc : locToPc start 0 t.code = some t.pc) (hcb : CodeBounded S s1)
    (k : Nat) (res : Option (StackSemResult width)) (s2 : StackSemStateFiniteExact width C F)
    (hev : StackSemEvaluate.evaluate ((.call none (.inl start) none : HolProg width),
      { s1 with clock := k }) = (res, s2))
    (o : HolOutcome) (hres : stackEntryClass res = .CompleteResult o) :
    ∃ (ck : Nat) (t3 : Flapjack.Compiler.Backend.LabSem.State width C F),
      ck ≤ (2 * S + 2) * (k - 1 - s2.clock) + 4 * S ∧
      evaluate { t with clock := k - 1 + ck } = (.halt o, t3) ∧ t3.ffi = s2.ffi ∧
      s2.clock ≤ t3.clock := by
  have cases_ := stackEntryClass_complete hres
  have nerr : res ≠ some .error := by
    rcases cases_ with ⟨w, rfl, -⟩ | ⟨e, rfl, -⟩ | ⟨rfl, -⟩ <;> simp
  have hdisj : res ≠ some .timeOut →
      (∃ w : BitVec width, res = some (.halt (.word w))) ∨
      (∃ f, res = some (.finalFFI f)) ∨
      (∃ n, res = some (.result (.loc n 0)) ∧
        ∀ s : StackSemStateFiniteExact width C F,
          sptSubspt { s1 with clock := k }.code s.code ∧ s.clock ≠ 0 →
          ∃ t, StackSemEvaluate.evaluate ((.call none (.inl n) none : HolProg width), s) =
              (some (.halt (.word 0)), t) ∧
            t.ffi = s.ffi ∧ t.clock = s.clock - 1) := fun _ => by
    rcases cases_ with ⟨w, rfl, -⟩ | ⟨e, rfl, -⟩ | ⟨rfl, -⟩
    · exact .inl ⟨w, rfl⟩
    · exact .inr (.inl ⟨e, rfl⟩)
    · exact .inr (.inr ⟨1, rfl, halt⟩)
  obtain ⟨ck, r2, t3, hck, he2, hf, hh, hrs, hffi, -, -, hclk⟩ :=
    flattenCallCorrect_bounded (S := S) (start := start) (s1 := { s1 with clock := k })
      (t1 := { t with clock := k }) (res := res) (s2 := s2)
      ⟨hev, stateRelWithClock rel, by simpa using hpc, nerr, hdisj⟩ hcb
  have hr2 : r2 = .halt o := by
    rcases cases_ with ⟨w, rfl, rfl⟩ | ⟨e, rfl, rfl⟩ | ⟨rfl, rfl⟩
    · rw [hh _ rfl]
      show (if w = 0 then MachineResult.halt .success else MachineResult.halt .resourceLimitHit) =
        MachineResult.halt (if w = 0 then .success else .resourceLimitHit)
      split_ifs <;> rfl
    · exact hf e rfl
    · exact hrs 1 rfl
  subst hr2
  exact ⟨ck, t3, by simpa using hck, by simpa using he2, hffi, hclk (by simp)⟩

end InitECandidate.Solver.Compiler.Flatten
