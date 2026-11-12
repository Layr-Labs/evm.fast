import InitECandidate.Solver.MemSafe.Frames.GcLib

/-!
# `generic_call`: code

```
fun 1 generic_call(1 gas, 1 reservoir, {1,1,1,1} value, 1 caller, 1 to, 1 code_address,
    1 transfer, 1 is_static, 1 in_start, 1 in_size, 1 out_start, 1 out_size,
    1 code, 1 code_n, 1 disable_pre, 1 new_account_charged) {
  var 1 empty = evm_empty;
  set_retdata(empty, 0);
  var msg = lds 1 (ev + 112);
  if (lds 1 (msg + 128)) + 1 >+ 1024 {
    st ev + 64, (lds 1 (ev + 64)) + gas;
    st ev + 72, (lds 1 (ev + 72)) + reservoir;
    if new_account_charged != 0 { credit_state_gas_refund(183600); }
    stack_push(<0, 0, 0, 0>);
    return 0;
  }
  var 1 call_data = ((lds 1 (ev + 24)) + (in_start));
  var 1 child_mark = scratch_mark();
  var 1 child_mem_mark = frame_mem_mark();
  var 1 cm = child_message(caller, to, to, gas, reservoir, value, call_data, in_size,
      code_address, code, code_n, transfer, is_static, disable_pre);
  start_child(cm, 1, child_mark, child_mem_mark, new_account_charged, out_start, out_size, 0);
  return 1;
}
```
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

def gcParams : List (MlS × ShapeHOL) :=
  [(nm "gas", .one), (nm "reservoir", .one), (nm "value", .comb [.one, .one, .one, .one]),
    (nm "caller", .one), (nm "to", .one), (nm "code_address", .one), (nm "transfer", .one),
    (nm "is_static", .one), (nm "in_start", .one), (nm "in_size", .one), (nm "out_start", .one),
    (nm "out_size", .one), (nm "code", .one), (nm "code_n", .one), (nm "disable_pre", .one),
    (nm "new_account_charged", .one)]

def gcCM : ProgHOL 64 :=
  .decCall (nm "cm") .one (nm "child_message") [lv (nm "caller"), lv (nm "to"), lv (nm "to"),
    lv (nm "gas"), lv (nm "reservoir"), lv (nm "value"), lv (nm "call_data"), lv (nm "in_size"),
    lv (nm "code_address"), lv (nm "code"), lv (nm "code_n"), lv (nm "transfer"),
    lv (nm "is_static"), lv (nm "disable_pre")]
    (.seq (callD (nm "start_child") [lv (nm "cm"), cw 1, lv (nm "child_mark"),
        lv (nm "child_mem_mark"), lv (nm "new_account_charged"), lv (nm "out_start"),
        lv (nm "out_size"), cw 0])
      (.return (cw 1)))

def gcMain : ProgHOL 64 :=
  .dec (nm "call_data") .one (.op .add [gLoad "ev" 24, lv (nm "in_start")])
    (.decCall (nm "child_mark") .one (nm "scratch_mark") []
      (.decCall (nm "child_mem_mark") .one (nm "frame_mem_mark") [] gcCM))

def gcDepth : ProgHOL 64 :=
  .seq (stG "ev" 64 (.op .add [gLoad "ev" 64, lv (nm "gas")]))
  (.seq (stG "ev" 72 (.op .add [gLoad "ev" 72, lv (nm "reservoir")]))
  (.seq (.ite (.cmp .notEqual (lv (nm "new_account_charged")) (cw 0))
      (callD (nm "credit_state_gas_refund") [cw 183600]) .skip)
  (.seq (callD (nm "stack_push") [.rstruct [cw 0, cw 0, cw 0, cw 0]])
    (.return (cw 0)))))

def gcBody : ProgHOL 64 :=
  .dec (nm "empty") .one (gv (nm "evm_empty"))
    (.seq (callD (nm "set_retdata") [lv (nm "empty"), cw 0])
      (.dec (nm "msg") .one (gLoad "ev" 112)
        (.seq (.ite (.cmp .lower (cw 1024) (.op .add [lLoad "msg" 128, cw 1])) gcDepth .skip)
          gcMain)))

theorem entry_gc : fnEntry Guest.Software.guestFn_generic_call =
    (nm "generic_call", gcParams, gcBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_gc : guestCode (nm "generic_call") = some (gcParams, gcBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 601) (by decide)) ⟨_, rfl⟩
    entry_gc

/-- The parameter names of `generic_call`. -/
def gcNames : List MlS := gcParams.map Prod.fst

end InitECandidate.Solver.MemSafe.Frames
