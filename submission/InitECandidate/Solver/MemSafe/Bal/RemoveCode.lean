import InitECandidate.Solver.MemSafe.Bal.Upsert

set_option maxRecDepth 100000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Bal
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- `p + (n - 1) * esz`. -/
def rmLast : ExpHOL 64 := .op .add [lv (nm "p"), .panop .mul [.op .sub [lv (nm "n"), cw 1], lv (nm "esz")]]

def rmCopy : ProgHOL 64 :=
  .ite (.cmp .notEqual (lv (nm "i")) (.op .sub [lv (nm "n"), cw 1]))
    (callD (nm "memcpy") [luAddr, rmLast, lv (nm "esz")]) .skip

def rmStore : ProgHOL 64 :=
  .seq (.store (.op .add [lv (nm "l"), cw 8]) (.op .sub [lv (nm "n"), cw 1])) (.return (cw 0))

def rmLoop : ProgHOL 64 :=
  .while (.cmp .less (lv (nm "i")) (lv (nm "n")))
    (.seq (.ite (.cmp .equal (.load .one luAddr) (lv (nm "idx"))) (.seq rmCopy rmStore) .skip)
      (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1])))

def rmBody : ProgHOL 64 :=
  .dec (nm "n") .one (lpLd 8)
    (.dec (nm "p") .one (lpLd 0)
      (.dec (nm "i") .one (cw 0) (.seq rmLoop (.return (cw 0)))))

theorem entry_bal_list_remove_idx : fnEntry Guest.Software.guestFn_bal_list_remove_idx =
    (nm "bal_list_remove_idx", [(nm "l", .one), (nm "esz", .one), (nm "idx", .one)], rmBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_bal_list_remove_idx : guestCode (nm "bal_list_remove_idx") =
    some ([(nm "l", .one), (nm "esz", .one), (nm "idx", .one)], rmBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 424) (by decide)) ⟨_, rfl⟩
    entry_bal_list_remove_idx

theorem xchk_bal_list_remove_idx :
    xChk balX false (declPair Guest.Software.guestFn_bal_list_remove_idx).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem noExc_bal_list_remove_idx (hX : X.code.lookup = guestCode) :
    NoExc σ X (nm "bal_list_remove_idx") :=
  noExc_of_pair (noExc_balX hX) hX (p := declPair Guest.Software.guestFn_bal_list_remove_idx)
    (declPair_valid (List.getElem_mem (n := 424) (by decide)) ⟨_, rfl⟩) xchk_bal_list_remove_idx

end InitECandidate.Solver.MemSafe.Bal
