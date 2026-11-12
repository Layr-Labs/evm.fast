import InitECandidate.Solver.MemSafe.Frames.RunFramesCode
import InitECandidate.Solver.MemSafe.Frames.ProCode
import InitECandidate.Solver.MemSafe.Entry.Pi

/-!
# Entry: the code of `process_message` (`guestAst[588]`)

```
fun 1 process_message(msg) {
  if 1024 <+ msg[128] { raise EvmErr 7 }
  var parent = ev; var parent_cont = cur_cont;
  var child = frame_open(msg, 0);
  if msg[128] == 0 {
    var prep_snapshot = state_snapshot(); var prep_reservoir = msg[48]; var perr = 0;
    try depth0_prepare() catch EvmErr perr { <handler> }
  }
  var snapshot = state_snapshot();
  st cur_cont + 24, snapshot;
  frame_start(); run_frames(); return child }
```
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Entry
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames

def ldW (x : MlS) (k : Nat) : ExpHOL 64 := .load .one (.op .add [lv x, cw k])

/-- The `catch EvmErr perr { … }` handler of the `depth0_prepare` call. -/
def d0Handler : ProgHOL 64 :=
  .seq (.ite (.cmp .equal (lv (nm "perr")) (cw 1))
      (.seq (callD (nm "scratch_release") [ldW (nm "child") 208])
        (.seq (callD (nm "frame_mem_release") [ldW (nm "child") 224])
          (.seq (.assign .global (nm "ev") (lv (nm "parent")))
            (.seq (.assign .global (nm "cur_cont") (lv (nm "parent_cont")))
              (.raise (nm "EvmErr") (lv (nm "perr")))))))
      .skip)
    (.seq (callD (nm "state_restore") [lv (nm "prep_snapshot")])
      (.seq (.store (.op .add [lv (nm "msg"), cw 48]) (lv (nm "prep_reservoir")))
        (.seq (.store (.op .add [gv (nm "ev"), cw 200]) (cw 0))
          (.seq (callD (nm "refill_frame_state_gas") [])
            (.seq (callD (nm "frame_halt") [lv (nm "perr")])
              (.seq (.assign .global (nm "ev") (lv (nm "parent")))
                (.seq (.assign .global (nm "cur_cont") (lv (nm "parent_cont")))
                  (.return (lv (nm "child"))))))))))

/-- The depth-0 preparation block. -/
def d0Block : ProgHOL 64 :=
  .decCall (nm "prep_snapshot") .one (nm "state_snapshot") []
    (.dec (nm "prep_reservoir") .one (ldW (nm "msg") 48)
      (.dec (nm "perr") .one (cw 0)
        (.call (some (none, some (nm "EvmErr", nm "perr", d0Handler))) (nm "depth0_prepare") [])))

def pmK3 : ProgHOL 64 :=
  .seq (.store (.op .add [gv (nm "cur_cont"), cw 24]) (lv (nm "snapshot")))
    (.seq (callD (nm "frame_start") [])
      (.seq (callD (nm "run_frames") []) (.return (lv (nm "child")))))

def pmK2 : ProgHOL 64 :=
  .seq .skip (.decCall (nm "snapshot") .one (nm "state_snapshot") [] pmK3)

def pmK1 : ProgHOL 64 :=
  .seq .skip
    (.seq (.ite (.cmp .equal (ldW (nm "msg") 128) (cw 0)) d0Block .skip) pmK2)

def pmBody : ProgHOL 64 :=
  .seq (.ite (.cmp .lower (cw 1024) (ldW (nm "msg") 128)) (.raise (nm "EvmErr") (cw 7)) .skip)
    (.seq .skip
      (.dec (nm "parent") .one (gv (nm "ev"))
        (.dec (nm "parent_cont") .one (gv (nm "cur_cont"))
          (.decCall (nm "child") .one (nm "frame_open") [lv (nm "msg"), cw 0] pmK1))))

theorem entry_pm : fnEntry Guest.Software.guestFn_process_message =
    (nm "process_message", [(nm "msg", .one)], pmBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_pm : guestCode (nm "process_message") = some ([(nm "msg", .one)], pmBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 588) (by decide)) ⟨_, rfl⟩
    entry_pm

end InitECandidate.Solver.MemSafe.Entry

#print axioms InitECandidate.Solver.MemSafe.Entry.code_pm
