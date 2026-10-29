import InitECandidate.Proofs.FrontendStages.Crep.Translate52
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody68_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call none "u256_neg"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3]

def crepBody68_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody68_2 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 63#64))
  (Flapjack.CrepExp.const 1#64)) crepBody68_0 crepBody68_1

def crepBody68_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3]

def crepBody68_4 : CrepProg (BitVec 64) :=
.seq crepBody68_2 crepBody68_3

def data68 : CrepProg (BitVec 64) := crepBody68_4
def output68 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 97#8, 98#8, 115#8], [0, 1, 2, 3], crepProgToHOL data68)
end InitECandidate.Proofs.FrontendStages.Crep
