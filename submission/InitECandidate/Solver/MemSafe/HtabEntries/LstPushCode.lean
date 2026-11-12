import InitECandidate.Solver.MemSafe.HtabEntries.LstTrk

/-!
# `lst_push`: code

```
fun 1 lst_push(1 l, 1 esz) {
  var n = lds 1 (l + 8); var cap = lds 1 (l + 16);
  if n >=+ cap { var 1 np = alloc(esz * cap * 2); memcpy(np, lds 1 (l + 0), esz * n);
                 st l + 0, np; st l + 16, cap * 2; }
  st l + 8, n + 1; return (lds 1 (l + 0)) + n * esz; }
```

`code_lst_push` (`guestAst[410]`), `noExc_lst_push` (`xChk`: only `alloc` / `memcpy` callees).
-/

set_option maxRecDepth 100000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.HtabEntries
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- `lds 1 (l + k)`. -/
def lpLd (k : Nat) : ExpHOL 64 := .load .one (.op .add [lv (nm "l"), cw k])

/-- `st l + k, e`. -/
def lpSt (k : Nat) (e : ExpHOL 64) : ProgHOL 64 := .store (.op .add [lv (nm "l"), cw k]) e

def lpGrow : ProgHOL 64 :=
  .decCall (nm "np") .one (nm "alloc") [.panop .mul [.panop .mul [lv (nm "esz"), lv (nm "cap")], cw 2]]
    (.seq (callD (nm "memcpy") [lv (nm "np"), lpLd 0, .panop .mul [lv (nm "esz"), lv (nm "n")]])
      (.seq (lpSt 0 (lv (nm "np"))) (lpSt 16 (.panop .mul [lv (nm "cap"), cw 2]))))

def lpTail : ProgHOL 64 :=
  .seq (lpSt 8 (.op .add [lv (nm "n"), cw 1]))
    (.return (.op .add [lpLd 0, .panop .mul [lv (nm "n"), lv (nm "esz")]]))

def lpBody : ProgHOL 64 :=
  .dec (nm "n") .one (lpLd 8)
    (.dec (nm "cap") .one (lpLd 16)
      (.seq (.ite (.cmp .notLower (lv (nm "n")) (lv (nm "cap"))) lpGrow .skip) lpTail))

theorem entry_lst_push : fnEntry Guest.Software.guestFn_lst_push =
    (nm "lst_push", [(nm "l", .one), (nm "esz", .one)], lpBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_lst_push : guestCode (nm "lst_push") =
    some ([(nm "l", .one), (nm "esz", .one)], lpBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 410) (by decide)) ⟨_, rfl⟩
    entry_lst_push

theorem xchk_lst_push : xChk htabX false (declPair Guest.Software.guestFn_lst_push).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem noExc_lst_push (hX : X.code.lookup = guestCode) : NoExc σ X (nm "lst_push") :=
  noExc_of_pair (noExc_htabX hX) hX (p := declPair Guest.Software.guestFn_lst_push)
    (declPair_valid (List.getElem_mem (n := 410) (by decide)) ⟨_, rfl⟩) xchk_lst_push

/-! ## `scratch_alloc` and `lst_new_scratch` (`guestAst[13]`, `[409]`) -/

theorem xchk_scratch_alloc :
    xChk htabX false (declPair Guest.Software.guestFn_scratch_alloc).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

def lstX : List MlS := nm "scratch_alloc" :: htabX

theorem noExc_lstX (hX : X.code.lookup = guestCode) : NoExcTab σ X lstX :=
  noExcTab_cons (noExc_htabX hX) (noExc_of_pair (noExc_htabX hX) hX
    (p := declPair Guest.Software.guestFn_scratch_alloc)
    (declPair_valid (List.getElem_mem (n := 13) (by decide)) ⟨_, rfl⟩) xchk_scratch_alloc)

theorem xchk_lst_new_scratch :
    xChk lstX false (declPair Guest.Software.guestFn_lst_new_scratch).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem noExc_lst_new_scratch (hX : X.code.lookup = guestCode) : NoExc σ X (nm "lst_new_scratch") :=
  noExc_of_pair (noExc_lstX hX) hX (p := declPair Guest.Software.guestFn_lst_new_scratch)
    (declPair_valid (List.getElem_mem (n := 409) (by decide)) ⟨_, rfl⟩) xchk_lst_new_scratch

end InitECandidate.Solver.MemSafe.HtabEntries
