import InitECandidate.Solver.Compiler.CrepToLoop.Control
import Flapjack.Pancake.CrepToLoop.Proofs.NCompileCorrect.While
import Batteries.Tactic.OpenPrivate

/-!
# Bounded `While` case

Copy of Flapjack's `crepToLoop_ncompile_correct_while` (`NCompileCorrect/While.lean`) over
the bounded motive. Witnesses: false condition `ck_cond + 2` (loop entry and exit
`cut_res` ticks, no source tick); time-out `0`; an iteration continuing the loop
`ck_cond + ck_body + ck_rest` (the loop-entry tick matches the source `dec_clock`);
a body `Break 0` `ck_cond + ck_body + 1`; other body exits `ck_cond + ck_body`.
The source tick of an iteration pays for `esize cond + csize body ≤ S`.
-/

namespace InitECandidate.Solver.Compiler.CrepToLoop

open Flapjack Flapjack.Pancake.CrepToLoop.Proofs.NCompileCorrect

set_option autoImplicit false

open private loop_step_cut_some loop_step_none loop_step_continue loop_step_break loop_step_exit
  locals_rel_inter locals_rel_insert_of seq_continue_none seq_continue_some while_body_eval
  resultToLoop_exitLoop localsResultRel_exitLoop
  from Flapjack.Pancake.CrepToLoop.Proofs.NCompileCorrect.While

variable {width : Nat} [NeZero width] {σ : Type}

