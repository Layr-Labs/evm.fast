import InitECandidate.Solver.Band.RootPre
import InitECandidate.Solver.Spec.Mpt.Leaves.FillDone
import InitECandidate.Solver.MemSafe.Struct.Eval

/-!
# `node_rlp` (sonnet-band, template T3)

```
fun {1,1} node_rlp(1 node) {
  var cached = lds 1 (node + 8);
  if cached != 0 { return <cached, lds 1 (node + 16)>; }
  if (lds 1 (node + 0)) == 0 { mpt_fail(2); }
  _node_rlp_fill(node);
  return <lds 1 (node + 8), lds 1 (node + 16)>;
}
```
Pre `NrPre`: `vs = [word node]`, `ptrsOf s = some p`, `p.Ordered`, and a node set `Nd` with
`TrieOK s Nd p.hp` (`NdShape`, `NdDisj`, `KBSep`, `ValSep`) and `Nd node`.  The `mpt_fail` guard
gives kind `<> 0`; `NdShape` (kind `<= 3`) turns that into `RecKind`, the root's precondition
`FillPre`.  `ValSep` is part of `TrieOK`, so it is a hypothesis of the caller (not proved here).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Band2
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe (Ptrs ptrsOf heapBase State rd)
open InitECandidate.Solver.Band
open InitECandidate.Solver.Spec.Mpt (TrieOK FillPre RecKind)

variable {σ : Type}

/-- Value of `lds 1 (x + k)` with `x` a local word. -/
theorem ev_lds_lv {u : State σ} {x : MlS} {nd : BitVec 64} {k : Nat} {v : ValueHOL 64}
    (hn : u.locals.lookup x = some (.val (.word nd)))
    (h : ev u (.load .one (.op .add [lv x, cw k])) = some v) :
    v = .val (.word (rd u.memory (nd + BitVec.ofNat 64 k))) := by
  obtain ⟨w, hw, -, rfl⟩ := MemSafe.Struct.ev_load1_inv h
  rw [ev_add_cw hn k] at hw
  cases hw
  rfl

def ld1 (x : String) (k : Nat) : ExpHOL 64 := .load .one (.op .add [lv (nm x), cw k])

def nrBody : ProgHOL 64 :=
  .dec (nm "cached") .one (ld1 "node" 8)
    (.seq (.ite (.cmp .notEqual (lv (nm "cached")) (cw 0))
        (.return (.rstruct [lv (nm "cached"), ld1 "node" 16])) .skip)
      (.seq (.ite (.cmp .equal (ld1 "node" 0) (cw 0)) (callD (nm "mpt_fail") [cw 2]) .skip)
        (.seq (callD (nm "_node_rlp_fill") [lv (nm "node")])
          (.return (.rstruct [ld1 "node" 8, ld1 "node" 16])))))

def params_nr : List (MlS × ShapeHOL) := [(nm "node", .one)]

theorem entry_nr : fnEntry Guest.Software.guestFn_node_rlp =
    (nm "node_rlp", params_nr, nrBody, .comb [.one, .one]) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_nr : guestCode (nm "node_rlp") = some (params_nr, nrBody, .comb [.one, .one]) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 285) (by decide)) ⟨_, rfl⟩
    entry_nr

/-- Pre of `node_rlp`. -/
def NrPre (vs : List (ValueHOL 64)) (s : State σ) : Prop :=
  ∃ node : BitVec 64, vs = [.val (.word node)] ∧ ∃ p : Ptrs, ptrsOf s = some p ∧ p.Ordered ∧
    ∃ Nd, TrieOK s Nd p.hp ∧ Nd node

def bNeedsRlp : Nat := 0
def bRlpBegin : Nat := 55340232221128654862
def bRlpFinish : Nat := 12554203470773361540942591156331932909176335218359113089111

/-- The fill root's bound with the table costs of its callees. -/
def fillBG : Nat := Spec.Mpt.fillB bNeedsRlp 2 bRlpBegin bRlpFinish 0 0

