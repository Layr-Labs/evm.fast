import InitECandidate.Solver.Spec.Mpt.Leaves.MemDom
import InitECandidate.Solver.Spec.Mpt.Leaves.RlpFoot

/-!
# A frame for `BelowSP` proofs

`BF p M0 t` (the `BelowSP` post, `Spec/Mpt/DelChain.lean`): allocator pointers ordered, `scratch_ptr`
equal to `p.sp`, every cell changed since `M0` below `p.sp`. It ignores locals and results, so it
is the post of every good result of a `HoareG` proof (`belowSP_of_hoareG`). It survives callees with
a `BelowSP` spec (`bf_belowSP`), `alloc` (`bf_alloc`), stores below `p.sp` and `mpt_fail`
(`funSpec_mpt_fail_keep`: no memory or allocator change, never returns).

`node_new_leaf` and `node_new_ext` are `BelowSP … (fun _ _ => True)` (`belowSP_node_new_leaf`,
`belowSP_node_new_ext`): `alloc` plus stores into the fresh block, below `heapEnd ≤ sp`.
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

/-- The `BelowSP` frame. -/
def BF (p : Ptrs) (M0 : MemSafe.Mem) (t : State σ) : Prop :=
  ∃ p' : Ptrs, ptrsOf t = some p' ∧ p'.Ordered ∧ p'.sp = p.sp ∧
    ∀ a : BitVec 64, t.memory a ≠ M0 a → a.toNat < p.sp

theorem bf_refl {p : Ptrs} {t : State σ} (hp : ptrsOf t = some p) (ho : p.Ordered) :
    BF p t.memory t :=
  ⟨p, hp, ho, rfl, fun _ h => absurd rfl h⟩

theorem bf_locals {p : Ptrs} {M0 : MemSafe.Mem} {t : State σ}
    (L : HolFiniteMapExact MlS (ValueHOL 64)) (h : BF p M0 t) : BF p M0 { t with locals := L } := h

theorem bf_empty {p : Ptrs} {M0 : MemSafe.Mem} {t : State σ} (h : BF p M0 t) :
    BF p M0 (emptyLocalsHOLFinite t) := h

/-- Same pointers, memory changed only below `p.sp`. -/
theorem bf_mem {p : Ptrs} {M0 : MemSafe.Mem} {t u : State σ} (h : BF p M0 t)
    (hg : ptrsOf u = ptrsOf t) (hw : ∀ a : BitVec 64, u.memory a ≠ t.memory a → a.toNat < p.sp) :
    BF p M0 u := by
  obtain ⟨p1, hp1, ho1, hs1, hw1⟩ := h
  refine ⟨p1, hg.trans hp1, ho1, hs1, fun a ha => ?_⟩
  by_cases e : u.memory a = t.memory a
  · exact hw1 a (by rw [← e]; exact ha)
  · exact hw a e

theorem bf_keep {p : Ptrs} {M0 : MemSafe.Mem} {s t : State σ} (h : BF p M0 s)
    (hm : t.memory = s.memory) (hp : ptrsOf t = ptrsOf s) : BF p M0 t :=
  bf_mem h hp fun a ha => absurd (by rw [hm]) ha

/-- A callee with a `BelowSP` spec keeps the frame. -/
theorem bf_belowSP {Pre : List (ValueHOL 64) → State σ → Prop} {p : Ptrs} {M0 : MemSafe.Mem}
    {s st : State σ} {callee : HolFiniteMapExact MlS (ValueHOL 64)} {vs : List (ValueHOL 64)}
    {r : PanSemResultExact 64} (h : BF p M0 s)
    (hR : Good (some r) → ∀ q : Ptrs, ptrsOf (callEntryStateHOLFinite s callee) = some q →
      q.Ordered → Pre vs (callEntryStateHOLFinite s callee) → ∃ q' : Ptrs, ptrsOf st = some q' ∧
        q'.Ordered ∧ q'.sp = q.sp ∧ ∀ a : BitVec 64,
          st.memory a ≠ (callEntryStateHOLFinite s callee).memory a → a.toNat < q.sp)
    (hg : Good (some r)) (hpre : Pre vs (callEntryStateHOLFinite s callee)) : BF p M0 st := by
  obtain ⟨q, hq, hoq, hsq, hwq⟩ := h
  obtain ⟨q', hq', ho', hs', hw'⟩ := hR hg q hq hoq hpre
  refine ⟨q', hq', ho', hs'.trans hsq, fun a ha => ?_⟩
  by_cases e : st.memory a = s.memory a
  · exact hwq a (by rw [← e]; exact ha)
  · rw [← hsq]; exact hw' a e

