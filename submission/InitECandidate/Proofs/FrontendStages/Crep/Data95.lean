import InitECandidate.Proofs.FrontendStages.Crep.Translate79
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody95_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 1)

def crepBody95_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody95_2 : CrepProg (BitVec 64) :=
.seq crepBody95_0 crepBody95_1

def crepBody95_3 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.var 0) crepBody95_2

def crepBody95_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 1#64

def crepBody95_5 : CrepProg (BitVec 64) :=
.seq crepBody95_3 crepBody95_4

def crepBody95_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody95_7 : CrepProg (BitVec 64) :=
.seq crepBody95_5 crepBody95_6

def data95 : CrepProg (BitVec 64) := crepBody95_7
def output95 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [114#8, 108#8, 112#8, 95#8, 102#8, 97#8, 105#8, 108#8], [0], crepProgToHOL data95)
end InitECandidate.Proofs.FrontendStages.Crep
