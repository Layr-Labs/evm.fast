import InitECandidate.Proofs.FrontendStages.Crep.Translate387
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody403_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1, 2, 3, 4], none)) "u256_from_be" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 20#64]

def crepBody403_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]

def crepBody403_2 : CrepProg (BitVec 64) :=
.seq crepBody403_0 crepBody403_1

def crepBody403_3 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody403_2

def crepBody403_4 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody403_3

def crepBody403_5 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody403_4

def crepBody403_6 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody403_5

def data403 : CrepProg (BitVec 64) := crepBody403_6
def output403 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [97#8, 100#8, 100#8, 114#8, 101#8, 115#8, 115#8, 95#8, 116#8, 111#8, 95#8, 117#8, 50#8, 53#8, 54#8], [0], crepProgToHOL data403)
end InitECandidate.Proofs.FrontendStages.Crep
