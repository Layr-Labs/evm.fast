import InitECandidate.Solver.MemSafe.Bal.BalInit

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

/-- The global `bs`. -/
def gBs : ExpHOL 64 := .var .global (nm "bs")

/-- `lds 1 (bs + k)`. -/
def bsLd (k : Nat) : ExpHOL 64 := .load .one (.op .add [gBs, cw k])

def rprBody : ProgHOL 64 :=
  .seq (callD (nm "htab_set") [bsLd 72, lv (nm "addr"), cw 1]) (.return (cw 0))

theorem entry_record_pre_state_read : fnEntry Guest.Software.guestFn_record_pre_state_read =
    (nm "record_pre_state_read", [(nm "addr", .one)], rprBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem xchk_record_pre_state_read :
    xChk balX6 false (declPair Guest.Software.guestFn_record_pre_state_read).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem code_record_pre_state_read : guestCode (nm "record_pre_state_read") =
    some ([(nm "addr", .one)], rprBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 364) (by decide)) ⟨_, rfl⟩
    entry_record_pre_state_read

theorem noExc_record_pre_state_read (hX : X.code.lookup = guestCode) :
    NoExc σ X (nm "record_pre_state_read") :=
  noExc_of_pair (noExc_balX6 hX) hX (p := declPair Guest.Software.guestFn_record_pre_state_read)
    (declPair_valid (List.getElem_mem (n := 364) (by decide)) ⟨_, rfl⟩) xchk_record_pre_state_read

end InitECandidate.Solver.MemSafe.Bal
