import InitECandidate.Proofs.FrontendStages.Crep.Translate246
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody262_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 2 (Flapjack.CrepExp.loadByte (Flapjack.CrepExp.var 0))

def crepBody262_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody262_2 : CrepProg (BitVec 64) :=
.seq crepBody262_0 crepBody262_1

def crepBody262_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 0#64) (Flapjack.CrepExp.var 1)) crepBody262_2 crepBody262_1

def crepBody262_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call none "rlp_bytes_encoded_len" [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 1]

def crepBody262_5 : CrepProg (BitVec 64) :=
.seq crepBody262_3 crepBody262_4

def crepBody262_6 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody262_5

def data262 : CrepProg (BitVec 64) := crepBody262_6
def output262 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [114#8, 108#8, 112#8, 95#8, 118#8, 97#8, 108#8, 117#8, 101#8, 95#8, 101#8, 110#8, 99#8, 111#8, 100#8, 101#8, 100#8,
    95#8, 108#8, 101#8, 110#8], [0, 1], crepProgToHOL data262)
end InitECandidate.Proofs.FrontendStages.Crep
