import InitECandidate.Solver.Spec.Mpt.Leaves.BelowCommon

/-!
# `node_new_ext`, `node_new_leaf`, `nibbles_concat` write only below `scratch_ptr`

`BelowSP … (fun _ _ => True)` for the three constructors the delete unwind calls. Every good result
(returns and the `alloc` trap) keeps `scratch_ptr` and writes only fresh heap below `heapEnd ≤ sp`.

`nibbles_concat(a, al, b, bl)` allocates `al + bl` (mod `2^64`) and copies twice. Under `DomTop X`
each `memcpy` that returns has `N = 0 ∨ D + N < 2^63` (`footD_memcpy`), so a wrapped `al + bl`
cannot return; otherwise both copies stay inside the fresh block.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.Spec.Mpt.Leaves
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Dec (State InBlk WordE wordE_cw wordE_lv)

variable {σ : Type} {X : Ctx 64}

open MemSafe (ptrsOf Ptrs heapEnd heapBase scratchEnd)

theorem good_of_abn {r : PanSemResultExact 64} (h : MemSafe.Abn r) : Good (some r) := by
  rcases h with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;> simp [Good]

/-- The heap allocation of a constructor: the abnormal results keep the frame; a returned block
`q` lies below `heapEnd`. -/
theorem bf_alloc_abn (hC : X.code.lookup = guestCode) {p : Ptrs} {s0 s st : State σ}
    {callee : HolFiniteMapExact MlS (ValueHOL 64)} {r : PanSemResultExact 64} {k : Nat}
    (hp : ptrsOf s0 = some p) (hord : p.Ordered) (hs : s = s0)
    (hR : Good (some r) → ∀ (n : BitVec 64) (p : Ptrs),
      [ValueHOL.val (.word (BitVec.ofNat 64 k))] = [.val (.word n)] →
      ptrsOf (callEntryStateHOLFinite s callee) = some p → p.Ordered →
      st.memory = (callEntryStateHOLFinite s callee).memory ∧
      (∀ g, g ≠ MemSafe.Region.heap.global → st.globals.lookup g =
        (callEntryStateHOLFinite s callee).globals.lookup g) ∧
      ∃ p', ptrsOf st = some p' ∧ p'.Ordered ∧ p.Mono p' ∧
        ∀ v, r = .returned v → ∃ q : BitVec 64, v = .val (.word q) ∧ q.toNat % 8 = 0 ∧
          MemSafe.Region.heap.Live p' q.toNat n.toNat ∧
          ∀ a, q.toNat ≤ a → a < q.toNat + n.toNat → ¬ p.Allocated a)
    (hg : Good (some r)) : BF p s0.memory st := by
  subst hs
  obtain ⟨hm, hgl, p', hp', ho', -, -⟩ := hR hg _ p rfl hp hord
  exact bf_alloc (bf_refl hp hord) hp hm (hgl _ (by decide)) hp' ho'

