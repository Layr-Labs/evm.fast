import InitECandidate.Solver.MemSafe.Bal.PreRead

set_option maxRecDepth 100000
set_option cbv.warning false
set_option linter.unusedSectionVars false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Bal
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

def gpTail : ProgHOL 64 :=
  .seq (.ite (.cmp .notEqual (.rfield 0 (lv (nm "w"))) (cw 0)) (.return (.rfield 1 (lv (nm "w")))) .skip)
    (.seq (callD (nm "record_pre_state_read") [lv (nm "addr")])
      (.decCall (nm "a") .one (nm "ws_get_account_optional") [lv (nm "addr")] (.return (lv (nm "a")))))

def gpBody : ProgHOL 64 :=
  .decCall (nm "w") (.comb [.one, .one]) (nm "htab_get") [bsLd 16, lv (nm "addr")] gpTail

theorem entry_get_pre_tx_account : fnEntry Guest.Software.guestFn_get_pre_tx_account =
    (nm "get_pre_tx_account", [(nm "addr", .one)], gpBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_get_pre_tx_account : guestCode (nm "get_pre_tx_account") =
    some ([(nm "addr", .one)], gpBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 420) (by decide)) ⟨_, rfl⟩
    entry_get_pre_tx_account

end InitECandidate.Solver.MemSafe.Bal
