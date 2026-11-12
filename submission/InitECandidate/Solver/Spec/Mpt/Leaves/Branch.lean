import InitECandidate.Solver.Spec.Mpt.Decode.Final
import InitECandidate.Solver.MemSafe.Helpers.Mem

/-!
# `node_new_branch` returns a fresh 176-byte block

```
fun 1 node_new_branch() { var 1 nd = alloc(176); memzero(nd, 176); st nd + 0, 3; return nd; }
```

`freshFoot_node_new_branch`: `FreshFoot … (fun _ _ => True) (FreshRet 176)`. The block `nd` is
the entry `heap_ptr` (8-aligned), so the `memzero` footprint (`MemSafe.Helpers.foot_memzero`,
cells overlapping `[nd, nd + 176)`) is exactly the aligned cells of `[nd, nd + 176)`. This needs
`AlignedDom X` (word stores hit the cell they name), which holds for the guest context
(`MemSafe.Helpers.alignedDom_guestCtx`).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.Spec.Mpt.Leaves
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Dec

variable {σ : Type} {X : Ctx 64}

open MemSafe (rd ptrsOf Ptrs heapEnd heapBase scratchEnd)

/-! ## The code -/

def nbK : ProgHOL 64 :=
  .seq (.call (some (none, none)) (nm "memzero") [lv (nm "nd"), cw 176])
    (.seq (.store (.op .add [lv (nm "nd"), cw 0]) (cw 3)) (.return (lv (nm "nd"))))

def nbBody : ProgHOL 64 := .decCall (nm "nd") .one (nm "alloc") [cw 176] nbK

theorem entry_node_new_branch : fnEntry Guest.Software.guestFn_node_new_branch =
    (nm "node_new_branch", [], nbBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_node_new_branch : guestCode (nm "node_new_branch") = some ([], nbBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 258) (by decide)) ⟨_, rfl⟩
    entry_node_new_branch

theorem lookupCode_zero {code : MlS → Option (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL)}
    {f : MlS} {bd : ProgHOL 64} {rsh : ShapeHOL} (hc : code f = some ([], bd, rsh))
    {vs : List (ValueHOL 64)} {body : ProgHOL 64} {callee : HolFiniteMapExact MlS (ValueHOL 64)}
    {rs : ShapeHOL}
    (h : PanSemStateFiniteExact.lookupCodeHOLFinite code f vs = some (body, callee, rs)) :
    body = bd ∧ vs = [] :=
  MemSafe.AllocImpl.lookupCode_zero hc h

/-! ## `memzero` on an aligned block -/

/-- `memzero(x, n)` (result discarded) inside `InBlk … q n`, `q` 8-aligned. -/
theorem hoare_memzero_blk (hC : X.code.lookup = guestCode) (hA : MemSafe.Helpers.AlignedDom X)
    {L G : HolFiniteMapExact MlS (ValueHOL 64)} {M0 : MemSafe.Mem} {x : MlS} {q : BitVec 64}
    {n : Nat} (hx : L.lookup x = some (.val (.word q))) (hq8 : q.toNat % 8 = 0)
    (hn : n < 2 ^ 64) (hqn : q.toNat + n ≤ scratchEnd) :
    Hoare σ X (InBlk L G M0 q n) (.call (some (none, none)) (nm "memzero") [lv x, cw n])
      (fun r t => r = none ∧ InBlk L G M0 q n t) := by
  refine hoare_callD (MemSafe.Helpers.foot_memzero hC hA) fun s _ ⟨hl, hg, hm⟩ vs hvs callee v st hR _ => ?_
  rw [evs_cons (by rw [ev_lv, hl]; exact hx) (evs_cons (ev_cw _ n) evs_nil)] at hvs
  simp only [Option.some.injEq] at hvs
  subst hvs
  have hnN : (BitVec.ofNat 64 n).toNat = n := by rw [BitVec.toNat_ofNat]; omega
  obtain ⟨hgl, hmod⟩ := hR (by simp [Good])
    ⟨q, BitVec.ofNat 64 n, rfl, rfl, Or.inr (by rw [hnN]; exact hqn)⟩
  refine ⟨rfl, hl, ?_, fun a ha => ?_⟩
  · show st.globals = G
    rw [hgl]; exact hg
  · show q.toNat ≤ a.toNat ∧ a.toNat < q.toNat + n
    by_cases hma : st.memory a = s.memory a
    · exact hm a (by rw [← hma]; exact ha)
    · by_contra hout
      apply hma
      refine hmod a fun ⟨D, N, hD, hN, hov⟩ => ?_
      simp only [MemSafe.argW, MemSafe.wordOf, List.getElem?_cons_zero, List.getElem?_cons_succ,
        Option.some.injEq] at hD hN
      cases hD
      cases hN
      obtain ⟨ha8, h1, h2⟩ := hov
      rw [hnN] at h2
      exact hout ⟨by omega, h2⟩