theorem belowSP_node_new_ext (hC : X.code.lookup = guestCode) :
    BelowSP σ X (nm "node_new_ext") (fun _ _ => True) := by
  refine belowSP_of_hoareG fun vs body callee rs hl s0 _ hloc p hp hord _ => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, C, rfl, hsA, hsB, hsC, hA, hB, hC'⟩ :=
    lookupCode_three Dec.code_node_new_ext (by decide) (by decide) (by decide) hl
  obtain ⟨A, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨B, rfl⟩ := val_of_shapeEq_one hsB
  obtain ⟨C, rfl⟩ := val_of_shapeEq_one hsC
  refine MemSafe.hoareG_decCall (MemSafe.allocSpec_alloc (σ := σ) hC) ?_
    fun s _ hs0 avs havs callee' r st hR _ habn => ?_
  swap
  · rw [show s = s0 from hs0] at havs
    rw [evs_cons (ev_cw _ 56) evs_nil] at havs
    simp only [Option.some.injEq] at havs
    subst havs
    exact bf_empty (bf_alloc_abn hC hp hord hs0 hR (good_of_abn habn))
  intro s _ hs0 avs havs callee' v st hR _ _
  subst s
  rw [evs_cons (ev_cw _ 56) evs_nil] at havs
  simp only [Option.some.injEq] at havs
  subst havs
  obtain ⟨hm, hglob, p1, hp1, hord1, hmono, hq⟩ := hR (by simp [Good]) _ p rfl hp hord
  obtain ⟨q, rfl, -, ⟨hl1, hl2⟩, -⟩ := hq _ rfl
  simp only [BitVec.toNat_ofNat] at hl2
  have hsp : p1.sp = p.sp := ptrs_sp_eq hp hp1 (hglob _ (by decide))
  have hq64 : q.toNat + 56 ≤ 2 ^ 64 := by
    have := hord1.2.1; simp only [heapEnd] at this; omega
  have hqsp : q.toNat + 56 ≤ p.sp := by
    have := hord1.2.1; have := hord.2.2.1; have := hord.2.2.2.1; omega
  set t1 := setVarHOLFinite (nm "nd") (.val (.word q)) { st with locals := s0.locals }
  have hnd : t1.locals.lookup (nm "nd") = some (.val (.word q)) := lk_set_self _ _ _
  have hM1 : t1.memory = s0.memory := hm
  have hP1 : ptrsOf t1 = some p1 := by rw [← hp1]; rfl
  refine hoareG_pre (P := InBlk t1.locals t1.globals t1.memory q 56) ?_
    (fun t _ ht => by subst ht; exact ⟨rfl, rfl, fun a ha => absurd rfl ha⟩)
  have hlA : t1.locals.lookup (nm "nib") = some (.val (.word A)) := by
    rw [lk_set_ne _ _ (by decide)]; show s0.locals.lookup _ = _; rw [hloc]; exact hA
  have hlB : t1.locals.lookup (nm "nlen") = some (.val (.word B)) := by
    rw [lk_set_ne _ _ (by decide)]; show s0.locals.lookup _ = _; rw [hloc]; exact hB
  have hlC : t1.locals.lookup (nm "child") = some (.val (.word C)) := by
    rw [lk_set_ne _ _ (by decide)]; show s0.locals.lookup _ = _; rw [hloc]; exact hC'
  unfold Dec.nxK
  refine hoareG_seq_blk hnd (by decide) hq64 (wordE_cw _ _) (hoareG_seq_blk hnd (by decide) hq64
    (wordE_cw _ _) (hoareG_seq_blk hnd (by decide) hq64 (wordE_cw _ _) (hoareG_seq_blk hnd
      (by decide) hq64 (wordE_cw _ _) (hoareG_seq_blk hnd (by decide) hq64 (wordE_lv hlA)
        (hoareG_seq_blk hnd (by decide) hq64 (wordE_lv hlB)
          (hoareG_seq_blk hnd (by decide) hq64 (wordE_lv hlC) ?_))))))
  refine MemSafe.hoareG_return fun t _ ⟨hl, hg, hmt⟩ w _ => ?_
  refine ⟨p1, ?_, hord1, hsp, fun a ha => ?_⟩
  · show ptrsOf (emptyLocalsHOLFinite t) = _
    rw [← hP1]
    exact ptrsOf_frame hg
  · have ha' : t.memory a ≠ t1.memory a := by rw [hM1]; exact ha
    obtain ⟨-, h2⟩ := hmt a ha'
    omega

