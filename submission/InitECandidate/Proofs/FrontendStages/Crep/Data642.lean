import InitECandidate.Proofs.FrontendStages.Crep.Translate626
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody642_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64]

def crepBody642_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody642_2 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.op Flapjack.BinOp.or
    [Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 6],
      Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 7],
      Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 8],
      Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 9],
      Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 10],
      Flapjack.CrepExp.op Flapjack.BinOp.xor [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 11]])
  (Flapjack.CrepExp.const 0#64)) crepBody642_0 crepBody642_1

def crepBody642_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody642_4 : CrepProg (BitVec 64) :=
.seq crepBody642_2 crepBody642_3

def data642 : CrepProg (BitVec 64) := crepBody642_4
def output642 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [98#8, 108#8, 115#8, 95#8, 102#8, 112#8, 95#8, 101#8, 113#8], [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], crepProgToHOL data642)
end InitECandidate.Proofs.FrontendStages.Crep
