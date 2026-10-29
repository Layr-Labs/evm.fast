import InitECandidate.Proofs.FrontendStages.Crep.Translate612
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody628_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "fe_set_one" [Flapjack.CrepExp.const 12#64, Flapjack.CrepExp.var 0]

def crepBody628_1 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody628_0

def crepBody628_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 5 (Flapjack.CrepExp.var 6)

def crepBody628_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody628_4 : CrepProg (BitVec 64) :=
.seq crepBody628_2 crepBody628_3

def crepBody628_5 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 1#64]) crepBody628_4

def crepBody628_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "fq12_sqr" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 0]

def crepBody628_7 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody628_6

def crepBody628_8 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 1#64)) crepBody628_7 crepBody628_3

def crepBody628_9 : CrepProg (BitVec 64) :=
.seq crepBody628_5 crepBody628_8

def crepBody628_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "fq12_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody628_11 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody628_10

def crepBody628_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 4 (Flapjack.CrepExp.const 1#64)

def crepBody628_13 : CrepProg (BitVec 64) :=
.seq crepBody628_12 crepBody628_3

def crepBody628_14 : CrepProg (BitVec 64) :=
.seq crepBody628_11 crepBody628_13

def crepBody628_15 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 1#64)) crepBody628_14 crepBody628_3

def crepBody628_16 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.shift Flapjack.Shift.lsr
      (Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.add
          [Flapjack.CrepExp.var 2,
            Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
              [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 6#64),
                Flapjack.CrepExp.const 8#64]]))
      (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 63#64]),
    Flapjack.CrepExp.const 1#64]) crepBody628_15

def crepBody628_17 : CrepProg (BitVec 64) :=
.seq crepBody628_9 crepBody628_16

def crepBody628_18 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 0#64) (Flapjack.CrepExp.var 5)) crepBody628_17

def crepBody628_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody628_20 : CrepProg (BitVec 64) :=
.seq crepBody628_18 crepBody628_19

def crepBody628_21 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 64#64]) crepBody628_20

def crepBody628_22 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody628_21

def crepBody628_23 : CrepProg (BitVec 64) :=
.seq crepBody628_1 crepBody628_22

def data628 : CrepProg (BitVec 64) := crepBody628_23
def output628 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [102#8, 113#8, 49#8, 50#8, 95#8, 112#8, 111#8, 119#8, 95#8, 119#8, 111#8, 114#8, 100#8, 115#8], [0, 1, 2, 3], crepProgToHOL data628)
end InitECandidate.Proofs.FrontendStages.Crep
