import InitECandidate.Solver.Band2.NodeHash

/-!
# `mpt_root` (sonnet-band)

```
fun 1 mpt_root(1 m, 1 out) {
  var root = lds 1 (m + 0);
  if root == 0 { memcpy(out, empty_trie_root, 32); return 0; }
  var 1 h = node_hash(root);
  memcpy(out, h, 32);
  return 0;
}
```
Pre `MrPre`: `vs = [m, out]`, ordered allocator, a node set `Nd` with `TrieOK s Nd p.hp`, and the
trie root slot `rd (m+0)` is null (`0`) or in `Nd`.  Callers supply the root-slot typing (see
`band1-status.md` section 4, item 3: a typed `tMPT` record, or a local fact of the owner).
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
open InitECandidate.Solver.Spec.Mpt (TrieOK)

variable {σ : Type}

def mrCopy : ProgHOL 64 :=
  .seq (callD (nm "memcpy") [lv (nm "out"), .var .global (nm "empty_trie_root"), cw 32])
    (.return (cw 0))

def mrBody : ProgHOL 64 :=
  .dec (nm "root") .one (ld1 "m" 0)
    (.seq (.ite (.cmp .equal (lv (nm "root")) (cw 0)) mrCopy .skip)
      (.decCall (nm "h") .one (nm "node_hash") [lv (nm "root")]
        (.seq (callD (nm "memcpy") [lv (nm "out"), lv (nm "h"), cw 32]) (.return (cw 0)))))

def params_mr : List (MlS × ShapeHOL) := [(nm "m", .one), (nm "out", .one)]

theorem entry_mr : fnEntry Guest.Software.guestFn_mpt_root =
    (nm "mpt_root", params_mr, mrBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_mr : guestCode (nm "mpt_root") = some (params_mr, mrBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 291) (by decide)) ⟨_, rfl⟩
    entry_mr

/-- Pre of `mpt_root`. -/
def MrPre (vs : List (ValueHOL 64)) (s : State σ) : Prop :=
  ∃ (m : BitVec 64) (out : ValueHOL 64), vs = [.val (.word m), out] ∧ ∃ p : Ptrs,
    ptrsOf s = some p ∧ p.Ordered ∧ ∃ Nd, TrieOK s Nd p.hp ∧
      (rd s.memory m = 0 ∨ Nd (rd s.memory m))

def mrB : Nat := max ((1 + bMemeq + 0) + 0) 0 + (1 + nhB + ((1 + bMemeq + 0) + 0))

theorem mpt_root_costP : Inv.CalleeCostP σ guestCtx (nm "mpt_root") MrPre mrB := by
  intro vs body callee rs hl
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, -, hbind⟩ := MemSafe.lookupCode_gen code_mr hl
  unfold mrBody mrB
  refine Inv.costP_dec fun s hs ⟨hloc, m, out, hvs, p, hp, hord, Nd, hT, hroot⟩ v hv _ => ?_
  subst hvs
  have hA := (hbind 0 (by decide) (by simp)).1
  have hm : s.locals.lookup (nm "m") = some (.val (.word m)) := by rw [hloc]; exact hA
  have hvv := ev_lds_lv (x := nm "m") (k := 0) hm hv
  subst hvv
  have hr : (setVarHOLFinite (nm "root") (.val (.word (rd s.memory (m + BitVec.ofNat 64 0)))) s
      ).locals.lookup (nm "root") = some (.val (.word (rd s.memory (m + BitVec.ofNat 64 0)))) :=
    lk_set_self _ _ _
  refine Inv.costP_seq
    (R := fun u => u = setVarHOLFinite (nm "root")
        (.val (.word (rd s.memory (m + BitVec.ofNat 64 0)))) s ∧
      ev u (.cmp .equal (lv (nm "root")) (cw 0)) = some (.val (.word 0)))
    (Inv.costP_of_cost (cost_ite (cost_seq (cost_call
      (MemSafe.Wire.calleeCost_guest (f := nm "memcpy") (B := bMemeq) rfl)
      (by intro _ _ _ _ h; cases h)) (cost_return _)) cost_skip))
    (hoare_ite (hoare_seq (R := fun _ _ => True)
        (hoare_callD (funSpec_true _) (fun _ _ _ _ _ _ _ _ _ _ => trivial))
        (fun r t _ hr _ _ h => absurd h hr) (hoare_return fun _ _ _ _ _ h => by cases h))
      (hoare_skip fun u _ hu _ => ⟨hu.1, hu.2⟩)) ?_
  refine costP_decCall node_hash_costP ?_ (funSpec_true _) ?_
  · rintro u _ ⟨rfl, hc⟩ vs' hvs' callee'
    obtain ⟨x', y', hx', hy', hxy⟩ := cmp_false hc
    rw [ev_lv] at hx'
    rw [hr] at hx'
    cases hx'
    rw [ev_cw] at hy'
    cases hy'
    have hx0 := Spec.equal_false hxy
    rw [evs_cons (by rw [ev_lv]; exact hr) evs_nil] at hvs'
    cases hvs'
    refine ⟨_, rfl, p, hp, hord, Nd, hT, ?_⟩
    rcases hroot with h | h
    · exfalso; apply hx0; simpa using h
    · simpa using h
  · intro u _ _ _ _ _ _ _ _ _ _
    exact Inv.costP_of_cost (cost_seq (cost_call
      (MemSafe.Wire.calleeCost_guest (f := nm "memcpy") (B := bMemeq) rfl)
      (by intro _ _ _ _ h; cases h)) (cost_return _))

end InitECandidate.Solver.Band2

#print axioms InitECandidate.Solver.Band2.mpt_root_costP
