import InitECandidate.Solver.MemSafe.Bal.StorageWrite

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

def biNew (g : String) (a : Nat) : ProgHOL 64 :=
  .call (some (some (.global, nm g), none)) (nm "htab_new") [cw a, cw 64]

def biBody : ProgHOL 64 :=
  .seq (biNew "bal_accounts" 20) (.seq (biNew "bal_idx_accts" 28) (.seq (biNew "bal_idx_stor" 60)
    (.seq (.call (some (some (.global, nm "bal_key_buf"), none)) (nm "alloc") [cw 64])
      (.seq (.assign .global (nm "bal_index") (cw 0)) (.return (cw 0))))))

theorem entry_bal_init : fnEntry Guest.Software.guestFn_bal_init =
    (nm "bal_init", [], biBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_bal_init : guestCode (nm "bal_init") = some ([], biBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 411) (by decide)) ⟨_, rfl⟩
    entry_bal_init

theorem xchk_bal_init :
    xChk balX6 false (declPair Guest.Software.guestFn_bal_init).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem noExc_bal_init (hX : X.code.lookup = guestCode) : NoExc σ X (nm "bal_init") :=
  noExc_of_pair (noExc_balX6 hX) hX (p := declPair Guest.Software.guestFn_bal_init)
    (declPair_valid (List.getElem_mem (n := 411) (by decide)) ⟨_, rfl⟩) xchk_bal_init

end InitECandidate.Solver.MemSafe.Bal
