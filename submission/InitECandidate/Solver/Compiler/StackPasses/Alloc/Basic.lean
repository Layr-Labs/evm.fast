import InitECandidate.Solver.Compiler.StackPasses.Common
import Flapjack.Compiler.Backend.StackAlloc.Proofs.MakeInit

/-!
# Lock-step `stack_alloc` `comp_correct` for `noA` programs (no `Alloc`, no stubbed `StoreConsts`):
statement, leaves, `Seq`, `If`, `Loop`

Bounded counterpart of Flapjack's `StackAlloc.comp_correct`
(`StackAlloc/Proofs/CompCorrect.lean`): when the program, every procedure body and every
program the compile oracle can install are free of `Alloc` and `StoreConsts _ _ (some _)`
(`noA`, `CodeNoA`), the target runs with **no** extra clock (`Tgt … 0 …`). `comp` only rewrites
`Alloc` and `StoreConsts _ _ (some _)` (into calls of the data-dependent GC / constant-store
stubs), so on such programs the pass is lock-step.

Leaves reuse Flapjack's per-constructor `goal_*` lemmas: both runs are clock free (or tick once)
and the relation ties the final clocks, so their witness is forced to `0`.
-/

namespace InitECandidate.Solver.Compiler.StackPasses.Alloc

open Flapjack Flapjack.Compiler.Backend.StackLang Flapjack.StackSemEvaluate
open Flapjack.StackSemStateOps Flapjack.StackSemControl Flapjack.StackSemMeasure
open Flapjack.Compiler.Backend.StackProps Flapjack.Compiler.Backend.StackProps.EvaluateAddClock
open Flapjack.Compiler.Backend.DataToWord Flapjack.Compiler.Backend.WordGcFunctions
open Flapjack.Compiler.Backend.StackAlloc
open Flapjack.Compiler.Backend.StackAlloc.CompCorrect

set_option autoImplicit false

section
variable {width : Nat} [NeZero width] {C F : Type}
variable (anything : WordSemGcFun width) (cr : CompileFn width C)

/-- Flapjack's `comp_correct` goal with no extra clock, for `noA` programs in `CodeNoA`
states. -/
def GoalZ (p : HolProg width) (s : StackSemStateFiniteExact width C F) : Prop :=
  ∀ (r : Option (StackSemResult width)) (t : StackSemStateFiniteExact width C F)
    (m n : Nat) (c : Flapjack.Compiler.Backend.DataToWord.Config) (regs : HolFiniteMapExact Nat (WordLocW width)),
    evaluate (p, s) = (r, t) → r ≠ some .error → allocArg p →
    noA p = true → CodeNoA s → Pre cr c s regs →
    ∃ regs1,
      evaluate ((comp n m p).1, Tgt anything cr c s 0 regs) = (r, Res anything cr c t regs1) ∧
      Post r t regs1

/-- The induction hypothesis: `GoalZ` at every smaller evaluation measure. -/
def IHZ (p : HolProg width) (s : StackSemStateFiniteExact width C F) : Prop :=
  ∀ (q : HolProg width) (u : StackSemStateFiniteExact width C F),
    LexNat (stackSemMeasure q u) (stackSemMeasure p s) → GoalZ anything cr q u

/-! ## Leaves -/

/-- A clock-free leaf left unchanged by `comp`: Flapjack's goal holds with clock `0`. -/
theorem leafZ_clockFree {p : HolProg width} (hcf : ClockFree (C := C) (F := F) p)
    (hc : ∀ n m, (comp n m p).1 = p) {s : StackSemStateFiniteExact width C F}
    (hg : Goal anything cr p s) : GoalZ anything cr p s := by
  intro r t m n c regs h hr ha _ _ hpre
  obtain ⟨ck, regs1, he, hpost⟩ := hg r t m n c regs h hr ha hpre
  rw [hc] at he
  have he' : evaluate (p, { Res anything cr c s regs with
      clock := (Res anything cr c s regs).clock + ck }) = (r, Res anything cr c t regs1) := he
  have h0 : ck = 0 := clockFree_extra hcf hcf h he' rfl rfl
  subst h0
  exact ⟨regs1, by rw [hc]; exact he, hpost⟩

