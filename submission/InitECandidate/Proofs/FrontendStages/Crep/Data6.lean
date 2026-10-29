import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody6_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.var 2)

def crepBody6_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody6_2 : CrepProg (BitVec 64) :=
.seq crepBody6_0 crepBody6_1

def crepBody6_3 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.var 0) crepBody6_2

def crepBody6_4 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 8#64]) crepBody6_3

def crepBody6_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody6_6 : CrepProg (BitVec 64) :=
.seq crepBody6_4 crepBody6_5

def data6 : CrepProg (BitVec 64) := crepBody6_6
def output6 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [104#8, 101#8, 97#8, 112#8, 95#8, 114#8, 101#8, 108#8, 101#8, 97#8, 115#8, 101#8], [0], crepProgToHOL data6)
end InitECandidate.Proofs.FrontendStages.Crep
