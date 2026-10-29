import InitECandidate.Proofs.FrontendStages.Crep.Translate339
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody355_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "jset"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 184#64]),
          Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody355_1 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody355_0

def crepBody355_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody355_3 : CrepProg (BitVec 64) :=
.seq crepBody355_1 crepBody355_2

def data355 : CrepProg (BitVec 64) := crepBody355_3
def output355 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [115#8, 101#8, 116#8, 95#8, 97#8, 99#8, 99#8, 111#8, 117#8, 110#8, 116#8], [0, 1], crepProgToHOL data355)
end InitECandidate.Proofs.FrontendStages.Crep
