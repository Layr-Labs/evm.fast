import InitECandidate.Proofs.FrontendStages.Crep.Translate408
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody424_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "scratch_alloc" [Flapjack.CrepExp.const 176#64]

def crepBody424_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "memzero" [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 176#64]

def crepBody424_2 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody424_1

def crepBody424_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 1]

def crepBody424_4 : CrepProg (BitVec 64) :=
.seq crepBody424_2 crepBody424_3

def crepBody424_5 : CrepProg (BitVec 64) :=
.seq crepBody424_0 crepBody424_4

def crepBody424_6 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody424_5

def data424 : CrepProg (BitVec 64) := crepBody424_6
def output424 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [109#8, 115#8, 103#8, 95#8, 110#8, 101#8, 119#8, 95#8, 115#8, 99#8, 114#8, 97#8, 116#8, 99#8, 104#8], [], crepProgToHOL data424)
end InitECandidate.Proofs.FrontendStages.Crep