theorem belowSP_node_new_leaf (hC : X.code.lookup = guestCode) :
    BelowSP σ X (nm "node_new_leaf") (fun _ _ => True) := by
  refine belowSP_of_hoareG fun vs body callee rs hl s0 _ hloc p hp hord _ => ?_
  rw [hC] at hl
  obtain ⟨rfl, A, B, C, D, rfl, hsA, hsB, hsC, hsD, hA, hB, hC', hD⟩ :=
    Dec.lookupCode_four' Dec.code_node_new_leaf (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) hl
  obtain ⟨A, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨B, rfl⟩ := val_of_shapeEq_one hsB
  obtain ⟨C, rfl⟩ := val_of_shapeEq_one hsC
  obtain ⟨D, rfl⟩ := val_of_shapeEq_one hsD
  refine MemSafe.hoareG_decCall (MemSafe.allocSpec_alloc (σ := σ) hC) ?_
    fun s _ hs0 avs havs callee' r st hR _ habn => ?_
  swap
  · rw [show s = s0 from hs0] at havs
    rw [evs_cons (ev_cw _ 64) evs_nil] at havs
    simp only [Option.some.injEq] at havs
    subst havs
    exact bf_empty (bf_alloc_abn hC hp hord hs0 hR (good_of_abn habn))
  intro s _ hs0 avs havs callee' v st hR _ _
  subst s
  rw [evs_cons (ev_cw _ 64) evs_nil] at havs
  simp only [Option.some.injEq] at havs
  subst havs
  obtain ⟨hm, hglob, p1, hp1, hord1, hmono, hq⟩ := hR (by simp [Good]) _ p rfl hp hord
  obtain ⟨q, rfl, -, ⟨hl1, hl2⟩, -⟩ := hq _ rfl
  simp only [BitVec.toNat_ofNat] at hl2
  have hsp : p1.sp = p.sp := ptrs_sp_eq hp hp1 (hglob _ (by decide))
  have hq64 : q.toNat + 64 ≤ 2 ^ 64 := by
    have := hord1.2.1; simp only [heapEnd] at this; omega
  have hqsp : q.toNat + 64 ≤ p.sp := by
    have := hord1.2.1; have := hord.2.2.1; have := hord.2.2.2.1; omega
  set t1 := setVarHOLFinite (nm "nd") (.val (.word q)) { st with locals := s0.locals }
  have hnd : t1.locals.lookup (nm "nd") = some (.val (.word q)) := lk_set_self _ _ _
  have hM1 : t1.memory = s0.memory := hm
  have hP1 : ptrsOf t1 = some p1 := by rw [← hp1]; rfl
  refine hoareG_pre (P := InBlk t1.locals t1.globals t1.memory q 64) ?_
    (fun t _ ht => by subst ht; exact ⟨rfl, rfl, fun a ha => absurd rfl ha⟩)
  have hlA : t1.locals.lookup (nm "nib") = some (.val (.word A)) := by
    rw [lk_set_ne _ _ (by decide)]; show s0.locals.lookup _ = _; rw [hloc]; exact hA
  have hlB : t1.locals.lookup (nm "nlen") = some (.val (.word B)) := by
    rw [lk_set_ne _ _ (by decide)]; show s0.locals.lookup _ = _; rw [hloc]; exact hB
  have hlC : t1.locals.lookup (nm "vptr") = some (.val (.word C)) := by
    rw [lk_set_ne _ _ (by decide)]; show s0.locals.lookup _ = _; rw [hloc]; exact hC'
  have hlD : t1.locals.lookup (nm "vlen") = some (.val (.word D)) := by
    rw [lk_set_ne _ _ (by decide)]; show s0.locals.lookup _ = _; rw [hloc]; exact hD
  unfold Dec.nlK Dec.stk
  refine hoareG_seq_blk hnd (by decide) hq64 (wordE_cw _ _) (hoareG_seq_blk hnd (by decide) hq64
    (wordE_cw _ _) (hoareG_seq_blk hnd (by decide) hq64 (wordE_cw _ _) (hoareG_seq_blk hnd
      (by decide) hq64 (wordE_cw _ _) (hoareG_seq_blk hnd (by decide) hq64 (wordE_lv hlA)
        (hoareG_seq_blk hnd (by decide) hq64 (wordE_lv hlB)
          (hoareG_seq_blk hnd (by decide) hq64 (wordE_lv hlC)
            (hoareG_seq_blk hnd (by decide) hq64 (wordE_lv hlD) ?_)))))))
  refine MemSafe.hoareG_return fun t _ ⟨hl, hg, hmt⟩ w _ => ?_
  refine ⟨p1, ?_, hord1, hsp, fun a ha => ?_⟩
  · show ptrsOf (emptyLocalsHOLFinite t) = _
    rw [← hP1]
    exact ptrsOf_frame hg
  · have ha' : t.memory a ≠ t1.memory a := by rw [hM1]; exact ha
    obtain ⟨-, h2⟩ := hmt a ha'
    omega

