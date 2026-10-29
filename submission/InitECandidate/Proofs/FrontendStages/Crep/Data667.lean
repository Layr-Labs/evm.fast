import InitECandidate.Proofs.FrontendStages.Crep.Translate651
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody667_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.var 2)

def crepBody667_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 3)

def crepBody667_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 4)

def crepBody667_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 5)

def crepBody667_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64])
  (Flapjack.CrepExp.var 6)

def crepBody667_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 40#64])
  (Flapjack.CrepExp.var 7)

def crepBody667_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody667_7 : CrepProg (BitVec 64) :=
.seq crepBody667_5 crepBody667_6

def crepBody667_8 : CrepProg (BitVec 64) :=
.seq crepBody667_4 crepBody667_7

def crepBody667_9 : CrepProg (BitVec 64) :=
.seq crepBody667_3 crepBody667_8

def crepBody667_10 : CrepProg (BitVec 64) :=
.seq crepBody667_2 crepBody667_9

def crepBody667_11 : CrepProg (BitVec 64) :=
.seq crepBody667_1 crepBody667_10

def crepBody667_12 : CrepProg (BitVec 64) :=
.seq crepBody667_0 crepBody667_11

def crepBody667_13 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 1582556514881692819#64) crepBody667_12

def crepBody667_14 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 6631298214892334189#64) crepBody667_13

def crepBody667_15 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 8632934651105793861#64) crepBody667_14

def crepBody667_16 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 6865905132761471162#64) crepBody667_15

def crepBody667_17 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 17002214543764226050#64) crepBody667_16

def crepBody667_18 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 8505329371266088957#64) crepBody667_17

def crepBody667_19 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.var 0) crepBody667_18

def crepBody667_20 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody667_12

def crepBody667_21 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody667_20

def crepBody667_22 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody667_21

def crepBody667_23 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody667_22

def crepBody667_24 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody667_23

def crepBody667_25 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody667_24

def crepBody667_26 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 48#64]) crepBody667_25

def crepBody667_27 : CrepProg (BitVec 64) :=
.seq crepBody667_19 crepBody667_26

def crepBody667_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody667_29 : CrepProg (BitVec 64) :=
.seq crepBody667_27 crepBody667_28

def data667 : CrepProg (BitVec 64) := crepBody667_29
def output667 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 50#8, 95#8, 115#8, 101#8, 116#8, 95#8, 111#8, 110#8, 101#8], [0], crepProgToHOL data667)
end InitECandidate.Proofs.FrontendStages.Crep
