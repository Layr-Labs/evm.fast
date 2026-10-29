import InitECandidate.Proofs.FrontendStages.Crep.Translate590
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody606_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12, 13, 14, 15], none)) "fq_mul"
  [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7,
    Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11]

def crepBody606_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 16) (Flapjack.CrepExp.var 17)

def crepBody606_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 16, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 18)

def crepBody606_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 16, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 19)

def crepBody606_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 16, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 20)

def crepBody606_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody606_6 : CrepProg (BitVec 64) :=
.seq crepBody606_4 crepBody606_5

def crepBody606_7 : CrepProg (BitVec 64) :=
.seq crepBody606_3 crepBody606_6

def crepBody606_8 : CrepProg (BitVec 64) :=
.seq crepBody606_2 crepBody606_7

def crepBody606_9 : CrepProg (BitVec 64) :=
.seq crepBody606_1 crepBody606_8

def crepBody606_10 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.var 15) crepBody606_9

def crepBody606_11 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.var 14) crepBody606_10

def crepBody606_12 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.var 13) crepBody606_11

def crepBody606_13 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.var 12) crepBody606_12

def crepBody606_14 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.var 1) crepBody606_13

def crepBody606_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody606_16 : CrepProg (BitVec 64) :=
.seq crepBody606_14 crepBody606_15

def crepBody606_17 : CrepProg (BitVec 64) :=
.seq crepBody606_0 crepBody606_16

def crepBody606_18 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody606_17

def crepBody606_19 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody606_18

def crepBody606_20 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody606_19

def crepBody606_21 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody606_20

def crepBody606_22 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 24#64])) crepBody606_21

def crepBody606_23 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 16#64])) crepBody606_22

def crepBody606_24 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 8#64])) crepBody606_23

def crepBody606_25 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.load (Flapjack.CrepExp.var 3)) crepBody606_24

def crepBody606_26 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 24#64])) crepBody606_25

def crepBody606_27 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 16#64])) crepBody606_26

def crepBody606_28 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 8#64])) crepBody606_27

def crepBody606_29 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load (Flapjack.CrepExp.var 2)) crepBody606_28

def crepBody606_30 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 1#64)) crepBody606_29 crepBody606_5

def crepBody606_31 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "fq2_mul"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3]

def crepBody606_32 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody606_31

def crepBody606_33 : CrepProg (BitVec 64) :=
.seq crepBody606_32 crepBody606_15

def crepBody606_34 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 2#64)) crepBody606_33 crepBody606_5

def crepBody606_35 : CrepProg (BitVec 64) :=
.seq crepBody606_30 crepBody606_34

def crepBody606_36 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "fq12_mul"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3]

def crepBody606_37 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody606_36

def crepBody606_38 : CrepProg (BitVec 64) :=
.seq crepBody606_35 crepBody606_37

def crepBody606_39 : CrepProg (BitVec 64) :=
.seq crepBody606_38 crepBody606_15

def data606 : CrepProg (BitVec 64) := crepBody606_39
def output606 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 101#8, 95#8, 109#8, 117#8, 108#8], [0, 1, 2, 3], crepProgToHOL data606)
end InitECandidate.Proofs.FrontendStages.Crep
