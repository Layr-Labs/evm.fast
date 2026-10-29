import InitECandidate.Proofs.FrontendStages.Crep.Translate26
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody42_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64]

def crepBody42_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody42_2 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 7)) crepBody42_0 crepBody42_1

def crepBody42_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody42_4 : CrepProg (BitVec 64) :=
.seq crepBody42_2 crepBody42_3

def crepBody42_5 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 7)) crepBody42_4 crepBody42_1

def crepBody42_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.var 6)) crepBody42_0 crepBody42_1

def crepBody42_7 : CrepProg (BitVec 64) :=
.seq crepBody42_6 crepBody42_3

def crepBody42_8 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.var 6)) crepBody42_7 crepBody42_1

def crepBody42_9 : CrepProg (BitVec 64) :=
.seq crepBody42_5 crepBody42_8

def crepBody42_10 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.var 5)) crepBody42_0 crepBody42_1

def crepBody42_11 : CrepProg (BitVec 64) :=
.seq crepBody42_10 crepBody42_3

def crepBody42_12 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.var 5)) crepBody42_11 crepBody42_1

def crepBody42_13 : CrepProg (BitVec 64) :=
.seq crepBody42_9 crepBody42_12

def crepBody42_14 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.var 4)) crepBody42_0 crepBody42_1

def crepBody42_15 : CrepProg (BitVec 64) :=
.seq crepBody42_13 crepBody42_14

def crepBody42_16 : CrepProg (BitVec 64) :=
.seq crepBody42_15 crepBody42_3

def data42 : CrepProg (BitVec 64) := crepBody42_16
def output42 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 108#8, 116#8], [0, 1, 2, 3, 4, 5, 6, 7], crepProgToHOL data42)
end InitECandidate.Proofs.FrontendStages.Crep
