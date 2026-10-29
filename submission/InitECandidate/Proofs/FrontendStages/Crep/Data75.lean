import InitECandidate.Proofs.FrontendStages.Crep.Translate59
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody75_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "u256_bit_length"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3]

def crepBody75_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.shift Flapjack.Shift.lsr
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 7#64])
      (Flapjack.CrepExp.const 3#64)]

def crepBody75_2 : CrepProg (BitVec 64) :=
.seq crepBody75_0 crepBody75_1

def crepBody75_3 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody75_2

def data75 : CrepProg (BitVec 64) := crepBody75_3
def output75 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [117#8, 50#8, 53#8, 54#8, 95#8, 98#8, 121#8, 116#8, 101#8, 95#8, 108#8, 101#8, 110#8, 103#8, 116#8, 104#8], [0, 1, 2, 3], crepProgToHOL data75)
end InitECandidate.Proofs.FrontendStages.Crep
