import InitECandidate.Proofs.FrontendStages.Crep.Translate103
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody119_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "scratch_alloc" [Flapjack.CrepExp.const 88#64]

def crepBody119_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 4 (Flapjack.CrepExp.const 2#64)

def crepBody119_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody119_3 : CrepProg (BitVec 64) :=
.seq crepBody119_1 crepBody119_2

def crepBody119_4 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 2#64)) crepBody119_3 crepBody119_2

def crepBody119_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.var 6)

def crepBody119_6 : CrepProg (BitVec 64) :=
.seq crepBody119_5 crepBody119_2

def crepBody119_7 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.var 0) crepBody119_6

def crepBody119_8 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 0#64]) crepBody119_7

def crepBody119_9 : CrepProg (BitVec 64) :=
.seq crepBody119_4 crepBody119_8

def crepBody119_10 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.var 3) crepBody119_6

def crepBody119_11 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 8#64]) crepBody119_10

def crepBody119_12 : CrepProg (BitVec 64) :=
.seq crepBody119_9 crepBody119_11

def crepBody119_13 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.var 1) crepBody119_6

def crepBody119_14 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 16#64]) crepBody119_13

def crepBody119_15 : CrepProg (BitVec 64) :=
.seq crepBody119_12 crepBody119_14

def crepBody119_16 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody119_6

def crepBody119_17 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 24#64]) crepBody119_16

def crepBody119_18 : CrepProg (BitVec 64) :=
.seq crepBody119_15 crepBody119_17

def crepBody119_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "scratch_alloc"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 1#64],
        Flapjack.CrepExp.var 3]]

def crepBody119_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.var 7)

def crepBody119_21 : CrepProg (BitVec 64) :=
.seq crepBody119_20 crepBody119_2

def crepBody119_22 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.var 5) crepBody119_21

def crepBody119_23 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 32#64]) crepBody119_22

def crepBody119_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "scratch_alloc"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 1#64],
        Flapjack.CrepExp.const 32#64]]

def crepBody119_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.var 8)

def crepBody119_26 : CrepProg (BitVec 64) :=
.seq crepBody119_25 crepBody119_2

def crepBody119_27 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.var 6) crepBody119_26

def crepBody119_28 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 40#64]) crepBody119_27

def crepBody119_29 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "scratch_alloc"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 1#64],
        Flapjack.CrepExp.const 8#64]]

def crepBody119_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.var 9)

def crepBody119_31 : CrepProg (BitVec 64) :=
.seq crepBody119_30 crepBody119_2

def crepBody119_32 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.var 7) crepBody119_31

def crepBody119_33 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 48#64]) crepBody119_32

def crepBody119_34 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody119_31

def crepBody119_35 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 56#64]) crepBody119_34

def crepBody119_36 : CrepProg (BitVec 64) :=
.seq crepBody119_33 crepBody119_35

def crepBody119_37 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 1#64) crepBody119_31

def crepBody119_38 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 64#64]) crepBody119_37

def crepBody119_39 : CrepProg (BitVec 64) :=
.seq crepBody119_36 crepBody119_38

def crepBody119_40 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 72#64]) crepBody119_34

def crepBody119_41 : CrepProg (BitVec 64) :=
.seq crepBody119_39 crepBody119_40

def crepBody119_42 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.var 4) crepBody119_31

def crepBody119_43 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 80#64]) crepBody119_42

def crepBody119_44 : CrepProg (BitVec 64) :=
.seq crepBody119_41 crepBody119_43

def crepBody119_45 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 2]

def crepBody119_46 : CrepProg (BitVec 64) :=
.seq crepBody119_44 crepBody119_45

def crepBody119_47 : CrepProg (BitVec 64) :=
.seq crepBody119_29 crepBody119_46

def crepBody119_48 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody119_47

def crepBody119_49 : CrepProg (BitVec 64) :=
.seq crepBody119_28 crepBody119_48

def crepBody119_50 : CrepProg (BitVec 64) :=
.seq crepBody119_24 crepBody119_49

def crepBody119_51 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody119_50

def crepBody119_52 : CrepProg (BitVec 64) :=
.seq crepBody119_23 crepBody119_51

def crepBody119_53 : CrepProg (BitVec 64) :=
.seq crepBody119_19 crepBody119_52

def crepBody119_54 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody119_53

def crepBody119_55 : CrepProg (BitVec 64) :=
.seq crepBody119_18 crepBody119_54

def crepBody119_56 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.var 1) crepBody119_55

def crepBody119_57 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 7#64],
    Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 8#64]]) crepBody119_56

def crepBody119_58 : CrepProg (BitVec 64) :=
.seq crepBody119_0 crepBody119_57

def crepBody119_59 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody119_58

def data119 : CrepProg (BitVec 64) := crepBody119_59
def output119 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [104#8, 116#8, 97#8, 98#8, 95#8, 110#8, 101#8, 119#8, 95#8, 115#8, 99#8, 114#8, 97#8, 116#8, 99#8, 104#8], [0, 1], crepProgToHOL data119)
end InitECandidate.Proofs.FrontendStages.Crep