/-- A ticking leaf left unchanged by `comp`: Flapjack's goal holds with clock `0`. -/
theorem leafZ_tickLike {p : HolProg width} (hcf : TickLike (C := C) (F := F) p)
    (hc : ∀ n m, (comp n m p).1 = p) {s : StackSemStateFiniteExact width C F}
    (hg : Goal anything cr p s) : GoalZ anything cr p s := by
  intro r t m n c regs h hr ha _ _ hpre
  obtain ⟨ck, regs1, he, hpost⟩ := hg r t m n c regs h hr ha hpre
  rw [hc] at he
  have he' : evaluate (p, { Res anything cr c s regs with
      clock := (Res anything cr c s regs).clock + ck }) = (r, Res anything cr c t regs1) := he
  have h0 : ck = 0 := tickLike_extra hcf h he' hr rfl rfl
  subst h0
  exact ⟨regs1, by rw [hc]; exact he, hpost⟩

/-! ## `Seq`, `If`, `Loop` -/

theorem seqZ (s : StackSemStateFiniteExact width C F) (c1 c2 : HolProg width)
    (ih : IHZ anything cr (.seq c1 c2) s) : GoalZ anything cr (.seq c1 c2) s := by
  intro r t m n c regs h hr ha hno hcode hpre
  obtain ⟨ha1, ha2⟩ := ha
  simp only [noA_seq, Bool.and_eq_true] at hno
  rw [evaluate_seq, StackSemEvaluateClock.fixClockEvaluate] at h
  rcases h1 : evaluate (c1, s) with ⟨r1, t1⟩
  rw [h1] at h
  have hr1 : r1 ≠ some .error := by
    rintro rfl; simp only [Prod.mk.injEq] at h; exact hr h.1.symm
  obtain ⟨regs1, he1, hsub1, hbuf1, hst1⟩ :=
    ih c1 s (seq_first_measure_lt c1 c2 s) r1 t1 m n c regs h1 hr1 ha1 hno.1 hcode hpre
  show ∃ regs1, evaluate (.seq (comp n m c1).1 (comp n (comp n m c1).2 c2).1,
    Tgt anything cr c s 0 regs) = _ ∧ _
  cases r1 with
  | some x =>
      simp only [Prod.mk.injEq] at h
      obtain ⟨rfl, rfl⟩ := h
      refine ⟨regs1, ?_, hsub1, hbuf1, hst1⟩
      rw [evaluate_seq, StackSemEvaluateClock.fixClockEvaluate, he1]
  | none =>
      have hm := seq_second_measure_lt c1 c2 s (evaluate (c1, s))
      rw [StackSemEvaluateClock.fixClockEvaluate, h1] at hm
      have hpre1 := Pre.of_evaluate h1 hpre hsub1 hbuf1 (hst1 (by simp))
      obtain ⟨regs2, he2, hpost2⟩ :=
        ih c2 t1 hm r t (comp n m c1).2 n c regs1 h hr ha2 hno.2 (codeNoA_evaluate h1 hcode)
          hpre1
      refine ⟨regs2, ?_, hpost2⟩
      rw [evaluate_seq, StackSemEvaluateClock.fixClockEvaluate, he1]
      exact he2

theorem iteZ (s : StackSemStateFiniteExact width C F) (cmp : Compiler.Encoders.Asm.HolCmp)
    (r1 : Nat) (ri : Compiler.Encoders.Asm.HolRegImm width) (c1 c2 : HolProg width)
    (ih : IHZ anything cr (.ite cmp r1 ri c1 c2) s) :
    GoalZ anything cr (.ite cmp r1 ri c1 c2) s := by
  intro r t m n c regs h hr ha hno hcode hpre
  obtain ⟨ha1, ha2⟩ := ha
  simp only [noA_ite, Bool.and_eq_true] at hno
  rw [evaluate_ite] at h
  show ∃ regs1, evaluate (.ite cmp r1 ri (comp n m c1).1 (comp n (comp n m c1).2 c2).1,
    Tgt anything cr c s 0 regs) = _ ∧ _
  split at h
  · rename_i x y hx hy
    split at h
    · rename_i hc
      obtain ⟨regs1, he, hpost⟩ :=
        ih c1 s (if_first_measure_lt cmp r1 ri c1 c2 s) r t m n c regs h hr ha1 hno.1 hcode hpre
      refine ⟨regs1, ?_, hpost⟩
      rw [evaluate_ite, tgt_eq]
      rw [show getVar r1 { Res anything cr c s regs with clock := s.clock + 0 } = some x from
          getVar_res anything cr c s regs hpre.regs hx,
        show StackSemStateOps.getVarImm ri.toWordRegImm
            { Res anything cr c s regs with clock := s.clock + 0 } =
          some y from getVarImm_res anything cr c s regs hpre.regs ri hy]
      simp only [hc]
      exact he
    · rename_i hc
      obtain ⟨regs1, he, hpost⟩ :=
        ih c2 s (if_second_measure_lt cmp r1 ri c1 c2 s) r t (comp n m c1).2 n c regs h hr ha2
          hno.2 hcode hpre
      refine ⟨regs1, ?_, hpost⟩
      rw [evaluate_ite, tgt_eq]
      rw [show getVar r1 { Res anything cr c s regs with clock := s.clock + 0 } = some x from
          getVar_res anything cr c s regs hpre.regs hx,
        show StackSemStateOps.getVarImm ri.toWordRegImm
            { Res anything cr c s regs with clock := s.clock + 0 } =
          some y from getVarImm_res anything cr c s regs hpre.regs ri hy]
      simp only [hc]
      exact he
    · simp only [Prod.mk.injEq] at h
      exact absurd h.1.symm hr
  · simp only [Prod.mk.injEq] at h
    exact absurd h.1.symm hr

