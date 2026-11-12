import InitECandidate.Solver.MemSafe.D0.Code

/-!
# `prepare_dispatch`: the body as named pieces

`pdBody = pdBodyX` (checked by evaluation); the pieces are the program fragments the proof talks
about: the `target == 0` branch `pdZero`, the delegation branch `pdDa`, the tail `pdTail`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.D0
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames

/-- `st msg + off, x`. -/
def stM (off : Nat) (x : ExpHOL 64) : ProgHOL 64 := .store (.op .add [lv (nm "msg"), cw off]) x

/-- The `msg[MSG_TARGET] == 0` branch. -/
def pdZero : ProgHOL 64 :=
  .decCall (nm "pre") .one (nm "get_pre_state_account") [lLoad "msg" 32]
    (.decCall (nm "e") .one (nm "acct_is_empty") [lv (nm "pre")]
      (.seq (.ite (.cmp .notEqual (lv (nm "e")) (cw 0)) (callD (nm "charge_state_gas") [cw 183600]) .skip)
        (.return (cw 0))))

/-- The delegation branch. -/
def pdDa : ProgHOL 64 :=
  .decCall (nm "daddr") .one (nm "alloc") [cw 24]
    (.seq (callD (nm "memcpy") [lv (nm "daddr"), lv (nm "da"), cw 20])
      (.decCall (nm "warm") .one (nm "is_warm_address") [lv (nm "daddr")]
        (.seq (.ite (.cmp .notEqual (lv (nm "warm")) (cw 0)) (callD (nm "charge_gas") [cw 100])
            (.seq (callD (nm "charge_gas") [cw 3000]) (callD (nm "warm_address") [lv (nm "daddr")])))
          (.decCall (nm "dcode") (.comb [.one, .one]) (nm "ext_code_of") [lv (nm "daddr")]
            (.seq (.assign .local (nm "code") (.rfield 0 (lv (nm "dcode"))))
              (.seq (.assign .local (nm "code_n") (.rfield 1 (lv (nm "dcode"))))
                (.seq (stM 168 (cw 1)) (stM 104 (lv (nm "daddr"))))))))))

/-- After the delegation branch. -/
def pdTail : ProgHOL 64 :=
  .seq (stM 112 (lv (nm "code")))
    (.seq (stM 120 (lv (nm "code_n")))
      (.seq (stG "ev" 48 (lv (nm "code")))
        (.seq (stG "ev" 56 (lv (nm "code_n")))
          (.decCall (nm "jd") .one (nm "compute_jumpdests") [lv (nm "code"), lv (nm "code_n")]
            (.seq (stG "ev" 80 (lv (nm "jd"))) (.return (cw 0)))))))

/-- The nonzero-target path from `rcode` on. -/
def pdRc : ProgHOL 64 :=
  .dec (nm "code") .one (.rfield 0 (lv (nm "rcode")))
    (.dec (nm "code_n") .one (.rfield 1 (lv (nm "rcode")))
      (.decCall (nm "da") .one (nm "get_delegated_code_address")
        [.rfield 0 (lv (nm "rcode")), .rfield 1 (lv (nm "rcode"))]
        (.seq (.ite (.cmp .notEqual (lv (nm "da")) (cw 0)) pdDa .skip) pdTail)))

def pdVz : ProgHOL 64 :=
  .seq (.ite (.cmp .equal (lv (nm "vz")) (cw 0))
      (.decCall (nm "alive") .one (nm "is_account_alive") [lv (nm "recipient")]
        (.ite (.cmp .equal (lv (nm "alive")) (cw 0)) (callD (nm "charge_state_gas") [cw 183600]) .skip))
      .skip)
    (.decCall (nm "rcode") (.comb [.one, .one]) (nm "ext_code_of") [lv (nm "recipient")] pdRc)

def pdBodyX : ProgHOL 64 :=
  .dec (nm "msg") .one (gLoad "ev" 112)
    (.seq (.ite (.cmp .equal (lLoad "msg" 24) (cw 0)) pdZero .skip)
      (.dec (nm "recipient") .one (lLoad "msg" 32)
        (.decCall (nm "vz") .one (nm "u256_is_zero")
          [.load (.comb [.one, .one, .one, .one]) (.op .add [lv (nm "msg"), cw 56])] pdVz)))

theorem pdBody_eq : pdBody = pdBodyX := by
  conv => lhs; unfold pdBody; cbv
  conv => rhs; unfold pdBodyX pdVz pdRc pdTail pdDa pdZero stM; cbv

end InitECandidate.Solver.MemSafe.D0

#print axioms InitECandidate.Solver.MemSafe.D0.pdBody_eq
