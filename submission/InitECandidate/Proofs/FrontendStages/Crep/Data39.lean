import InitECandidate.Proofs.FrontendStages.Crep.Translate23
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody39_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 0]

def crepBody39_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody39_2 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 0#64)) crepBody39_0 crepBody39_1

def crepBody39_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 1]

def crepBody39_4 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 1#64)) crepBody39_3 crepBody39_1

def crepBody39_5 : CrepProg (BitVec 64) :=
.seq crepBody39_2 crepBody39_4

def crepBody39_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 2]

def crepBody39_7 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 2#64)) crepBody39_6 crepBody39_1

def crepBody39_8 : CrepProg (BitVec 64) :=
.seq crepBody39_5 crepBody39_7

def crepBody39_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 3]

def crepBody39_10 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 3#64)) crepBody39_9 crepBody39_1

def crepBody39_11 : CrepProg (BitVec 64) :=
.seq crepBody39_8 crepBody39_10

def crepBody39_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody39_13 : CrepProg (BitVec 64) :=
.seq crepBody39_11 crepBody39_12

def data39 : CrepProg (BitVec 64) := crepBody39_13
def output39 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 108#8, 105#8, 109#8, 98#8], [0, 1, 2, 3, 4], crepProgToHOL data39)
end InitECandidate.Proofs.FrontendStages.Crep
