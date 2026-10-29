import InitECandidate.Proofs.FrontendStages.Crep.Translate137
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody153_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 13 (Flapjack.CrepExp.var 14)

def crepBody153_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody153_2 : CrepProg (BitVec 64) :=
.seq crepBody153_0 crepBody153_1

def crepBody153_3 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 1#64]) crepBody153_2

def crepBody153_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8, 9, 10, 11], none)) "fn_mul"
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11,
    Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11]

def crepBody153_5 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.const 1#64)) crepBody153_4 crepBody153_1

def crepBody153_6 : CrepProg (BitVec 64) :=
.seq crepBody153_3 crepBody153_5

def crepBody153_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "u256_bit"
  [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7,
    Flapjack.CrepExp.var 13]

def crepBody153_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8, 9, 10, 11], none)) "fn_mul"
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11,
    Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3]

def crepBody153_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 12 (Flapjack.CrepExp.const 1#64)

def crepBody153_10 : CrepProg (BitVec 64) :=
.seq crepBody153_9 crepBody153_1

def crepBody153_11 : CrepProg (BitVec 64) :=
.seq crepBody153_8 crepBody153_10

def crepBody153_12 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 14) (Flapjack.CrepExp.const 1#64)) crepBody153_11 crepBody153_1

def crepBody153_13 : CrepProg (BitVec 64) :=
.seq crepBody153_7 crepBody153_12

def crepBody153_14 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody153_13

def crepBody153_15 : CrepProg (BitVec 64) :=
.seq crepBody153_6 crepBody153_14

def crepBody153_16 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 0#64) (Flapjack.CrepExp.var 13)) crepBody153_15

def crepBody153_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11]

def crepBody153_18 : CrepProg (BitVec 64) :=
.seq crepBody153_16 crepBody153_17

def crepBody153_19 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 256#64) crepBody153_18

def crepBody153_20 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody153_19

def crepBody153_21 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody153_20

def crepBody153_22 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody153_21

def crepBody153_23 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody153_22

def crepBody153_24 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 1#64) crepBody153_23

def data153 : CrepProg (BitVec 64) := crepBody153_24
def output153 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 110#8, 95#8, 112#8, 111#8, 119#8], [0, 1, 2, 3, 4, 5, 6, 7], crepProgToHOL data153)
end InitECandidate.Proofs.FrontendStages.Crep
