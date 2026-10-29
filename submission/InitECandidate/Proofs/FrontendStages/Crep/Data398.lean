import InitECandidate.Proofs.FrontendStages.Crep.Translate382
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody398_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 18446744073709551615#64]

def crepBody398_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody398_2 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.op Flapjack.BinOp.or [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3])
  (Flapjack.CrepExp.const 0#64)) crepBody398_0 crepBody398_1

def crepBody398_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 0]

def crepBody398_4 : CrepProg (BitVec 64) :=
.seq crepBody398_2 crepBody398_3

def data398 : CrepProg (BitVec 64) := crepBody398_4
def output398 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [115#8, 97#8, 116#8, 95#8, 119#8, 111#8, 114#8, 100#8], [0, 1, 2, 3], crepProgToHOL data398)
end InitECandidate.Proofs.FrontendStages.Crep
