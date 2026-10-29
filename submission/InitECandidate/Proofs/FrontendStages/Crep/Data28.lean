import InitECandidate.Proofs.FrontendStages.Crep.Translate12
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody28_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 0]

def crepBody28_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody28_2 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.var 1)) crepBody28_0 crepBody28_1

def crepBody28_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 1]

def crepBody28_4 : CrepProg (BitVec 64) :=
.seq crepBody28_2 crepBody28_3

def data28 : CrepProg (BitVec 64) := crepBody28_4
def output28 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [109#8, 105#8, 110#8], [0, 1], crepProgToHOL data28)
end InitECandidate.Proofs.FrontendStages.Crep
