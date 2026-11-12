import InitECandidate.Solver.MemSafe.Frames.GuestRel
import InitECandidate.Solver.MemSafe.Frames.StartChildSpec

/-!
# `finish_child`: the code

```
fun 1 finish_child() {
  var rec = cur_cont; var child = ev;
  var parent = lds 1 (rec + CK_PARENT); var kind = lds 1 (rec + CK_KIND); ...
  if kind == 2 {                                                         -- finA
    var csnap = lds 1 (rec + CK_CSNAPSHOT);
    if (lds 1 (child + EV_ERROR)) == 0 {
      var err = 0;
      try create_finish(msg, child)
      catch EvmErr => err { state_restore(csnap); refill_frame_state_gas(); frame_halt(err);
        st ev + EV_OUTPUT, evm_empty; st ev + EV_OUTPUT_N, 0; }             -- finH
    } else { state_restore(csnap); } }
  ev = parent; cur_cont = lds 1 (rec + CK_PARENT_CONT);
  if kind == 2 { ... } else { ... }                                     -- finB
  scratch_release(child_mark); frame_mem_release(child_mem_mark); pc_add(1);
  return 0; }
```

`entry_fin` / `code_fin`: the body below is the guest's (`guestAst[583]`).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- The handler of `create_finish`. -/
def finH : ProgHOL 64 :=
  .seq (callD (nm "state_restore") [lv (nm "csnap")])
  (.seq (callD (nm "refill_frame_state_gas") [])
  (.seq (callD (nm "frame_halt") [lv (nm "err")])
  (.seq (stG "ev" 120 (gv (nm "evm_empty")))
    (stG "ev" 128 (cw 0)))))

/-- The kind-2 prefix, before the switch to the parent. -/
def finA : ProgHOL 64 :=
  .ite (.cmp .equal (lv (nm "kind")) (cw 2))
    (.dec (nm "csnap") .one (lLoad "rec" 96)
      (.ite (.cmp .equal (lLoad "child" 160) (cw 0))
        (.dec (nm "err") .one (cw 0)
          (.call (some (none, some (nmEvmErr, nm "err", finH))) (nm "create_finish")
            [lv (nm "msg"), lv (nm "child")]))
        (callD (nm "state_restore") [lv (nm "csnap")])))
    .skip

/-- The failed child. -/
def finErr : ProgHOL 64 :=
  .seq (callD (nm "rollback_child_access") [lv (nm "child")])
  (.seq (callD (nm "incorporate_child_on_error") [lv (nm "child")])
  (.seq (.ite (.cmp .notEqual (lv (nm "new_account_charged")) (cw 0))
      (callD (nm "credit_state_gas_refund") [cw 183600]) .skip)
  (.seq (callD (nm "set_retdata") [lLoad "child" 120, lLoad "child" 128])
    (callD (nm "stack_push") [.rstruct [cw 0, cw 0, cw 0, cw 0]]))))

/-- A successful create. -/
def finOk2 : ProgHOL 64 :=
  .seq (callD (nm "incorporate_child_on_success") [lv (nm "child")])
  (.seq (callD (nm "set_retdata") [lv (nm "empty"), cw 0])
    (.decCall (nm "av") (.comb [.one, .one, .one, .one]) (nm "address_to_u256")
      [lv (nm "contract_address")]
      (callD (nm "stack_push") [lv (nm "av")])))

/-- A successful call. -/
def finOk1 : ProgHOL 64 :=
  .seq (callD (nm "incorporate_child_on_success") [lv (nm "child")])
  (.seq (callD (nm "set_retdata") [lLoad "child" 120, lLoad "child" 128])
    (callD (nm "stack_push") [.rstruct [cw 1, cw 0, cw 0, cw 0]]))

/-- The output copy of a call. -/
def finCopy : ProgHOL 64 :=
  .decCall (nm "actual") .one (nm "min") [lv (nm "out_size"), lLoad "child" 128]
    (.ite (.cmp .notEqual (lv (nm "actual")) (cw 0))
      (callD (nm "memcpy") [.op .add [gLoad "ev" 24, lv (nm "out_start")], gLoad "ev" 144,
        lv (nm "actual")])
      .skip)

/-- The parent's part, after the switch. -/
def finB : ProgHOL 64 :=
  .ite (.cmp .equal (lv (nm "kind")) (cw 2))
    (.dec (nm "empty") .one (gv (nm "evm_empty"))
      (.ite (.cmp .notEqual (lLoad "child" 160) (cw 0)) finErr finOk2))
    (.seq (.ite (.cmp .notEqual (lLoad "child" 160) (cw 0)) finErr finOk1) finCopy)

/-- The releases and the parent's `pc_add(1)`. -/
def finR : ProgHOL 64 :=
  .seq (callD (nm "scratch_release") [lv (nm "child_mark")])
  (.seq (callD (nm "frame_mem_release") [lv (nm "child_mem_mark")])
  (.seq (callD (nm "pc_add") [cw 1])
    (.return (cw 0))))

def finTail : ProgHOL 64 :=
  .seq finA
  (.seq (.assign .global nmEv (lv (nm "parent")))
  (.seq (.assign .global nmCC (lLoad "rec" 8))
  (.seq finB finR)))

def finBody : ProgHOL 64 :=
  .dec (nm "rec") .one (gv nmCC)
  (.dec (nm "child") .one (gv nmEv)
  (.dec (nm "parent") .one (lLoad "rec" 0)
  (.dec (nm "kind") .one (lLoad "rec" 16)
  (.dec (nm "msg") .one (lLoad "rec" 40)
  (.dec (nm "new_account_charged") .one (lLoad "rec" 64)
  (.dec (nm "child_mark") .one (lLoad "rec" 48)
  (.dec (nm "child_mem_mark") .one (lLoad "rec" 56)
  (.dec (nm "out_start") .one (lLoad "rec" 72)
  (.dec (nm "out_size") .one (lLoad "rec" 80)
  (.dec (nm "contract_address") .one (lLoad "rec" 88)
    finTail))))))))))

theorem entry_fin : fnEntry Guest.Software.guestFn_finish_child =
    (nm "finish_child", [], finBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_fin : guestCode (nm "finish_child") = some ([], finBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 583) (by decide)) ⟨_, rfl⟩
    entry_fin

end InitECandidate.Solver.MemSafe.Frames
