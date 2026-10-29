import InitECandidate.Proofs.FrontendStages.Crep.Translate474
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody490_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2, 3, 4], none)) "stack_pop" []

def crepBody490_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "to_address_masked"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]

def crepBody490_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "access_gas_cost" [Flapjack.CrepExp.var 5]

def crepBody490_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "charge_gas" [Flapjack.CrepExp.var 6]

def crepBody490_4 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody490_3

def crepBody490_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "warm_after_charge" [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6]

def crepBody490_6 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody490_5

def crepBody490_7 : CrepProg (BitVec 64) :=
.seq crepBody490_4 crepBody490_6

def crepBody490_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "get_account" [Flapjack.CrepExp.var 5]

def crepBody490_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "stack_push"
  [Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 8#64],
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 8#64],
          Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 8#64],
          Flapjack.CrepExp.const 24#64])]

def crepBody490_10 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody490_9

def crepBody490_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody490_12 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody490_11

def crepBody490_13 : CrepProg (BitVec 64) :=
.seq crepBody490_10 crepBody490_12

def crepBody490_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody490_15 : CrepProg (BitVec 64) :=
.seq crepBody490_13 crepBody490_14

def crepBody490_16 : CrepProg (BitVec 64) :=
.seq crepBody490_8 crepBody490_15

def crepBody490_17 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody490_16

def crepBody490_18 : CrepProg (BitVec 64) :=
.seq crepBody490_7 crepBody490_17

def crepBody490_19 : CrepProg (BitVec 64) :=
.seq crepBody490_2 crepBody490_18

def crepBody490_20 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody490_19

def crepBody490_21 : CrepProg (BitVec 64) :=
.seq crepBody490_1 crepBody490_20

def crepBody490_22 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody490_21

def crepBody490_23 : CrepProg (BitVec 64) :=
.seq crepBody490_0 crepBody490_22

def crepBody490_24 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody490_23

def crepBody490_25 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody490_24

def crepBody490_26 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody490_25

def crepBody490_27 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody490_26

def data490 : CrepProg (BitVec 64) := crepBody490_27
def output490 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 98#8, 97#8, 108#8, 97#8, 110#8, 99#8, 101#8], [], crepProgToHOL data490)
end InitECandidate.Proofs.FrontendStages.Crep
