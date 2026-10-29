import InitECandidate.Proofs.FrontendStages.Crep.Translate206
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody222_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 1)

def crepBody222_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody222_2 : CrepProg (BitVec 64) :=
.seq crepBody222_0 crepBody222_1

def crepBody222_3 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.var 0) crepBody222_2

def crepBody222_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 5#64

def crepBody222_5 : CrepProg (BitVec 64) :=
.seq crepBody222_3 crepBody222_4

def crepBody222_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody222_7 : CrepProg (BitVec 64) :=
.seq crepBody222_5 crepBody222_6

def data222 : CrepProg (BitVec 64) := crepBody222_7
def output222 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [109#8, 112#8, 116#8, 95#8, 102#8, 97#8, 105#8, 108#8], [0], crepProgToHOL data222)
end InitECandidate.Proofs.FrontendStages.Crep
