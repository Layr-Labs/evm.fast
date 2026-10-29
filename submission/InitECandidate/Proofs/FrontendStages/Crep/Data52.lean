import InitECandidate.Proofs.FrontendStages.Crep.Translate36
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody52_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.primitive [8, 9] Flapjack.PrimOp.addCarry [10, 11, 12]

def crepBody52_1 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody52_0

def crepBody52_2 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 4) crepBody52_1

def crepBody52_3 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.var 0) crepBody52_2

def crepBody52_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.primitive [10, 11] Flapjack.PrimOp.addCarry [12, 13, 14]

def crepBody52_5 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.var 9) crepBody52_4

def crepBody52_6 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.var 5) crepBody52_5

def crepBody52_7 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.var 1) crepBody52_6

def crepBody52_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.primitive [12, 13] Flapjack.PrimOp.addCarry [14, 15, 16]

def crepBody52_9 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.var 11) crepBody52_8

def crepBody52_10 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.var 6) crepBody52_9

def crepBody52_11 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.var 2) crepBody52_10

def crepBody52_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.primitive [14, 15] Flapjack.PrimOp.addCarry [16, 17, 18]

def crepBody52_13 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.var 13) crepBody52_12

def crepBody52_14 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.var 7) crepBody52_13

def crepBody52_15 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.var 3) crepBody52_14

def crepBody52_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 14]

def crepBody52_17 : CrepProg (BitVec 64) :=
.seq crepBody52_15 crepBody52_16

def crepBody52_18 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody52_17

def crepBody52_19 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody52_18

def crepBody52_20 : CrepProg (BitVec 64) :=
.seq crepBody52_11 crepBody52_19

def crepBody52_21 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody52_20

def crepBody52_22 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody52_21

def crepBody52_23 : CrepProg (BitVec 64) :=
.seq crepBody52_7 crepBody52_22

def crepBody52_24 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody52_23

def crepBody52_25 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody52_24

def crepBody52_26 : CrepProg (BitVec 64) :=
.seq crepBody52_3 crepBody52_25

def crepBody52_27 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody52_26

def crepBody52_28 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody52_27

def data52 : CrepProg (BitVec 64) := crepBody52_28
def output52 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 97#8, 100#8, 100#8], [0, 1, 2, 3, 4, 5, 6, 7], crepProgToHOL data52)
end InitECandidate.Proofs.FrontendStages.Crep
