import InitECandidate.Proofs.FrontendStages.Crep.Translate25
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody41_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64]

def crepBody41_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody41_2 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.op Flapjack.BinOp.or
    [Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 4],
      Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 5],
      Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 6],
      Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 7]])
  (Flapjack.CrepExp.const 0#64)) crepBody41_0 crepBody41_1

def crepBody41_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody41_4 : CrepProg (BitVec 64) :=
.seq crepBody41_2 crepBody41_3

def data41 : CrepProg (BitVec 64) := crepBody41_4
def output41 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 101#8, 113#8], [0, 1, 2, 3, 4, 5, 6, 7], crepProgToHOL data41)
end InitECandidate.Proofs.FrontendStages.Crep
