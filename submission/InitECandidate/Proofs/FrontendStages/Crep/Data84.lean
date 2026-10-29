import InitECandidate.Proofs.FrontendStages.Crep.Translate68
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody84_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "u256_byte_length"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3]

def crepBody84_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "u256_limb"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 3#64)]

def crepBody84_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 6])
  (Flapjack.CrepExp.op Flapjack.BinOp.and
    [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 8)
        (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
          [Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 7#64],
            Flapjack.CrepExp.const 8#64]),
      Flapjack.CrepExp.const 255#64])

def crepBody84_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 6 (Flapjack.CrepExp.var 9)

def crepBody84_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody84_5 : CrepProg (BitVec 64) :=
.seq crepBody84_3 crepBody84_4

def crepBody84_6 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 1#64]) crepBody84_5

def crepBody84_7 : CrepProg (BitVec 64) :=
.seq crepBody84_2 crepBody84_6

def crepBody84_8 : CrepProg (BitVec 64) :=
.seq crepBody84_1 crepBody84_7

def crepBody84_9 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody84_8

def crepBody84_10 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.sub
  [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 1#64], Flapjack.CrepExp.var 6]) crepBody84_9

def crepBody84_11 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.var 5)) crepBody84_10

def crepBody84_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 5]

def crepBody84_13 : CrepProg (BitVec 64) :=
.seq crepBody84_11 crepBody84_12

def crepBody84_14 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody84_13

def crepBody84_15 : CrepProg (BitVec 64) :=
.seq crepBody84_0 crepBody84_14

def crepBody84_16 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody84_15

def data84 : CrepProg (BitVec 64) := crepBody84_16
def output84 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [117#8, 50#8, 53#8, 54#8, 95#8, 116#8, 111#8, 95#8, 98#8, 101#8, 95#8, 109#8, 105#8, 110#8], [0, 1, 2, 3, 4], crepProgToHOL data84)
end InitECandidate.Proofs.FrontendStages.Crep
