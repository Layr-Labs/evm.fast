import InitECandidate.Proofs.FrontendStages.Crep.Translate595
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody611_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9, 10, 11, 12], none)) "fq_mul_small"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8,
    Flapjack.CrepExp.var 3]

def crepBody611_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.var 14)

def crepBody611_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 15)

def crepBody611_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 16)

def crepBody611_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 17)

def crepBody611_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody611_6 : CrepProg (BitVec 64) :=
.seq crepBody611_4 crepBody611_5

def crepBody611_7 : CrepProg (BitVec 64) :=
.seq crepBody611_3 crepBody611_6

def crepBody611_8 : CrepProg (BitVec 64) :=
.seq crepBody611_2 crepBody611_7

def crepBody611_9 : CrepProg (BitVec 64) :=
.seq crepBody611_1 crepBody611_8

def crepBody611_10 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.var 12) crepBody611_9

def crepBody611_11 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.var 11) crepBody611_10

def crepBody611_12 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.var 10) crepBody611_11

def crepBody611_13 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.var 9) crepBody611_12

def crepBody611_14 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 1,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 32#64]]) crepBody611_13

def crepBody611_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 4 (Flapjack.CrepExp.var 13)

def crepBody611_16 : CrepProg (BitVec 64) :=
.seq crepBody611_15 crepBody611_5

def crepBody611_17 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 1#64]) crepBody611_16

def crepBody611_18 : CrepProg (BitVec 64) :=
.seq crepBody611_14 crepBody611_17

def crepBody611_19 : CrepProg (BitVec 64) :=
.seq crepBody611_0 crepBody611_18

def crepBody611_20 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody611_19

def crepBody611_21 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody611_20

def crepBody611_22 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody611_21

def crepBody611_23 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody611_22

def crepBody611_24 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 2,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 24#64])) crepBody611_23

def crepBody611_25 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 2,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 16#64])) crepBody611_24

def crepBody611_26 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 2,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 8#64])) crepBody611_25

def crepBody611_27 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 2,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 32#64]])) crepBody611_26

def crepBody611_28 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.var 0)) crepBody611_27

def crepBody611_29 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody611_30 : CrepProg (BitVec 64) :=
.seq crepBody611_28 crepBody611_29

def crepBody611_31 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody611_30

def data611 : CrepProg (BitVec 64) := crepBody611_31
def output611 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [102#8, 101#8, 95#8, 109#8, 117#8, 108#8, 95#8, 115#8, 109#8, 97#8, 108#8, 108#8], [0, 1, 2, 3], crepProgToHOL data611)
end InitECandidate.Proofs.FrontendStages.Crep
