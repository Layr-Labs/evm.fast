import InitECandidate.Solver.MemSafe.Bal.MergeCode
import InitECandidate.Solver.MemSafe.Bal.IdxAcctCode

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

def sh4 : ShapeHOL := .comb [.one, .one, .one, .one]
def ld4 (e : ExpHOL 64) : ExpHOL 64 := .load sh4 e
def ld1 (e : ExpHOL 64) : ExpHOL 64 := .load .one e
def add2 (a : ExpHOL 64) (k : Nat) : ExpHOL 64 := .op .add [a, cw k]
def lvv (x : String) : ExpHOL 64 := lv (nm x)

/-- the `else`-free update of the post-state from the `post` record -/
def ubAssigns : ProgHOL 64 :=
  .seq (.assign .local (nm "post_bal") (ld4 (add2 (lvv "post") 8)))
    (.seq (.assign .local (nm "post_nonce") (ld1 (add2 (lvv "post") 0)))
      (.assign .local (nm "post_ch") (ld1 (add2 (lvv "post") 48))))

def ubCode : ProgHOL 64 :=
  .decCall (nm "code") (.comb [.one, .one]) (nm "get_code") [lvv "post_ch", lvv "addr"]
    (callD (nm "add_code_change") [lvv "addr", lvv "idx", .rfield 0 (lvv "code"), .rfield 1 (lvv "code")])

def ubEq : ProgHOL 64 :=
  .seq (.ite (.cmp .equal (lvv "eq") (cw 0))
      (callD (nm "add_balance_change") [lvv "addr", lvv "idx", lvv "post_bal"])
      (callD (nm "bal_remove_change") [lvv "addr", cw 16, cw 40, lvv "idx"]))
    (.seq (.ite (.cmp .notEqual (lvv "pre_nonce") (lvv "post_nonce"))
        (callD (nm "add_nonce_change") [lvv "addr", lvv "idx", lvv "post_nonce"])
        (callD (nm "bal_remove_change") [lvv "addr", cw 24, cw 16, lvv "idx"]))
      (.seq (.call (some (some (.local, nm "eq"), none)) (nm "memeq") [lvv "pre_ch", lvv "post_ch", cw 32])
        (.ite (.cmp .equal (lvv "eq") (cw 0)) ubCode
          (callD (nm "bal_remove_change") [lvv "addr", cw 32, cw 24, lvv "idx"]))))

def ubPost : ProgHOL 64 :=
  .seq (.ite (.cmp .notEqual (lvv "post") (cw 1)) ubAssigns .skip)
    (.decCall (nm "eq") .one (nm "u256_eq") [lvv "pre_bal", lvv "post_bal"] ubEq)

def ubThen : ProgHOL 64 :=
  .dec (nm "addr") .one (.rfield 1 (lvv "s"))
    (.dec (nm "post") .one (.rfield 2 (lvv "s"))
      (.decCall (nm "pre") .one (nm "idx_start_account") [lvv "addr"]
        (.dec (nm "pre_bal") sh4 (ld4 (add2 (lvv "pre") 16))
          (.dec (nm "pre_nonce") .one (ld1 (add2 (lvv "pre") 8))
            (.dec (nm "pre_ch") .one (add2 (lvv "pre") 48)
              (.dec (nm "post_bal") sh4 (.rstruct [cw 0, cw 0, cw 0, cw 0])
                (.dec (nm "post_nonce") .one (cw 0)
                  (.dec (nm "post_ch") .one (gvE "empty_code_hash") ubPost))))))))

def ubL1Body : ProgHOL 64 :=
  .decCall (nm "s") (.comb [.one, .one, .one]) (nm "htab_item") [lvv "aw", lvv "i"]
    (.seq (.ite (.cmp .notEqual (.rfield 0 (lvv "s")) (cw 0)) ubThen .skip)
      (.assign .local (nm "i") (.op .add [lvv "i", cw 1])))

def ubLoop1 : ProgHOL 64 := .while (.cmp .less (lvv "i") (lvv "cap")) ubL1Body

def ubInner : ProgHOL 64 :=
  .decCall (nm "pre_v") sh4 (nm "idx_start_storage") [.rfield 1 (lvv "s2"), .rfield 1 (lvv "e")]
    (.dec (nm "post_v") sh4 (ld4 (.rfield 2 (lvv "e")))
      (.decCall (nm "eq2") .one (nm "u256_eq") [lvv "pre_v", lvv "post_v"]
        (.ite (.cmp .equal (lvv "eq2") (cw 0))
          (callD (nm "add_storage_write") [.rfield 1 (lvv "s2"), .rfield 1 (lvv "e"), lvv "idx", lvv "post_v"])
          (callD (nm "remove_storage_write") [.rfield 1 (lvv "s2"), .rfield 1 (lvv "e"), lvv "idx"]))))

def ubL2Inner : ProgHOL 64 :=
  .decCall (nm "e") (.comb [.one, .one, .one]) (nm "htab_item") [lvv "inner", lvv "j"]
    (.seq (.ite (.cmp .notEqual (.rfield 0 (lvv "e")) (cw 0)) ubInner .skip)
      (.assign .local (nm "j") (.op .add [lvv "j", cw 1])))

def ubThen2 : ProgHOL 64 :=
  .dec (nm "inner") .one (.rfield 2 (lvv "s2"))
    (.dec (nm "icap") .one (ld1 (add2 (lvv "inner") 24))
      (.dec (nm "j") .one (cw 0) (.while (.cmp .less (lvv "j") (lvv "icap")) ubL2Inner)))

def ubL2Body : ProgHOL 64 :=
  .decCall (nm "s2") (.comb [.one, .one, .one]) (nm "htab_item") [lvv "outer", lvv "i"]
    (.seq (.ite (.cmp .notEqual (.rfield 0 (lvv "s2")) (cw 0)) ubThen2 .skip)
      (.assign .local (nm "i") (.op .add [lvv "i", cw 1])))

def ubLoop2 : ProgHOL 64 := .while (.cmp .less (lvv "i") (lvv "cap")) ubL2Body

def ubRest : ProgHOL 64 :=
  .dec (nm "outer") .one (ld1 (add2 (gTs) 32))
    (.seq (.assign .local (nm "cap") (ld1 (add2 (lvv "outer") 24)))
      (.seq (.assign .local (nm "i") (cw 0))
        (.seq ubLoop2 (.return (cw 0)))))

def ubBody : ProgHOL 64 :=
  .dec (nm "idx") .one (gvE "bal_index")
    (.dec (nm "aw") .one (ld1 (add2 gTs 16))
      (.dec (nm "cap") .one (ld1 (add2 (lvv "aw") 24))
        (.dec (nm "i") .one (cw 0)
          (.seq ubLoop1 ubRest))))

theorem entry_update_builder_from_tx : fnEntry Guest.Software.guestFn_update_builder_from_tx =
    (nm "update_builder_from_tx", [], ubBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_update_builder_from_tx : guestCode (nm "update_builder_from_tx") = some ([], ubBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 427) (by decide)) ⟨_, rfl⟩
    entry_update_builder_from_tx

end InitECandidate.Solver.MemSafe.Bal
