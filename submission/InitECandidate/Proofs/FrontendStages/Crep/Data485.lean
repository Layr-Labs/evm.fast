import InitECandidate.Proofs.FrontendStages.Crep.Translate469
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody485_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2, 3, 4], none)) "stack_pop" []

def crepBody485_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "u256_to_be32"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.var 5]

def crepBody485_2 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody485_1

def crepBody485_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "is_warm_storage_key" [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 5]

def crepBody485_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "charge_gas" [Flapjack.CrepExp.const 100#64]

def crepBody485_5 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody485_4

def crepBody485_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "charge_gas" [Flapjack.CrepExp.const 2100#64]

def crepBody485_7 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody485_6

def crepBody485_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "warm_storage_key" [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 5]

def crepBody485_9 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody485_8

def crepBody485_10 : CrepProg (BitVec 64) :=
.seq crepBody485_7 crepBody485_9

def crepBody485_11 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 0#64)) crepBody485_5 crepBody485_10

def crepBody485_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8, 9, 10, 11], none)) "get_storage" [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 5]

def crepBody485_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "stack_push"
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11]

def crepBody485_14 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody485_13

def crepBody485_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "pc_add" [Flapjack.CrepExp.const 1#64]

def crepBody485_16 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody485_15

def crepBody485_17 : CrepProg (BitVec 64) :=
.seq crepBody485_14 crepBody485_16

def crepBody485_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody485_19 : CrepProg (BitVec 64) :=
.seq crepBody485_17 crepBody485_18

def crepBody485_20 : CrepProg (BitVec 64) :=
.seq crepBody485_12 crepBody485_19

def crepBody485_21 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody485_20

def crepBody485_22 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody485_21

def crepBody485_23 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody485_22

def crepBody485_24 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody485_23

def crepBody485_25 : CrepProg (BitVec 64) :=
.seq crepBody485_11 crepBody485_24

def crepBody485_26 : CrepProg (BitVec 64) :=
.seq crepBody485_3 crepBody485_25

def crepBody485_27 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody485_26

def crepBody485_28 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.load
              (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
            Flapjack.CrepExp.const 112#64]),
      Flapjack.CrepExp.const 32#64])) crepBody485_27

def crepBody485_29 : CrepProg (BitVec 64) :=
.seq crepBody485_2 crepBody485_28

def crepBody485_30 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 280#64])) crepBody485_29

def crepBody485_31 : CrepProg (BitVec 64) :=
.seq crepBody485_0 crepBody485_30

def crepBody485_32 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody485_31

def crepBody485_33 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody485_32

def crepBody485_34 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody485_33

def crepBody485_35 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody485_34

def data485 : CrepProg (BitVec 64) := crepBody485_35
def output485 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 115#8, 108#8, 111#8, 97#8, 100#8], [], crepProgToHOL data485)
end InitECandidate.Proofs.FrontendStages.Crep
