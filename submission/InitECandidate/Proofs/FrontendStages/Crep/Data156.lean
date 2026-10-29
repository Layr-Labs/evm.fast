import InitECandidate.Proofs.FrontendStages.Crep.Translate140
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody156_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.var 2)

def crepBody156_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 3)

def crepBody156_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 4)

def crepBody156_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 5)

def crepBody156_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody156_5 : CrepProg (BitVec 64) :=
.seq crepBody156_3 crepBody156_4

def crepBody156_6 : CrepProg (BitVec 64) :=
.seq crepBody156_2 crepBody156_5

def crepBody156_7 : CrepProg (BitVec 64) :=
.seq crepBody156_1 crepBody156_6

def crepBody156_8 : CrepProg (BitVec 64) :=
.seq crepBody156_0 crepBody156_7

def crepBody156_9 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody156_8

def crepBody156_10 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody156_9

def crepBody156_11 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody156_10

def crepBody156_12 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 1#64) crepBody156_11

def crepBody156_13 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.var 0) crepBody156_12

def crepBody156_14 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64]) crepBody156_12

def crepBody156_15 : CrepProg (BitVec 64) :=
.seq crepBody156_13 crepBody156_14

def crepBody156_16 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody156_11

def crepBody156_17 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 64#64]) crepBody156_16

def crepBody156_18 : CrepProg (BitVec 64) :=
.seq crepBody156_15 crepBody156_17

def crepBody156_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody156_20 : CrepProg (BitVec 64) :=
.seq crepBody156_18 crepBody156_19

def data156 : CrepProg (BitVec 64) := crepBody156_20
def output156 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [101#8, 99#8, 95#8, 115#8, 101#8, 116#8, 95#8, 105#8, 110#8, 102#8, 105#8, 110#8, 105#8, 116#8, 121#8], [0], crepProgToHOL data156)
end InitECandidate.Proofs.FrontendStages.Crep
