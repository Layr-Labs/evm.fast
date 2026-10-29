import InitECandidate.Proofs.FrontendStages.Crep.Translate38
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody54_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.primitive [4, 5] Flapjack.PrimOp.addCarry [6, 7, 8]

def crepBody54_1 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 1#64) crepBody54_0

def crepBody54_2 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.xor
  [Flapjack.CrepExp.var 0,
    Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 1#64]]) crepBody54_1

def crepBody54_3 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody54_2

def crepBody54_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.primitive [6, 7] Flapjack.PrimOp.addCarry [8, 9, 10]

def crepBody54_5 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.var 5) crepBody54_4

def crepBody54_6 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.xor
  [Flapjack.CrepExp.var 1,
    Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 1#64]]) crepBody54_5

def crepBody54_7 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody54_6

def crepBody54_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.primitive [8, 9] Flapjack.PrimOp.addCarry [10, 11, 12]

def crepBody54_9 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.var 7) crepBody54_8

def crepBody54_10 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.op Flapjack.BinOp.xor
  [Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 1#64]]) crepBody54_9

def crepBody54_11 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody54_10

def crepBody54_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.primitive [10, 11] Flapjack.PrimOp.addCarry [12, 13, 14]

def crepBody54_13 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.var 9) crepBody54_12

def crepBody54_14 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.xor
  [Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 1#64]]) crepBody54_13

def crepBody54_15 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody54_14

def crepBody54_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 10]

def crepBody54_17 : CrepProg (BitVec 64) :=
.seq crepBody54_15 crepBody54_16

def crepBody54_18 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody54_17

def crepBody54_19 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody54_18

def crepBody54_20 : CrepProg (BitVec 64) :=
.seq crepBody54_11 crepBody54_19

def crepBody54_21 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody54_20

def crepBody54_22 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody54_21

def crepBody54_23 : CrepProg (BitVec 64) :=
.seq crepBody54_7 crepBody54_22

def crepBody54_24 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody54_23

def crepBody54_25 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody54_24

def crepBody54_26 : CrepProg (BitVec 64) :=
.seq crepBody54_3 crepBody54_25

def crepBody54_27 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody54_26

def crepBody54_28 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody54_27

def data54 : CrepProg (BitVec 64) := crepBody54_28
def output54 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 110#8, 101#8, 103#8], [0, 1, 2, 3], crepProgToHOL data54)
end InitECandidate.Proofs.FrontendStages.Crep
