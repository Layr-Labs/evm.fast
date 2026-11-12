import InitECandidate.Solver.MemSafe.Bal.Adl

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

/-- `lds 1 (ad + k)`. -/
def adLd (k : Nat) : ExpHOL 64 := .load .one (.op .add [lv (nm "ad"), cw k])

def bcBody : ProgHOL 64 :=
  .decCall (nm "ad") .one (nm "bal_ensure_account") [lv (nm "addr")]
    (.decCall (nm "e") .one (nm "lst_upsert_idx") [adLd 16, cw 40, lv (nm "idx")]
      (.seq (.store (.op .add [lv (nm "e"), cw 8]) (lv (nm "post_balance"))) (.return (cw 0))))

theorem entry_add_balance_change : fnEntry Guest.Software.guestFn_add_balance_change =
    (nm "add_balance_change", [(nm "addr", .one), (nm "idx", .one),
      (nm "post_balance", .comb [.one, .one, .one, .one])], bcBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_add_balance_change : guestCode (nm "add_balance_change") =
    some ([(nm "addr", .one), (nm "idx", .one), (nm "post_balance", .comb [.one, .one, .one, .one])],
      bcBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 416) (by decide)) ⟨_, rfl⟩
    entry_add_balance_change

def balX4 : List MlS := nm "lst_upsert_idx" :: balX3

theorem noExc_balX4 (hX : X.code.lookup = guestCode) : NoExcTab σ X balX4 :=
  noExcTab_cons (noExc_balX3 hX) (noExc_lst_upsert_idx hX)

theorem xchk_add_balance_change :
    xChk balX4 false (declPair Guest.Software.guestFn_add_balance_change).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem noExc_add_balance_change (hX : X.code.lookup = guestCode) :
    NoExc σ X (nm "add_balance_change") :=
  noExc_of_pair (noExc_balX4 hX) hX (p := declPair Guest.Software.guestFn_add_balance_change)
    (declPair_valid (List.getElem_mem (n := 416) (by decide)) ⟨_, rfl⟩) xchk_add_balance_change

end InitECandidate.Solver.MemSafe.Bal
