import InitECandidate.Solver.MemSafe.Stor3.Env

set_option autoImplicit false

/-!
# `op_selfdestruct`'s body (sonnet-store3)
-/

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Stor3
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

def balE : ExpHOL 64 := .load sh4 (.op .add [lv (nm "oa"), cw 8])

def sdTail : ProgHOL 64 :=
  .seq (.ite (.cmp .notEqual (lv (nm "created")) (cw 0))
      (callD (nm "htab_set") [.load .one (.op .add [.var .global (nm "ev"), cw 136]),
        lv (nm "originator"), cw 1]) .skip)
    (.seq (stG "ev" 104 (cw 0)) (.return (cw 0)))

def sdBody : ProgHOL 64 :=
  .seq (callD (nm "require_not_static") [])
   (.decCall (nm "bv") sh4 (nm "stack_pop") []
    (.decCall (nm "beneficiary") .one (nm "to_address_masked") [lv (nm "bv")]
     (.decCall (nm "warm") .one (nm "is_warm_address") [lv (nm "beneficiary")]
      (.dec (nm "gas_cost") .one (cw 5000)
       (.seq (.ite (.cmp .equal (lv (nm "warm")) (cw 0))
           (.assign .local (nm "gas_cost") (.op .add [lv (nm "gas_cost"), cw 3000])) .skip)
        (.seq (callD (nm "charge_gas") [lv (nm "gas_cost")])
         (.seq (.ite (.cmp .equal (lv (nm "warm")) (cw 0))
             (callD (nm "warm_address") [lv (nm "beneficiary")]) .skip)
          (.dec (nm "originator") .one tgtE
           (.decCall (nm "alive") .one (nm "is_account_alive") [lv (nm "beneficiary")]
            (.decCall (nm "oa") .one (nm "get_account") [lv (nm "originator")]
             (.decCall (nm "obz") .one (nm "u256_is_zero") [balE]
              (.dec (nm "state_gas") .one (cw 0)
               (.dec (nm "aw") .one (cw 0)
                (.seq (.ite (.op .and [Band3.isEq "alive", Band3.isEq "obz"])
                    (.seq (.assign .local (nm "state_gas") (cw 183600))
                      (.assign .local (nm "aw") (cw 9000))) .skip)
                 (.seq (callD (nm "charge_gas") [lv (nm "aw")])
                  (.seq (callD (nm "charge_state_gas") [lv (nm "state_gas")])
                   (.seq (.call (some (some (.local, nm "oa"), none)) (nm "get_account")
                       [lv (nm "originator")])
                    (.dec (nm "bal") sh4 balE
                     (.seq (callD (nm "move_ether")
                         [lv (nm "originator"), lv (nm "beneficiary"), lv (nm "bal")])
                      (.decCall (nm "same") .one (nm "memeq")
                        [lv (nm "beneficiary"), lv (nm "originator"), cw 20]
                       (.seq (.ite (.cmp .equal (lv (nm "same")) (cw 0))
                           (callD (nm "emit_transfer_log")
                             [lv (nm "originator"), lv (nm "beneficiary"), lv (nm "bal")]) .skip)
                        (.decCall (nm "created") .one (nm "htab_has")
                          [.load .one (.op .add [.var .global (nm "ts"), cw 56]), lv (nm "originator")]
                          sdTail))))))))))))))))))))))

theorem sdBody_eq : (declPair Guest.Software.guestFn_op_selfdestruct).2.2 = sdBody := by
  conv => lhs; cbv
  rfl

end InitECandidate.Solver.MemSafe.Stor3
