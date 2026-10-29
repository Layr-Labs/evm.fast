import InitECandidate.Proofs.FrontendStages.Crep.Translate289
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody305_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "keccak256"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 384#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 392#64]),
    Flapjack.CrepExp.var 1]

def crepBody305_1 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody305_0

def crepBody305_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody305_3 : CrepProg (BitVec 64) :=
.seq crepBody305_1 crepBody305_2

def data305 : CrepProg (BitVec 64) := crepBody305_3
def output305 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [103#8, 101#8, 116#8, 95#8, 116#8, 114#8, 97#8, 110#8, 115#8, 97#8, 99#8, 116#8, 105#8, 111#8, 110#8, 95#8, 104#8,
    97#8, 115#8, 104#8], [0, 1], crepProgToHOL data305)
end InitECandidate.Proofs.FrontendStages.Crep
