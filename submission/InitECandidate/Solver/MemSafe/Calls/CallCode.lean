import InitECandidate.Solver.MemSafe.Calls.Kit5

/-!
# `op_call`'s body (frames14), split into blocks for the step proofs

`ocBody = (declPair guestFn_op_call).2.2` (`ocBody_eq`, AST index 603); the blocks:
`ocK0` (after the seven pops), `ocK1` (from `extend_memory_cost2`), `ocK2` (from the first
`warm_address`), `ocK3` (from `ext_code_of`), `ocK4` (from `gw = sat_word(gasv)`), `ocK5` (from
`get_account`), `ocIns` (insufficient balance), `ocGc` (the call), `callTail`.
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

def ocGcArgs : List (ExpHOL 64) :=
  [(.rfield 1 (lv (nm "mcg"))), (lv (nm "reservoir")), (lv (nm "value")),
    (.load .one (.op .add [(lv (nm "msg")), (cw 32)])), (lv (nm "to")), (lv (nm "code_address")),
    (cw 1), (cw 0), (lv (nm "is")), (lv (nm "isz")), (lv (nm "os")), (lv (nm "osz")),
    (.rfield 0 (lv (nm "code"))), (.rfield 1 (lv (nm "code"))), (.rfield 0 (lv (nm "dl"))),
    (lv (nm "new_account_charged"))]

def ocGc : ProgHOL 64 :=
  .decCall (nm "is") .one (nm "sat_word") [(lv (nm "in_start"))]
    (.decCall (nm "isz") .one (nm "sat_word") [(lv (nm "in_size"))]
      (.decCall (nm "os") .one (nm "sat_word") [(lv (nm "out_start"))]
        (.decCall (nm "osz") .one (nm "sat_word") [(lv (nm "out_size"))]
          (.call (some (some (.local, (nm "started")), none)) (nm "generic_call") ocGcArgs))))

def ocCredit : ProgHOL 64 :=
  .ite (.cmp .notEqual (lv (nm "new_account_charged")) (cw 0))
    (callD (nm "credit_state_gas_refund") [(cw 183600)])
    .skip

def ocIns : ProgHOL 64 :=
  .seq (callD (nm "stack_push") [(.rstruct [(cw 0), (cw 0), (cw 0), (cw 0)])])
    (.dec (nm "empty") .one (gv (nm "evm_empty"))
      (.seq (callD (nm "set_retdata") [(lv (nm "empty")), (cw 0)])
        (.seq (.store (.op .add [(gv (nm "ev")), (cw 64)])
            (.op .add [(.load .one (.op .add [(gv (nm "ev")), (cw 64)])), (.rfield 1 (lv (nm "mcg")))]))
          (.seq (.store (.op .add [(gv (nm "ev")), (cw 72)])
              (.op .add [(.load .one (.op .add [(gv (nm "ev")), (cw 72)])), (lv (nm "reservoir"))]))
            ocCredit))))

def ocK5 : ProgHOL 64 :=
  .decCall (nm "sender") .one (nm "get_account") [(.load .one (.op .add [(lv (nm "msg")), (cw 32)]))]
    (.decCall (nm "insufficient") .one (nm "u256_lt")
        [(.load (shK 4) (.op .add [(lv (nm "sender")), (cw 8)])), (lv (nm "value"))]
      (.dec (nm "started") .one (cw 0)
        (.seq (.ite (.cmp .notEqual (lv (nm "insufficient")) (cw 0)) ocIns ocGc) callTail)))

def ocK4b : ProgHOL 64 :=
  .seq (callD (nm "extend_memory") [(.rfield 1 (lv (nm "x")))])
    (.dec (nm "reservoir") .one (.load .one (.op .add [(gv (nm "ev")), (cw 72)]))
      (.seq (.store (.op .add [(gv (nm "ev")), (cw 72)]) (cw 0)) ocK5))

def ocK4 : ProgHOL 64 :=
  .decCall (nm "gw") .one (nm "sat_word") [(lv (nm "gasv"))]
    (.decCall (nm "mcg") (shK 2) (nm "calculate_message_call_gas") [(lv (nm "value")), (lv (nm "gw")),
        (.load .one (.op .add [(gv (nm "ev")), (cw 64)])), (cw 0), (cw 0)]
      (.seq (callD (nm "charge_gas") [(.rfield 0 (lv (nm "mcg")))])
        (.seq (.store (.op .add [(gv (nm "ev")), (cw 184)])
            (.op .sub [(.load .one (.op .add [(gv (nm "ev")), (cw 184)])), (.rfield 1 (lv (nm "mcg")))]))
          ocK4b)))

