import InitECandidate.Proofs.FrontendStages.Crep.Translate308
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody324_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3, 4], none)) "htab_get" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody324_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "trap_with" [Flapjack.CrepExp.const 4#64]

def crepBody324_2 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody324_1

def crepBody324_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody324_4 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 16#64]))
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 208#64]))) crepBody324_2 crepBody324_3

def crepBody324_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "alloc" [Flapjack.CrepExp.var 5]

def crepBody324_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "memcpy"
  [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 5]

def crepBody324_7 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody324_6

def crepBody324_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.var 9)

def crepBody324_9 : CrepProg (BitVec 64) :=
.seq crepBody324_8 crepBody324_3

def crepBody324_10 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.var 0) crepBody324_9

def crepBody324_11 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.var 7) crepBody324_10

def crepBody324_12 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.var 6) crepBody324_9

def crepBody324_13 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 8#64]) crepBody324_12

def crepBody324_14 : CrepProg (BitVec 64) :=
.seq crepBody324_11 crepBody324_13

def crepBody324_15 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.var 3) crepBody324_9

def crepBody324_16 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 16#64]) crepBody324_15

def crepBody324_17 : CrepProg (BitVec 64) :=
.seq crepBody324_14 crepBody324_16

def crepBody324_18 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.var 4) crepBody324_9

def crepBody324_19 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 24#64]) crepBody324_18

def crepBody324_20 : CrepProg (BitVec 64) :=
.seq crepBody324_17 crepBody324_19

def crepBody324_21 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.const 1#64]) crepBody324_9

def crepBody324_22 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 16#64]) crepBody324_21

def crepBody324_23 : CrepProg (BitVec 64) :=
.seq crepBody324_20 crepBody324_22

def crepBody324_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "htab_set"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2]

def crepBody324_25 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody324_24

def crepBody324_26 : CrepProg (BitVec 64) :=
.seq crepBody324_23 crepBody324_25

def crepBody324_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody324_28 : CrepProg (BitVec 64) :=
.seq crepBody324_26 crepBody324_27

def crepBody324_29 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 200#64]),
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 16#64]),
        Flapjack.CrepExp.const 32#64]]) crepBody324_28

def crepBody324_30 : CrepProg (BitVec 64) :=
.seq crepBody324_7 crepBody324_29

def crepBody324_31 : CrepProg (BitVec 64) :=
.seq crepBody324_5 crepBody324_30

def crepBody324_32 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody324_31

def crepBody324_33 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64])) crepBody324_32

def crepBody324_34 : CrepProg (BitVec 64) :=
.seq crepBody324_4 crepBody324_33

def crepBody324_35 : CrepProg (BitVec 64) :=
.seq crepBody324_0 crepBody324_34

def crepBody324_36 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody324_35

def crepBody324_37 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody324_36

def data324 : CrepProg (BitVec 64) := crepBody324_37
def output324 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [106#8, 115#8, 101#8, 116#8], [0, 1, 2], crepProgToHOL data324)
end InitECandidate.Proofs.FrontendStages.Crep
