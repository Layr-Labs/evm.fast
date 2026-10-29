import InitECandidate.Proofs.FrontendStages.Crep.Translate28
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody44_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64]

def crepBody44_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody44_2 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 7)) crepBody44_0 crepBody44_1

def crepBody44_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody44_4 : CrepProg (BitVec 64) :=
.seq crepBody44_2 crepBody44_3

def crepBody44_5 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 7)) crepBody44_4 crepBody44_1

def crepBody44_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.var 6)) crepBody44_0 crepBody44_1

def crepBody44_7 : CrepProg (BitVec 64) :=
.seq crepBody44_6 crepBody44_3

def crepBody44_8 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.var 6)) crepBody44_7 crepBody44_1

def crepBody44_9 : CrepProg (BitVec 64) :=
.seq crepBody44_5 crepBody44_8

def crepBody44_10 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.var 5)) crepBody44_0 crepBody44_1

def crepBody44_11 : CrepProg (BitVec 64) :=
.seq crepBody44_10 crepBody44_3

def crepBody44_12 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.var 5)) crepBody44_11 crepBody44_1

def crepBody44_13 : CrepProg (BitVec 64) :=
.seq crepBody44_9 crepBody44_12

def crepBody44_14 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.var 4)) crepBody44_0 crepBody44_1

def crepBody44_15 : CrepProg (BitVec 64) :=
.seq crepBody44_13 crepBody44_14

def crepBody44_16 : CrepProg (BitVec 64) :=
.seq crepBody44_15 crepBody44_3

def data44 : CrepProg (BitVec 64) := crepBody44_16
def output44 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 115#8, 108#8, 116#8], [0, 1, 2, 3, 4, 5, 6, 7], crepProgToHOL data44)
end InitECandidate.Proofs.FrontendStages.Crep
