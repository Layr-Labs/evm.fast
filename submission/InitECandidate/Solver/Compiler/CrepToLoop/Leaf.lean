import InitECandidate.Solver.Compiler.CrepToLoop.Straight

/-!
# Leaves and expressions: bounds from Flapjack's unbounded theorems

For straight compiled code the extra clock is bounded by a target-only argument: `state_rel`
forces the source and target clocks to agree before and after, so the extra clock `ck`
satisfies `ck + consumed_source = consumed_target ≤ slc code` (`clock_le_straight`).
Hence Flapjack's own witnesses (`crepToLoop_comp_exp_preserves_eval`,
`crepToLoop_comp_exps_preserves_eval`, `crepToLoopNcompileCorrectOf`) already satisfy the
bounds, and no proof needs to be copied for the 14 leaf statements and for expressions.
-/

namespace InitECandidate.Solver.Compiler.CrepToLoop

open Flapjack Flapjack.Pancake.CrepToLoop.Proofs.NCompileCorrect

set_option autoImplicit false

variable {width : Nat} [NeZero width] {σ : Type}

/-- `comp_exp_preserves_eval` with `ck ≤ esize e`. -/
theorem compExp_bounded (s : CrepSemHOLState width σ) (e : CrepExpHOL width)
    (v : HolWordLab width) (t : LoopSemStateFiniteExact width σ)
    (ctxt : CrepToLoopContextExact) (tmp : Nat) (l : NumSet)
    (p : List (HolLoopProg width)) (le : HolLoopExp width) (ntmp : Nat) (nl : NumSet)
    (h : evalCrepSemHOLExp s e = some v ∧
      crepToLoopStateRelExact s t ∧
      crepToLoopMemRelHOLExact s.memory t.memory s.memaddrs ∧
      crepToLoopGlobalsRelHOLExact s.globals t.globals ∧
      crepToLoopCodeRelExact ctxt s.code t.code ∧
      crepToLoopLocalsRelExact ctxt l s.locals t.locals ∧
      compileExpHOLExact ctxt tmp l e = (p, le, ntmp, nl) ∧
      ctxt.vmax < tmp) :
    ∃ (ck : Nat) (st : LoopSemStateFiniteExact width σ),
      LoopSemStateFiniteExact.evaluate (loopNestedSeqHOL p)
          { t with clock := t.clock + ck } = (none, st) ∧
      LoopSemStateFiniteExact.eval st le = some (wlabWlocExact v) ∧
      crepToLoopStateRelExact s st ∧
      crepToLoopMemRelHOLExact s.memory st.memory s.memaddrs ∧
      crepToLoopGlobalsRelHOLExact s.globals st.globals ∧
      crepToLoopCodeRelExact ctxt s.code st.code ∧
      crepToLoopLocalsRelExact ctxt nl s.locals st.locals ∧
      ck ≤ esize e := by
  obtain ⟨ck, st, h1, h2, h3, h4, h5, h6, h7⟩ :=
    crepToLoop_comp_exp_preserves_eval s e v t ctxt tmp l p le ntmp nl h
  refine ⟨ck, st, h1, h2, h3, h4, h5, h6, h7, ?_⟩
  obtain ⟨hst, hsl⟩ := compileExp_nested_straight ctxt tmp l e p le ntmp nl h.2.2.2.2.2.2.1
  have hc := clock_le_straight _ { t with clock := t.clock + ck } hst
  rw [h1] at hc
  have e1 := h.2.1.2.2.1
  have e2 := h3.2.2.1
  simp only at hc
  omega

