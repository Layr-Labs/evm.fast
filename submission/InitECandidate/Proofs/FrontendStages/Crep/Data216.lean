import InitECandidate.Proofs.FrontendStages.Crep.Translate200
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody216_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2, 3, 4], none)) "taylor_exponential"
  [Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 11684671#64]

def crepBody216_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]

def crepBody216_2 : CrepProg (BitVec 64) :=
.seq crepBody216_0 crepBody216_1

def crepBody216_3 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody216_2

def crepBody216_4 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody216_3

def crepBody216_5 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody216_4

def crepBody216_6 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody216_5

def data216 : CrepProg (BitVec 64) := crepBody216_6
def output216 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [99#8, 97#8, 108#8, 99#8, 117#8, 108#8, 97#8, 116#8, 101#8, 95#8, 98#8, 108#8, 111#8, 98#8, 95#8, 103#8, 97#8, 115#8,
    95#8, 112#8, 114#8, 105#8, 99#8, 101#8], [0], crepProgToHOL data216)
end InitECandidate.Proofs.FrontendStages.Crep
