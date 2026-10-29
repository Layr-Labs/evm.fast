import InitECandidate.Proofs.FrontendStages.Crep.Translate456
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody472_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "charge_gas" [Flapjack.CrepExp.const 2#64]

def crepBody472_1 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody472_0

def crepBody472_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "charge_gas" [Flapjack.CrepExp.const 3#64]

def crepBody472_3 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody472_2

def crepBody472_4 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 0#64)) crepBody472_1 crepBody472_3

def crepBody472_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "heap_mark" []

def crepBody472_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "alloc" [Flapjack.CrepExp.const 32#64]

def crepBody472_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "buffer_read"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
          Flapjack.CrepExp.const 48#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
          Flapjack.CrepExp.const 56#64]),
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add
            [Flapjack.CrepExp.load
                (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
              Flapjack.CrepExp.const 0#64]),
        Flapjack.CrepExp.const 1#64],
    Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 2]

def crepBody472_8 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody472_7

def crepBody472_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3, 4, 5, 6], none)) "u256_from_be" [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 0]

def crepBody472_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "heap_release" [Flapjack.CrepExp.var 1]

def crepBody472_11 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody472_10

def crepBody472_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "stack_push"
  [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6]

def crepBody472_13 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody472_12

def crepBody472_14 : CrepProg (BitVec 64) :=
.seq crepBody472_11 crepBody472_13

def crepBody472_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "pc_add"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.var 0]]

def crepBody472_16 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody472_15

def crepBody472_17 : CrepProg (BitVec 64) :=
.seq crepBody472_14 crepBody472_16

def crepBody472_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody472_19 : CrepProg (BitVec 64) :=
.seq crepBody472_17 crepBody472_18

def crepBody472_20 : CrepProg (BitVec 64) :=
.seq crepBody472_9 crepBody472_19

def crepBody472_21 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody472_20

def crepBody472_22 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody472_21

def crepBody472_23 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody472_22

def crepBody472_24 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody472_23

def crepBody472_25 : CrepProg (BitVec 64) :=
.seq crepBody472_8 crepBody472_24

def crepBody472_26 : CrepProg (BitVec 64) :=
.seq crepBody472_6 crepBody472_25

def crepBody472_27 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody472_26

def crepBody472_28 : CrepProg (BitVec 64) :=
.seq crepBody472_5 crepBody472_27

def crepBody472_29 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody472_28

def crepBody472_30 : CrepProg (BitVec 64) :=
.seq crepBody472_4 crepBody472_29

def data472 : CrepProg (BitVec 64) := crepBody472_30
def output472 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 112#8, 117#8, 115#8, 104#8], [0], crepProgToHOL data472)
end InitECandidate.Proofs.FrontendStages.Crep
