import InitECandidate.Solver.MemSafe.Bal.RsMain

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

/-- `p + i * 16`. -/
def ncEl : ExpHOL 64 := .op .add [lv (nm "p"), .panop .mul [lv (nm "i"), cw 16]]
/-- `p + i * 16 + 8`. -/
def ncEl8 : ExpHOL 64 := .op .add [lv (nm "p"), .panop .mul [lv (nm "i"), cw 16], cw 8]

def ncLoop : ProgHOL 64 :=
  .while (.cmp .less (lv (nm "i")) (lv (nm "n")))
    (.seq (.ite (.cmp .equal (.load .one ncEl) (lv (nm "idx")))
      (.seq (.ite (.cmp .lower (.load .one ncEl8) (lv (nm "new_nonce")))
        (.store ncEl8 (lv (nm "new_nonce"))) .skip) (.return (cw 0))) .skip)
      (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1])))

def ncTail : ProgHOL 64 :=
  .decCall (nm "e") .one (nm "lst_push") [lv (nm "l"), cw 16]
    (.seq (.store (lv (nm "e")) (lv (nm "idx")))
      (.seq (.store (.op .add [lv (nm "e"), cw 8]) (lv (nm "new_nonce"))) (.return (cw 0))))

def ncRest : ProgHOL 64 :=
  .dec (nm "l") .one (adLd 24)
    (.dec (nm "n") .one (lpLd 8)
      (.dec (nm "p") .one (lpLd 0)
        (.dec (nm "i") .one (cw 0) (.seq ncLoop ncTail))))

def ncBody : ProgHOL 64 :=
  .decCall (nm "ad") .one (nm "bal_ensure_account") [lv (nm "addr")] ncRest

def balX6 : List MlS := nm "lst_push" :: balX5

theorem noExc_balX6 (hX : X.code.lookup = guestCode) : NoExcTab σ X balX6 :=
  noExcTab_cons (noExc_balX5 hX) (noExc_lst_push hX)

theorem entry_add_nonce_change : fnEntry Guest.Software.guestFn_add_nonce_change =
    (nm "add_nonce_change", [(nm "addr", .one), (nm "idx", .one), (nm "new_nonce", .one)], ncBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_add_nonce_change : guestCode (nm "add_nonce_change") =
    some ([(nm "addr", .one), (nm "idx", .one), (nm "new_nonce", .one)], ncBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 417) (by decide)) ⟨_, rfl⟩
    entry_add_nonce_change

theorem xchk_add_nonce_change :
    xChk balX6 false (declPair Guest.Software.guestFn_add_nonce_change).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem noExc_add_nonce_change (hX : X.code.lookup = guestCode) :
    NoExc σ X (nm "add_nonce_change") :=
  noExc_of_pair (noExc_balX6 hX) hX (p := declPair Guest.Software.guestFn_add_nonce_change)
    (declPair_valid (List.getElem_mem (n := 417) (by decide)) ⟨_, rfl⟩) xchk_add_nonce_change

end InitECandidate.Solver.MemSafe.Bal
