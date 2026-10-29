import InitECandidate.Proofs.FrontendStages.Crep.Translate146
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody162_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "ec_set_infinity" [Flapjack.CrepExp.var 0]

def crepBody162_1 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody162_0

def crepBody162_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "u256_bit_length"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]

def crepBody162_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 14 (Flapjack.CrepExp.var 15)

def crepBody162_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody162_5 : CrepProg (BitVec 64) :=
.seq crepBody162_3 crepBody162_4

def crepBody162_6 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 14, Flapjack.CrepExp.const 1#64]) crepBody162_5

def crepBody162_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "ec_double" [Flapjack.CrepExp.var 0]

def crepBody162_8 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody162_7

def crepBody162_9 : CrepProg (BitVec 64) :=
.seq crepBody162_6 crepBody162_8

def crepBody162_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "u256_bit"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.var 14]

def crepBody162_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "ec_add_affine"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7,
    Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11,
    Flapjack.CrepExp.var 12]

def crepBody162_12 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody162_11

def crepBody162_13 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 15) (Flapjack.CrepExp.const 1#64)) crepBody162_12 crepBody162_4

def crepBody162_14 : CrepProg (BitVec 64) :=
.seq crepBody162_10 crepBody162_13

def crepBody162_15 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody162_14

def crepBody162_16 : CrepProg (BitVec 64) :=
.seq crepBody162_9 crepBody162_15

def crepBody162_17 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 0#64) (Flapjack.CrepExp.var 14)) crepBody162_16

def crepBody162_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody162_19 : CrepProg (BitVec 64) :=
.seq crepBody162_17 crepBody162_18

def crepBody162_20 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.var 13) crepBody162_19

def crepBody162_21 : CrepProg (BitVec 64) :=
.seq crepBody162_2 crepBody162_20

def crepBody162_22 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody162_21

def crepBody162_23 : CrepProg (BitVec 64) :=
.seq crepBody162_1 crepBody162_22

def data162 : CrepProg (BitVec 64) := crepBody162_23
def output162 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [101#8, 99#8, 95#8, 109#8, 117#8, 108#8], [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], crepProgToHOL data162)
end InitECandidate.Proofs.FrontendStages.Crep
