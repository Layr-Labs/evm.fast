import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody3_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.var 2)

def crepBody3_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody3_2 : CrepProg (BitVec 64) :=
.seq crepBody3_0 crepBody3_1

def crepBody3_3 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.baseAddr) crepBody3_2

def crepBody3_4 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 8#64]) crepBody3_3

def crepBody3_5 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 2965299200#64) crepBody3_2

def crepBody3_6 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 24#64]) crepBody3_5

def crepBody3_7 : CrepProg (BitVec 64) :=
.seq crepBody3_4 crepBody3_6

def crepBody3_8 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 2952790016#64) crepBody3_2

def crepBody3_9 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 32#64]) crepBody3_8

def crepBody3_10 : CrepProg (BitVec 64) :=
.seq crepBody3_7 crepBody3_9

def crepBody3_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody3_12 : CrepProg (BitVec 64) :=
.seq crepBody3_10 crepBody3_11

def data3 : CrepProg (BitVec 64) := crepBody3_12
def output3 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [109#8, 101#8, 109#8, 95#8, 105#8, 110#8, 105#8, 116#8], [], crepProgToHOL data3)
end InitECandidate.Proofs.FrontendStages.Crep