theorem fillRoot : Inv.CalleeCostP σ guestCtx (nm "_node_rlp_fill") FillPre fillBG :=
  Spec.Mpt.Leaves.node_rlp_fill_costP_final guestCtx_code MemSafe.nullSafe_guestCtx
    MemSafe.Helpers.alignedDom_guestCtx Spec.Mpt.Leaves.domTop_guestCtx
    (MemSafe.Wire.calleeCost_guest rfl) (MemSafe.Wire.calleeCost_guest rfl)
    (MemSafe.Wire.calleeCost_guest rfl) (MemSafe.Wire.calleeCost_guest rfl)
    (MemSafe.Wire.calleeCost_guest rfl) (MemSafe.Wire.calleeCost_guest rfl)

def nrB : Nat := max 0 0 + (max (1 + 0 + 0) 0 + ((1 + fillBG + 0) + 0))

theorem node_rlp_costP : Inv.CalleeCostP σ guestCtx (nm "node_rlp") NrPre nrB := by
  intro vs body callee rs hl
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, -, hbind⟩ := MemSafe.lookupCode_gen code_nr hl
  unfold nrBody nrB
  refine Inv.costP_dec fun s hs ⟨hloc, nd, hvs, p, hp, hord, Nd, hT, hNd⟩ v _ _ => ?_
  subst hvs
  have hA := (hbind 0 (by decide) (by simp)).1
  have hn : (setVarHOLFinite (nm "cached") v s).locals.lookup (nm "node") =
      some (.val (.word nd)) := by
    rw [lk_set_ne _ _ (by decide), hloc]; exact hA
  refine Inv.costP_seq (R := fun u => u = setVarHOLFinite (nm "cached") v s)
    (Inv.costP_of_cost (cost_ite (cost_return _) cost_skip))
    (hoare_ite (hoare_return fun _ _ _ _ _ h => by cases h)
      (hoare_skip fun u _ hu _ => hu.1)) ?_
  refine Inv.costP_seq
    (R := fun u => u = setVarHOLFinite (nm "cached") v s ∧
      ev u (.cmp .equal (ld1 "node" 0) (cw 0)) = some (.val (.word 0)))
    (Inv.costP_of_cost (cost_ite (cost_call (MemSafe.Wire.calleeCost_guest (f := nm "mpt_fail")
      (B := 0) rfl) (by intro _ _ _ _ h; cases h)) cost_skip))
    (hoare_post (hoare_guard (funRet_mpt_fail guestCtx_code)) fun _ _ _ _ h _ => ⟨h.2.1, h.2.2⟩) ?_
  refine Inv.costP_seq (R := fun _ => True)
    (Inv.costP_callD fillRoot ?_) (fun _ _ _ _ _ => trivial)
    (Inv.costP_of_cost (cost_return _))
  rintro u _ ⟨rfl, hc⟩ vs' hvs' callee'
  obtain ⟨x', y', hx', hy', hxy⟩ := cmp_false hc
  have hx := ev_lds_lv hn hx'
  cases hx
  have hx0 := Spec.equal_false hxy
  rw [ev_cw] at hy'
  cases hy'
  rw [evs_cons (by rw [ev_lv]; exact hn) evs_nil] at hvs'
  cases hvs'
  refine ⟨nd, rfl, p, hp, hord, Nd, hT, hNd, ?_⟩
  have h3 := (hT.1 nd hNd).2.2.1
  have hx0' : rd s.memory nd ≠ 0 := by
    intro h; apply hx0
    show rd s.memory (nd + BitVec.ofNat 64 0) = 0
    simpa using h
  show RecKind (rd s.memory nd)
  have hne : (rd s.memory nd).toNat ≠ 0 := fun h => hx0' (BitVec.eq_of_toNat_eq (by simpa using h))
  unfold RecKind
  rcases (by omega : (rd s.memory nd).toNat = 1 ∨ (rd s.memory nd).toNat = 2 ∨
      (rd s.memory nd).toNat = 3) with h | h | h
  · exact Or.inl (BitVec.eq_of_toNat_eq (by simpa using h))
  · exact Or.inr (Or.inl (BitVec.eq_of_toNat_eq (by simpa using h)))
  · exact Or.inr (Or.inr (BitVec.eq_of_toNat_eq (by simpa using h)))

end InitECandidate.Solver.Band2

#print axioms InitECandidate.Solver.Band2.fillRoot
#print axioms InitECandidate.Solver.Band2.node_rlp_costP
