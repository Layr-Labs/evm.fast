import InitECandidate.Proofs.FrontendStages.Crep.Translate165
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody181_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 1)

def crepBody181_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody181_2 : CrepProg (BitVec 64) :=
.seq crepBody181_0 crepBody181_1

def crepBody181_3 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.var 0) crepBody181_2

def crepBody181_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 2#64

def crepBody181_5 : CrepProg (BitVec 64) :=
.seq crepBody181_3 crepBody181_4

def crepBody181_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody181_7 : CrepProg (BitVec 64) :=
.seq crepBody181_5 crepBody181_6

def data181 : CrepProg (BitVec 64) := crepBody181_7
def output181 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [115#8, 115#8, 122#8, 95#8, 102#8, 97#8, 105#8, 108#8], [0], crepProgToHOL data181)
end InitECandidate.Proofs.FrontendStages.Crep