/-- `comp_exps_preserves_eval` with `ck ≤ esizeL es`. -/
theorem compExps_bounded (es : List (CrepExpHOL width)) (s : CrepSemHOLState width σ)
    (vs : List (HolWordLab width)) (t : LoopSemStateFiniteExact width σ)
    (ctxt : CrepToLoopContextExact) (tmp : Nat) (l : NumSet)
    (p : List (HolLoopProg width)) (les : List (HolLoopExp width)) (ntmp : Nat) (nl : NumSet)
    (h : es.mapM (evalCrepSemHOLExp s) = some vs ∧
      crepToLoopStateRelExact s t ∧
      crepToLoopMemRelHOLExact s.memory t.memory s.memaddrs ∧
      crepToLoopGlobalsRelHOLExact s.globals t.globals ∧
      crepToLoopCodeRelExact ctxt s.code t.code ∧
      crepToLoopLocalsRelExact ctxt l s.locals t.locals ∧
      compileExpsHOLExact ctxt tmp l es = (p, les, ntmp, nl) ∧
      ctxt.vmax < tmp) :
    ∃ (ck : Nat) (st : LoopSemStateFiniteExact width σ),
      LoopSemStateFiniteExact.evaluate (loopNestedSeqHOL p)
          { t with clock := t.clock + ck } = (none, st) ∧
      les.mapM (LoopSemStateFiniteExact.eval st) = some (vs.map wlabWlocExact) ∧
      crepToLoopStateRelExact s st ∧
      crepToLoopMemRelHOLExact s.memory st.memory s.memaddrs ∧
      crepToLoopGlobalsRelHOLExact s.globals st.globals ∧
      crepToLoopCodeRelExact ctxt s.code st.code ∧
      crepToLoopLocalsRelExact ctxt nl s.locals st.locals ∧
      ck ≤ esizeL es := by
  obtain ⟨ck, st, h1, h2, h3, h4, h5, h6, h7⟩ :=
    crepToLoop_comp_exps_preserves_eval es s vs t ctxt tmp l p les ntmp nl h
  refine ⟨ck, st, h1, h2, h3, h4, h5, h6, h7, ?_⟩
  obtain ⟨hst, hsl⟩ := compileExps_nested_straight ctxt tmp l es p les ntmp nl h.2.2.2.2.2.2.1
  have hc := clock_le_straight _ { t with clock := t.clock + ck } hst
  rw [h1] at hc
  have e1 := h.2.1.2.2.1
  have e2 := h3.2.2.1
  simp only at hc
  omega

/-- A program whose compiled code is always straight with at most `csize p` ticks satisfies
the bounded motive with Flapjack's own witness. -/
theorem propertyAtB_of_straight (S : Nat) (p : CrepProgHOL width) (s : CrepSemHOLState width σ)
    (hstr : ∀ ctxt l, straight (compileHOLExact ctxt l p) = true ∧
      slc (compileHOLExact ctxt l p) ≤ csize p) :
    PropertyAtB S p s := by
  intro _ _ res s1 t ctxt l he hne hs hm hg hc hl
  obtain ⟨ck, r1, t1, hrun, hs1, hm1, hg1, hc1, hr1, hl1⟩ :=
    crepToLoopNcompileCorrectOf p s res s1 t ctxt l he hne hs hm hg hc hl
  refine ⟨ck, r1, t1, hrun, hs1, hm1, hg1, hc1, hr1, hl1, ?_⟩
  obtain ⟨hst, hsl⟩ := hstr ctxt l
  have hcl := clock_le_straight _ { t with clock := t.clock + ck } hst
  rw [hrun] at hcl
  simp only at hcl
  have e1 := hs.2.2.1
  have e2 := hs1.2.2.1
  have hmono : s1.clock ≤ s.clock := by
    have := evalCrepSemHOLProgExact_clock_le s p
    rw [he] at this; exact this
  exact pot_of_le hmono (by omega)

/-- The 14 leaf statements satisfy the bounded motive. -/
theorem propertyAtB_leaf (S : Nat) (p : CrepProgHOL width) (s : CrepSemHOLState width σ)
    (hp : IsLeaf p) : PropertyAtB S p s :=
  propertyAtB_of_straight S p s (fun ctxt l => compile_leaf_straight ctxt l p hp)

end InitECandidate.Solver.Compiler.CrepToLoop
