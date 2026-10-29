import InitECandidate.Proofs.FrontendStages.Crep.Translate167
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody183_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "host_input_byte" [Flapjack.CrepExp.var 0]

def crepBody183_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "host_input_byte"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 1#64]]

def crepBody183_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "host_input_byte"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 2#64]]

def crepBody183_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "host_input_byte"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 3#64]]

def crepBody183_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.op Flapjack.BinOp.or
      [Flapjack.CrepExp.var 1,
        Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 8#64),
        Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 16#64),
        Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 24#64)]]

def crepBody183_5 : CrepProg (BitVec 64) :=
.seq crepBody183_3 crepBody183_4

def crepBody183_6 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody183_5

def crepBody183_7 : CrepProg (BitVec 64) :=
.seq crepBody183_2 crepBody183_6

def crepBody183_8 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody183_7

def crepBody183_9 : CrepProg (BitVec 64) :=
.seq crepBody183_1 crepBody183_8

def crepBody183_10 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody183_9

def crepBody183_11 : CrepProg (BitVec 64) :=
.seq crepBody183_0 crepBody183_10

def crepBody183_12 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody183_11

def data183 : CrepProg (BitVec 64) := crepBody183_12
def output183 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [104#8, 111#8, 115#8, 116#8, 95#8, 105#8, 110#8, 112#8, 117#8, 116#8, 95#8, 108#8, 101#8, 51#8, 50#8], [0], crepProgToHOL data183)
end InitECandidate.Proofs.FrontendStages.Crep
