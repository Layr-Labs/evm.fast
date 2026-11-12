import InitECandidate.Solver.MemSafe.HtabEntries.LstPush
import InitECandidate.Solver.MemSafe.HtabEntries.Union

/-!
# `log_append`, `incorporate_child_on_error`, `incorporate_child_on_success`: code

```
fun 1 log_append(1 e, 1 log) { var 1 slot = lst_push(lds 1 (e + 88), 8); st slot, log; return 0; }
fun 1 incorporate_child_on_error(1 child) {
  st ev + 64, ev[64] + child[64]; st ev + 72, ev[72] + child[72]; st ev + 184, ev[184] + child[184];
  return 0; }
fun 1 incorporate_child_on_success(1 child) {
  incorporate_child_on_error(child);
  st ev + 192, ev[192] + child[192];
  var rep = ev[72]; if ev[192] <+ rep { rep = ev[192]; }
  st ev + 64, ev[64] + rep; st ev + 72, ev[72] - rep; st ev + 192, ev[192] - rep;
  var cl = child[88]; var n = cl[8]; var p = cl[0]; var i = 0;
  while i < n { log_append(ev, p[i * 8]); i = i + 1; }
  st ev + 96, ev[96] + child[96];
  htab_union_into(ev[136], child[136]);
  return 0; }
```

Code lemmas (`guestAst[523]`, `[591]`, `[592]`) and `NoExc` (`xChk`).
-/

set_option maxRecDepth 100000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Inc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

def gev : ExpHOL 64 := .var .global (nm "ev")
def evLd (k : Nat) : ExpHOL 64 := .load .one (.op .add [gev, cw k])
def chLd (k : Nat) : ExpHOL 64 := .load .one (.op .add [lv (nm "child"), cw k])
def evSt (k : Nat) (e : ExpHOL 64) : ProgHOL 64 := .store (.op .add [gev, cw k]) e

def laBody : ProgHOL 64 :=
  .decCall (nm "slot") .one (nm "lst_push") [.load .one (.op .add [lv (nm "e"), cw 88]), cw 8]
    (.seq (.store (lv (nm "slot")) (lv (nm "log"))) (.return (cw 0)))

def iceBody : ProgHOL 64 :=
  .seq (evSt 64 (.op .add [evLd 64, chLd 64]))
    (.seq (evSt 72 (.op .add [evLd 72, chLd 72]))
      (.seq (evSt 184 (.op .add [evLd 184, chLd 184])) (.return (cw 0))))

def icsLoop : ProgHOL 64 :=
  .while (.cmp .less (lv (nm "i")) (lv (nm "n")))
    (.seq (callD (nm "log_append") [gev, .load .one (.op .add [lv (nm "p"), .panop .mul [lv (nm "i"), cw 8]])])
      (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1])))

def icsEnd : ProgHOL 64 :=
  .seq (evSt 96 (.op .add [evLd 96, chLd 96]))
    (.seq (callD (nm "htab_union_into") [evLd 136, chLd 136]) (.return (cw 0)))

def icsTail : ProgHOL 64 :=
  .dec (nm "cl") .one (chLd 88)
    (.dec (nm "n") .one (.load .one (.op .add [lv (nm "cl"), cw 8]))
      (.dec (nm "p") .one (.load .one (.op .add [lv (nm "cl"), cw 0]))
        (.dec (nm "i") .one (cw 0) (.seq icsLoop icsEnd))))

def icsGas : ProgHOL 64 :=
  .seq (evSt 192 (.op .add [evLd 192, chLd 192]))
    (.dec (nm "rep") .one (evLd 72)
      (.seq (.ite (.cmp .lower (evLd 192) (lv (nm "rep"))) (.assign .local (nm "rep") (evLd 192)) .skip)
        (.seq (evSt 64 (.op .add [evLd 64, lv (nm "rep")]))
          (.seq (evSt 72 (.op .sub [evLd 72, lv (nm "rep")]))
            (.seq (evSt 192 (.op .sub [evLd 192, lv (nm "rep")])) icsTail)))))

def icsBody : ProgHOL 64 :=
  .seq (callD (nm "incorporate_child_on_error") [lv (nm "child")]) icsGas

theorem entry_log_append : fnEntry Guest.Software.guestFn_log_append =
    (nm "log_append", [(nm "e", .one), (nm "log", .one)], laBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_log_append : guestCode (nm "log_append") =
    some ([(nm "e", .one), (nm "log", .one)], laBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 523) (by decide)) ⟨_, rfl⟩
    entry_log_append

theorem entry_ice : fnEntry Guest.Software.guestFn_incorporate_child_on_error =
    (nm "incorporate_child_on_error", [(nm "child", .one)], iceBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_ice : guestCode (nm "incorporate_child_on_error") =
    some ([(nm "child", .one)], iceBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 591) (by decide)) ⟨_, rfl⟩
    entry_ice

theorem entry_ics : fnEntry Guest.Software.guestFn_incorporate_child_on_success =
    (nm "incorporate_child_on_success", [(nm "child", .one)], icsBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_ics : guestCode (nm "incorporate_child_on_success") =
    some ([(nm "child", .one)], icsBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 592) (by decide)) ⟨_, rfl⟩
    entry_ics

/-! ## No exceptions -/

theorem xchk_log_append :
    xChk (nm "lst_push" :: htabX) false (declPair Guest.Software.guestFn_log_append).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem xchk_ice :
    xChk [] false (declPair Guest.Software.guestFn_incorporate_child_on_error).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

def icsX : List MlS := [nm "incorporate_child_on_error", nm "log_append", nm "htab_union_into"]

theorem xchk_ics :
    xChk icsX false (declPair Guest.Software.guestFn_incorporate_child_on_success).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem noExc_log_append (hX : X.code.lookup = guestCode) : NoExc σ X (nm "log_append") :=
  noExc_of_pair (noExcTab_cons (noExc_htabX hX) (noExc_lst_push hX)) hX
    (p := declPair Guest.Software.guestFn_log_append)
    (declPair_valid (List.getElem_mem (n := 523) (by decide)) ⟨_, rfl⟩) xchk_log_append

theorem noExc_ice (hX : X.code.lookup = guestCode) : NoExc σ X (nm "incorporate_child_on_error") :=
  noExc_of_pair (noExcTab_nil (σ := σ)) hX (p := declPair Guest.Software.guestFn_incorporate_child_on_error)
    (declPair_valid (List.getElem_mem (n := 591) (by decide)) ⟨_, rfl⟩) xchk_ice

theorem noExc_icsX (hX : X.code.lookup = guestCode) : NoExcTab σ X icsX := by
  intro f hf
  simp only [icsX, List.mem_cons, List.not_mem_nil, or_false] at hf
  rcases hf with rfl | rfl | rfl
  · exact noExc_ice hX
  · exact noExc_log_append hX
  · exact noExc_union hX

theorem noExc_ics (hX : X.code.lookup = guestCode) : NoExc σ X (nm "incorporate_child_on_success") :=
  noExc_of_pair (noExc_icsX hX) hX (p := declPair Guest.Software.guestFn_incorporate_child_on_success)
    (declPair_valid (List.getElem_mem (n := 592) (by decide)) ⟨_, rfl⟩) xchk_ics

end InitECandidate.Solver.MemSafe.Inc
