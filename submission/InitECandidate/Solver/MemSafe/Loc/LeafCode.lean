import InitECandidate.Solver.MemSafe.Loc.Lookup

set_option autoImplicit false

set_option maxRecDepth 1000000
set_option linter.unusedTactic false

namespace InitECandidate.Solver.MemSafe.Loc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe

/-- The code of `ws_account_leaf`. -/
def leafBody : ProgHOL 64 :=
  .decCall (nm "mark") .one (nm "heap_mark") []
    (.decCall (nm "h") .one (nm "alloc") [cw 32]
      (.seq (callD (nm "keccak256") [lv (nm "addr"), cw 20, lv (nm "h")])
        (.decCall (nm "r") (.comb [.one, .one, .one]) (nm "trie_lookup")
            [.load .one (.op .add [.var .global (nm "ws"), cw 24]), lv (nm "h")]
          (.seq (callD (nm "heap_release") [lv (nm "mark")]) (.return (lv (nm "r")))))))

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_ws_account_leaf : fnEntry Guest.Software.guestFn_ws_account_leaf =
    (nm "ws_account_leaf", [(nm "addr", .one)], leafBody, shape3) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_ws_account_leaf : guestCode (nm "ws_account_leaf") =
    some ([(nm "addr", .one)], leafBody, shape3) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 365) (by decide)) ⟨_, rfl⟩
    entry_ws_account_leaf

end InitECandidate.Solver.MemSafe.Loc

#print axioms InitECandidate.Solver.MemSafe.Loc.code_ws_account_leaf
