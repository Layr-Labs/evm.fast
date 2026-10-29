import InitECandidate.Proofs.FrontendStages.Crep.Translate355
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody371_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "alloc" [Flapjack.CrepExp.const 24#64]

def crepBody371_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "alloc"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]]

def crepBody371_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.var 5)

def crepBody371_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody371_4 : CrepProg (BitVec 64) :=
.seq crepBody371_2 crepBody371_3

def crepBody371_5 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.var 3) crepBody371_4

def crepBody371_6 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 0#64]) crepBody371_5

def crepBody371_7 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody371_4

def crepBody371_8 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 8#64]) crepBody371_7

def crepBody371_9 : CrepProg (BitVec 64) :=
.seq crepBody371_6 crepBody371_8

def crepBody371_10 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.var 1) crepBody371_4

def crepBody371_11 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 16#64]) crepBody371_10

def crepBody371_12 : CrepProg (BitVec 64) :=
.seq crepBody371_9 crepBody371_11

def crepBody371_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 2]

def crepBody371_14 : CrepProg (BitVec 64) :=
.seq crepBody371_12 crepBody371_13

def crepBody371_15 : CrepProg (BitVec 64) :=
.seq crepBody371_1 crepBody371_14

def crepBody371_16 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody371_15

def crepBody371_17 : CrepProg (BitVec 64) :=
.seq crepBody371_0 crepBody371_16

def crepBody371_18 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody371_17

def data371 : CrepProg (BitVec 64) := crepBody371_18
def output371 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [108#8, 115#8, 116#8, 95#8, 110#8, 101#8, 119#8], [0, 1], crepProgToHOL data371)
end InitECandidate.Proofs.FrontendStages.Crep