/-- `BelowSP` from a `HoareG` triple with the `BF` post. -/
theorem belowSP_of_hoareG {f : MlS} {Pre : List (ValueHOL 64) → State σ → Prop}
    (h : ∀ vs body callee rs, lookupCodeHOLFinite X.code.lookup f vs = some (body, callee, rs) →
      ∀ s0 : State σ, InCtx s0 X → s0.locals = callee → ∀ p : Ptrs, ptrsOf s0 = some p →
        p.Ordered → Pre vs s0 → HoareG σ X (fun s => s = s0) body (fun _ t => BF p s0.memory t)) :
    BelowSP σ X f Pre := by
  intro vs body callee rs hl s hs hloc r hr hg p hp ho hpre
  have := h vs body callee rs hl s hs hloc p hp ho hpre s hs rfl (by rw [hr]; exact hg)
  exact this

/-! ## `alloc` -/

theorem ptrs_sp_eq {s t : State σ} {p p' : Ptrs} (hp : ptrsOf s = some p) (hp' : ptrsOf t = some p')
    (h : t.globals.lookup MemSafe.gScratch = s.globals.lookup MemSafe.gScratch) : p'.sp = p.sp := by
  obtain ⟨a, b, c, -, -, hc, rfl⟩ := MemSafe.AllocImpl.ptrsOf_some hp
  obtain ⟨a', b', c', -, -, hc', rfl⟩ := MemSafe.AllocImpl.ptrsOf_some hp'
  have e1 := MemSafe.AllocImpl.lookup_of_gword hc
  have e2 := MemSafe.AllocImpl.lookup_of_gword hc'
  rw [h, e1] at e2
  cases e2
  rfl

/-- An `alloc` result (memory and `scratch_ptr` unchanged, pointers ordered) keeps the frame. -/
theorem bf_alloc {p q q' : Ptrs} {M0 : MemSafe.Mem} {s st : State σ} (h : BF p M0 s)
    (hq : ptrsOf s = some q) (hm : st.memory = s.memory)
    (hgl : st.globals.lookup MemSafe.gScratch = s.globals.lookup MemSafe.gScratch)
    (hq' : ptrsOf st = some q') (ho' : q'.Ordered) : BF p M0 st := by
  obtain ⟨q1, hq1, -, hsq, hwq⟩ := h
  rw [hq] at hq1
  cases hq1
  exact ⟨q', hq', ho', (ptrs_sp_eq hq hq' hgl).trans hsq,
    fun a ha => hwq a (by rw [← hm]; exact ha)⟩

/-! ## `mpt_fail` -/

def failFns : EntryList := [fnEntry Guest.Software.guestFn_mpt_fail]
def failNames : List MlS := failFns.map Prod.fst

theorem failFns_valid : ∀ e ∈ failFns, guestCode e.1 = some e.2 := by
  intro e he
  simp only [failFns, List.mem_cons, List.not_mem_nil, or_false] at he
  rcases he with rfl
  exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 246) (by decide)) ⟨_, rfl⟩

theorem failFns_mw : failFns.all (fun e => mwFreeB failNames e.2.2.1) = true := by decide_cbv
theorem failFns_gw_heap : failFns.all (fun e => gwFreeB (nm "heap_ptr") failNames e.2.2.1) = true := by
  decide_cbv
theorem failFns_gw_frame :
    failFns.all (fun e => gwFreeB (nm "frame_mem_ptr") failNames e.2.2.1) = true := by decide_cbv
theorem failFns_gw_scratch :
    failFns.all (fun e => gwFreeB (nm "scratch_ptr") failNames e.2.2.1) = true := by decide_cbv
theorem mpt_fail_mem : failNames.contains (nm "mpt_fail") = true := by decide_cbv

/-- `mpt_fail` changes neither memory nor the allocator pointers, and never returns. -/
theorem funSpec_mpt_fail_keep (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "mpt_fail") (fun _ s r t => t.memory = s.memory ∧ ptrsOf t = ptrsOf s ∧
      ∀ v, r ≠ .returned v) := by
  have h0 := funSpec_mw (σ := σ) (X := X) (by
    rw [hC]; exact closed_of_entries (chk := mwFreeB) failFns_valid failFns_mw) mpt_fail_mem
  have h1 := funSpec_gw (σ := σ) (X := X) (by
    rw [hC]; exact closed_of_entries (chk := gwFreeB (nm "heap_ptr")) failFns_valid failFns_gw_heap)
    mpt_fail_mem
  have h2 := funSpec_gw (σ := σ) (X := X) (by
    rw [hC]; exact closed_of_entries (chk := gwFreeB (nm "frame_mem_ptr")) failFns_valid
      failFns_gw_frame) mpt_fail_mem
  have h3 := funSpec_gw (σ := σ) (X := X) (by
    rw [hC]; exact closed_of_entries (chk := gwFreeB (nm "scratch_ptr")) failFns_valid
      failFns_gw_scratch) mpt_fail_mem
  have h4 := funSpec_of_funRet (funRet_mpt_fail (σ := σ) hC)
  exact FunSpec.mono ((((h0.and h1).and h2).and h3).and h4) fun _ _ r _ ⟨⟨⟨⟨m, e1⟩, e2⟩, e3⟩, hr⟩ =>
    ⟨m, ptrsOf_of_gl e1 e2 e3, fun v hv => (hr v hv).elim⟩

