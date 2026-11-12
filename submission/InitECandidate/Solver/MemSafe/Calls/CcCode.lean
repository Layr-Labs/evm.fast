import InitECandidate.Solver.MemSafe.Calls.OpCall
import InitECandidate.Solver.MemSafe.Calls.KitB

/-!
# `op_callcode`'s body (frames15), split into blocks for the step proofs

`ccBody = (declPair guestFn_op_callcode).2.2` (`ccBody_eq`, AST index 604). The target
`to = lds(msg+32)` is loaded right after `msg`; the code address is `code_address0 =
to_address_masked(cav) = ev + 240`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Calls
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames

def ccGcArgs : List (ExpHOL 64) :=
  [(.rfield 1 (lv (nm "mcg"))), (lv (nm "reservoir")), (lv (nm "value")),
    (lv (nm "to")), (lv (nm "to")), (lv (nm "code_address")),
    (cw 1), (cw 0), (lv (nm "is")), (lv (nm "isz")), (lv (nm "os")), (lv (nm "osz")),
    (.rfield 0 (lv (nm "code"))), (.rfield 1 (lv (nm "code"))), (.rfield 0 (lv (nm "dl"))),
    (cw 0)]

def ccGc : ProgHOL 64 :=
  .decCall (nm "is") .one (nm "sat_word") [(lv (nm "in_start"))]
    (.decCall (nm "isz") .one (nm "sat_word") [(lv (nm "in_size"))]
      (.decCall (nm "os") .one (nm "sat_word") [(lv (nm "out_start"))]
        (.decCall (nm "osz") .one (nm "sat_word") [(lv (nm "out_size"))]
          (.call (some (some (.local, (nm "started")), none)) (nm "generic_call") ccGcArgs))))

def ccIns : ProgHOL 64 :=
  .seq (callD (nm "stack_push") [(.rstruct [(cw 0), (cw 0), (cw 0), (cw 0)])])
    (.dec (nm "empty") .one (gv (nm "evm_empty"))
      (.seq (callD (nm "set_retdata") [(lv (nm "empty")), (cw 0)])
        (.seq (.store (.op .add [(gv (nm "ev")), (cw 64)])
            (.op .add [(.load .one (.op .add [(gv (nm "ev")), (cw 64)])), (.rfield 1 (lv (nm "mcg")))]))
          (.store (.op .add [(gv (nm "ev")), (cw 72)])
              (.op .add [(.load .one (.op .add [(gv (nm "ev")), (cw 72)])), (lv (nm "reservoir"))])))))

def ccK5 : ProgHOL 64 :=
  .decCall (nm "sender") .one (nm "get_account") [(lv (nm "to"))]
    (.decCall (nm "insufficient") .one (nm "u256_lt")
        [(.load (shK 4) (.op .add [(lv (nm "sender")), (cw 8)])), (lv (nm "value"))]
      (.dec (nm "started") .one (cw 0)
        (.seq (.ite (.cmp .notEqual (lv (nm "insufficient")) (cw 0)) ccIns ccGc) callTail)))

def ccK4b : ProgHOL 64 :=
  .seq (callD (nm "extend_memory") [(.rfield 1 (lv (nm "x")))])
    (.dec (nm "reservoir") .one (.load .one (.op .add [(gv (nm "ev")), (cw 72)]))
      (.seq (.store (.op .add [(gv (nm "ev")), (cw 72)]) (cw 0)) ccK5))

def ccK4 : ProgHOL 64 :=
  .decCall (nm "gw") .one (nm "sat_word") [(lv (nm "gasv"))]
    (.decCall (nm "mcg") (shK 2) (nm "calculate_message_call_gas") [(lv (nm "value")), (lv (nm "gw")),
        (.load .one (.op .add [(gv (nm "ev")), (cw 64)])), (cw 0), (cw 0)]
      (.seq (callD (nm "charge_gas") [(.rfield 0 (lv (nm "mcg")))])
        (.seq (.store (.op .add [(gv (nm "ev")), (cw 184)])
            (.op .sub [(.load .one (.op .add [(gv (nm "ev")), (cw 184)])), (.rfield 1 (lv (nm "mcg")))]))
          ccK4b)))

def ccK3 : ProgHOL 64 :=
  .decCall (nm "code") (shK 2) (nm "ext_code_of") [(lv (nm "code_address"))] ccK4

def ccK2 : ProgHOL 64 :=
  .seq (.ite (.cmp .equal (lv (nm "warm")) (cw 0)) (callD (nm "warm_address") [(lv (nm "code_address0"))]) .skip)
    (.decCall (nm "dl") (shK 3) (nm "calculate_delegation_cost") [(lv (nm "code_address0"))]
      (.dec (nm "code_address") .one (.rfield 1 (lv (nm "dl")))
        (.seq ocDlgIte ccK3)))

def ccK1b : ProgHOL 64 :=
  .dec (nm "transfer_cost") .one (cw 0)
    (.seq (.ite (.cmp .equal (lv (nm "vz")) (cw 0))
        (.assign .local (nm "transfer_cost") (cw 11300)) .skip)
      (.decCall (nm "need") .one (nm "add_sat")
          [(.op .add [(lv (nm "access_cost")), (lv (nm "transfer_cost"))]), (.rfield 0 (lv (nm "x")))]
        (.seq (callD (nm "charge_gas") [(lv (nm "need"))]) ccK2)))

def ccK1 : ProgHOL 64 :=
  .decCall (nm "x") (shK 2) (nm "extend_memory_cost2")
      [(lv (nm "in_start")), (lv (nm "in_size")), (lv (nm "out_start")), (lv (nm "out_size"))]
    (.decCall (nm "warm") .one (nm "is_warm_address") [(lv (nm "code_address0"))]
      (.dec (nm "access_cost") .one (cw 100)
        (.seq (.ite (.cmp .equal (lv (nm "warm")) (cw 0))
            (.assign .local (nm "access_cost") (cw 3000)) .skip)
          (.decCall (nm "vz") .one (nm "u256_is_zero") [(lv (nm "value"))] ccK1b))))

def ccK0 : ProgHOL 64 :=
  .dec (nm "msg") .one (.load .one (.op .add [(gv (nm "ev")), (cw 112)]))
    (.dec (nm "to") .one (.load .one (.op .add [(lv (nm "msg")), (cw 32)])) ccK1)

def ccBody : ProgHOL 64 :=
  .decCall (nm "gasv") (shK 4) (nm "stack_pop") []
    (.decCall (nm "cav") (shK 4) (nm "stack_pop") []
      (.decCall (nm "code_address0") .one (nm "to_address_masked") [(lv (nm "cav"))]
        (.decCall (nm "value") (shK 4) (nm "stack_pop") []
          (.decCall (nm "in_start") (shK 4) (nm "stack_pop") []
            (.decCall (nm "in_size") (shK 4) (nm "stack_pop") []
              (.decCall (nm "out_start") (shK 4) (nm "stack_pop") []
                (.decCall (nm "out_size") (shK 4) (nm "stack_pop") [] ccK0)))))))

theorem ccBody_eq : (declPair Guest.Software.guestFn_op_callcode).2.2 = ccBody := by
  conv => lhs; cbv
  rfl

end InitECandidate.Solver.MemSafe.Calls

#print axioms InitECandidate.Solver.MemSafe.Calls.ccBody_eq
