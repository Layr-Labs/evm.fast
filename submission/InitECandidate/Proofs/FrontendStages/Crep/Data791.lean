import InitECandidate.Proofs.FrontendStages.Crep.Translate775
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody791_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64]

def crepBody791_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody791_2 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64]))
  (Flapjack.CrepExp.const 3#64)) crepBody791_0 crepBody791_1

def crepBody791_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody791_4 : CrepProg (BitVec 64) :=
.seq crepBody791_2 crepBody791_3

def data791 : CrepProg (BitVec 64) := crepBody791_4
def output791 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [116#8, 120#8, 95#8, 105#8, 115#8, 95#8, 98#8, 108#8, 111#8, 98#8], [0], crepProgToHOL data791)
end InitECandidate.Proofs.FrontendStages.Crep
