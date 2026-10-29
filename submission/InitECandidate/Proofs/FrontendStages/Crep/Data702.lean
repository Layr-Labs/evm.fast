import InitECandidate.Proofs.FrontendStages.Crep.Translate686
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody702_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.var 2)

def crepBody702_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 3)

def crepBody702_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 4)

def crepBody702_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 5)

def crepBody702_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64])
  (Flapjack.CrepExp.var 6)

def crepBody702_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 40#64])
  (Flapjack.CrepExp.var 7)

def crepBody702_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody702_7 : CrepProg (BitVec 64) :=
.seq crepBody702_5 crepBody702_6

def crepBody702_8 : CrepProg (BitVec 64) :=
.seq crepBody702_4 crepBody702_7

def crepBody702_9 : CrepProg (BitVec 64) :=
.seq crepBody702_3 crepBody702_8

def crepBody702_10 : CrepProg (BitVec 64) :=
.seq crepBody702_2 crepBody702_9

def crepBody702_11 : CrepProg (BitVec 64) :=
.seq crepBody702_1 crepBody702_10

def crepBody702_12 : CrepProg (BitVec 64) :=
.seq crepBody702_0 crepBody702_11

def crepBody702_13 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 1582556514881692819#64) crepBody702_12

def crepBody702_14 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 6631298214892334189#64) crepBody702_13

def crepBody702_15 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 8632934651105793861#64) crepBody702_14

def crepBody702_16 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 6865905132761471162#64) crepBody702_15

def crepBody702_17 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 17002214543764226050#64) crepBody702_16

def crepBody702_18 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 8505329371266088957#64) crepBody702_17

def crepBody702_19 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.var 0) crepBody702_18

def crepBody702_20 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 48#64]) crepBody702_18

def crepBody702_21 : CrepProg (BitVec 64) :=
.seq crepBody702_19 crepBody702_20

def crepBody702_22 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody702_12

def crepBody702_23 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody702_22

def crepBody702_24 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody702_23

def crepBody702_25 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody702_24

def crepBody702_26 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody702_25

def crepBody702_27 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody702_26

def crepBody702_28 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 96#64]) crepBody702_27

def crepBody702_29 : CrepProg (BitVec 64) :=
.seq crepBody702_21 crepBody702_28

def crepBody702_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody702_31 : CrepProg (BitVec 64) :=
.seq crepBody702_29 crepBody702_30

def data702 : CrepProg (BitVec 64) := crepBody702_31
def output702 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [103#8, 49#8, 95#8, 115#8, 101#8, 116#8, 95#8, 105#8, 110#8, 102#8], [0], crepProgToHOL data702)
end InitECandidate.Proofs.FrontendStages.Crep
