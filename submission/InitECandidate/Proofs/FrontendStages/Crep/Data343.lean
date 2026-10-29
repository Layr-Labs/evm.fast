import InitECandidate.Proofs.FrontendStages.Crep.Translate327
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody343_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "get_account_optional" [Flapjack.CrepExp.var 0]

def crepBody343_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "acct_empty" []

def crepBody343_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody343_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 1#64)) crepBody343_1 crepBody343_2

def crepBody343_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 1]

def crepBody343_5 : CrepProg (BitVec 64) :=
.seq crepBody343_3 crepBody343_4

def crepBody343_6 : CrepProg (BitVec 64) :=
.seq crepBody343_0 crepBody343_5

def crepBody343_7 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody343_6

def data343 : CrepProg (BitVec 64) := crepBody343_7
def output343 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [103#8, 101#8, 116#8, 95#8, 97#8, 99#8, 99#8, 111#8, 117#8, 110#8, 116#8], [0], crepProgToHOL data343)
end InitECandidate.Proofs.FrontendStages.Crep
