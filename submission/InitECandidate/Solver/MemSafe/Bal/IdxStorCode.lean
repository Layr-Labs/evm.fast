import InitECandidate.Solver.MemSafe.Bal.GetPreStor

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

variable {σ : Type}

def isMc28 : ProgHOL 64 := callD (nm "memcpy") [.op .add [lv (nm "kb"), cw 28], lv (nm "key"), cw 32]

def isRecBody : ProgHOL 64 :=
  .seq (.store (lv (nm "rec")) (lv (nm "v")))
    (.seq iaSt (.seq iaMc (.seq isMc28
      (.seq (callD (nm "htab_set") [gvE "bal_idx_stor", lv (nm "kb"), lv (nm "rec")])
        (.return (lv (nm "v")))))))

def isMiss : ProgHOL 64 :=
  .decCall (nm "v") (.comb [.one, .one, .one, .one]) (nm "get_pre_tx_storage") [lv (nm "addr"), lv (nm "key")]
    (.decCall (nm "rec") .one (nm "alloc") [cw 32] isRecBody)

def isLook : ProgHOL 64 :=
  .decCall (nm "m") (.comb [.one, .one]) (nm "htab_get") [gvE "bal_idx_stor", lv (nm "kb")]
    (.seq (.ite (.cmp .notEqual (.rfield 0 (lv (nm "m"))) (cw 0))
        (.return (.load (.comb [.one, .one, .one, .one]) (.rfield 1 (lv (nm "m"))))) .skip)
      isMiss)

def isBody : ProgHOL 64 :=
  .dec (nm "kb") .one (gvE "bal_key_buf") (.seq iaSt (.seq iaMc (.seq isMc28 isLook)))

theorem entry_idx_start_storage : fnEntry Guest.Software.guestFn_idx_start_storage =
    (nm "idx_start_storage", [(nm "addr", .one), (nm "key", .one)], isBody, .comb [.one, .one, .one, .one]) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_idx_start_storage : guestCode (nm "idx_start_storage") =
    some ([(nm "addr", .one), (nm "key", .one)], isBody, .comb [.one, .one, .one, .one]) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 423) (by decide)) ⟨_, rfl⟩
    entry_idx_start_storage

end InitECandidate.Solver.MemSafe.Bal
