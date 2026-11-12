import InitECandidate.Solver.MemSafe.Bal.StorageRead

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

def rcBody : ProgHOL 64 :=
  .decCall (nm "m") (.comb [.one, .one]) (nm "htab_get") [gBal, lv (nm "addr")]
    (.seq (.ite (.cmp .equal (.rfield 0 (lv (nm "m"))) (cw 0)) (.return (cw 0)) .skip)
      (.seq (callD (nm "bal_list_remove_idx")
        [.load .one (.op .add [.rfield 1 (lv (nm "m")), lv (nm "which")]), lv (nm "esz"), lv (nm "idx")])
        (.return (cw 0))))

theorem entry_bal_remove_change : fnEntry Guest.Software.guestFn_bal_remove_change =
    (nm "bal_remove_change", [(nm "addr", .one), (nm "which", .one), (nm "esz", .one), (nm "idx", .one)],
      rcBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_bal_remove_change : guestCode (nm "bal_remove_change") =
    some ([(nm "addr", .one), (nm "which", .one), (nm "esz", .one), (nm "idx", .one)], rcBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 425) (by decide)) ⟨_, rfl⟩
    entry_bal_remove_change

def balX5 : List MlS := nm "bal_list_remove_idx" :: balX4

theorem noExc_balX5 (hX : X.code.lookup = guestCode) : NoExcTab σ X balX5 :=
  noExcTab_cons (noExc_balX4 hX) (noExc_bal_list_remove_idx hX)

theorem xchk_bal_remove_change :
    xChk balX5 false (declPair Guest.Software.guestFn_bal_remove_change).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem noExc_bal_remove_change (hX : X.code.lookup = guestCode) :
    NoExc σ X (nm "bal_remove_change") :=
  noExc_of_pair (noExc_balX5 hX) hX (p := declPair Guest.Software.guestFn_bal_remove_change)
    (declPair_valid (List.getElem_mem (n := 425) (by decide)) ⟨_, rfl⟩) xchk_bal_remove_change

end InitECandidate.Solver.MemSafe.Bal
