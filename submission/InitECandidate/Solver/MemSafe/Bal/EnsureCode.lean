import InitECandidate.Solver.MemSafe.Bal.Remove
import InitECandidate.Solver.MemSafe.HtabEntries.LstNewH
import InitECandidate.Solver.MemSafe.HtabEntries.LstNewHL

set_option maxRecDepth 100000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Bal
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- The global `bal_accounts`. -/
def gBal : ExpHOL 64 := .var .global (nm "bal_accounts")

def eaTail : ProgHOL 64 :=
  .decCall (nm "t") .one (nm "htab_new") [cw 32, cw 8]
    (.seq (.store (.op .add [lv (nm "ad"), cw 0]) (lv (nm "t")))
      (.seq (.call (some (some (.local, nm "t"), none)) (nm "htab_new") [cw 32, cw 8])
        (.seq (.store (.op .add [lv (nm "ad"), cw 8]) (lv (nm "t")))
          (.decCall (nm "l") .one (nm "lst_new") [cw 40, cw 4]
            (.seq (.store (.op .add [lv (nm "ad"), cw 16]) (lv (nm "l")))
              (.seq (.call (some (some (.local, nm "l"), none)) (nm "lst_new") [cw 16, cw 4])
                (.seq (.store (.op .add [lv (nm "ad"), cw 24]) (lv (nm "l")))
                  (.seq (.call (some (some (.local, nm "l"), none)) (nm "lst_new") [cw 24, cw 2])
                    (.seq (.store (.op .add [lv (nm "ad"), cw 32]) (lv (nm "l")))
                      (.seq (callD (nm "htab_set") [gBal, lv (nm "addr"), lv (nm "ad")])
                        (.return (lv (nm "ad")))))))))))))

def eaBody : ProgHOL 64 :=
  .decCall (nm "m") (.comb [.one, .one]) (nm "htab_get") [gBal, lv (nm "addr")]
    (.seq (.ite (.cmp .notEqual (.rfield 0 (lv (nm "m"))) (cw 0)) (.return (.rfield 1 (lv (nm "m")))) .skip)
      (.decCall (nm "ad") .one (nm "alloc") [cw 40] eaTail))

theorem entry_bal_ensure_account : fnEntry Guest.Software.guestFn_bal_ensure_account =
    (nm "bal_ensure_account", [(nm "addr", .one)], eaBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_bal_ensure_account : guestCode (nm "bal_ensure_account") =
    some ([(nm "addr", .one)], eaBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 412) (by decide)) ⟨_, rfl⟩
    entry_bal_ensure_account

theorem xchk_htab_new : xChk htabX false (declPair Guest.Software.guestFn_htab_new).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem noExc_htab_new (hX : X.code.lookup = guestCode) : NoExc σ X (nm "htab_new") :=
  noExc_of_pair (noExc_htabX hX) hX (p := declPair Guest.Software.guestFn_htab_new)
    (declPair_valid (List.getElem_mem (n := 128) (by decide)) ⟨_, rfl⟩) xchk_htab_new

def balX2 : List MlS := nm "lst_new" :: nm "htab_new" :: htabX

theorem noExc_balX2 (hX : X.code.lookup = guestCode) : NoExcTab σ X balX2 :=
  noExcTab_cons (noExcTab_cons (noExc_htabX hX) (noExc_htab_new hX)) (noExc_lst_new hX)

theorem xchk_bal_ensure_account :
    xChk balX2 false (declPair Guest.Software.guestFn_bal_ensure_account).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem noExc_bal_ensure_account (hX : X.code.lookup = guestCode) :
    NoExc σ X (nm "bal_ensure_account") :=
  noExc_of_pair (noExc_balX2 hX) hX (p := declPair Guest.Software.guestFn_bal_ensure_account)
    (declPair_valid (List.getElem_mem (n := 412) (by decide)) ⟨_, rfl⟩) xchk_bal_ensure_account

end InitECandidate.Solver.MemSafe.Bal
