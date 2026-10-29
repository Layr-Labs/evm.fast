import InitECandidate.Proofs.FrontendStages.Crep.Translate7
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody23_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "st_le32" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody23_1 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody23_0

def crepBody23_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "st_le32"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 4#64],
    Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 32#64)]

def crepBody23_3 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody23_2

def crepBody23_4 : CrepProg (BitVec 64) :=
.seq crepBody23_1 crepBody23_3

def crepBody23_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody23_6 : CrepProg (BitVec 64) :=
.seq crepBody23_4 crepBody23_5

def data23 : CrepProg (BitVec 64) := crepBody23_6
def output23 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [115#8, 116#8, 95#8, 108#8, 101#8, 54#8, 52#8], [0, 1], crepProgToHOL data23)
end InitECandidate.Proofs.FrontendStages.Crep
