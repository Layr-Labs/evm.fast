import InitECandidate.Solver.MemSafe.Summary
import InitECandidate.Solver.Spec.CodeRlp
import InitECandidate.Solver.Spec.U256

/-!
# `run_frames`: certified code

The body of `run_frames` (`Guest/src/evm_calls.pnk`), certified against `guestCode` by `cbv`
on the single declaration `guestFn_run_frames`:

```
fun 1 run_frames() {
  var go = 1;
  while go != 0 {
    var done = 0;
    if (lds 1 (cur_cont + CK_DONE)) != 0 { done = 1; }
    else { if (lds 1 (ev + EV_RUNNING)) == 0 { done = 1; }
      else { var pc = lds 1 (ev + EV_PC);
        if pc >=+ (lds 1 (ev + EV_CODE_N)) { done = 1; }
        else { var err = 0;
          try op_dispatch(ld8 ((lds 1 (ev + EV_CODE)) + pc))
          catch EvmErr => err { frame_exception(err); } } } }
    if done != 0 {
      frame_epilogue();
      if (lds 1 (cur_cont + CK_KIND)) == 0 {
        ev = lds 1 (cur_cont + CK_PARENT); cur_cont = lds 1 (cur_cont + CK_PARENT_CONT); go = 0;
      } else { var err2 = 0;
        try finish_child() catch EvmErr => err2 { frame_exception(err2); } } } }
  return 0; }
```

Also `lookupCode_zero`: code lookup of a parameterless function.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-! ## Expression helpers -/

/-- `lds 1 (g + k)` for a global `g`. -/
def gLoad (g : String) (k : Nat) : ExpHOL 64 := .load .one (.op .add [gv (nm g), cw k])

abbrev nmEv : MlS := nm "ev"
abbrev nmCC : MlS := nm "cur_cont"
abbrev nmGo : MlS := nm "go"
abbrev nmDone : MlS := nm "done"
abbrev nmPc : MlS := nm "pc"
abbrev nmErr : MlS := nm "err"
abbrev nmErr2 : MlS := nm "err2"
abbrev nmEvmErr : MlS := nm "EvmErr"

/-! ## The body -/

/-- The loop condition `go != 0`. -/
def rfCond : ExpHOL 64 := .cmp .notEqual (lv nmGo) (cw 0)

/-- `CK_DONE(cur_cont) != 0`. -/
def condDone : ExpHOL 64 := .cmp .notEqual (gLoad "cur_cont" 32) (cw 0)
/-- `RUNNING(ev) == 0`. -/
def condStop : ExpHOL 64 := .cmp .equal (gLoad "ev" 104) (cw 0)
/-- `pc >=+ CODE_N(ev)`. -/
def condEnd : ExpHOL 64 := .cmp .notLower (lv nmPc) (gLoad "ev" 56)
/-- `CK_KIND(cur_cont) == 0`. -/
def condKind0 : ExpHOL 64 := .cmp .equal (gLoad "cur_cont" 16) (cw 0)

/-- The opcode byte `ld8 (CODE(ev) + pc)`. -/
def opByte : ExpHOL 64 := .loadByte (.op .add [gLoad "ev" 48, lv nmPc])

/-- `frame_exception(x)` as an exception handler body. -/
def excH (x : MlS) : ProgHOL 64 := callD (nm "frame_exception") [lv x]

/-- `try op_dispatch(op) catch EvmErr => err { frame_exception(err); }` -/
def opCall : ProgHOL 64 :=
  .call (some (none, some (nmEvmErr, nmErr, excH nmErr))) (nm "op_dispatch") [opByte]

/-- `try finish_child() catch EvmErr => err2 { frame_exception(err2); }` -/
def finCall : ProgHOL 64 :=
  .call (some (none, some (nmEvmErr, nmErr2, excH nmErr2))) (nm "finish_child") []

def setDone : ProgHOL 64 := .assign .local nmDone (cw 1)

/-- The step part of an iteration (sets `done` or runs one opcode). -/
def rfStep : ProgHOL 64 :=
  .ite condDone setDone
    (.ite condStop setDone
      (.dec nmPc .one (gLoad "ev" 0)
        (.ite condEnd setDone (.dec nmErr .one (cw 0) opCall))))

/-- The kind-0 exit: `ev = PARENT; cur_cont = PARENT_CONT; go = 0`. -/
def rfExit : ProgHOL 64 :=
  .seq (.assign .global nmEv (gLoad "cur_cont" 0))
    (.seq (.assign .global nmCC (gLoad "cur_cont" 8)) (.assign .local nmGo (cw 0)))

/-- The finish part of an iteration. -/
def rfFin : ProgHOL 64 :=
  .ite (.cmp .notEqual (lv nmDone) (cw 0))
    (.seq .skip (.seq (callD (nm "frame_epilogue") [])
      (.ite condKind0 rfExit (.dec nmErr2 .one (cw 0) finCall))))
    .skip

def rfLoopBody : ProgHOL 64 := .dec nmDone .one (cw 0) (.seq rfStep rfFin)

def rfBody : ProgHOL 64 :=
  .dec nmGo .one (cw 1) (.seq (.while rfCond rfLoopBody) (.return (cw 0)))

theorem entry_run_frames : fnEntry Guest.Software.guestFn_run_frames =
    (nm "run_frames", [], rfBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_run_frames : guestCode (nm "run_frames") = some ([], rfBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 584) (by decide)) ⟨_, rfl⟩
    entry_run_frames

/-! ## Code lookup of a parameterless function -/

theorem lookupCode_zero {code : MlS → Option (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL)}
    {f : MlS} {bd : ProgHOL 64} {rsh : ShapeHOL} (hc : code f = some ([], bd, rsh))
    {vs : List (ValueHOL 64)} {body : ProgHOL 64} {callee : HolFiniteMapExact MlS (ValueHOL 64)}
    {rs : ShapeHOL} (h : PanSemStateFiniteExact.lookupCodeHOLFinite code f vs = some (body, callee, rs)) :
    body = bd ∧ rs = rsh ∧ vs = [] := by
  unfold PanSemStateFiniteExact.lookupCodeHOLFinite at h
  split at h
  · simp at h
  · rename_i body' cl rs' hx
    simp only [Option.some.injEq, Prod.mk.injEq] at h
    obtain ⟨rfl, rfl, rfl⟩ := h
    unfold lookupCodeHOLExact at hx
    rw [hc] at hx
    dsimp only at hx
    split at hx
    · rename_i hcond
      simp only [Option.some.injEq, Prod.mk.injEq] at hx
      obtain ⟨rfl, rfl, rfl⟩ := hx
      obtain ⟨-, hlen, -⟩ := hcond
      match vs, hlen with
      | [], _ => exact ⟨rfl, rfl, rfl⟩
    · simp at hx

end InitECandidate.Solver.MemSafe.Frames
