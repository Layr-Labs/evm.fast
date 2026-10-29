import InitECandidate.Proofs.FrontendStages.Crep.Translate337
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody353_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "get_account_optional" [Flapjack.CrepExp.var 0]

def crepBody353_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody353_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody353_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 1#64)) crepBody353_1 crepBody353_2

def crepBody353_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "acct_is_empty" [Flapjack.CrepExp.var 1]

def crepBody353_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 2]

def crepBody353_6 : CrepProg (BitVec 64) :=
.seq crepBody353_4 crepBody353_5

def crepBody353_7 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody353_6

def crepBody353_8 : CrepProg (BitVec 64) :=
.seq crepBody353_3 crepBody353_7

def crepBody353_9 : CrepProg (BitVec 64) :=
.seq crepBody353_0 crepBody353_8

def crepBody353_10 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody353_9

def data353 : CrepProg (BitVec 64) := crepBody353_10
def output353 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [97#8, 99#8, 99#8, 111#8, 117#8, 110#8, 116#8, 95#8, 101#8, 120#8, 105#8, 115#8, 116#8, 115#8, 95#8, 97#8, 110#8,
    100#8, 95#8, 105#8, 115#8, 95#8, 101#8, 109#8, 112#8, 116#8, 121#8], [0], crepProgToHOL data353)
end InitECandidate.Proofs.FrontendStages.Crep
