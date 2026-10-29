import InitECandidate.Proofs.FrontendStages.Crep.Translate128
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody144_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 13 (Flapjack.CrepExp.var 14)

def crepBody144_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody144_2 : CrepProg (BitVec 64) :=
.seq crepBody144_0 crepBody144_1

def crepBody144_3 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 1#64]) crepBody144_2

def crepBody144_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8, 9, 10, 11], none)) "fp_sqr"
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11]

def crepBody144_5 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.const 1#64)) crepBody144_4 crepBody144_1

def crepBody144_6 : CrepProg (BitVec 64) :=
.seq crepBody144_3 crepBody144_5

def crepBody144_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "u256_bit"
  [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7,
    Flapjack.CrepExp.var 13]

def crepBody144_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8, 9, 10, 11], none)) "fp_mul"
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11,
    Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3]

def crepBody144_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 12 (Flapjack.CrepExp.const 1#64)

def crepBody144_10 : CrepProg (BitVec 64) :=
.seq crepBody144_9 crepBody144_1

def crepBody144_11 : CrepProg (BitVec 64) :=
.seq crepBody144_8 crepBody144_10

def crepBody144_12 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 14) (Flapjack.CrepExp.const 1#64)) crepBody144_11 crepBody144_1

def crepBody144_13 : CrepProg (BitVec 64) :=
.seq crepBody144_7 crepBody144_12

def crepBody144_14 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody144_13

def crepBody144_15 : CrepProg (BitVec 64) :=
.seq crepBody144_6 crepBody144_14

def crepBody144_16 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 0#64) (Flapjack.CrepExp.var 13)) crepBody144_15

def crepBody144_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11]

def crepBody144_18 : CrepProg (BitVec 64) :=
.seq crepBody144_16 crepBody144_17

def crepBody144_19 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 256#64) crepBody144_18

def crepBody144_20 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody144_19

def crepBody144_21 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody144_20

def crepBody144_22 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody144_21

def crepBody144_23 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody144_22

def crepBody144_24 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 1#64) crepBody144_23

def data144 : CrepProg (BitVec 64) := crepBody144_24
def output144 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 95#8, 112#8, 111#8, 119#8], [0, 1, 2, 3, 4, 5, 6, 7], crepProgToHOL data144)
end InitECandidate.Proofs.FrontendStages.Crep
