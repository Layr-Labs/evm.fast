import InitECandidate.Solver.MemSafe.Bal.Step

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

def gvE (g : String) : ExpHOL 64 := .var .global (nm g)

def iaSt : ProgHOL 64 := callD (nm "st_le64") [lv (nm "kb"), gvE "bal_index"]

def iaMc : ProgHOL 64 := callD (nm "memcpy") [.op .add [lv (nm "kb"), cw 8], lv (nm "addr"), cw 20]

def iaFill : ProgHOL 64 :=
  .seq (.store (lv (nm "rec")) (cw 1))
    (.seq (.store (.op .add [lv (nm "rec"), cw 8]) (.load .one (.op .add [lv (nm "pre"), cw 0])))
      (.seq (.store (.op .add [lv (nm "rec"), cw 16])
          (.load (.comb [.one, .one, .one, .one]) (.op .add [lv (nm "pre"), cw 8])))
        (callD (nm "memcpy") [.op .add [lv (nm "rec"), cw 48],
          .load .one (.op .add [lv (nm "pre"), cw 48]), cw 32])))

def iaRecBody : ProgHOL 64 :=
  .seq (callD (nm "memzero") [lv (nm "rec"), cw 80])
    (.seq (callD (nm "memcpy") [.op .add [lv (nm "rec"), cw 48], gvE "empty_code_hash", cw 32])
      (.seq (.ite (.cmp .notEqual (lv (nm "pre")) (cw 1)) iaFill .skip)
        (.seq iaSt (.seq iaMc
          (.seq (callD (nm "htab_set") [gvE "bal_idx_accts", lv (nm "kb"), lv (nm "rec")])
            (.return (lv (nm "rec"))))))))

def iaMiss : ProgHOL 64 :=
  .decCall (nm "pre") .one (nm "get_pre_tx_account") [lv (nm "addr")]
    (.decCall (nm "rec") .one (nm "alloc") [cw 80] iaRecBody)

def iaLook : ProgHOL 64 :=
  .decCall (nm "m") (.comb [.one, .one]) (nm "htab_get") [gvE "bal_idx_accts", lv (nm "kb")]
    (.seq (.ite (.cmp .notEqual (.rfield 0 (lv (nm "m"))) (cw 0)) (.return (.rfield 1 (lv (nm "m")))) .skip)
      iaMiss)

def iaBody : ProgHOL 64 :=
  .dec (nm "kb") .one (gvE "bal_key_buf") (.seq iaSt (.seq iaMc iaLook))

theorem entry_idx_start_account : fnEntry Guest.Software.guestFn_idx_start_account =
    (nm "idx_start_account", [(nm "addr", .one)], iaBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_idx_start_account : guestCode (nm "idx_start_account") =
    some ([(nm "addr", .one)], iaBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 422) (by decide)) ⟨_, rfl⟩
    entry_idx_start_account

end InitECandidate.Solver.MemSafe.Bal
