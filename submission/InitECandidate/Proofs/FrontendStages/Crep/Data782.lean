import InitECandidate.Proofs.FrontendStages.Crep.Translate766
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody782_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "alloc"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 5#64, Flapjack.CrepExp.const 16#64]]

def crepBody782_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 6 (Flapjack.CrepExp.const 76#64)

def crepBody782_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody782_3 : CrepProg (BitVec 64) :=
.seq crepBody782_1 crepBody782_2

def crepBody782_4 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 1#64)) crepBody782_3 crepBody782_2

def crepBody782_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 6 (Flapjack.CrepExp.const 116#64)

def crepBody782_6 : CrepProg (BitVec 64) :=
.seq crepBody782_5 crepBody782_2

def crepBody782_7 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 2#64)) crepBody782_6 crepBody782_2

def crepBody782_8 : CrepProg (BitVec 64) :=
.seq crepBody782_4 crepBody782_7

def crepBody782_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 6 (Flapjack.CrepExp.const 184#64)

def crepBody782_10 : CrepProg (BitVec 64) :=
.seq crepBody782_9 crepBody782_2

def crepBody782_11 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 3#64)) crepBody782_10 crepBody782_2

def crepBody782_12 : CrepProg (BitVec 64) :=
.seq crepBody782_8 crepBody782_11

def crepBody782_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 6 (Flapjack.CrepExp.const 68#64)

def crepBody782_14 : CrepProg (BitVec 64) :=
.seq crepBody782_13 crepBody782_2

def crepBody782_15 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 4#64)) crepBody782_14 crepBody782_2

def crepBody782_16 : CrepProg (BitVec 64) :=
.seq crepBody782_12 crepBody782_15

def crepBody782_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "alloc"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6],
        Flapjack.CrepExp.const 8#64]]

def crepBody782_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.var 3)

def crepBody782_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "memcpy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 1#64], Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6]]

def crepBody782_20 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody782_19

def crepBody782_21 : CrepProg (BitVec 64) :=
.seq crepBody782_18 crepBody782_20

def crepBody782_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.var 9)

def crepBody782_23 : CrepProg (BitVec 64) :=
.seq crepBody782_22 crepBody782_2

def crepBody782_24 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.var 7) crepBody782_23

def crepBody782_25 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 1,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 16#64]]) crepBody782_24

def crepBody782_26 : CrepProg (BitVec 64) :=
.seq crepBody782_21 crepBody782_25

def crepBody782_27 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6],
    Flapjack.CrepExp.const 1#64]) crepBody782_23

def crepBody782_28 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 1,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 16#64],
    Flapjack.CrepExp.const 8#64]) crepBody782_27

def crepBody782_29 : CrepProg (BitVec 64) :=
.seq crepBody782_26 crepBody782_28

def crepBody782_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 2 (Flapjack.CrepExp.var 8)

def crepBody782_31 : CrepProg (BitVec 64) :=
.seq crepBody782_30 crepBody782_2

def crepBody782_32 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 1#64]) crepBody782_31

def crepBody782_33 : CrepProg (BitVec 64) :=
.seq crepBody782_29 crepBody782_32

def crepBody782_34 : CrepProg (BitVec 64) :=
.seq crepBody782_17 crepBody782_33

def crepBody782_35 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody782_34

def crepBody782_36 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 0#64)) crepBody782_35 crepBody782_2

def crepBody782_37 : CrepProg (BitVec 64) :=
.seq crepBody782_16 crepBody782_36

def crepBody782_38 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.var 7)

def crepBody782_39 : CrepProg (BitVec 64) :=
.seq crepBody782_38 crepBody782_2

def crepBody782_40 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 1#64]) crepBody782_39

def crepBody782_41 : CrepProg (BitVec 64) :=
.seq crepBody782_37 crepBody782_40

def crepBody782_42 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 192#64) crepBody782_41

def crepBody782_43 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 16#64]])) crepBody782_42

def crepBody782_44 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 16#64]])) crepBody782_43

def crepBody782_45 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 5#64)) crepBody782_44

def crepBody782_46 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2]

def crepBody782_47 : CrepProg (BitVec 64) :=
.seq crepBody782_45 crepBody782_46

def crepBody782_48 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody782_47

def crepBody782_49 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody782_48

def crepBody782_50 : CrepProg (BitVec 64) :=
.seq crepBody782_0 crepBody782_49

def crepBody782_51 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody782_50

def data782 : CrepProg (BitVec 64) := crepBody782_51
def output782 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [101#8, 110#8, 99#8, 111#8, 100#8, 101#8, 95#8, 101#8, 120#8, 101#8, 99#8, 117#8, 116#8, 105#8, 111#8, 110#8, 95#8,
    114#8, 101#8, 113#8, 117#8, 101#8, 115#8, 116#8, 115#8], [0], crepProgToHOL data782)
end InitECandidate.Proofs.FrontendStages.Crep
