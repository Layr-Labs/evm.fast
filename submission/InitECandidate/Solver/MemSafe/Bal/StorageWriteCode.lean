import InitECandidate.Solver.MemSafe.Bal.Nonce

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

def swNew : ProgHOL 64 :=
  .seq (.call (some (some (.local, nm "l"), none)) (nm "lst_new") [cw 40, cw 2])
    (callD (nm "htab_set") [lv (nm "t"), lv (nm "slot"), lv (nm "l")])

def swIte : ProgHOL 64 :=
  .ite (.cmp .equal (.rfield 0 (lv (nm "m"))) (cw 0)) swNew
    (.assign .local (nm "l") (.rfield 1 (lv (nm "m"))))

def swUp : ProgHOL 64 :=
  .decCall (nm "e") .one (nm "lst_upsert_idx") [lv (nm "l"), cw 40, lv (nm "idx")]
    (.seq (.store (.op .add [lv (nm "e"), cw 8]) (lv (nm "new_value"))) (.return (cw 0)))

def swRest : ProgHOL 64 :=
  .dec (nm "t") .one (adLd 0)
    (.decCall (nm "m") (.comb [.one, .one]) (nm "htab_get") [lv (nm "t"), lv (nm "slot")]
      (.dec (nm "l") .one (cw 0) (.seq swIte swUp)))

def swBody : ProgHOL 64 :=
  .decCall (nm "ad") .one (nm "bal_ensure_account") [lv (nm "addr")] swRest

theorem entry_add_storage_write : fnEntry Guest.Software.guestFn_add_storage_write =
    (nm "add_storage_write", [(nm "addr", .one), (nm "slot", .one), (nm "idx", .one),
      (nm "new_value", .comb [.one, .one, .one, .one])], swBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_add_storage_write : guestCode (nm "add_storage_write") =
    some ([(nm "addr", .one), (nm "slot", .one), (nm "idx", .one),
      (nm "new_value", .comb [.one, .one, .one, .one])], swBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 414) (by decide)) ⟨_, rfl⟩
    entry_add_storage_write

theorem xchk_add_storage_write :
    xChk balX6 false (declPair Guest.Software.guestFn_add_storage_write).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem noExc_add_storage_write (hX : X.code.lookup = guestCode) :
    NoExc σ X (nm "add_storage_write") :=
  noExc_of_pair (noExc_balX6 hX) hX (p := declPair Guest.Software.guestFn_add_storage_write)
    (declPair_valid (List.getElem_mem (n := 414) (by decide)) ⟨_, rfl⟩) xchk_add_storage_write

end InitECandidate.Solver.MemSafe.Bal
