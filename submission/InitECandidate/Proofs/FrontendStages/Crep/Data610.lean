import InitECandidate.Proofs.FrontendStages.Crep.Translate594
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody610_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8, 9, 10, 11], none)) "fq_neg"
  [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7]

def crepBody610_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.var 13)

def crepBody610_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 14)

def crepBody610_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 15)

def crepBody610_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 16)

def crepBody610_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody610_6 : CrepProg (BitVec 64) :=
.seq crepBody610_4 crepBody610_5

def crepBody610_7 : CrepProg (BitVec 64) :=
.seq crepBody610_3 crepBody610_6

def crepBody610_8 : CrepProg (BitVec 64) :=
.seq crepBody610_2 crepBody610_7

def crepBody610_9 : CrepProg (BitVec 64) :=
.seq crepBody610_1 crepBody610_8

def crepBody610_10 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.var 11) crepBody610_9

def crepBody610_11 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.var 10) crepBody610_10

def crepBody610_12 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.var 9) crepBody610_11

def crepBody610_13 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.var 8) crepBody610_12

def crepBody610_14 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 1,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 32#64]]) crepBody610_13

def crepBody610_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.var 12)

def crepBody610_16 : CrepProg (BitVec 64) :=
.seq crepBody610_15 crepBody610_5

def crepBody610_17 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 1#64]) crepBody610_16

def crepBody610_18 : CrepProg (BitVec 64) :=
.seq crepBody610_14 crepBody610_17

def crepBody610_19 : CrepProg (BitVec 64) :=
.seq crepBody610_0 crepBody610_18

def crepBody610_20 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody610_19

def crepBody610_21 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody610_20

def crepBody610_22 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody610_21

def crepBody610_23 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody610_22

def crepBody610_24 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 2,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 24#64])) crepBody610_23

def crepBody610_25 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 2,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 16#64])) crepBody610_24

def crepBody610_26 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 2,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 32#64]],
      Flapjack.CrepExp.const 8#64])) crepBody610_25

def crepBody610_27 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 2,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 32#64]])) crepBody610_26

def crepBody610_28 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 0)) crepBody610_27

def crepBody610_29 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody610_30 : CrepProg (BitVec 64) :=
.seq crepBody610_28 crepBody610_29

def crepBody610_31 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody610_30

def data610 : CrepProg (BitVec 64) := crepBody610_31
def output610 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 101#8, 95#8, 110#8, 101#8, 103#8], [0, 1, 2], crepProgToHOL data610)
end InitECandidate.Proofs.FrontendStages.Crep