/-- `if c { mpt_fail(k); } k'` in a `BF` proof: the continuation runs with `c` false. -/
theorem hoareG_failSeq (hC : X.code.lookup = guestCode) {P : State σ → Prop} {p : Ptrs}
    {M0 : MemSafe.Mem} {c : ExpHOL 64} {args : List (ExpHOL 64)} {k : ProgHOL 64}
    (hP : ∀ t, P t → BF p M0 t)
    (hk : HoareG σ X (fun t => P t ∧ ev t c = some (.val (.word 0))) k (fun _ t => BF p M0 t)) :
    HoareG σ X P (.seq (.ite c (.call (some (none, none)) (nm "mpt_fail") args) .skip) k)
      (fun _ t => BF p M0 t) := by
  refine hoareG_seq (R := fun r t => BF p M0 t ∧ (r = none → P t ∧ ev t c = some (.val (.word 0))))
    ?_ (fun _ _ _ _ _ h => h.1) (hoareG_pre hk fun _ _ h => h.2 rfl)
  refine hoareG_ite ?_ (hoareG_skip fun t _ ⟨hp, hc⟩ => ⟨hP t hp, fun _ => ⟨hp, hc⟩⟩)
  refine MemSafe.hoareG_callD (funSpec_mpt_fail_keep hC)
    (fun s _ ⟨_, _⟩ _ _ _ v _ ⟨_, _, hr⟩ _ => absurd rfl (hr v))
    fun s _ ⟨hp, _⟩ _ _ _ r st ⟨hm, hpt, _⟩ _ _ => ⟨bf_keep (hP s hp) hm hpt, fun h => by cases h⟩

/-! ## Stores into a fresh block -/

theorem hoareG_store_blk {L G : HolFiniteMapExact MlS (ValueHOL 64)} {M0 : MemSafe.Mem} {x : MlS}
    {q : BitVec 64} {n k : Nat} {e : ExpHOL 64} (hx : L.lookup x = some (.val (.word q)))
    (hk : k < n) (hq : q.toNat + n ≤ 2 ^ 64) (he : WordE (σ := σ) L e) :
    HoareG σ X (InBlk L G M0 q n) (.store (.op .add [lv x, cw k]) e)
      (fun r t => r = none ∧ InBlk L G M0 q n t) := by
  refine MemSafe.hoareG_store fun t _ ⟨hl, hg, hm⟩ w v mem hw hv hmem => ⟨rfl, hl, hg, fun a ha => ?_⟩
  rw [ev_add_cw (by rw [hl]; exact hx) k] at hw
  cases hw
  obtain ⟨V, rfl⟩ := he t hl v hv
  simp only [flattenHOL] at hmem
  obtain ⟨-, rfl⟩ := stores_one hmem
  simp only at ha
  by_cases e : a = q + BitVec.ofNat 64 k
  · subst e
    rw [Dec.toNat_add_lt (by omega)]
    omega
  · rw [if_neg e] at ha
    exact hm a ha

theorem hoareG_seq_blk {L G : HolFiniteMapExact MlS (ValueHOL 64)} {M0 : MemSafe.Mem} {x : MlS}
    {q : BitVec 64} {n k : Nat} {e : ExpHOL 64} {b : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hx : L.lookup x = some (.val (.word q))) (hk : k < n) (hq : q.toNat + n ≤ 2 ^ 64)
    (he : WordE (σ := σ) L e) (hb : HoareG σ X (InBlk L G M0 q n) b Q) :
    HoareG σ X (InBlk L G M0 q n) (.seq (.store (.op .add [lv x, cw k]) e) b) Q :=
  hoareG_seq (hoareG_store_blk hx hk hq he) (fun _ _ _ hr _ h => absurd h.1 hr)
    (hoareG_pre hb fun _ _ h => h.2)

end InitECandidate.Solver.Spec.Mpt.Leaves
