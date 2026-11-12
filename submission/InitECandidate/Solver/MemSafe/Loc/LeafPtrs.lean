import InitECandidate.Solver.MemSafe.Loc.LeafGw

set_option autoImplicit false

/-!
# `ws_account_leaf`: the allocator pointers (sonnet-loc, deliverable 2, first conjunct)

`leaf_ptrs`: a return leaves ordered pointers with the entry `heap_ptr` (`heap_release(mark)`).
-/

set_option maxRecDepth 1000000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Loc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
open InitECandidate.Solver.Spec.Mpt.Leaves (hoare_decL hoare_decCallL)

variable {σ : Type} {X : Ctx 64}

theorem leaf_ptrs (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "ws_account_leaf") (fun _ s r t => ∀ v, r = .returned v →
      ∀ q, ptrsOf s = some q → q.Ordered → ∃ q', ptrsOf t = some q' ∧ q'.Ordered ∧ q.hp ≤ q'.hp) := by
  refine funSpec_of_hoare (R := fun vs s v t => ∀ q, ptrsOf s = some q → q.Ordered →
      ∃ q', ptrsOf t = some q' ∧ q'.Ordered ∧ q.hp ≤ q'.hp) fun vs body callee rs hl s0 hs0 hloc => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, hsa, hla⟩ := lookupCode_one code_ws_account_leaf hl
  intro s hs hP htr v hv q hq ho
  subst hP
  obtain ⟨H0, F0, S0, hgH, hgF, hgS, hqe⟩ := AllocImpl.ptrsOf_some hq
  suffices H : Hoare σ X (fun t => t = s) leafBody
      (fun r t => ∀ v, r = some (.returned v) → ∃ q', ptrsOf t = some q' ∧ q'.Ordered ∧ q.hp ≤ q'.hp)
    from H s hs rfl htr v hv
  unfold leafBody
  -- `heap_mark()`
  refine hoare_decCallL (markSpec'_heap_mark hC) (fun _ _ _ h => h)
    fun s1 _ hP vs hvs callee v1 st1 hR1 _ hsh1 => ?_
  subst s1
  have hvs0 : vs = [] := by rw [evs_nil] at hvs; exact (Option.some.inj hvs).symm
  subst hvs0
  obtain ⟨hm1, hg1, hv1⟩ := hR1 (by simp [Good]) rfl
  have hv1' : v1 = .val (.word H0) := by
    have := hv1 v1 rfl
    exact mark_val_word this hgH
  subst hv1'
  set u1 := setVarHOLFinite (nm "mark") (.val (.word H0)) { st1 with locals := s.locals } with hu1
  have hq1 : ptrsOf u1 = some q := (Spec.Mpt.ptrsOf_frame (by rw [hu1]; exact hg1)).trans hq
  -- `alloc(32)`
  refine hoare_decCallL (allocSpec_alloc hC) (fun _ _ _ h => h)
    fun s2 _ hP2 vs2 hvs2 callee2 v2 st2 hR2 _ hsh2 => ?_
  subst s2
  rw [evs_cons (ev_cw _ 32) evs_nil] at hvs2
  simp only [Option.some.injEq] at hvs2
  subst hvs2
  obtain ⟨hm2, hg2, p2, hp2, ho2, hmono2, hret2⟩ := hR2 (by simp [Good]) _ q rfl hq1 ho
  obtain ⟨T, rfl, -⟩ := hret2 v2 rfl
  set u2 := setVarHOLFinite (nm "h") (.val (.word T)) { st2 with locals := u1.locals } with hu2
  have hq2 : ptrsOf u2 = some p2 := hp2
  have hmark2 : u2.locals.lookup (nm "mark") = some (.val (.word H0)) := by
    rw [hu2, lk_set_ne _ _ (by decide)]; exact lk_set_self _ _ _
  -- `keccak256(...)`
  refine hoare_seq (R := fun r t => r = none ∧ ptrsOf t = some p2 ∧
      t.locals.lookup (nm "mark") = some (.val (.word H0))) ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_callD (keccak_keep hC) ?_
    intro s3 _ hP3 vs3 hvs3 callee3 v3 st3 hR3 _
    subst hP3
    exact ⟨rfl, (Spec.Mpt.ptrsOf_frame rfl).trans (hR3.trans (Spec.Mpt.ptrsOf_frame rfl) ▸ hq2), hmark2⟩
  refine hoare_pre (P := fun t => ptrsOf t = some p2 ∧ t.locals.lookup (nm "mark") = some (.val (.word H0)))
    ?_ (fun t _ h => h.2)
  -- `trie_lookup(...)`
  refine hoare_decCallL (tl_keep hC) (fun _ _ _ h => h)
    fun s4 _ ⟨hq4, hm4⟩ vs4 hvs4 callee4 v4 st4 hR4 _ hsh4 => ?_
  have hq5 : ptrsOf st4 = some p2 := (hR4.trans (Spec.Mpt.ptrsOf_frame rfl)).trans hq4
  set u4 := setVarHOLFinite (nm "r") v4 { st4 with locals := s4.locals } with hu4
  have hq4' : ptrsOf u4 = some p2 := (Spec.Mpt.ptrsOf_frame rfl).trans hq5
  have hmark4 : u4.locals.lookup (nm "mark") = some (.val (.word H0)) := by
    rw [hu4, lk_set_ne _ _ (by decide)]; exact hm4
  -- `heap_release(mark)`
  refine hoare_seq (R := fun r t => r = none ∧ ptrsOf t = some (AllocImpl.setP p2 .heap H0.toNat)) ?_
    (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_callD (releaseSpec_heap_release hC) ?_
    intro s5 _ hP5 vs5 hvs5 callee5 v5 st5 hR5 _
    subst s5
    rw [evs_cons (ev_lw hmark4) evs_nil] at hvs5
    simp only [Option.some.injEq] at hvs5
    subst hvs5
    obtain ⟨hm5, hw5, ho5⟩ := hR5 (by simp [Good]) H0 rfl
    refine ⟨rfl, ?_⟩
    have := AllocImpl.ptrsOf_set (s := u4.callEntryStateHOLFinite callee5) (t := st5) (p := p2)
      (Spec.Mpt.ptrsOf_frame rfl |>.trans hq4') .heap hw5 ho5
    exact (Spec.Mpt.ptrsOf_frame rfl).trans this
  · refine hoare_return fun t _ ⟨_, hp⟩ v5 hv5 v' hv' => ?_
    refine ⟨AllocImpl.setP p2 .heap H0.toNat, (Spec.Mpt.ptrsOf_frame rfl).trans hp, ?_, ?_⟩
    · subst hqe
      obtain ⟨o1, o2, o3, o4, o5, o6, o7, o8⟩ := ho
      obtain ⟨p1, p2', p3, p4, p5, p6, p7, p8⟩ := ho2
      exact ⟨o1, o2, p3, p4, p5, o6, p7, p8⟩
    · subst hqe
      exact le_rfl

end InitECandidate.Solver.MemSafe.Loc

#print axioms InitECandidate.Solver.MemSafe.Loc.leaf_ptrs
