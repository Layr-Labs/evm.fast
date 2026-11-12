import InitECandidate.Solver.MemSafe.Entry2.Steps

/-!
# Entry2: the code of `process_create_message` (`guestAst[590]`) and `process_message_call` (`[607]`)

```
fun 1 process_create_message(1 msg) {
  var 1 snapshot = state_snapshot();
  var target = lds 1 (msg + MSG_CURRENT_TARGET);
  destroy_storage(target); mark_account_created(target); increment_nonce(target);
  var 1 child = process_message(msg);
  if (lds 1 (child + EV_ERROR)) == 0 {
    var parent = ev; ev = child; var err = 0;
    try create_finish(msg, child)
    catch EvmErr => err { state_restore(snapshot); refill_frame_state_gas(); frame_halt(err);
      st ev + EV_OUTPUT, evm_empty; st ev + EV_OUTPUT_N, 0; }
    ev = parent; return child; }
  state_restore(snapshot); return child; }
```
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Entry2
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

def pcmHandler : ProgHOL 64 :=
  .seq (callD (nm "state_restore") [lv (nm "snapshot")])
    (.seq (callD (nm "refill_frame_state_gas") [])
      (.seq (callD (nm "frame_halt") [lv (nm "err")])
        (.seq (.store (.op .add [gv (nm "ev"), cw 120]) (gv (nm "evm_empty")))
          (.store (.op .add [gv (nm "ev"), cw 128]) (cw 0)))))

def pcmThen : ProgHOL 64 :=
  .dec (nm "parent") .one (gv (nm "ev"))
    (.seq (.assign .global (nm "ev") (lv (nm "child")))
      (.dec (nm "err") .one (cw 0)
        (.seq (.call (some (none, some (nm "EvmErr", nm "err", pcmHandler))) (nm "create_finish")
            [lv (nm "msg"), lv (nm "child")])
          (.seq (.assign .global (nm "ev") (lv (nm "parent"))) (.return (lv (nm "child")))))))

def pcmK7 : ProgHOL 64 :=
  .seq (callD (nm "state_restore") [lv (nm "snapshot")]) (.return (lv (nm "child")))

def pcmK6 : ProgHOL 64 :=
  .seq (.ite (.cmp .equal (ldW (nm "child") 160) (cw 0)) pcmThen .skip) pcmK7

def pcmK5 : ProgHOL 64 := .decCall (nm "child") .one (nm "process_message") [lv (nm "msg")] pcmK6

def pcmK4 : ProgHOL 64 := .seq (callD (nm "increment_nonce") [lv (nm "target")]) pcmK5

def pcmK3 : ProgHOL 64 := .seq (callD (nm "mark_account_created") [lv (nm "target")]) pcmK4

def pcmK2 : ProgHOL 64 := .seq (callD (nm "destroy_storage") [lv (nm "target")]) pcmK3

def pcmK1 : ProgHOL 64 := .dec (nm "target") .one (ldW (nm "msg") 32) pcmK2

def pcmBody : ProgHOL 64 := .decCall (nm "snapshot") .one (nm "state_snapshot") [] pcmK1

theorem entry_pcm : fnEntry Guest.Software.guestFn_process_create_message =
    (nm "process_create_message", [(nm "msg", .one)], pcmBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_pcm : guestCode (nm "process_create_message") =
    some ([(nm "msg", .one)], pcmBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 590) (by decide)) ⟨_, rfl⟩
    entry_pcm

/-! ## `process_message_call` -/

def pmcStoresDep : ProgHOL 64 :=
  .seq (.store (.op .add [lv (nm "out"), cw 32]) (cw 12))
    (.seq (.store (.op .add [lv (nm "out"), cw 56]) (ldW (nm "msg") 48))
      (.seq (.store (.op .add [lv (nm "out"), cw 64]) (ldW (nm "msg") 40))
        (.seq (.store (.op .add [lv (nm "out"), cw 40]) (gv (nm "evm_empty")))
          (.return (lv (nm "out"))))))

def pmcTail : ProgHOL 64 :=
  .seq (.store (.op .add [lv (nm "out"), cw 0]) (ldW (nm "frame") 64))
    (.seq (.store (.op .add [lv (nm "out"), cw 32]) (ldW (nm "frame") 160))
      (.seq (.store (.op .add [lv (nm "out"), cw 40]) (ldW (nm "frame") 120))
        (.seq (.store (.op .add [lv (nm "out"), cw 48]) (ldW (nm "frame") 128))
          (.seq (.store (.op .add [lv (nm "out"), cw 56]) (ldW (nm "frame") 72))
            (.seq (.store (.op .add [lv (nm "out"), cw 64]) (ldW (nm "frame") 184))
              (.decCall (nm "fsg") .one (nm "frame_state_gas_used") [lv (nm "frame")]
                (.seq (.store (.op .add [lv (nm "out"), cw 72])
                    (.op .add [lv (nm "fsg"), ldW (nm "frame") 200]))
                  (.seq (.ite (.cmp .equal (ldW (nm "frame") 160) (cw 0))
                      (.seq (.store (.op .add [lv (nm "out"), cw 16]) (ldW (nm "frame") 88))
                        (.seq (.store (.op .add [lv (nm "out"), cw 24]) (ldW (nm "frame") 136))
                          (.dec (nm "rc") .one (ldW (nm "frame") 96)
                            (.seq (.ite (.cmp .less (lv (nm "rc")) (cw 0))
                                (.assign VarKind.local (nm "rc") (cw 0)) .skip)
                              (.store (.op .add [lv (nm "out"), cw 8]) (lv (nm "rc")))))))
                      .skip)
                    (.seq (.store (.op .add [lv (nm "out"), cw 80]) (ldW (nm "frame") 208))
                      (.seq (.store (.op .add [lv (nm "out"), cw 88]) (ldW (nm "frame") 224))
                        (.return (lv (nm "out")))))))))))))

def pmcCreate : ProgHOL 64 :=
  .decCall (nm "dep") .one (nm "account_deployable") [ldW (nm "msg") 32]
    (.seq (.ite (.cmp .equal (lv (nm "dep")) (cw 0)) pmcStoresDep .skip)
      (.call (some (some (VarKind.local, nm "frame"), none)) (nm "process_create_message")
        [lv (nm "msg")]))

def pmcCall : ProgHOL 64 :=
  .ite (.cmp .equal (ldW (nm "msg") 24) (cw 0)) pmcCreate
    (.call (some (some (VarKind.local, nm "frame"), none)) (nm "process_message") [lv (nm "msg")])

def pmcBody : ProgHOL 64 :=
  .seq .skip
    (.decCall (nm "out") .one (nm "alloc") [cw 96]
      (.seq (callD (nm "memzero") [lv (nm "out"), cw 96])
        (.dec (nm "frame") .one (cw 0) (.seq pmcCall pmcTail))))

theorem entry_pmc : fnEntry Guest.Software.guestFn_process_message_call =
    (nm "process_message_call", [(nm "msg", .one)], pmcBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_pmc : guestCode (nm "process_message_call") =
    some ([(nm "msg", .one)], pmcBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 607) (by decide)) ⟨_, rfl⟩
    entry_pmc

end InitECandidate.Solver.MemSafe.Entry2

#print axioms InitECandidate.Solver.MemSafe.Entry2.code_pcm
#print axioms InitECandidate.Solver.MemSafe.Entry2.code_pmc