theorem loopZ (s : StackSemStateFiniteExact width C F) (c1 : HolProg width)
    (ih : IHZ anything cr (.loop c1) s) : GoalZ anything cr (.loop c1) s := by
  intro r t m n c regs h hr ha hno hcode hpre
  have hno1 : noA c1 = true := by simpa only [noA_loop] using hno
  rw [evaluate_loop, StackSemEvaluateClock.fixClockEvaluate] at h
  rcases h1 : evaluate (c1, s) with ⟨r1, t1⟩
  rw [h1] at h
  dsimp only at h
  have hr1 : r1 ≠ some .error := by
    rintro rfl
    simp [StackSemControl.contLoop, StackSemControl.exitLoop] at h
    exact hr h.1.symm
  obtain ⟨regs1, he1, hsub1, hbuf1, hst1⟩ :=
    ih c1 s (loop_body_measure_lt c1 s) r1 t1 m n c regs h1 hr1 ha hno1 hcode hpre
  show ∃ regs1, evaluate (.loop (comp n m c1).1, Tgt anything cr c s 0 regs) = _ ∧ _
  by_cases hl : StackSemControl.contLoop r1 = true
  · have hnh : ∀ w, r1 ≠ some (.halt w) := by
      rcases contLoopImp r1 hl with rfl | rfl <;> simp
    rw [if_pos hl] at h
    by_cases h0 : t1.clock = 0
    · rw [if_pos h0] at h
      simp only [Prod.mk.injEq] at h
      obtain ⟨rfl, rfl⟩ := h
      refine ⟨HolFiniteMapExact.empty, ?_, submap_empty _, hbuf1, fun _ => ?_⟩
      · rw [evaluate_loop, StackSemEvaluateClock.fixClockEvaluate, he1]
        dsimp only
        rw [if_pos hl, if_pos h0]
        rfl
      · simp only [StackBound, emptyEnv, List.length_nil, Nat.zero_mul]
        exact Nat.two_pow_pos width
    · rw [if_neg h0] at h
      have hm := loop_reentry_measure_lt c1 s (evaluate (c1, s))
      rw [StackSemEvaluateClock.fixClockEvaluate, h1] at hm
      have hpre1 := (Pre.of_evaluate h1 hpre hsub1 hbuf1 (hst1 hnh)).decClock
      have hc1 : CodeNoA t1 := codeNoA_evaluate h1 hcode
      obtain ⟨regs2, he2, hpost2⟩ :=
        ih (.loop c1) (decClock t1) (hm h0) r t m n c regs1 h hr ha hno hc1 hpre1
      refine ⟨regs2, ?_, hpost2⟩
      rw [evaluate_loop, StackSemEvaluateClock.fixClockEvaluate, he1]
      dsimp only
      rw [if_pos hl, if_neg (by show t1.clock ≠ 0; exact h0)]
      exact he2
  · rw [if_neg hl] at h
    simp only [Prod.mk.injEq] at h
    obtain ⟨rfl, rfl⟩ := h
    refine ⟨regs1, ?_, hsub1, hbuf1, fun hh => hst1 fun w hw => hh w ?_⟩
    · rw [evaluate_loop, StackSemEvaluateClock.fixClockEvaluate, he1]
      dsimp only
      rw [if_neg hl]
    · rw [hw]; rfl

end

end InitECandidate.Solver.Compiler.StackPasses.Alloc
