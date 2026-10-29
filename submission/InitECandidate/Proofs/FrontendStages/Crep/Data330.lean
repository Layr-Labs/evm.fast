import InitECandidate.Proofs.FrontendStages.Crep.Translate314
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody330_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "acct_new"
  [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64,
    Flapjack.CrepExp.const 0#64,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 136#64])]

def crepBody330_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 1]

def crepBody330_2 : CrepProg (BitVec 64) :=
.seq crepBody330_0 crepBody330_1

def crepBody330_3 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody330_2

def data330 : CrepProg (BitVec 64) := crepBody330_3
def output330 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [97#8, 99#8, 99#8, 116#8, 95#8, 101#8, 109#8, 112#8, 116#8, 121#8], [], crepProgToHOL data330)
end InitECandidate.Proofs.FrontendStages.Crep
