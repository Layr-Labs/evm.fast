import InitECandidate.Proofs.FrontendStages.Crep.Translate60
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody76_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "u256_bit_length"
  [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7]

def crepBody76_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18], none)) "u256_bit"
  [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7,
    Flapjack.CrepExp.var 17]

def crepBody76_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8, 9, 10, 11], none)) "u256_mul"
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11,
    Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15]

def crepBody76_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody76_4 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 1#64)) crepBody76_2 crepBody76_3

def crepBody76_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 17 (Flapjack.CrepExp.var 19)

def crepBody76_6 : CrepProg (BitVec 64) :=
.seq crepBody76_5 crepBody76_3

def crepBody76_7 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 17, Flapjack.CrepExp.const 1#64]) crepBody76_6

def crepBody76_8 : CrepProg (BitVec 64) :=
.seq crepBody76_4 crepBody76_7

def crepBody76_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12, 13, 14, 15], none)) "u256_mul"
  [Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15,
    Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15]

def crepBody76_10 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 17) (Flapjack.CrepExp.var 16)) crepBody76_9 crepBody76_3

def crepBody76_11 : CrepProg (BitVec 64) :=
.seq crepBody76_8 crepBody76_10

def crepBody76_12 : CrepProg (BitVec 64) :=
.seq crepBody76_1 crepBody76_11

def crepBody76_13 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody76_12

def crepBody76_14 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 17) (Flapjack.CrepExp.var 16)) crepBody76_13

def crepBody76_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11]

def crepBody76_16 : CrepProg (BitVec 64) :=
.seq crepBody76_14 crepBody76_15

def crepBody76_17 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody76_16

def crepBody76_18 : CrepProg (BitVec 64) :=
.seq crepBody76_0 crepBody76_17

def crepBody76_19 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody76_18

def crepBody76_20 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.var 3) crepBody76_19

def crepBody76_21 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.var 2) crepBody76_20

def crepBody76_22 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.var 1) crepBody76_21

def crepBody76_23 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.var 0) crepBody76_22

def crepBody76_24 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody76_23

def crepBody76_25 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody76_24

def crepBody76_26 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody76_25

def crepBody76_27 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 1#64) crepBody76_26

def data76 : CrepProg (BitVec 64) := crepBody76_27
def output76 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 101#8, 120#8, 112#8], [0, 1, 2, 3, 4, 5, 6, 7], crepProgToHOL data76)
end InitECandidate.Proofs.FrontendStages.Crep
