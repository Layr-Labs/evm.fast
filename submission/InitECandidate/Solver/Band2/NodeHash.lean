import InitECandidate.Solver.Band2.NodeRlp

/-!
# `node_hash` (sonnet-band)

```
fun 1 node_hash(1 node) {
  var cached = lds 1 (node + 24);
  if cached != 0 { return cached; }
  var {1,1} r = node_rlp(node);
  var 1 h = alloc(32);
  keccak256(r.0, r.1, h);
  st node + 24, h;
  return h;
}
```
Pre `NrPre` (the same as `node_rlp`: one node argument, `TrieOK` node set containing it).  The rest
after `node_rlp` is all-states (`alloc`, `keccak256` in the table).
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

variable {σ : Type}

def nhBody : ProgHOL 64 :=
  .dec (nm "cached") .one (ld1 "node" 24)
    (.seq (.ite (.cmp .notEqual (lv (nm "cached")) (cw 0)) (.return (lv (nm "cached"))) .skip)
      (.decCall (nm "r") (.comb [.one, .one]) (nm "node_rlp") [lv (nm "node")]
        (.decCall (nm "h") .one (nm "alloc") [cw 32]
          (.seq (callD (nm "keccak256")
              [.rfield 0 (lv (nm "r")), .rfield 1 (lv (nm "r")), lv (nm "h")])
            (.seq (.store (.op .add [lv (nm "node"), cw 24]) (lv (nm "h")))
              (.return (lv (nm "h"))))))))

def params_nh : List (MlS × ShapeHOL) := [(nm "node", .one)]

theorem entry_nh : fnEntry Guest.Software.guestFn_node_hash =
    (nm "node_hash", params_nh, nhBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_nh : guestCode (nm "node_hash") = some (params_nh, nhBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 290) (by decide)) ⟨_, rfl⟩
    entry_nh

def bKeccak : Nat := 680564733841876927387917816706275213341

def nhB : Nat := max 0 0 + (1 + nrB + (1 + 2 + ((1 + bKeccak + 0) + (0 + 0))))

theorem node_hash_costP : Inv.CalleeCostP σ guestCtx (nm "node_hash") NrPre nhB := by
  intro vs body callee rs hl
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, -, hbind⟩ := MemSafe.lookupCode_gen code_nh hl
  unfold nhBody nhB
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
  refine costP_decCall node_rlp_costP ?_ (funSpec_true _) ?_
  · rintro u _ rfl vs' hvs' callee'
    rw [evs_cons (by rw [ev_lv]; exact hn) evs_nil] at hvs'
    cases hvs'
    exact ⟨nd, rfl, p, hp, hord, Nd, hT, hNd⟩
  · intro u _ _ _ _ _ _ _ _ _ _
    exact Inv.costP_of_cost (cost_decCall
      (MemSafe.Wire.calleeCost_guest (f := nm "alloc") (B := 2) rfl)
      (cost_seq (cost_call (MemSafe.Wire.calleeCost_guest (f := nm "keccak256") (B := bKeccak) rfl)
        (by intro _ _ _ _ h; cases h)) (cost_seq (cost_store _ _) (cost_return _))))

end InitECandidate.Solver.Band2

#print axioms InitECandidate.Solver.Band2.node_hash_costP
