import InitECandidate.Proofs.FrontendStages.Crep.Translate309
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody325_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2, 3], none)) "htab_get" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody325_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody325_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody325_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 0#64)) crepBody325_1 crepBody325_2

def crepBody325_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "trap_with" [Flapjack.CrepExp.const 5#64]

def crepBody325_5 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody325_4

def crepBody325_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 16#64]))
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 208#64]))) crepBody325_5 crepBody325_2

def crepBody325_7 : CrepProg (BitVec 64) :=
.seq crepBody325_3 crepBody325_6

def crepBody325_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "alloc" [Flapjack.CrepExp.var 4]

def crepBody325_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "memcpy"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 4]

def crepBody325_10 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody325_9

def crepBody325_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.var 8)

def crepBody325_12 : CrepProg (BitVec 64) :=
.seq crepBody325_11 crepBody325_2

def crepBody325_13 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.var 0) crepBody325_12

def crepBody325_14 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.var 6) crepBody325_13

def crepBody325_15 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.var 5) crepBody325_12

def crepBody325_16 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 8#64]) crepBody325_15

def crepBody325_17 : CrepProg (BitVec 64) :=
.seq crepBody325_14 crepBody325_16

def crepBody325_18 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 1#64) crepBody325_12

def crepBody325_19 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 16#64]) crepBody325_18

def crepBody325_20 : CrepProg (BitVec 64) :=
.seq crepBody325_17 crepBody325_19

def crepBody325_21 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.var 3) crepBody325_12

def crepBody325_22 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 24#64]) crepBody325_21

def crepBody325_23 : CrepProg (BitVec 64) :=
.seq crepBody325_20 crepBody325_22

def crepBody325_24 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.const 1#64]) crepBody325_12

def crepBody325_25 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 16#64]) crepBody325_24

def crepBody325_26 : CrepProg (BitVec 64) :=
.seq crepBody325_23 crepBody325_25

def crepBody325_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "htab_del" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody325_28 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody325_27

def crepBody325_29 : CrepProg (BitVec 64) :=
.seq crepBody325_26 crepBody325_28

def crepBody325_30 : CrepProg (BitVec 64) :=
.seq crepBody325_29 crepBody325_1

def crepBody325_31 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 200#64]),
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 16#64]),
        Flapjack.CrepExp.const 32#64]]) crepBody325_30

def crepBody325_32 : CrepProg (BitVec 64) :=
.seq crepBody325_10 crepBody325_31

def crepBody325_33 : CrepProg (BitVec 64) :=
.seq crepBody325_8 crepBody325_32

def crepBody325_34 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody325_33

def crepBody325_35 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64])) crepBody325_34

def crepBody325_36 : CrepProg (BitVec 64) :=
.seq crepBody325_7 crepBody325_35

def crepBody325_37 : CrepProg (BitVec 64) :=
.seq crepBody325_0 crepBody325_36

def crepBody325_38 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody325_37

def crepBody325_39 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody325_38

def data325 : CrepProg (BitVec 64) := crepBody325_39
def output325 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [106#8, 100#8, 101#8, 108#8], [0, 1], crepProgToHOL data325)
end InitECandidate.Proofs.FrontendStages.Crep
