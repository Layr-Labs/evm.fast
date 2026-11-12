import InitECandidate.Solver.MemSafe.Bal.RcMain

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

def rsTail : ProgHOL 64 :=
  .seq (callD (nm "bal_list_remove_idx") [.rfield 1 (lv (nm "sl")), cw 40, lv (nm "idx")])
    (.seq (.ite (.cmp .equal (.load .one (.op .add [.rfield 1 (lv (nm "sl")), cw 8])) (cw 0))
      (callD (nm "htab_del") [lv (nm "t"), lv (nm "slot")]) .skip) (.return (cw 0)))

def rsMid : ProgHOL 64 :=
  .decCall (nm "sl") (.comb [.one, .one]) (nm "htab_get") [lv (nm "t"), lv (nm "slot")]
    (.seq (.ite (.cmp .equal (.rfield 0 (lv (nm "sl"))) (cw 0)) (.return (cw 0)) .skip) rsTail)

def rsBody : ProgHOL 64 :=
  .decCall (nm "m") (.comb [.one, .one]) (nm "htab_get") [gBal, lv (nm "addr")]
    (.seq (.ite (.cmp .equal (.rfield 0 (lv (nm "m"))) (cw 0)) (.return (cw 0)) .skip)
      (.dec (nm "t") .one (.load .one (.op .add [.rfield 1 (lv (nm "m")), cw 0])) rsMid))

theorem entry_remove_storage_write : fnEntry Guest.Software.guestFn_remove_storage_write =
    (nm "remove_storage_write", [(nm "addr", .one), (nm "slot", .one), (nm "idx", .one)], rsBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_remove_storage_write : guestCode (nm "remove_storage_write") =
    some ([(nm "addr", .one), (nm "slot", .one), (nm "idx", .one)], rsBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 426) (by decide)) ⟨_, rfl⟩
    entry_remove_storage_write

theorem xchk_remove_storage_write :
    xChk balX5 false (declPair Guest.Software.guestFn_remove_storage_write).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem noExc_remove_storage_write (hX : X.code.lookup = guestCode) :
    NoExc σ X (nm "remove_storage_write") :=
  noExc_of_pair (noExc_balX5 hX) hX (p := declPair Guest.Software.guestFn_remove_storage_write)
    (declPair_valid (List.getElem_mem (n := 426) (by decide)) ⟨_, rfl⟩) xchk_remove_storage_write

end InitECandidate.Solver.MemSafe.Bal
