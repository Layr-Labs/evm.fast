import InitECandidate.Solver.Compiler.StackPasses.Alloc.Basic

/-!
# Lock-step `stack_alloc` `comp_correct`: `JumpLower`, `RawCall`, `Call`

Copies of Flapjack's `goal_jumpLower`, `goal_rawCall`, `goal_call_none`, `goal_call_some`
(`StackAlloc/Proofs/CompCorrect/Calls.lean`) with every clock witness `0`.
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

theorem codeNoA_decClock {s : StackSemStateFiniteExact width C F} (h : CodeNoA s) :
    CodeNoA (decClock s) := h

theorem codeNoA_setVar {s : StackSemStateFiniteExact width C F} {k : Nat} {v : WordLocW width}
    (h : CodeNoA s) : CodeNoA (StackSemStateOps.setVar k v s) := h

theorem jumpLowerZ (s : StackSemStateFiniteExact width C F) (r1 r2 dest : Nat)
    (ih : IHZ anything cr (.jumpLower r1 r2 dest) s) :
    GoalZ anything cr (.jumpLower r1 r2 dest) s := by
  intro r t m n c regs h hr _ _ hcode hpre
  rw [evaluate_jumpLower] at h
  show ∃ regs1, evaluate (.jumpLower r1 r2 dest, Tgt anything cr c s 0 regs) = _ ∧ _
  split at h
  · rename_i x y hx hy
    have gx : getVar r1 (Tgt anything cr c s 0 regs) = some (.word x) := hpre.regs _ _ hx
    have gy : getVar r2 (Tgt anything cr c s 0 regs) = some (.word y) := hpre.regs _ _ hy
    split at h
    · rename_i hlt
      split at h
      · simp only [Prod.mk.injEq] at h
        exact absurd h.1.symm hr
      rename_i prog hprog
      have hprog' : sptLookup dest s.code = some prog := hprog
      obtain ⟨hk, hap⟩ := hpre.code dest prog hprog'
      obtain ⟨m1, n1, hcl⟩ := lookup_IMP_lookup_compile (c := c) ⟨hprog', hk⟩
      have hf : StackSemControl.findCode (.inl dest) regs
          (sptFromAList (compile c (sptToAList s.code))) = some (comp m1 n1 prog).1 := hcl
      by_cases h0 : s.clock = 0
      · rw [if_pos h0] at h
        simp only [Prod.mk.injEq] at h
        obtain ⟨rfl, rfl⟩ := h
        refine ⟨HolFiniteMapExact.empty, ?_, submap_empty _, hpre.buf, fun _ => ?_⟩
        · rw [evaluate_jumpLower, gx, gy]
          simp only [hlt, if_true]
          rw [hf]
          simp only [tgt_zero, h0, if_true]
          rfl
        · simp only [StackBound, emptyEnv, List.length_nil, Nat.zero_mul]
          exact Nat.two_pow_pos width
      · rw [if_neg h0] at h
        rcases h1 : evaluate (prog, decClock s) with ⟨res, s2⟩
        rw [h1] at h
        dsimp only at h
        have hres : res ≠ some .error := by
          rintro rfl
          simp [StackSemControl.badFunReturn] at h
          exact hr h.1.symm
        obtain ⟨regs1, he, hpost⟩ :=
          ih prog (decClock s) (callee_measure_lt prog _ s h0) res s2 n1 m1 c regs h1 hres hap
            (hcode.1 dest prog hprog') (codeNoA_decClock hcode) hpre.decClock
        refine ⟨regs1, ?_, ?_⟩
        · rw [evaluate_jumpLower, gx, gy]
          simp only [hlt, if_true]
          rw [hf]
          dsimp only
          rw [if_neg (by show s.clock + 0 ≠ 0; omega), decClock_tgt anything cr c s regs 0 h0, he]
          dsimp only
          split at h
          · simp only [Prod.mk.injEq] at h
            exact absurd h.1.symm hr
          · rw [if_neg ‹_›]
            simp only [Prod.mk.injEq] at h
            obtain ⟨rfl, rfl⟩ := h
            rfl
        · split at h
          · simp only [Prod.mk.injEq] at h
            exact absurd h.1.symm hr
          · simp only [Prod.mk.injEq] at h
            obtain ⟨rfl, rfl⟩ := h
            exact hpost
    · simp only [Prod.mk.injEq] at h
      obtain ⟨rfl, rfl⟩ := h
      refine ⟨regs, ?_, hpre.regs, hpre.buf, fun _ => hpre.stack⟩
      rw [evaluate_jumpLower, gx, gy]
      dsimp only
      rw [if_neg ‹_›]
      rfl
  · simp only [Prod.mk.injEq] at h
    exact absurd h.1.symm hr

theorem rawCallZ (s : StackSemStateFiniteExact width C F) (dest : Nat)
    (ih : IHZ anything cr (.rawCall dest) s) : GoalZ anything cr (.rawCall dest) s := by
  intro r t m n c regs h hr _ _ hcode hpre
  rw [evaluate_rawCall] at h
  show ∃ regs1, evaluate (.rawCall dest, Tgt anything cr c s 0 regs) = _ ∧ _
  split at h
  · simp only [Prod.mk.injEq] at h
    exact absurd h.1.symm hr
  rename_i prog hprog
  obtain ⟨hk, hap⟩ := hpre.code dest prog hprog
  have hnoP := hcode.1 dest prog hprog
  obtain ⟨m1, n1, hcl⟩ := lookup_IMP_lookup_compile (c := c) ⟨hprog, hk⟩
  split at h
  · rename_i p0 body hds
    cases prog with
    | seq a b =>
      simp only [StackSemControl.destSeq, Option.some.injEq, Prod.mk.injEq] at hds
      obtain ⟨rfl, rfl⟩ := hds
      have hap2 : allocArg b := hap.2
      have hnoB : noA b = true := by
        simp only [noA_seq, Bool.and_eq_true] at hnoP; exact hnoP.2
      have hcl' : sptLookup dest (Tgt anything cr c s 0 regs).code =
          some (.seq (comp m1 n1 a).1 (comp m1 (comp m1 n1 a).2 b).1) := hcl
      by_cases h0 : s.clock = 0
      · rw [if_pos h0] at h
        simp only [Prod.mk.injEq] at h
        obtain ⟨rfl, rfl⟩ := h
        refine ⟨HolFiniteMapExact.empty, ?_, submap_empty _, hpre.buf, fun _ => ?_⟩
        · rw [evaluate_rawCall, hcl']
          simp only [StackSemControl.destSeq, tgt_zero, h0, if_true]
          rfl
        · simp only [StackBound, emptyEnv, List.length_nil, Nat.zero_mul]
          exact Nat.two_pow_pos width
      · rw [if_neg h0] at h
        rcases h1 : evaluate (b, decClock s) with ⟨res, s2⟩
        rw [h1] at h
        dsimp only at h
        have hres : res ≠ some .error := by
          rintro rfl
          simp [StackSemControl.badFunReturn] at h
          exact hr h.1.symm
        obtain ⟨regs1, he, hpost⟩ :=
          ih b (decClock s) (callee_measure_lt b _ s h0) res s2 (comp m1 n1 a).2 m1 c regs
            h1 hres hap2 hnoB (codeNoA_decClock hcode) hpre.decClock
        refine ⟨regs1, ?_, ?_⟩
        · rw [evaluate_rawCall, hcl']
          simp only [StackSemControl.destSeq]
          rw [if_neg (by show s.clock + 0 ≠ 0; omega), decClock_tgt anything cr c s regs 0 h0, he]
          dsimp only
          split at h
          · simp only [Prod.mk.injEq] at h
            exact absurd h.1.symm hr
          · rw [if_neg ‹_›]
            simp only [Prod.mk.injEq] at h
            obtain ⟨rfl, rfl⟩ := h
            rfl
        · split at h
          · simp only [Prod.mk.injEq] at h
            exact absurd h.1.symm hr
          · simp only [Prod.mk.injEq] at h
            obtain ⟨rfl, rfl⟩ := h
            exact hpost
    | _ => simp [StackSemControl.destSeq] at hds
  · simp only [Prod.mk.injEq] at h
    exact absurd h.1.symm hr

theorem callNoneZ (s : StackSemStateFiniteExact width C F) (dest : Sum Nat Nat)
    (handler : Option (HolProg width × Nat × Nat))
    (ih : IHZ anything cr (.call none dest handler) s) :
    GoalZ anything cr (.call none dest handler) s := by
  intro r t m n c regs h hr _ _ hcode hpre
  rw [evaluate_call] at h
  dsimp only at h
  show ∃ regs1, evaluate (.call none dest none, Tgt anything cr c s 0 regs) = _ ∧ _
  split at h
  · simp only [Prod.mk.injEq] at h
    exact absurd h.1.symm hr
  rename_i prog hprog
  obtain ⟨k, hk, hfeq⟩ := find_code_IMP_lookup (find_code_regs_SUBMAP ⟨hpre.regs, hprog⟩)
  obtain ⟨hgc, hap⟩ := hpre.code k prog hk
  have hnoP := hcode.1 k prog hk
  obtain ⟨m1, n1, hcl⟩ := lookup_IMP_lookup_compile (c := c) ⟨hk, hgc⟩
  have hf : StackSemControl.findCode dest regs (sptFromAList (compile c (sptToAList s.code))) =
      some (comp m1 n1 prog).1 := by rw [hfeq]; exact hcl
  split at h
  · simp only [Prod.mk.injEq] at h
    exact absurd h.1.symm hr
  by_cases h0 : s.clock = 0
  · rw [if_pos h0] at h
    simp only [Prod.mk.injEq] at h
    obtain ⟨rfl, rfl⟩ := h
    refine ⟨HolFiniteMapExact.empty, ?_, submap_empty _, hpre.buf, fun _ => ?_⟩
    · rw [evaluate_call]
      dsimp only
      rw [hf]
      dsimp only
      simp only [tgt_zero, h0, if_true]
      rfl
    · simp only [StackBound, emptyEnv, List.length_nil, Nat.zero_mul]
      exact Nat.two_pow_pos width
  · rw [if_neg h0, StackSemEvaluateClock.fixClockEvaluate] at h
    rcases h1 : evaluate (prog, decClock s) with ⟨res, s2⟩
    rw [h1] at h
    dsimp only at h
    have hres : res ≠ some .error := by
      rintro rfl
      simp [StackSemControl.badFunReturn] at h
      exact hr h.1.symm
    obtain ⟨regs1, he, hpost⟩ :=
      ih prog (decClock s) (callee_measure_lt prog _ s h0) res s2 n1 m1 c regs h1 hres hap
        hnoP (codeNoA_decClock hcode) hpre.decClock
    refine ⟨regs1, ?_, ?_⟩
    · rw [evaluate_call]
      dsimp only
      rw [hf]
      dsimp only
      rw [if_neg (by show s.clock + 0 ≠ 0; omega), StackSemEvaluateClock.fixClockEvaluate,
        decClock_tgt anything cr c s regs 0 h0, he]
      dsimp only
      split at h
      · simp only [Prod.mk.injEq] at h
        exact absurd h.1.symm hr
      · rw [if_neg ‹_›]
        simp only [Prod.mk.injEq] at h
        obtain ⟨rfl, rfl⟩ := h
        rfl
    · split at h
      · simp only [Prod.mk.injEq] at h
        exact absurd h.1.symm hr
      · simp only [Prod.mk.injEq] at h
        obtain ⟨rfl, rfl⟩ := h
        exact hpost

theorem callSomeZ (s : StackSemStateFiniteExact width C F) (retH : HolProg width)
    (link l1 l2 : Nat) (dest : Sum Nat Nat) (handler : Option (HolProg width × Nat × Nat))
    (ih : IHZ anything cr (.call (some (retH, link, l1, l2)) dest handler) s) :
    GoalZ anything cr (.call (some (retH, link, l1, l2)) dest handler) s := by
  intro r t m n c regs h hr ha hno hcode hpre
  obtain ⟨hnoR, hnoH⟩ := noA_call hno
  have hnoR' := hnoR retH link l1 l2 rfl
  unfold allocArg at ha
  obtain ⟨haR, haH⟩ := ha
  replace haR : allocArg retH := haR
  rw [evaluate_call] at h
  dsimp only at h
  rw [comp_callSome]
  split at h
  · simp only [Prod.mk.injEq] at h
    exact absurd h.1.symm hr
  rename_i prog hprog
  obtain ⟨k, hk, hfeq⟩ :=
    find_code_IMP_lookup (find_code_regs_SUBMAP ⟨submap_domsub_both (c := link) hpre.regs, hprog⟩)
  obtain ⟨hgc, hap⟩ := hpre.code k prog hk
  have hnoP := hcode.1 k prog hk
  obtain ⟨m1, n1, hcl⟩ := lookup_IMP_lookup_compile (c := c) ⟨hk, hgc⟩
  have hf : StackSemControl.findCode dest (regs.eraseEq link)
      (sptFromAList (compile c (sptToAList s.code))) = some (comp m1 n1 prog).1 := by
    rw [hfeq]; exact hcl
  by_cases h0 : s.clock = 0
  · rw [if_pos h0] at h
    simp only [Prod.mk.injEq] at h
    obtain ⟨rfl, rfl⟩ := h
    refine ⟨HolFiniteMapExact.empty, ?_, submap_empty _, hpre.buf, fun _ => ?_⟩
    · rw [evaluate_call]
      dsimp only
      rw [hf]
      dsimp only
      simp only [tgt_zero, h0, if_true]
      rfl
    · simp only [StackBound, emptyEnv, List.length_nil, Nat.zero_mul]
      exact Nat.two_pow_pos width
  rw [if_neg h0, StackSemEvaluateClock.fixClockEvaluate] at h
  have h0' : (StackSemStateOps.setVar link (.loc l1 l2) s).clock ≠ 0 := h0
  rcases h1 : evaluate (prog, decClock (StackSemStateOps.setVar link (.loc l1 l2) s)) with
    ⟨res, s2⟩
  rw [h1] at h
  have hres : res ≠ some .error := by
    rintro rfl
    simp only [Prod.mk.injEq] at h
    exact hr h.1.symm
  have hmc : LexNat (stackSemMeasure prog (decClock (StackSemStateOps.setVar link (.loc l1 l2) s)))
      (stackSemMeasure (.call (some (retH, link, l1, l2)) dest handler) s) := by
    have := callee_measure_lt prog (.call (some (retH, link, l1, l2)) dest handler) _ h0'
    rwa [measure_setVar_call] at this
  have hpreC := (hpre.setVar link (.loc l1 l2)).decClock
  have hcodeC : CodeNoA (decClock (StackSemStateOps.setVar link (.loc l1 l2) s)) := hcode
  obtain ⟨regs1, he1, hsub1, hbuf1, hst1⟩ :=
    ih prog _ hmc res s2 n1 m1 c _ h1 hres hap hnoP hcodeC hpreC
  have hcode2 : CodeNoA s2 := codeNoA_evaluate h1 hcodeC
  -- the target call site
  have hsite : decClock (StackSemStateOps.setVar link (.loc l1 l2) (Tgt anything cr c s 0 regs)) =
      Tgt anything cr c (decClock (StackSemStateOps.setVar link (.loc l1 l2) s)) 0
        (regs.updateEq (link, .loc l1 l2)) :=
    callSite_tgt anything cr c s regs 0 link _ h0
  have hcont : ∀ (q : HolProg width), LexNat (stackSemMeasure q s2)
      (stackSemMeasure (.call (some (retH, link, l1, l2)) dest handler) s) := by
    intro q
    have := call_continuation_measure_lt q (.call (some (retH, link, l1, l2)) dest handler) s
      link l1 l2 (evaluate (prog, decClock (StackSemStateOps.setVar link (.loc l1 l2) s))) h0
    rwa [StackSemEvaluateClock.fixClockEvaluate, h1] at this
  -- the continuation shape of the target evaluation
  have htgt :
      evaluate (.call (some ((comp n m retH).1, link, l1, l2)) dest
        (compHandler n (comp n m retH).2 handler), Tgt anything cr c s 0 regs) =
      match (res, Tgt anything cr c s2 0 regs1) with
      | (some (.result x), s2) =>
          if x ≠ .loc l1 l2 then (some .error, s2) else evaluate ((comp n m retH).1, s2)
      | (some (.exception x), s2) =>
          match compHandler n (comp n m retH).2 handler with
          | none => (some (.exception x), s2)
          | some (h, hl1, hl2) =>
              if x ≠ .loc hl1 hl2 then (some .error, s2) else evaluate (h, s2)
      | (none, s2) => (some .error, s2)
      | (some (.break _), s2) => (some .error, s2)
      | (some (.continue _), s2) => (some .error, s2)
      | (res, s2) => (res, s2) := by
    rw [evaluate_call]
    dsimp only
    rw [hf]
    dsimp only
    rw [if_neg (by show s.clock + 0 ≠ 0; omega), StackSemEvaluateClock.fixClockEvaluate,
      hsite, he1]
    rfl
  have hpre2 : ∀ x, res = some (.result x) ∨ res = some (.exception x) →
      Pre cr c s2 regs1 := by
    rintro x (rfl | rfl) <;> exact Pre.of_evaluate h1 hpreC hsub1 hbuf1 (hst1 (by simp))
  rcases res with _ | ⟨x | x | _ | _ | w | _ | ev | _⟩
  · simp only [Prod.mk.injEq] at h
    exact absurd h.1.symm hr
  · -- Result
    dsimp only at h
    by_cases hx : x = .loc l1 l2
    · rw [if_neg (not_not.2 hx)] at h
      obtain ⟨regs2, he2, hpost2⟩ :=
        ih retH s2 (hcont retH) r t m n c regs1 h hr haR hnoR' hcode2 (hpre2 x (Or.inl rfl))
      refine ⟨regs2, ?_, hpost2⟩
      rw [htgt]
      dsimp only
      rw [if_neg (not_not.2 hx)]
      exact he2
    · rw [if_pos hx] at h
      simp only [Prod.mk.injEq] at h
      exact absurd h.1.symm hr
  · -- Exception
    dsimp only at h
    rcases handler with _ | ⟨hp, k1, k2⟩
    · simp only [Prod.mk.injEq] at h
      obtain ⟨rfl, rfl⟩ := h
      refine ⟨regs1, ?_, hsub1, hbuf1, hst1⟩
      rw [htgt]
      rfl
    · replace haH : allocArg hp := haH
      have hnoH' := hnoH hp k1 k2 rfl
      dsimp only at h
      by_cases hx : x = .loc k1 k2
      · rw [if_neg (not_not.2 hx)] at h
        obtain ⟨regs2, he2, hpost2⟩ :=
          ih hp s2 (hcont hp) r t (comp n m retH).2 n c regs1 h hr haH hnoH' hcode2
            (hpre2 x (Or.inr rfl))
        refine ⟨regs2, ?_, hpost2⟩
        rw [htgt]
        dsimp only [compHandler]
        rw [if_neg (not_not.2 hx)]
        exact he2
      · rw [if_pos hx] at h
        simp only [Prod.mk.injEq] at h
        exact absurd h.1.symm hr
  · simp only [Prod.mk.injEq] at h
    exact absurd h.1.symm hr
  · simp only [Prod.mk.injEq] at h
    exact absurd h.1.symm hr
  all_goals
    dsimp only at h
    simp only [Prod.mk.injEq] at h
    obtain ⟨rfl, rfl⟩ := h
    refine ⟨regs1, ?_, hsub1, hbuf1, hst1⟩
    rw [htgt]
    rfl

end

end InitECandidate.Solver.Compiler.StackPasses.Alloc
