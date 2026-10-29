import InitECandidate.Proofs.FrontendStages.Crep.Translate584
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody600_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4, 5, 6, 7], none)) "modinv_bin"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.const 4332616871279656263#64, Flapjack.CrepExp.const 10917124144477883021#64,
    Flapjack.CrepExp.const 13281191951274694749#64, Flapjack.CrepExp.const 3486998266802970665#64]

def crepBody600_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call none "fq_mul"
  [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7,
    Flapjack.CrepExp.const 12812017116984455391#64, Flapjack.CrepExp.const 7129779742913871286#64,
    Flapjack.CrepExp.const 17257524443456604923#64, Flapjack.CrepExp.const 2377177743836652868#64]

def crepBody600_2 : CrepProg (BitVec 64) :=
.seq crepBody600_0 crepBody600_1

def crepBody600_3 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody600_2

def crepBody600_4 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody600_3

def crepBody600_5 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody600_4

def crepBody600_6 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody600_5

def data600 : CrepProg (BitVec 64) := crepBody600_6
def output600 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 113#8, 95#8, 105#8, 110#8, 118#8], [0, 1, 2, 3], crepProgToHOL data600)
end InitECandidate.Proofs.FrontendStages.Crep
