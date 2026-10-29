import InitECandidate.Proofs.FrontendStages.Crep.Translate6
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody22_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.var 1)

def crepBody22_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 1#64])
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 8#64))

def crepBody22_2 : CrepProg (BitVec 64) :=
.seq crepBody22_0 crepBody22_1

def crepBody22_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 2#64])
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 16#64))

def crepBody22_4 : CrepProg (BitVec 64) :=
.seq crepBody22_2 crepBody22_3

def crepBody22_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 3#64])
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 24#64))

def crepBody22_6 : CrepProg (BitVec 64) :=
.seq crepBody22_4 crepBody22_5

def crepBody22_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody22_8 : CrepProg (BitVec 64) :=
.seq crepBody22_6 crepBody22_7

def data22 : CrepProg (BitVec 64) := crepBody22_8
def output22 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [115#8, 116#8, 95#8, 108#8, 101#8, 51#8, 50#8], [0, 1], crepProgToHOL data22)
end InitECandidate.Proofs.FrontendStages.Crep
