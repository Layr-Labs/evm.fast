import InitECandidate.Proofs.FrontendStages.Crep.Translate17
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody33_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 1 (Flapjack.CrepExp.var 2)

def crepBody33_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody33_2 : CrepProg (BitVec 64) :=
.seq crepBody33_0 crepBody33_1

def crepBody33_3 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 1#64]) crepBody33_2

def crepBody33_4 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower
  (Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.const 1#64) (Flapjack.CrepExp.var 1))
  (Flapjack.CrepExp.var 0)) crepBody33_3

def crepBody33_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 1]

def crepBody33_6 : CrepProg (BitVec 64) :=
.seq crepBody33_4 crepBody33_5

def crepBody33_7 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody33_6

def data33 : CrepProg (BitVec 64) := crepBody33_7
def output33 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [99#8, 101#8, 105#8, 108#8, 95#8, 108#8, 111#8, 103#8, 50#8], [0], crepProgToHOL data33)
end InitECandidate.Proofs.FrontendStages.Crep
