import InitECandidate.Proofs.FrontendStages.Crep.Translate37
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody53_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.primitive [8, 9] Flapjack.PrimOp.addCarry [10, 11, 12]

def crepBody53_1 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 1#64) crepBody53_0

def crepBody53_2 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.op Flapjack.BinOp.xor
  [Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 1#64]]) crepBody53_1

def crepBody53_3 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.var 0) crepBody53_2

def crepBody53_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.primitive [10, 11] Flapjack.PrimOp.addCarry [12, 13, 14]

def crepBody53_5 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.var 9) crepBody53_4

def crepBody53_6 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.xor
  [Flapjack.CrepExp.var 5,
    Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 1#64]]) crepBody53_5

def crepBody53_7 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.var 1) crepBody53_6

def crepBody53_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.primitive [12, 13] Flapjack.PrimOp.addCarry [14, 15, 16]

def crepBody53_9 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.var 11) crepBody53_8

def crepBody53_10 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.op Flapjack.BinOp.xor
  [Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 1#64]]) crepBody53_9

def crepBody53_11 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.var 2) crepBody53_10

def crepBody53_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.primitive [14, 15] Flapjack.PrimOp.addCarry [16, 17, 18]

def crepBody53_13 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.var 13) crepBody53_12

def crepBody53_14 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.op Flapjack.BinOp.xor
  [Flapjack.CrepExp.var 7,
    Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 1#64]]) crepBody53_13

def crepBody53_15 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.var 3) crepBody53_14

def crepBody53_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 14]

def crepBody53_17 : CrepProg (BitVec 64) :=
.seq crepBody53_15 crepBody53_16

def crepBody53_18 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody53_17

def crepBody53_19 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody53_18

def crepBody53_20 : CrepProg (BitVec 64) :=
.seq crepBody53_11 crepBody53_19

def crepBody53_21 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody53_20

def crepBody53_22 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody53_21

def crepBody53_23 : CrepProg (BitVec 64) :=
.seq crepBody53_7 crepBody53_22

def crepBody53_24 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody53_23

def crepBody53_25 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody53_24

def crepBody53_26 : CrepProg (BitVec 64) :=
.seq crepBody53_3 crepBody53_25

def crepBody53_27 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody53_26

def crepBody53_28 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody53_27

def data53 : CrepProg (BitVec 64) := crepBody53_28
def output53 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 115#8, 117#8, 98#8], [0, 1, 2, 3, 4, 5, 6, 7], crepProgToHOL data53)
end InitECandidate.Proofs.FrontendStages.Crep
