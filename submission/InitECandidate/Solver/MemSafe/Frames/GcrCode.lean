import InitECandidate.Solver.MemSafe.Frames.ProJL

/-!
# `generic_create`: the code (frames10, task 2)

```
fun 1 generic_create({1,1,1,1} endowment, 1 contract_address, 1 mstart, 1 msize) {
  if msize >+ 131072 { throw EvmErr 4; }
  var 1 call_data = ((lds 1 (ev + 24)) + (mstart));
  var 1 empty = evm_empty;
  set_retdata(empty, 0);
  var msg = lds 1 (ev + 112);
  var sender_address = lds 1 (msg + 32);
  var 1 sender = get_account(sender_address);
  var 1 insufficient = u256_lt(lds {1,1,1,1} (sender + 8), endowment);
  if (insufficient != 0) || ((lds 1 (sender + 0)) == 2^64-1) || ((lds 1 (msg + 128)) + 1 >+ 1024) {
    stack_push(<0, 0, 0, 0>); return 0; }
  warm_address(contract_address);
  var 1 alive = is_account_alive(contract_address);
  var new_account_charged = 0;
  if alive == 0 { new_account_charged = 1; charge_state_gas(183600); }
  var gl = lds 1 (ev + 64);
  var create_gas = gl - (gl >>> 6);
  st ev + 64, gl - create_gas;
  var 1 deployable = account_deployable(contract_address);
  if deployable == 0 {
    increment_nonce(sender_address);
    st ev + 184, (lds 1 (ev + 184)) + create_gas;
    if new_account_charged != 0 { credit_state_gas_refund(183600); }
    stack_push(<0, 0, 0, 0>); return 0; }
  var reservoir = lds 1 (ev + 72);
  st ev + 72, 0;
  increment_nonce(sender_address);
  var 1 child_mark = scratch_mark();
  var 1 child_mem_mark = frame_mem_mark();
  var 1 cm = child_message(sender_address, 0, contract_address, create_gas, reservoir, endowment,
      empty, 0, 0, call_data, msize, 1, 0, 0);
  start_child(cm, 2, child_mark, child_mem_mark, new_account_charged, 0, 0, contract_address);
  return 1;
}
```
-/

set_option maxRecDepth 100000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

def gcrParams : List (MlS × ShapeHOL) :=
  [(nm "endowment", sh4), (nm "contract_address", .one), (nm "mstart", .one), (nm "msize", .one)]

/-- `var cm = child_message(…); start_child(cm, 2, …); return 1`. -/
def gcrCM : ProgHOL 64 :=
  .decCall (nm "cm") .one (nm "child_message") [lv (nm "sender_address"), cw 0,
    lv (nm "contract_address"), lv (nm "create_gas"), lv (nm "reservoir"), lv (nm "endowment"),
    lv (nm "empty"), cw 0, cw 0, lv (nm "call_data"), lv (nm "msize"), cw 1, cw 0, cw 0]
    (.seq (callD (nm "start_child") [lv (nm "cm"), cw 2, lv (nm "child_mark"),
        lv (nm "child_mem_mark"), lv (nm "new_account_charged"), cw 0, cw 0,
        lv (nm "contract_address")])
      (.return (cw 1)))

/-- From `var reservoir`. -/
def gcrTail : ProgHOL 64 :=
  .dec (nm "reservoir") .one (gLoad "ev" 72)
    (.seq (stG "ev" 72 (cw 0))
      (.seq (callD (nm "increment_nonce") [lv (nm "sender_address")])
        (.decCall (nm "child_mark") .one (nm "scratch_mark") []
          (.decCall (nm "child_mem_mark") .one (nm "frame_mem_mark") [] gcrCM))))

/-- `stack_push(<0, 0, 0, 0>); return 0`. -/
def gcrPush0 : ProgHOL 64 :=
  .seq (callD (nm "stack_push") [.rstruct [cw 0, cw 0, cw 0, cw 0]]) (.return (cw 0))

/-- The undeployable branch. -/
def gcrUndep : ProgHOL 64 :=
  .seq (callD (nm "increment_nonce") [lv (nm "sender_address")])
    (.seq (stG "ev" 184 (.op .add [gLoad "ev" 184, lv (nm "create_gas")]))
      (.seq (.ite (.cmp .notEqual (lv (nm "new_account_charged")) (cw 0))
          (callD (nm "credit_state_gas_refund") [cw 183600]) .skip)
        gcrPush0))

/-- From `var gl`. -/
def gcrGas : ProgHOL 64 :=
  .dec (nm "gl") .one (gLoad "ev" 64)
    (.dec (nm "create_gas") .one (.op .sub [lv (nm "gl"), .shift .lsr (lv (nm "gl")) (cw 6)])
      (.seq (stG "ev" 64 (.op .sub [lv (nm "gl"), lv (nm "create_gas")]))
        (.decCall (nm "deployable") .one (nm "account_deployable") [lv (nm "contract_address")]
          (.seq (.ite (.cmp .equal (lv (nm "deployable")) (cw 0)) gcrUndep .skip) gcrTail))))

/-- The new-account charge `if alive == 0 { … }`. -/
def gcrCharge : ProgHOL 64 :=
  .ite (.cmp .equal (lv (nm "alive")) (cw 0))
    (.seq (.assign .local (nm "new_account_charged") (cw 1))
      (callD (nm "charge_state_gas") [cw 183600]))
    .skip

/-- From `warm_address`. -/
def gcrAlive : ProgHOL 64 :=
  .seq (callD (nm "warm_address") [lv (nm "contract_address")])
    (.decCall (nm "alive") .one (nm "is_account_alive") [lv (nm "contract_address")]
      (.dec (nm "new_account_charged") .one (cw 0) (.seq gcrCharge gcrGas)))

/-- The early-failure test. -/
def gcrFail : ExpHOL 64 :=
  .cmp .notEqual (cw 0) (.op .or [.cmp .notEqual (lv (nm "insufficient")) (cw 0),
    .cmp .equal (lLoad "sender" 0) (cw 18446744073709551615),
    .cmp .lower (cw 1024) (.op .add [lLoad "msg" 128, cw 1])])

/-- From `var sender_address`. -/
def gcrAcct : ProgHOL 64 :=
  .dec (nm "sender_address") .one (lLoad "msg" 32)
    (.decCall (nm "sender") .one (nm "get_account") [lv (nm "sender_address")]
      (.decCall (nm "insufficient") .one (nm "u256_lt")
          [.load sh4 (.op .add [lv (nm "sender"), cw 8]), lv (nm "endowment")]
        (.seq (.ite gcrFail gcrPush0 .skip) gcrAlive)))

def gcrBody : ProgHOL 64 :=
  .seq (.ite (.cmp .lower (cw 131072) (lv (nm "msize"))) (.raise (nm "EvmErr") (cw 4)) .skip)
    (.dec (nm "call_data") .one (.op .add [gLoad "ev" 24, lv (nm "mstart")])
      (.dec (nm "empty") .one (gv (nm "evm_empty"))
        (.seq (callD (nm "set_retdata") [lv (nm "empty"), cw 0])
          (.dec (nm "msg") .one (gLoad "ev" 112) gcrAcct))))

theorem entry_gcr : fnEntry Guest.Software.guestFn_generic_create =
    (nm "generic_create", gcrParams, gcrBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_gcr : guestCode (nm "generic_create") = some (gcrParams, gcrBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 598) (by decide)) ⟨_, rfl⟩
    entry_gcr

/-- The parameter names of `generic_create`. -/
def gcrNames : List MlS := gcrParams.map Prod.fst

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.code_gcr