/-- Bounded `While` case. -/
theorem while_bounded (S : Nat) (e : CrepExpHOL width) (c : CrepProgHOL width)
    (v1 : CrepSemHOLState width σ)
    (ihc : ∀ (w : BitVec width) (res : Option (CrepResultHOLExact width))
        (s1 : CrepSemHOLState width σ),
      evalCrepSemHOLExp v1 e = some (.word w) ∧ w ≠ 0 ∧ v1.clock ≠ 0 ∧
        evalCrepSemHOLProgExact (decClockCrepSemHOL v1) c = (res, s1) ∧
        res = some (.continue 0) →
      PropertyAtB S (.while e c) s1)
    (ihn : ∀ (w : BitVec width) (res : Option (CrepResultHOLExact width))
        (s1 : CrepSemHOLState width σ),
      evalCrepSemHOLExp v1 e = some (.word w) ∧ w ≠ 0 ∧ v1.clock ≠ 0 ∧
        evalCrepSemHOLProgExact (decClockCrepSemHOL v1) c = (res, s1) ∧ res = none →
      PropertyAtB S (.while e c) s1)
    (ihb : ∀ (w : BitVec width),
      evalCrepSemHOLExp v1 e = some (.word w) ∧ w ≠ 0 ∧ v1.clock ≠ 0 →
      PropertyAtB S c (decClockCrepSemHOL v1)) :
    PropertyAtB S (.while e c) v1 := by
  intro hsz hcb res s1 t ctxt l he hne hs hm hg hc hl
  have hszW := hsz
  simp only [csize] at hsz
  rw [evalCrepSemHOLProgExact_eq_evaluate_def] at he
  simp only at he
  cases hev : evalCrepSemHOLExp v1 e with
  | none =>
    simp only [hev, Prod.mk.injEq] at he
    exact absurd he.1.symm hne
  | some x =>
  cases x with
  | word w =>
  simp only [hev] at he
  rcases hC : compileExpHOLExact ctxt (ctxt.vmax + 1) l e with ⟨np, le, tmp, nl⟩
  obtain ⟨hokA, htA, hlA⟩ := compile_exp_out_rel ctxt (ctxt.vmax + 1) l e np le tmp nl hC
  have hlnl : ∀ k, sptDomain l k → sptDomain nl k :=
    fun k hk => hlA ▸ cut_sets_union_domain_subset _ l hokA k hk
  have htmp : ctxt.vmax < tmp := Nat.lt_of_lt_of_le (Nat.lt_succ_self _) htA
  let B : HolLoopProg width := loopNestedSeqHOL (np ++
    [.assign tmp le,
     .ite .notEqual tmp (.imm (0 : BitVec width))
       (.seq (compileHOLExact ctxt l c) (.continue 0)) (.break 0) l])
  have hcomp : compileHOLExact ctxt l (.while e c) = .loop l B l := by
    rw [compileHOLExact, hC]
  rw [hcomp]
  have hsub : LoopSemStateFiniteExact.sptSubsetLive l t.locals := hl.2.2.1
  by_cases hw : w = 0
  · -- False case
    subst hw
    simp only [ne_eq, not_true_eq_false, if_false, Prod.mk.injEq] at he
    obtain ⟨rfl, rfl⟩ := he
    obtain ⟨ck, st, h1, h1v, h1s, h1m, h1g, h1c, h1l, hck⟩ :=
      compExp_bounded v1 e (.word 0) { t with locals := sptInter t.locals l }
        ctxt (ctxt.vmax + 1) l np le tmp nl
        ⟨hev, hs, hm, hg, hc, locals_rel_inter ctxt l v1.locals t.locals hl, hC,
          Nat.lt_succ_self _⟩
    have hentry : LoopSemStateFiniteExact.cutRes l (none, { t with clock := t.clock + (ck + 2) }) =
        (none, { t with locals := sptInter t.locals l, clock := t.clock + (ck + 1) }) := by
      rw [LoopSemStateFiniteExact.cutRes]
      simp only
      rw [LoopSemStateFiniteExact.cutState_of_subset l { t with clock := t.clock + (ck + 2) } hsub]
      simp only [LoopSemStateFiniteExact.decClock, show ¬ t.clock + (ck + 2) = 0 by omega, if_false]
      simp only [Prod.mk.injEq, true_and]
      congr 1
    have h1' : LoopSemStateFiniteExact.evaluate (loopNestedSeqHOL np)
        { t with locals := sptInter t.locals l, clock := t.clock + (ck + 1) } =
          (none, { st with clock := st.clock + 1 }) := by
      have := LoopSemStateFiniteExact.evaluate_add_clock_eq _ _ _ _ 1 h1 (by simp)
      simpa [Nat.add_assoc] using this
    have hbody := while_body_eval np le tmp l (compileHOLExact ctxt l c) _ _ 0 h1'
      (by rw [LoopSemStateFiniteExact.eval_upd_clock_eq]; simpa [wlabWlocExact] using h1v)
    rw [if_pos rfl] at hbody
    have hloop := loop_step_break (L' := l) hentry hbody
    have hS : LoopSemStateFiniteExact.sptSubsetLive l
        (LoopSemStateFiniteExact.setVar tmp (.word 0) { st with clock := st.clock + 1 }).locals :=
      fun k hk => (sptMem_sptInsert k tmp _ _).mpr (Or.inr (h1l.2.2.1 k (hlnl k hk)))
    have hexit : LoopSemStateFiniteExact.cutRes l
        (none, LoopSemStateFiniteExact.setVar tmp (.word 0) { st with clock := st.clock + 1 }) =
        (none, { st with locals := sptInter (sptInsert tmp (.word 0) st.locals) l }) := by
      rw [LoopSemStateFiniteExact.cutRes]
      simp only
      rw [LoopSemStateFiniteExact.cutState_of_subset l _ hS]
      simp [LoopSemStateFiniteExact.decClock, LoopSemStateFiniteExact.setVar]
    refine ⟨ck + 2, none, _, hloop.trans hexit, h1s, h1m, h1g, h1c, rfl, ?_, ?_⟩
    · exact locals_rel_inter ctxt l v1.locals _
        (locals_rel_insert_of ctxt l nl v1.locals _ st.locals hl h1l hlnl tmp htmp _)
    · simp only [csize]; omega
  · simp only [ne_eq, hw, not_false_eq_true, if_true] at he
    by_cases hz : v1.clock = 0
    · -- Timeout case
      simp only [hz, if_true, Prod.mk.injEq] at he
      obtain ⟨rfl, rfl⟩ := he
      have ht0 : t.clock = 0 := hs.2.2.1 ▸ hz
      have hcut : LoopSemStateFiniteExact.cutRes l (none, { t with clock := t.clock + 0 }) =
          (some .timeOut, { t with clock := t.clock + 0, locals := .ln }) := by
        rw [LoopSemStateFiniteExact.cutRes]
        simp only
        rw [LoopSemStateFiniteExact.cutState_of_subset l { t with clock := t.clock + 0 } hsub]
        simp [ht0]
      refine ⟨0, some .timeOut, _, loop_step_cut_some hcut, hs, hm, hg, hc, rfl, trivial, ?_⟩
      simp only [CrepSemHOLState.emptyLocals]; omega
    · simp only [hz, if_false] at he
      have hmp := mul_pred (S := S) hz
      rcases hbodyS : evalCrepSemHOLProgExact (decClockCrepSemHOL v1) c with ⟨res', s1'⟩
      simp only [hbodyS] at he
      have hcb' : CodeBoundedC S s1' :=
        CodeBoundedC.of_eval hbodyS (CodeBoundedC.of_code rfl hcb)
      obtain ⟨hs1, hs2, hs3, hs4, hs5, hs6, hs7⟩ := hs
      have htz : t.clock ≠ 0 := hs3 ▸ hz
      have hev' : evalCrepSemHOLExp (decClockCrepSemHOL v1) e = some (.word w) := by
        simp only [decClockCrepSemHOL, evalCrepSemHOLExp_upd_clock_eq, hev]
      have hsD : crepToLoopStateRelExact (decClockCrepSemHOL v1)
          { t with locals := sptInter t.locals l, clock := t.clock - 1 } :=
        ⟨hs1, hs2, by simp [decClockCrepSemHOL, hs3], hs4, hs5, hs6, hs7⟩
      obtain ⟨ck, st, h1, h1v, h1s, h1m, h1g, h1c, h1l, hck⟩ :=
        compExp_bounded (decClockCrepSemHOL v1) e (.word w)
          { t with locals := sptInter t.locals l, clock := t.clock - 1 }
          ctxt (ctxt.vmax + 1) l np le tmp nl
          ⟨hev', hsD, hm, hg, hc, locals_rel_inter ctxt l v1.locals t.locals hl, hC,
            Nat.lt_succ_self _⟩
      have hne' : res' ≠ some .error := by
        rintro rfl
        simp only [exitLoopCrepResult, Prod.mk.injEq] at he
        exact hne he.1.symm
      obtain ⟨ck', res1', t1, h2, h2s, h2m, h2g, h2c, h2r, h2l, hb2⟩ :=
        ihb w ⟨hev, hw, hz⟩ (by omega) (CodeBoundedC.of_code rfl hcb) res' s1'
          (LoopSemStateFiniteExact.setVar tmp (.word w) st) ctxt l
          hbodyS hne' h1s h1m h1g h1c (locals_rel_insert_of ctxt l nl v1.locals _ st.locals (locals_rel_inter ctxt l v1.locals t.locals hl) h1l hlnl tmp htmp _)
      simp only [decClockCrepSemHOL] at hb2
      -- the loop entry, condition and body run from any clock extension
      have hentryK : ∀ k, LoopSemStateFiniteExact.cutRes l
          (none, { t with clock := t.clock + (ck + k) }) =
          (none, { t with locals := sptInter t.locals l, clock := t.clock - 1 + (ck + k) }) := by
        intro k
        rw [LoopSemStateFiniteExact.cutRes]
        simp only
        rw [LoopSemStateFiniteExact.cutState_of_subset l { t with clock := t.clock + (ck + k) } hsub]
        simp only [LoopSemStateFiniteExact.decClock, show ¬ t.clock + (ck + k) = 0 by omega, if_false]
        simp only [Prod.mk.injEq, true_and]
        congr 1
        omega
      have hbodyK : ∀ k, LoopSemStateFiniteExact.evaluate B
          { t with locals := sptInter t.locals l, clock := t.clock - 1 + (ck + k) } =
          LoopSemStateFiniteExact.cutRes l
            (LoopSemStateFiniteExact.evaluate (.seq (compileHOLExact ctxt l c) (.continue 0))
              { LoopSemStateFiniteExact.setVar tmp (.word w) st with clock := st.clock + k }) := by
        intro k
        have h1k : LoopSemStateFiniteExact.evaluate (loopNestedSeqHOL np)
            { t with locals := sptInter t.locals l, clock := t.clock - 1 + (ck + k) } =
              (none, { st with clock := st.clock + k }) := by
          have := LoopSemStateFiniteExact.evaluate_add_clock_eq _ _ _ _ k h1 (by simp)
          simpa [Nat.add_assoc] using this
        have := while_body_eval np le tmp l (compileHOLExact ctxt l c) _ _ w h1k
          (by rw [LoopSemStateFiniteExact.eval_upd_clock_eq]; simpa [wlabWlocExact] using h1v)
        rw [if_neg hw] at this
        exact this
      have h2' : LoopSemStateFiniteExact.evaluate (compileHOLExact ctxt l c)
          { LoopSemStateFiniteExact.setVar tmp (.word w) st with clock := st.clock + ck' } =
            (res1', t1) := h2
      cases res' with
      | none =>
        have hr1 : res1' = none := by simpa [resultToLoop] using h2r
        subst hr1
        obtain ⟨ck'', res1, t2, h3, h3s, h3m, h3g, h3c, h3r, h3l, hb3⟩ :=
          ihn w none s1' ⟨hev, hw, hz, hbodyS, rfl⟩ hszW hcb' res s1 t1 ctxt l
            he hne h2s h2m h2g h2c h2l
        rw [hcomp] at h3
        have h2k : LoopSemStateFiniteExact.evaluate (compileHOLExact ctxt l c)
            { LoopSemStateFiniteExact.setVar tmp (.word w) st with clock := st.clock + (ck' + ck'') } =
              (none, { t1 with clock := t1.clock + ck'' }) := by
          have := LoopSemStateFiniteExact.evaluate_add_clock_eq _ _ _ _ ck'' h2' (by simp)
          simpa [Nat.add_assoc] using this
        have hb : LoopSemStateFiniteExact.evaluate B
            { t with locals := sptInter t.locals l, clock := t.clock - 1 + (ck + (ck' + ck'')) } =
            (some (.continue 0), { t1 with clock := t1.clock + ck'' }) := by
          rw [hbodyK, seq_continue_none h2k]; rfl
        refine ⟨ck + (ck' + ck''), res1, t2, (loop_step_continue (hentryK _) hb).trans h3,
          h3s, h3m, h3g, h3c, h3r, h3l, ?_⟩
        simp only [csize] at hb3 ⊢; omega
      | some r =>
        by_cases hr0 : r = .continue 0
        · subst hr0
          simp only at he
          have hr1 : res1' = some (.continue 0) := by simpa [resultToLoop] using h2r
          subst hr1
          obtain ⟨ck'', res1, t2, h3, h3s, h3m, h3g, h3c, h3r, h3l, hb3⟩ :=
            ihc w (some (.continue 0)) s1' ⟨hev, hw, hz, hbodyS, rfl⟩ hszW hcb' res s1 t1 ctxt l
              he hne h2s h2m h2g h2c h2l
          rw [hcomp] at h3
          have h2k : LoopSemStateFiniteExact.evaluate (compileHOLExact ctxt l c)
              { LoopSemStateFiniteExact.setVar tmp (.word w) st with
                  clock := st.clock + (ck' + ck'') } =
                (some (.continue 0), { t1 with clock := t1.clock + ck'' }) := by
            have := LoopSemStateFiniteExact.evaluate_add_clock_eq _ _ _ _ ck'' h2' (by simp)
            simpa [Nat.add_assoc] using this
          have hb : LoopSemStateFiniteExact.evaluate B
              { t with locals := sptInter t.locals l, clock := t.clock - 1 + (ck + (ck' + ck'')) } =
              (some (.continue 0), { t1 with clock := t1.clock + ck'' }) := by
            rw [hbodyK, seq_continue_some h2k]; rfl
          refine ⟨ck + (ck' + ck''), res1, t2, (loop_step_continue (hentryK _) hb).trans h3,
            h3s, h3m, h3g, h3c, h3r, h3l, ?_⟩
          simp only [csize] at hb3 ⊢; omega
        by_cases hr1 : r = .break 0
        · subst hr1
          simp only [Prod.mk.injEq] at he
          obtain ⟨rfl, rfl⟩ := he
          have hr : res1' = some (.break 0) := by simpa [resultToLoop] using h2r
          subst hr
          have h2l' : crepToLoopLocalsRelExact ctxt l s1'.locals t1.locals := h2l
          have h2k : LoopSemStateFiniteExact.evaluate (compileHOLExact ctxt l c)
              { LoopSemStateFiniteExact.setVar tmp (.word w) st with clock := st.clock + (ck' + 1) } =
                (some (.break 0), { t1 with clock := t1.clock + 1 }) := by
            have := LoopSemStateFiniteExact.evaluate_add_clock_eq _ _ _ _ 1 h2' (by simp)
            simpa [Nat.add_assoc] using this
          have hb : LoopSemStateFiniteExact.evaluate B
              { t with locals := sptInter t.locals l, clock := t.clock - 1 + (ck + (ck' + 1)) } =
              (some (.break 0), { t1 with clock := t1.clock + 1 }) := by
            rw [hbodyK, seq_continue_some h2k]; rfl
          have hsub1 : LoopSemStateFiniteExact.sptSubsetLive l t1.locals := h2l'.2.2.1
          have hexit : LoopSemStateFiniteExact.cutRes l (none, { t1 with clock := t1.clock + 1 }) =
              (none, { t1 with locals := sptInter t1.locals l }) := by
            rw [LoopSemStateFiniteExact.cutRes]
            simp only
            rw [LoopSemStateFiniteExact.cutState_of_subset l { t1 with clock := t1.clock + 1 } hsub1]
            simp [LoopSemStateFiniteExact.decClock]
          refine ⟨ck + (ck' + 1), none, _, (loop_step_break (hentryK _) hb).trans hexit,
            h2s, h2m, h2g, h2c, rfl, locals_rel_inter ctxt l s1'.locals t1.locals h2l', ?_⟩
          simp only [csize]; omega
        · have he' : (exitLoopCrepResult (some r), s1') = (res, s1) := by
            cases r with
            | «continue» n => cases n with
              | zero => exact absurd rfl hr0
              | succ n => exact he
            | «break» n => cases n with
              | zero => exact absurd rfl hr1
              | succ n => exact he
            | _ => exact he
          simp only [Prod.mk.injEq] at he'
          obtain ⟨rfl, rfl⟩ := he'
          obtain ⟨x, hx⟩ : ∃ x, res1' = some x := by
            cases r <;> simp only [resultToLoop] at h2r <;> exact ⟨_, h2r⟩
          subst hx
          have hx0 : x ≠ .continue 0 := by
            intro h; subst h; cases r <;> simp_all [resultToLoop]
          have hx1 : x ≠ .break 0 := by
            intro h; subst h; cases r <;> simp_all [resultToLoop]
          have hb : LoopSemStateFiniteExact.evaluate B
              { t with locals := sptInter t.locals l, clock := t.clock - 1 + (ck + ck') } =
              (some x, t1) := by
            rw [hbodyK, seq_continue_some h2']; rfl
          refine ⟨ck + ck', _, _, loop_step_exit (L' := l) hx0 hx1 (hentryK _) hb, h2s, h2m, h2g,
            h2c, ?_, localsResultRel_exitLoop ctxt l _ _ r h2l, ?_⟩
          · rw [h2r]
            exact resultToLoop_exitLoop r hr0 hr1
          · simp only [csize]; omega

end InitECandidate.Solver.Compiler.CrepToLoop
