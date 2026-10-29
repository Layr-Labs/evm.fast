import InitECandidate.Proofs.FrontendStages.Crep.Translate141
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody157_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.var 10)

def crepBody157_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 11)

def crepBody157_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 12)

def crepBody157_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 13)

def crepBody157_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody157_5 : CrepProg (BitVec 64) :=
.seq crepBody157_3 crepBody157_4

def crepBody157_6 : CrepProg (BitVec 64) :=
.seq crepBody157_2 crepBody157_5

def crepBody157_7 : CrepProg (BitVec 64) :=
.seq crepBody157_1 crepBody157_6

def crepBody157_8 : CrepProg (BitVec 64) :=
.seq crepBody157_0 crepBody157_7

def crepBody157_9 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.var 4) crepBody157_8

def crepBody157_10 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.var 3) crepBody157_9

def crepBody157_11 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 2) crepBody157_10

def crepBody157_12 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.var 1) crepBody157_11

def crepBody157_13 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.var 0) crepBody157_12

def crepBody157_14 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.var 8) crepBody157_8

def crepBody157_15 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.var 7) crepBody157_14

def crepBody157_16 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 6) crepBody157_15

def crepBody157_17 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.var 5) crepBody157_16

def crepBody157_18 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64]) crepBody157_17

def crepBody157_19 : CrepProg (BitVec 64) :=
.seq crepBody157_13 crepBody157_18

def crepBody157_20 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody157_8

def crepBody157_21 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody157_20

def crepBody157_22 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody157_21

def crepBody157_23 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 1#64) crepBody157_22

def crepBody157_24 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 64#64]) crepBody157_23

def crepBody157_25 : CrepProg (BitVec 64) :=
.seq crepBody157_19 crepBody157_24

def crepBody157_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody157_27 : CrepProg (BitVec 64) :=
.seq crepBody157_25 crepBody157_26

def data157 : CrepProg (BitVec 64) := crepBody157_27
def output157 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [101#8, 99#8, 95#8, 115#8, 101#8, 116#8, 95#8, 97#8, 102#8, 102#8, 105#8, 110#8, 101#8], [0, 1, 2, 3, 4, 5, 6, 7, 8], crepProgToHOL data157)
end InitECandidate.Proofs.FrontendStages.Crep
