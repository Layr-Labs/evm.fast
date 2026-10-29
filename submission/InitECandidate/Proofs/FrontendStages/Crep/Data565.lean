import InitECandidate.Proofs.FrontendStages.Crep.Translate549
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody565_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1352829926#64]

def crepBody565_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody565_2 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 16#64)) crepBody565_0 crepBody565_1

def crepBody565_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1548603684#64]

def crepBody565_4 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 32#64)) crepBody565_3 crepBody565_1

def crepBody565_5 : CrepProg (BitVec 64) :=
.seq crepBody565_2 crepBody565_4

def crepBody565_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1836072691#64]

def crepBody565_7 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 48#64)) crepBody565_6 crepBody565_1

def crepBody565_8 : CrepProg (BitVec 64) :=
.seq crepBody565_5 crepBody565_7

def crepBody565_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 2053994217#64]

def crepBody565_10 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 64#64)) crepBody565_9 crepBody565_1

def crepBody565_11 : CrepProg (BitVec 64) :=
.seq crepBody565_8 crepBody565_10

def crepBody565_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody565_13 : CrepProg (BitVec 64) :=
.seq crepBody565_11 crepBody565_12

def data565 : CrepProg (BitVec 64) := crepBody565_13
def output565 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [114#8, 109#8, 100#8, 95#8, 107#8, 112#8], [0], crepProgToHOL data565)
end InitECandidate.Proofs.FrontendStages.Crep
