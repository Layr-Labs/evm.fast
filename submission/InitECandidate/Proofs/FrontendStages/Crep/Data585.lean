import InitECandidate.Proofs.FrontendStages.Crep.Translate569
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody585_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.var 10)

def crepBody585_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 11)

def crepBody585_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 12)

def crepBody585_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 13)

def crepBody585_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody585_5 : CrepProg (BitVec 64) :=
.seq crepBody585_3 crepBody585_4

def crepBody585_6 : CrepProg (BitVec 64) :=
.seq crepBody585_2 crepBody585_5

def crepBody585_7 : CrepProg (BitVec 64) :=
.seq crepBody585_1 crepBody585_6

def crepBody585_8 : CrepProg (BitVec 64) :=
.seq crepBody585_0 crepBody585_7

def crepBody585_9 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.var 4) crepBody585_8

def crepBody585_10 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.var 3) crepBody585_9

def crepBody585_11 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 2) crepBody585_10

def crepBody585_12 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.var 1) crepBody585_11

def crepBody585_13 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.var 0) crepBody585_12

def crepBody585_14 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.var 8) crepBody585_8

def crepBody585_15 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.var 7) crepBody585_14

def crepBody585_16 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 6) crepBody585_15

def crepBody585_17 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.var 5) crepBody585_16

def crepBody585_18 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64]) crepBody585_17

def crepBody585_19 : CrepProg (BitVec 64) :=
.seq crepBody585_13 crepBody585_18

def crepBody585_20 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody585_8

def crepBody585_21 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody585_20

def crepBody585_22 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody585_21

def crepBody585_23 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 1#64) crepBody585_22

def crepBody585_24 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 64#64]) crepBody585_23

def crepBody585_25 : CrepProg (BitVec 64) :=
.seq crepBody585_19 crepBody585_24

def crepBody585_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody585_27 : CrepProg (BitVec 64) :=
.seq crepBody585_25 crepBody585_26

def data585 : CrepProg (BitVec 64) := crepBody585_27
def output585 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [112#8, 50#8, 53#8, 54#8, 95#8, 115#8, 101#8, 116#8, 95#8, 97#8, 102#8, 102#8, 105#8, 110#8, 101#8], [0, 1, 2, 3, 4, 5, 6, 7, 8], crepProgToHOL data585)
end InitECandidate.Proofs.FrontendStages.Crep