/-! ## The footprint -/

/-- **`node_new_branch`** returns a fresh 176-byte heap block and writes only inside it. -/
theorem freshFoot_node_new_branch (hC : X.code.lookup = guestCode)
    (hA : MemSafe.Helpers.AlignedDom X) :
    FreshFoot σ X (nm "node_new_branch") (fun _ _ => True)
      (fun _ p p' _ v => FreshRet 176 p p' v) := by
  refine funSpec_of_hoare fun vs body callee rs hl s0 _ hloc => ?_
  rw [hC] at hl
  obtain ⟨rfl, rfl⟩ := lookupCode_zero code_node_new_branch hl
  refine hoare_decCallS (MemSafe.allocSpec_alloc (σ := σ) hC) fun s _ hs0 avs havs callee' v st hR _ _ => ?_
  subst hs0
  rw [evs_cons (ev_cw _ 176) evs_nil] at havs
  simp only [Option.some.injEq] at havs
  subst havs
  refine hoare_conseq (P := fun t => t = setVarHOLFinite (nm "nd") v { st with locals := s.locals })
    ?_ (fun _ _ h => h) (fun r t _ _ h => h)
  intro t1 hctx1 ht1 htr
  subst ht1
  suffices H : ∀ p : Ptrs, ptrsOf s = some p → p.Ordered → ∃ q : BitVec 64, v = .val (.word q) ∧
      Hoare σ X (fun t => t = setVarHOLFinite (nm "nd") v { st with locals := s.locals }) nbK
        (fun r t => ∀ w, r = some (.returned w) → ∃ p' : Ptrs, ptrsOf t = some p' ∧ p'.Ordered ∧
          p.Mono p' ∧ (∀ a : BitVec 64, t.memory a ≠ s.memory a → ¬ p.Allocated a.toNat) ∧
          FreshRet 176 p p' w) by
    intro w hw p hp hord _
    obtain ⟨q, -, hH⟩ := H p hp hord
    exact (hH _ hctx1 rfl htr) w hw
  intro p hp hord
  have hpe : ptrsOf (callEntryStateHOLFinite s callee') = some p := hp
  obtain ⟨hm, hglob, p1, hp1, hord1, hmono, hq⟩ := hR (by simp [Good]) _ p rfl hpe hord
  obtain ⟨q, rfl, hq8, ⟨hl1, hl2⟩, hfree⟩ := hq _ rfl
  refine ⟨q, rfl, ?_⟩
  simp only [BitVec.toNat_ofNat] at hl2 hfree
  have hpq : p.hp ≤ q.toNat := by
    by_contra hlt
    exact hfree q.toNat le_rfl (by omega) (Or.inl ⟨hl1, by omega⟩)
  have hord1' := hord1
  obtain ⟨-, hh2, -⟩ := hord1'
  have hq64 : q.toNat + 176 ≤ 2 ^ 64 := by simp only [heapEnd] at hh2; omega
  have hqS : q.toNat + 176 ≤ scratchEnd := by simp only [heapEnd, scratchEnd] at hh2 ⊢; omega
  set t1 := setVarHOLFinite (nm "nd") (.val (.word q)) { st with locals := s.locals }
  have hnd : t1.locals.lookup (nm "nd") = some (.val (.word q)) := lk_set_self _ _ _
  have hM1 : t1.memory = s.memory := hm
  have hP1 : ptrsOf t1 = some p1 := by rw [← hp1]; rfl
  refine hoare_pre (P := InBlk t1.locals t1.globals t1.memory q 176) ?_
    (fun t _ ht => by subst ht; exact ⟨rfl, rfl, fun a ha => absurd rfl ha⟩)
  unfold nbK
  refine hoare_seq (hoare_memzero_blk hC hA hnd hq8 (by decide) hqS)
    (fun _ _ _ hr _ h => absurd h.1 hr) (hoare_pre (hoare_seq_blk hnd (by decide) hq64
      (wordE_cw _ _) ?_) fun _ _ h => h.2)
  refine hoare_return fun t _ ⟨hl, hg, hmt⟩ w hw w' hw' => ?_
  simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw'
  subst hw'
  rw [ev_lv, hl, hnd] at hw
  cases hw
  refine ⟨p1, ?_, hord1, hmono, fun a ha => ?_, q, rfl, hpq, hl2⟩
  · show ptrsOf (emptyLocalsHOLFinite t) = _
    rw [← hP1]
    exact ptrsOf_frame hg
  · have ha' : t.memory a ≠ t1.memory a := by rw [hM1]; exact ha
    obtain ⟨h1, h2⟩ := hmt a ha'
    exact hfree a.toNat h1 h2

end InitECandidate.Solver.Spec.Mpt.Leaves
