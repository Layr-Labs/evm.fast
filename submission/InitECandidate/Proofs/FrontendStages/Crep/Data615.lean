import InitECandidate.Proofs.FrontendStages.Crep.Translate599
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody615_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "memzero"
  [Flapjack.CrepExp.var 1,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64]]

def crepBody615_1 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody615_0

def crepBody615_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.var 3)

def crepBody615_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 4)

def crepBody615_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 5)

def crepBody615_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 6)

def crepBody615_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody615_7 : CrepProg (BitVec 64) :=
.seq crepBody615_5 crepBody615_6

def crepBody615_8 : CrepProg (BitVec 64) :=
.seq crepBody615_4 crepBody615_7

def crepBody615_9 : CrepProg (BitVec 64) :=
.seq crepBody615_3 crepBody615_8

def crepBody615_10 : CrepProg (BitVec 64) :=
.seq crepBody615_2 crepBody615_9

def crepBody615_11 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 1011752739694698287#64) crepBody615_10

def crepBody615_12 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 7381016538464732716#64) crepBody615_11

def crepBody615_13 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 754611498739239741#64) crepBody615_12

def crepBody615_14 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 15230403791020821917#64) crepBody615_13

def crepBody615_15 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.var 1) crepBody615_14

def crepBody615_16 : CrepProg (BitVec 64) :=
.seq crepBody615_1 crepBody615_15

def crepBody615_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody615_18 : CrepProg (BitVec 64) :=
.seq crepBody615_16 crepBody615_17

def data615 : CrepProg (BitVec 64) := crepBody615_18
def output615 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 101#8, 95#8, 115#8, 101#8, 116#8, 95#8, 111#8, 110#8, 101#8], [0, 1], crepProgToHOL data615)
end InitECandidate.Proofs.FrontendStages.Crep
