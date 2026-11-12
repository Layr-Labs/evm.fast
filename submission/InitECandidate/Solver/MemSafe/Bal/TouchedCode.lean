import InitECandidate.Solver.MemSafe.Bal.Pw

set_option maxRecDepth 100000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Bal
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

def atBody : ProgHOL 64 :=
  .seq (callD (nm "bal_ensure_account") [lv (nm "addr")]) (.return (cw 0))

theorem entry_add_touched_account : fnEntry Guest.Software.guestFn_add_touched_account =
    (nm "add_touched_account", [(nm "addr", .one)], atBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_add_touched_account : guestCode (nm "add_touched_account") =
    some ([(nm "addr", .one)], atBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 419) (by decide)) ⟨_, rfl⟩
    entry_add_touched_account

def balX3 : List MlS := nm "bal_ensure_account" :: balX2

theorem noExc_balX3 (hX : X.code.lookup = guestCode) : NoExcTab σ X balX3 :=
  noExcTab_cons (noExc_balX2 hX) (noExc_bal_ensure_account hX)

theorem xchk_add_touched_account :
    xChk balX3 false (declPair Guest.Software.guestFn_add_touched_account).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem noExc_add_touched_account (hX : X.code.lookup = guestCode) :
    NoExc σ X (nm "add_touched_account") :=
  noExc_of_pair (noExc_balX3 hX) hX (p := declPair Guest.Software.guestFn_add_touched_account)
    (declPair_valid (List.getElem_mem (n := 419) (by decide)) ⟨_, rfl⟩) xchk_add_touched_account

end InitECandidate.Solver.MemSafe.Bal
