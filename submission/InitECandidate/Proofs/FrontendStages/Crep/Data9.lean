import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody9_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.var 2)

def crepBody9_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody9_2 : CrepProg (BitVec 64) :=
.seq crepBody9_0 crepBody9_1

def crepBody9_3 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.var 0) crepBody9_2

def crepBody9_4 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 32#64]) crepBody9_3

def crepBody9_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody9_6 : CrepProg (BitVec 64) :=
.seq crepBody9_4 crepBody9_5

def data9 : CrepProg (BitVec 64) := crepBody9_6
def output9 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [102#8, 114#8, 97#8, 109#8, 101#8, 95#8, 109#8, 101#8, 109#8, 95#8, 114#8, 101#8, 108#8, 101#8, 97#8, 115#8, 101#8], [0], crepProgToHOL data9)
end InitECandidate.Proofs.FrontendStages.Crep
