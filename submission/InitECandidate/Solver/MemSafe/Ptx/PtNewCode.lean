import InitECandidate.Solver.MemSafe.Ptx.PtAdopt

/-!
# F3d: code of `te_new`, `msg_new`, `state_fresh_tx`, `min` (generated)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

def tn0 : ProgHOL 64 :=
  (.seq (callD (nm "memzero") [(lv (nm "te")), (cw 200)]) (.return (lv (nm "te"))))
def tnBody : ProgHOL 64 :=
  (.decCall (nm "te") .one (nm "alloc") [(cw 200)] tn0)
theorem tnEntry : fnEntry Guest.Software.guestFn_te_new =
    ((nm "te_new"), [], tnBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
theorem tnCode : guestCode ((nm "te_new")) =
    some ([], tnBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 869) (by decide)) ⟨_, rfl⟩ tnEntry
def mn0 : ProgHOL 64 :=
  (.seq (callD (nm "memzero") [(lv (nm "m")), (cw 176)]) (.return (lv (nm "m"))))
def mnBody : ProgHOL 64 :=
  (.decCall (nm "m") .one (nm "alloc") [(cw 176)] mn0)
theorem mnEntry : fnEntry Guest.Software.guestFn_msg_new =
    ((nm "msg_new"), [], mnBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
theorem mnCode : guestCode ((nm "msg_new")) =
    some ([], mnBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 465) (by decide)) ⟨_, rfl⟩ mnEntry
def sf17 : ProgHOL 64 :=
  (.seq (.assign .global (nm "journal_n") (cw 0)) (.return (cw 0)))
def sf16 : ProgHOL 64 :=
  (.seq (.store (.op .add [(gv (nm "ts")), (cw 64)]) (lv (nm "t"))) sf17)
def sf15 : ProgHOL 64 :=
  (.seq (.call (some (some (.local, (nm "t")), none)) (nm "htab_new") [(cw 52), (cw 16)]) sf16)
def sf14 : ProgHOL 64 :=
  (.seq (.store (.op .add [(gv (nm "ts")), (cw 56)]) (lv (nm "t"))) sf15)
def sf13 : ProgHOL 64 :=
  (.seq (.call (some (some (.local, (nm "t")), none)) (nm "htab_new") [(cw 20), (cw 16)]) sf14)
def sf12 : ProgHOL 64 :=
  (.seq (.store (.op .add [(gv (nm "ts")), (cw 48)]) (lv (nm "t"))) sf13)
def sf11 : ProgHOL 64 :=
  (.seq (.call (some (some (.local, (nm "t")), none)) (nm "htab_new") [(cw 32), (cw 16)]) sf12)
def sf10 : ProgHOL 64 :=
  (.seq (.store (.op .add [(gv (nm "ts")), (cw 40)]) (lv (nm "t"))) sf11)
def sf9 : ProgHOL 64 :=
  (.seq (.call (some (some (.local, (nm "t")), none)) (nm "htab_new") [(cw 52), (cw 16)]) sf10)
def sf8 : ProgHOL 64 :=
  (.seq (.store (.op .add [(gv (nm "ts")), (cw 32)]) (lv (nm "t"))) sf9)
def sf7 : ProgHOL 64 :=
  (.seq (.call (some (some (.local, (nm "t")), none)) (nm "htab_new") [(cw 20), (cw 16)]) sf8)
def sf6 : ProgHOL 64 :=
  (.seq (.store (.op .add [(gv (nm "ts")), (cw 24)]) (lv (nm "t"))) sf7)
def sf5 : ProgHOL 64 :=
  (.seq (.call (some (some (.local, (nm "t")), none)) (nm "htab_new") [(cw 52), (cw 64)]) sf6)
def sf4 : ProgHOL 64 :=
  (.seq (.store (.op .add [(gv (nm "ts")), (cw 16)]) (lv (nm "t"))) sf5)
def sf3 : ProgHOL 64 :=
  (.seq (.call (some (some (.local, (nm "t")), none)) (nm "htab_new") [(cw 20), (cw 64)]) sf4)
def sf2 : ProgHOL 64 :=
  (.seq (.store (.op .add [(gv (nm "ts")), (cw 8)]) (lv (nm "t"))) sf3)
def sf1 : ProgHOL 64 :=
  (.decCall (nm "t") .one (nm "htab_new") [(cw 20), (cw 64)] sf2)
def sf0 : ProgHOL 64 :=
  (.seq (.store (.op .add [(gv (nm "ts")), (cw 0)]) (gv (nm "bs"))) sf1)
def sfBody : ProgHOL 64 :=
  (.seq (.call (some (some (.global, (nm "ts")), none)) (nm "alloc") [(cw 72)]) sf0)
theorem sfEntry : fnEntry Guest.Software.guestFn_state_fresh_tx =
    ((nm "state_fresh_tx"), [], sfBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
theorem sfCode : guestCode ((nm "state_fresh_tx")) =
    some ([], sfBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 355) (by decide)) ⟨_, rfl⟩ sfEntry
def mi0 : ProgHOL 64 :=
  (.ite (.cmp .lower (lv (nm "a")) (lv (nm "b"))) (.return (lv (nm "a"))) .skip)
def miBody : ProgHOL 64 :=
  (.seq mi0 (.return (lv (nm "b"))))
theorem miEntry : fnEntry Guest.Software.guestFn_min =
    ((nm "min"), [((nm "a"), .one), ((nm "b"), .one)], miBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
theorem miCode : guestCode ((nm "min")) =
    some ([((nm "a"), .one), ((nm "b"), .one)], miBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 31) (by decide)) ⟨_, rfl⟩ miEntry

end InitECandidate.Solver.MemSafe.Ptx