def ocAlive : ProgHOL 64 :=
  .decCall (nm "alive") .one (nm "is_account_alive") [(lv (nm "to"))]
    (.ite (.cmp .equal (lv (nm "alive")) (cw 0))
      (.seq (.assign .local (nm "new_account_charged") (cw 1))
        (callD (nm "charge_state_gas") [(cw 183600)]))
      .skip)

def ocK3 : ProgHOL 64 :=
  .decCall (nm "code") (shK 2) (nm "ext_code_of") [(lv (nm "code_address"))]
    (.dec (nm "new_account_charged") .one (cw 0)
      (.seq (.ite (.cmp .equal (lv (nm "vz")) (cw 0)) ocAlive .skip) ocK4))

def ocDlgIte : ProgHOL 64 :=
  .ite (.cmp .notEqual (.rfield 0 (lv (nm "dl"))) (cw 0))
    (.seq (callD (nm "charge_gas") [(.rfield 2 (lv (nm "dl")))])
      (callD (nm "warm_address") [(lv (nm "code_address"))]))
    .skip

def ocK2 : ProgHOL 64 :=
  .seq (.ite (.cmp .equal (lv (nm "warm")) (cw 0)) (callD (nm "warm_address") [(lv (nm "to"))]) .skip)
    (.decCall (nm "dl") (shK 3) (nm "calculate_delegation_cost") [(lv (nm "to"))]
      (.dec (nm "code_address") .one (.rfield 1 (lv (nm "dl")))
        (.seq ocDlgIte ocK3)))

def ocK1b : ProgHOL 64 :=
  .dec (nm "transfer_cost") .one (cw 0)
    (.seq (.ite (.cmp .equal (lv (nm "vz")) (cw 0))
        (.assign .local (nm "transfer_cost") (cw 11300)) .skip)
      (.decCall (nm "need") .one (nm "add_sat")
          [(.op .add [(lv (nm "access_cost")), (lv (nm "transfer_cost"))]), (.rfield 0 (lv (nm "x")))]
        (.seq (callD (nm "charge_gas") [(lv (nm "need"))]) ocK2)))

def ocK1 : ProgHOL 64 :=
  .decCall (nm "x") (shK 2) (nm "extend_memory_cost2")
      [(lv (nm "in_start")), (lv (nm "in_size")), (lv (nm "out_start")), (lv (nm "out_size"))]
    (.decCall (nm "warm") .one (nm "is_warm_address") [(lv (nm "to"))]
      (.dec (nm "access_cost") .one (cw 100)
        (.seq (.ite (.cmp .equal (lv (nm "warm")) (cw 0))
            (.assign .local (nm "access_cost") (cw 3000)) .skip)
          ocK1b)))

def ocStatic : ExpHOL 64 :=
  .op .and [(.cmp .notEqual (cw 0) (.cmp .notEqual (.load .one (.op .add [(lv (nm "msg")), (cw 144)]))
    (cw 0))), (.cmp .notEqual (cw 0) (.cmp .equal (lv (nm "vz")) (cw 0)))]

def ocK0 : ProgHOL 64 :=
  .dec (nm "msg") .one (.load .one (.op .add [(gv (nm "ev")), (cw 112)]))
    (.decCall (nm "vz") .one (nm "u256_is_zero") [(lv (nm "value"))]
      (.seq (.ite ocStatic (.raise (nm "EvmErr") (cw 8)) .skip) ocK1))

def ocBody : ProgHOL 64 :=
  .decCall (nm "gasv") (shK 4) (nm "stack_pop") []
    (.decCall (nm "tov") (shK 4) (nm "stack_pop") []
      (.decCall (nm "to") .one (nm "to_address_masked") [(lv (nm "tov"))]
        (.decCall (nm "value") (shK 4) (nm "stack_pop") []
          (.decCall (nm "in_start") (shK 4) (nm "stack_pop") []
            (.decCall (nm "in_size") (shK 4) (nm "stack_pop") []
              (.decCall (nm "out_start") (shK 4) (nm "stack_pop") []
                (.decCall (nm "out_size") (shK 4) (nm "stack_pop") [] ocK0)))))))

theorem ocBody_eq : (declPair Guest.Software.guestFn_op_call).2.2 = ocBody := by
  conv => lhs; cbv
  rfl

end InitECandidate.Solver.MemSafe.Calls
