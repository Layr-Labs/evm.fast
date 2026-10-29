import InitECandidate.Proofs.FrontendStages.Crep.Translate13
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody29_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 0]

def crepBody29_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody29_2 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.var 0)) crepBody29_0 crepBody29_1

def crepBody29_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 1]

def crepBody29_4 : CrepProg (BitVec 64) :=
.seq crepBody29_2 crepBody29_3

def data29 : CrepProg (BitVec 64) := crepBody29_4
def output29 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [109#8, 97#8, 120#8], [0, 1], crepProgToHOL data29)
end InitECandidate.Proofs.FrontendStages.Crep
