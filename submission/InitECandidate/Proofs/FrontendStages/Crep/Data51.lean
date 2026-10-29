import InitECandidate.Proofs.FrontendStages.Crep.Translate35
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody51_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.primitive [8, 9] Flapjack.PrimOp.addCarry [10, 11, 12]

def crepBody51_1 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody51_0

def crepBody51_2 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 4) crepBody51_1

def crepBody51_3 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.var 0) crepBody51_2

def crepBody51_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.primitive [10, 11] Flapjack.PrimOp.addCarry [12, 13, 14]

def crepBody51_5 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.var 9) crepBody51_4

def crepBody51_6 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.var 5) crepBody51_5

def crepBody51_7 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.var 1) crepBody51_6

def crepBody51_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.primitive [12, 13] Flapjack.PrimOp.addCarry [14, 15, 16]

def crepBody51_9 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.var 11) crepBody51_8

def crepBody51_10 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.var 6) crepBody51_9

def crepBody51_11 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.var 2) crepBody51_10

def crepBody51_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.primitive [14, 15] Flapjack.PrimOp.addCarry [16, 17, 18]

def crepBody51_13 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.var 13) crepBody51_12

def crepBody51_14 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.var 7) crepBody51_13

def crepBody51_15 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.var 3) crepBody51_14

def crepBody51_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 14,
    Flapjack.CrepExp.var 15]

def crepBody51_17 : CrepProg (BitVec 64) :=
.seq crepBody51_15 crepBody51_16

def crepBody51_18 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody51_17

def crepBody51_19 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody51_18

def crepBody51_20 : CrepProg (BitVec 64) :=
.seq crepBody51_11 crepBody51_19

def crepBody51_21 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody51_20

def crepBody51_22 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody51_21

def crepBody51_23 : CrepProg (BitVec 64) :=
.seq crepBody51_7 crepBody51_22

def crepBody51_24 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody51_23

def crepBody51_25 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody51_24

def crepBody51_26 : CrepProg (BitVec 64) :=
.seq crepBody51_3 crepBody51_25

def crepBody51_27 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody51_26

def crepBody51_28 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody51_27

def data51 : CrepProg (BitVec 64) := crepBody51_28
def output51 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [117#8, 50#8, 53#8, 54#8, 95#8, 97#8, 100#8, 100#8, 95#8, 99#8, 97#8, 114#8, 114#8, 121#8], [0, 1, 2, 3, 4, 5, 6, 7], crepProgToHOL data51)
end InitECandidate.Proofs.FrontendStages.Crep
