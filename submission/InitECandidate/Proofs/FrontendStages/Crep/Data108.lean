import InitECandidate.Proofs.FrontendStages.Crep.Translate92
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody108_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 0 (Flapjack.CrepExp.var 2)

def crepBody108_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody108_2 : CrepProg (BitVec 64) :=
.seq crepBody108_0 crepBody108_1

def crepBody108_3 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 8#64)) crepBody108_2

def crepBody108_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 1 (Flapjack.CrepExp.var 2)

def crepBody108_5 : CrepProg (BitVec 64) :=
.seq crepBody108_4 crepBody108_1

def crepBody108_6 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 1#64]) crepBody108_5

def crepBody108_7 : CrepProg (BitVec 64) :=
.seq crepBody108_3 crepBody108_6

def crepBody108_8 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 0#64)) crepBody108_7

def crepBody108_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 1]

def crepBody108_10 : CrepProg (BitVec 64) :=
.seq crepBody108_8 crepBody108_9

def crepBody108_11 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody108_10

def data108 : CrepProg (BitVec 64) := crepBody108_11
def output108 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [114#8, 108#8, 112#8, 95#8, 98#8, 101#8, 95#8, 108#8, 101#8, 110#8], [0], crepProgToHOL data108)
end InitECandidate.Proofs.FrontendStages.Crep