/-! ## `nibbles_concat` -/

def ncBody : ProgHOL 64 :=
  .decCall (nm "out") .one (nm "alloc") [.op .add [lv (nm "al"), lv (nm "bl")]]
    (.seq (callD (nm "memcpy") [lv (nm "out"), lv (nm "a"), lv (nm "al")])
      (.seq (callD (nm "memcpy") [.op .add [lv (nm "out"), lv (nm "al")], lv (nm "b"), lv (nm "bl")])
        (.return (lv (nm "out")))))

def params_nc : List (MlS × ShapeHOL) :=
  [(nm "a", .one), (nm "al", .one), (nm "b", .one), (nm "bl", .one)]

theorem entry_nibbles_concat : fnEntry Guest.Software.guestFn_nibbles_concat =
    (nm "nibbles_concat", params_nc, ncBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_nibbles_concat : guestCode (nm "nibbles_concat") = some (params_nc, ncBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 252) (by decide)) ⟨_, rfl⟩
    entry_nibbles_concat

/-- The two copies land below `sp`, or one of them could not have returned. -/
theorem nc_below {q AL BL : BitVec 64} {hp' sp : Nat} (hq : q.toNat + (AL + BL).toNat ≤ hp')
    (hhs : hp' ≤ sp) (hsp : sp < 2 ^ 64) (h1 : AL.toNat = 0 ∨ q.toNat + AL.toNat < 2 ^ 63)
    (h2 : BL.toNat = 0 ∨ (q + AL).toNat + BL.toNat < 2 ^ 63) (a : BitVec 64)
    (ha : MemSafe.Overlap q.toNat AL.toNat a ∨ MemSafe.Overlap (q + AL).toNat BL.toNat a) :
    a.toNat < sp := by
  have hsum : (AL + BL).toNat = (AL.toNat + BL.toNat) % 2 ^ 64 := BitVec.toNat_add _ _
  have hA := AL.isLt
  have hB := BL.isLt
  by_cases hw : AL.toNat + BL.toNat < 2 ^ 64
  · rw [Nat.mod_eq_of_lt hw] at hsum
    have hqa : (q + AL).toNat = q.toNat + AL.toNat := by
      rw [BitVec.toNat_add, Nat.mod_eq_of_lt (by omega)]
    rcases ha with ⟨-, -, h⟩ | ⟨-, -, h⟩
    · omega
    · rw [hqa] at h; omega
  · exfalso
    rcases h1 with h1 | h1 <;> rcases h2 with h2 | h2 <;> omega

theorem belowSP_nibbles_concat (hC : X.code.lookup = guestCode) (hA : MemSafe.Helpers.AlignedDom X)
    (hT : DomTop X) : BelowSP σ X (nm "nibbles_concat") (fun _ _ => True) := by
  refine belowSP_of_hoareG fun vs body callee rs hl s0 _ hloc p hp hord _ => ?_
  rw [hC] at hl
  obtain ⟨rfl, Av, AL, Bv, BL, rfl, hsA, hsB, hsC, hsD, hlA, hlB, hlC, hlD⟩ :=
    Dec.lookupCode_four' code_nibbles_concat (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) hl
  obtain ⟨Av, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨AL, rfl⟩ := val_of_shapeEq_one hsB
  obtain ⟨Bv, rfl⟩ := val_of_shapeEq_one hsC
  obtain ⟨BL, rfl⟩ := val_of_shapeEq_one hsD
  have ha0 : s0.locals.lookup (nm "a") = some (.val (.word Av)) := by rw [hloc]; exact hlA
  have hal0 : s0.locals.lookup (nm "al") = some (.val (.word AL)) := by rw [hloc]; exact hlB
  have hb0 : s0.locals.lookup (nm "b") = some (.val (.word Bv)) := by rw [hloc]; exact hlC
  have hbl0 : s0.locals.lookup (nm "bl") = some (.val (.word BL)) := by rw [hloc]; exact hlD
  have hargs : evs s0 [.op .add [lv (nm "al"), lv (nm "bl")]] = some [.val (.word (AL + BL))] :=
    evs_cons (ev_add2 (ev_lv' hal0) (ev_lv' hbl0)) evs_nil
  refine MemSafe.hoareG_decCall (MemSafe.allocSpec_alloc (σ := σ) hC) ?_
    fun s _ hs0 avs havs callee' r st hR _ habn => ?_
  swap
  · subst s
    rw [hargs] at havs
    simp only [Option.some.injEq] at havs
    subst havs
    obtain ⟨hm, hgl, p', hp', ho', -, -⟩ := hR (good_of_abn habn) _ p rfl hp hord
    exact bf_empty (bf_alloc (bf_refl hp hord) hp hm (hgl _ (by decide)) hp' ho')
  intro s _ hs0 avs havs callee' v st hR _ _
  subst s
  rw [hargs] at havs
  simp only [Option.some.injEq] at havs
  subst havs
  obtain ⟨hm, hglob, p1, hp1, hord1, hmono, hq⟩ := hR (by simp [Good]) _ p rfl hp hord
  obtain ⟨q, rfl, -, ⟨hl1, hl2⟩, -⟩ := hq _ rfl
  have hsp : p1.sp = p.sp := ptrs_sp_eq hp hp1 (hglob _ (by decide))
  have hhsp : p1.hp ≤ p.sp := by
    have := hord1.2.1; have := hord.2.2.1; have := hord.2.2.2.1; omega
  have hspE : p.sp < 2 ^ 64 := by have := hord.2.2.2.2.1; simp only [scratchEnd] at this; omega
  set t1 := setVarHOLFinite (nm "out") (.val (.word q)) { st with locals := s0.locals }
  have hP1 : ptrsOf t1 = some p1 := by rw [← hp1]; rfl
  have hM1 : t1.memory = s0.memory := hm
  have lk : ∀ x, x ≠ nm "out" → t1.locals.lookup x = s0.locals.lookup x := fun x hx => by
    rw [lk_set_ne _ _ (Ne.symm hx)]
  -- after the first copy
  let J1 : State σ → Prop := fun t => t.locals = t1.locals ∧ t.globals = t1.globals ∧
    MemSafe.ModifiesOnly (MemSafe.Overlap q.toNat AL.toNat) s0.memory t.memory ∧
    (AL.toNat = 0 ∨ q.toNat + AL.toNat < 2 ^ 63)
  refine hoareG_seq (R := fun r t => r = none ∧ J1 t) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_pre (P := fun t => t = t1) ?_ fun _ _ h => h
    refine MemSafe.hoareG_callD (footD_memcpy hC hA hT) (fun u _ hu vs' hvs' callee'' w st' hR' _ => ?_)
      fun u _ hu vs' hvs' callee'' r' st' hR' _ habn' => ?_
    · subst hu
      rw [evs_cons (ev_lv' (lk_set_self _ _ _)) (evs_cons (ev_lv' (by rw [lk _ (by decide)]; exact ha0))
        (evs_cons (ev_lv' (by rw [lk _ (by decide)]; exact hal0)) evs_nil))] at hvs'
      simp only [Option.some.injEq] at hvs'
      subst hvs'
      obtain ⟨-, hg', hmod, hnw⟩ := hR' (by simp [Good]) q Av AL rfl
      exact ⟨rfl, rfl, hg', by rw [← hM1]; exact hmod, hnw⟩
    · subst hu
      rw [evs_cons (ev_lv' (lk_set_self _ _ _)) (evs_cons (ev_lv' (by rw [lk _ (by decide)]; exact ha0))
        (evs_cons (ev_lv' (by rw [lk _ (by decide)]; exact hal0)) evs_nil))] at hvs'
      simp only [Option.some.injEq] at hvs'
      subst hvs'
      obtain ⟨⟨w, rfl⟩, -⟩ := hR' (good_of_abn habn') q Av AL rfl
      rcases habn' with ⟨_, _, h⟩ | ⟨_, h⟩ <;> cases h
  -- the second copy, then return
  refine hoareG_seq (R := fun r t => r = none ∧ t.globals = t1.globals ∧
      t.locals = t1.locals ∧
      MemSafe.ModifiesOnly (fun a => MemSafe.Overlap q.toNat AL.toNat a ∨
        MemSafe.Overlap (q + AL).toNat BL.toNat a) s0.memory t.memory ∧
      (AL.toNat = 0 ∨ q.toNat + AL.toNat < 2 ^ 63) ∧
      (BL.toNat = 0 ∨ (q + AL).toNat + BL.toNat < 2 ^ 63)) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine MemSafe.hoareG_callD (footD_memcpy hC hA hT)
      (fun u _ ⟨_, hul, hug, hmod1, hnw1⟩ vs' hvs' callee'' w st' hR' _ => ?_)
      fun u _ ⟨_, hul, _, _, _⟩ vs' hvs' callee'' r' st' hR' _ habn' => ?_
    · have hout : u.locals.lookup (nm "out") = some (.val (.word q)) := by rw [hul]; exact lk_set_self _ _ _
      rw [evs_cons (ev_add2 (ev_lv' hout) (ev_lv' (by rw [hul, lk _ (by decide)]; exact hal0)))
        (evs_cons (ev_lv' (by rw [hul, lk _ (by decide)]; exact hb0))
        (evs_cons (ev_lv' (by rw [hul, lk _ (by decide)]; exact hbl0)) evs_nil))] at hvs'
      simp only [Option.some.injEq] at hvs'
      subst hvs'
      obtain ⟨-, hg', hmod, hnw⟩ := hR' (by simp [Good]) (q + AL) Bv BL rfl
      refine ⟨rfl, by rw [← hug]; exact hg', hul, fun a ha => ?_, hnw1, hnw⟩
      have e1 := hmod a fun h => ha (Or.inr h)
      have e2 := hmod1 a fun h => ha (Or.inl h)
      exact e1.trans e2
    · have hout : u.locals.lookup (nm "out") = some (.val (.word q)) := by rw [hul]; exact lk_set_self _ _ _
      rw [evs_cons (ev_add2 (ev_lv' hout) (ev_lv' (by rw [hul, lk _ (by decide)]; exact hal0)))
        (evs_cons (ev_lv' (by rw [hul, lk _ (by decide)]; exact hb0))
        (evs_cons (ev_lv' (by rw [hul, lk _ (by decide)]; exact hbl0)) evs_nil))] at hvs'
      simp only [Option.some.injEq] at hvs'
      subst hvs'
      obtain ⟨⟨w, rfl⟩, -⟩ := hR' (good_of_abn habn') (q + AL) Bv BL rfl
      rcases habn' with ⟨_, _, h⟩ | ⟨_, h⟩ <;> cases h
  refine MemSafe.hoareG_return fun t _ ⟨_, hg, _, hmod, hnw1, hnw2⟩ _ _ => ?_
  refine ⟨p1, ?_, hord1, hsp, fun a ha => ?_⟩
  · show ptrsOf (emptyLocalsHOLFinite t) = _
    rw [← hP1]
    exact ptrsOf_frame hg
  · have hin : MemSafe.Overlap q.toNat AL.toNat a ∨ MemSafe.Overlap (q + AL).toNat BL.toNat a := by
      by_contra hn; exact ha (hmod a hn)
    exact nc_below hl2 hhsp hspE hnw1 hnw2 a hin

end InitECandidate.Solver.Spec.Mpt.Leaves
