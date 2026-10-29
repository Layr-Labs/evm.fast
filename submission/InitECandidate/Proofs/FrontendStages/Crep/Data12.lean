import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody12_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.var 2)

def crepBody12_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody12_2 : CrepProg (BitVec 64) :=
.seq crepBody12_0 crepBody12_1

def crepBody12_3 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.var 0) crepBody12_2

def crepBody12_4 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 24#64]) crepBody12_3

def crepBody12_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody12_6 : CrepProg (BitVec 64) :=
.seq crepBody12_4 crepBody12_5

def data12 : CrepProg (BitVec 64) := crepBody12_6
def output12 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [115#8, 99#8, 114#8, 97#8, 116#8, 99#8, 104#8, 95#8, 114#8, 101#8, 108#8, 101#8, 97#8, 115#8, 101#8], [0], crepProgToHOL data12)
end InitECandidate.Proofs.FrontendStages.Crep
