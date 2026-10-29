import InitECandidate.Proofs.FrontendStages.Crep.Translate548
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody564_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody564_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody564_2 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 16#64)) crepBody564_0 crepBody564_1

def crepBody564_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1518500249#64]

def crepBody564_4 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 32#64)) crepBody564_3 crepBody564_1

def crepBody564_5 : CrepProg (BitVec 64) :=
.seq crepBody564_2 crepBody564_4

def crepBody564_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1859775393#64]

def crepBody564_7 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 48#64)) crepBody564_6 crepBody564_1

def crepBody564_8 : CrepProg (BitVec 64) :=
.seq crepBody564_5 crepBody564_7

def crepBody564_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 2400959708#64]

def crepBody564_10 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 64#64)) crepBody564_9 crepBody564_1

def crepBody564_11 : CrepProg (BitVec 64) :=
.seq crepBody564_8 crepBody564_10

def crepBody564_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 2840853838#64]

def crepBody564_13 : CrepProg (BitVec 64) :=
.seq crepBody564_11 crepBody564_12

def data564 : CrepProg (BitVec 64) := crepBody564_13
def output564 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [114#8, 109#8, 100#8, 95#8, 107#8], [0], crepProgToHOL data564)
end InitECandidate.Proofs.FrontendStages.Crep
