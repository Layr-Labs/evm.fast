import InitECandidate.Solver.MemSafe.Bal.Step2

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

/-- The global `ts`. -/
def gTs : ExpHOL 64 := .var .global (nm "ts")
def tsLd (k : Nat) : ExpHOL 64 := .load .one (.op .add [gTs, cw k])

def mgU (k : Nat) : ProgHOL 64 := callD (nm "htab_union_into") [bsLd k, tsLd k]

def mgBin : ProgHOL 64 :=
  .ite (.cmp .equal (.rfield 0 (lv (nm "m"))) (cw 0))
    (.seq (.call (some (some (.local, nm "binner"), none)) (nm "htab_new") [cw 32, cw 8])
      (callD (nm "htab_set") [lv (nm "bouter"), .rfield 1 (lv (nm "s")), lv (nm "binner")]))
    (.assign .local (nm "binner") (.rfield 1 (lv (nm "m"))))

def mgThen : ProgHOL 64 :=
  .decCall (nm "m") (.comb [.one, .one]) (nm "htab_get") [lv (nm "bouter"), .rfield 1 (lv (nm "s"))]
    (.dec (nm "binner") .one (cw 0)
      (.seq mgBin (callD (nm "htab_union_into") [lv (nm "binner"), .rfield 2 (lv (nm "s"))])))

def mgLBody : ProgHOL 64 :=
  .decCall (nm "s") (.comb [.one, .one, .one]) (nm "htab_item") [lv (nm "outer"), lv (nm "i")]
    (.seq (.ite (.cmp .notEqual (.rfield 0 (lv (nm "s"))) (cw 0)) mgThen .skip)
      (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1])))

def mgLoop : ProgHOL 64 := .while (.cmp .less (lv (nm "i")) (lv (nm "cap"))) mgLBody

def mgRest : ProgHOL 64 :=
  .dec (nm "outer") .one (tsLd 32)
    (.dec (nm "bouter") .one (bsLd 32)
      (.dec (nm "cap") .one (.load .one (.op .add [lv (nm "outer"), cw 24]))
        (.dec (nm "i") .one (cw 0) (.seq mgLoop (.return (cw 0))))))

def mgBody : ProgHOL 64 :=
  .seq (mgU 24) (.seq (mgU 8) (.seq (mgU 40) (.seq (mgU 16) (.seq (mgU 48) mgRest))))

theorem entry_merge_tx_into_block : fnEntry Guest.Software.guestFn_merge_tx_into_block =
    (nm "merge_tx_into_block", [], mgBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_merge_tx_into_block : guestCode (nm "merge_tx_into_block") = some ([], mgBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 401) (by decide)) ⟨_, rfl⟩
    entry_merge_tx_into_block

end InitECandidate.Solver.MemSafe.Bal
