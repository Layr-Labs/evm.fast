import InitECandidate.Solver.Compiler.CrepToLoop.Call
import Batteries.Tactic.OpenPrivate

/-!
# Bounded crep → loop `ncompile_correct`: assembly

The `evaluate_ind` induction of Flapjack's `crepToLoopNcompileCorrectOf`
(`NCompileCorrect/Assembly.lean`) over the bounded motive `PropertyAtB S`: the 14 leaf
cases come from Flapjack's own theorem (`propertyAtB_leaf`), the five composite cases from
the bounded copies (`seq_bounded`, `if_bounded`, `dec_bounded`, `while_bounded`,
`call_bounded`).
-/

namespace InitECandidate.Solver.Compiler.CrepToLoop

open Flapjack Flapjack.Pancake.CrepToLoop.Proofs.NCompileCorrect

set_option autoImplicit false

open private lookupCodeFinite_eq_HOLFinite'
  from Flapjack.Pancake.CrepToLoop.Proofs.NCompileCorrect.Assembly

variable {width : Nat} [NeZero width] {σ : Type}

/-- The bounded motive holds everywhere. -/
theorem propertyAtB_all (S : Nat) :
    ∀ (v : CrepProgHOL width) (s : CrepSemHOLState width σ), PropertyAtB S v s := by
  intro v s
  apply evalCrepSemHOLProgExact_induct (P := fun x => PropertyAtB S x.1 x.2)
  all_goals try simp only [crepExactEvalExpClassical_eq] at *
  · intro s; exact propertyAtB_leaf S _ s trivial
  · intro v e prog s ih
    exact dec_bounded S v e prog s ih
  · intro lhss pop rhss s; exact propertyAtB_leaf S _ s trivial
  · intro v src s; exact propertyAtB_leaf S _ s trivial
  · intro dst src s; exact propertyAtB_leaf S _ s trivial
  · intro dst src s; exact propertyAtB_leaf S _ s trivial
  · intro dst src s; exact propertyAtB_leaf S _ s trivial
  · intro dst src s; exact propertyAtB_leaf S _ s trivial
  · intro op v ad s; exact propertyAtB_leaf S _ s trivial
  · intro c1 c2 s ih2 ih1
    exact seq_bounded S c1 c2 s ih2 ih1
  · intro e c1 c2 s ih
    exact if_bounded S e c1 c2 s (fun w hw => ih _ w hw rfl)
  · intro n s; exact propertyAtB_leaf S _ s trivial
  · intro n s; exact propertyAtB_leaf S _ s trivial
  · intro e c s ih1 ih2 ih3
    exact while_bounded S e c s
      (fun w r s1' ⟨h1, h2, h3, h4, h5⟩ => ih1 _ w r s1' _ 0 h1 rfl h2 h3 h4.symm h5 rfl rfl)
      (fun w r s1' ⟨h1, h2, h3, h4, h5⟩ => ih2 _ w r s1' h1 rfl h2 h3 h4.symm h5)
      (fun w ⟨h1, h2, h3⟩ => ih3 _ w h1 rfl h2 h3)
  · intro es s; exact propertyAtB_leaf S _ s trivial
  · intro eid s; exact propertyAtB_leaf S _ s trivial
  · intro s; exact propertyAtB_leaf S _ s trivial
  · intro caltyp fname argexps s ihh ihb
    have hfun : crepExactEvalExpClassical s = evalCrepSemHOLExp s :=
      funext (crepExactEvalExpClassical_eq s)
    exact call_bounded S caltyp fname argexps s
      (fun args prog newlocals st eid rts p ⟨h1, h2, h3, h4, h5, h6⟩ =>
        ihh args (prog, newlocals) prog newlocals _ _ st _ eid _ _ _ _ eid p
          (by rw [hfun]; exact h1) (by rw [← lookupCodeFinite_eq_HOLFinite']; exact h2) rfl
          (by subst h6; simpa using h3) h4 h5.symm rfl rfl rfl h6 rfl rfl rfl rfl)
      (fun args prog newlocals ⟨h1, h2, h3, h4⟩ =>
        ihb args (prog, newlocals) prog newlocals (by rw [hfun]; exact h1)
          (by rw [← lookupCodeFinite_eq_HOLFinite']; exact h2) rfl
          (by cases caltyp with
              | none => simp
              | some x => obtain ⟨rts, y⟩ := x; simpa using h3) h4)
  · intro f p1 l1 p2 l2 s; exact propertyAtB_leaf S _ s trivial

/-- **Bounded `crepToLoop_ncompile_correct`.** Flapjack's
`Flapjack.crepToLoop_ncompile_correct` (same premises, same conclusion) under
`csize v ≤ S` and `CodeBoundedC S v1` (every crep code body has `csize ≤ S`), with the extra
loop clock bounded by
`ck ≤ (S + 1) * (v1.clock - s1.clock) + csize v`,
i.e. `A = S + 1` per consumed crep tick and `B = 1` per node of `v`. -/
theorem crepToLoop_ncompile_correct_bounded (S : Nat) :
    ∀ (v : CrepProgHOL width) (v1 : CrepSemHOLState width σ)
      (res : Option (CrepResultHOLExact width)) (s1 : CrepSemHOLState width σ)
      (t : LoopSemStateFiniteExact width σ) (ctxt : CrepToLoopContextExact) (l : NumSet),
      csize v ≤ S → CodeBoundedC S v1 →
      evalCrepSemHOLProgExact v1 v = (res, s1) ∧ res ≠ some .error ∧
        crepToLoopStateRelExact v1 t ∧
        crepToLoopMemRelHOLExact v1.memory t.memory v1.memaddrs ∧
        crepToLoopGlobalsRelHOLExact v1.globals t.globals ∧
        crepToLoopCodeRelExact ctxt v1.code t.code ∧
        crepToLoopLocalsRelExact ctxt l v1.locals t.locals →
      ∃ (ck : Nat) (res1 : Option (LoopSemStateFiniteExact.LoopResultExact width))
        (t1 : LoopSemStateFiniteExact width σ),
        LoopSemStateFiniteExact.evaluate (compileHOLExact ctxt l v)
            { t with clock := t.clock + ck } = (res1, t1) ∧
        crepToLoopStateRelExact s1 t1 ∧
        crepToLoopMemRelHOLExact s1.memory t1.memory s1.memaddrs ∧
        crepToLoopGlobalsRelHOLExact s1.globals t1.globals ∧
        crepToLoopCodeRelExact ctxt s1.code t1.code ∧
        res1 = resultToLoop res ∧
        localsResultRel ctxt l res s1 t1 ∧
        ck ≤ (S + 1) * (v1.clock - s1.clock) + csize v := by
  intro v v1 res s1 t ctxt l hsz hcb ⟨he, hne, hs, hm, hg, hc, hl⟩
  obtain ⟨ck, res1, t1, h1, h2, h3, h4, h5, h6, h7, hb⟩ :=
    propertyAtB_all S v v1 hsz hcb res s1 t ctxt l he hne hs hm hg hc hl
  exact ⟨ck, res1, t1, h1, h2, h3, h4, h5, h6, h7, bound_sub hb⟩

/-- The same run, measured as loop clock consumed:
`(t.clock + ck) - t1.clock ≤ (S + 2) * (v1.clock - s1.clock) + csize v`. -/
theorem crepToLoop_ncompile_consumed_bounded (S : Nat)
    (v : CrepProgHOL width) (v1 : CrepSemHOLState width σ)
    (res : Option (CrepResultHOLExact width)) (s1 : CrepSemHOLState width σ)
    (t : LoopSemStateFiniteExact width σ) (ctxt : CrepToLoopContextExact) (l : NumSet)
    (hsz : csize v ≤ S) (hcb : CodeBoundedC S v1)
    (h : evalCrepSemHOLProgExact v1 v = (res, s1) ∧ res ≠ some .error ∧
        crepToLoopStateRelExact v1 t ∧
        crepToLoopMemRelHOLExact v1.memory t.memory v1.memaddrs ∧
        crepToLoopGlobalsRelHOLExact v1.globals t.globals ∧
        crepToLoopCodeRelExact ctxt v1.code t.code ∧
        crepToLoopLocalsRelExact ctxt l v1.locals t.locals) :
    ∃ (ck : Nat) (res1 : Option (LoopSemStateFiniteExact.LoopResultExact width))
      (t1 : LoopSemStateFiniteExact width σ),
      LoopSemStateFiniteExact.evaluate (compileHOLExact ctxt l v)
          { t with clock := t.clock + ck } = (res1, t1) ∧
      crepToLoopStateRelExact s1 t1 ∧
      res1 = resultToLoop res ∧
      t.clock + ck - t1.clock ≤ (S + 2) * (v1.clock - s1.clock) + csize v := by
  obtain ⟨ck, res1, t1, h1, h2, _, _, _, h6, _, hb⟩ :=
    crepToLoop_ncompile_correct_bounded S v v1 res s1 t ctxt l hsz hcb h
  refine ⟨ck, res1, t1, h1, h2, h6, ?_⟩
  have e1 := h.2.2.1.2.2.1
  have e2 := h2.2.2.1
  have hmono : s1.clock ≤ v1.clock := by
    have := evalCrepSemHOLProgExact_clock_le v1 v
    rw [h.1] at this; exact this
  rw [Nat.succ_mul]
  omega

end InitECandidate.Solver.Compiler.CrepToLoop
