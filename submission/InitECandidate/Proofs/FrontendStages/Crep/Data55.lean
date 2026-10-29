import InitECandidate.Proofs.FrontendStages.Crep.Translate39
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody55_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.primitive [8, 9] Flapjack.PrimOp.addCarry [10, 11, 12]

def crepBody55_1 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody55_0

def crepBody55_2 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]) crepBody55_1

def crepBody55_3 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 5]) crepBody55_2

def crepBody55_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.primitive [10, 11] Flapjack.PrimOp.addCarry [12, 13, 14]

def crepBody55_5 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody55_4

def crepBody55_6 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.const 32#64)) crepBody55_5

def crepBody55_7 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.var 6) crepBody55_6

def crepBody55_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 12]

def crepBody55_9 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 7,
    Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.const 32#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.const 32#64),
    Flapjack.CrepExp.var 11]) crepBody55_8

def crepBody55_10 : CrepProg (BitVec 64) :=
.seq crepBody55_7 crepBody55_9

def crepBody55_11 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody55_10

def crepBody55_12 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody55_11

def crepBody55_13 : CrepProg (BitVec 64) :=
.seq crepBody55_3 crepBody55_12

def crepBody55_14 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody55_13

def crepBody55_15 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody55_14

def crepBody55_16 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 5]) crepBody55_15

def crepBody55_17 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 4]) crepBody55_16

def crepBody55_18 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 32#64)) crepBody55_17

def crepBody55_19 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 4294967295#64]) crepBody55_18

def crepBody55_20 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 32#64)) crepBody55_19

def crepBody55_21 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 4294967295#64]) crepBody55_20

def data55 : CrepProg (BitVec 64) := crepBody55_21
def output55 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [109#8, 117#8, 108#8, 54#8, 52#8, 120#8, 54#8, 52#8], [0, 1], crepProgToHOL data55)
end InitECandidate.Proofs.FrontendStages.Crep
