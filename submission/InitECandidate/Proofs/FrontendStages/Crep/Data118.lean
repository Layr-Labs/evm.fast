import InitECandidate.Proofs.FrontendStages.Crep.Translate102
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody118_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "alloc" [Flapjack.CrepExp.const 88#64]

def crepBody118_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 4 (Flapjack.CrepExp.const 2#64)

def crepBody118_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody118_3 : CrepProg (BitVec 64) :=
.seq crepBody118_1 crepBody118_2

def crepBody118_4 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 2#64)) crepBody118_3 crepBody118_2

def crepBody118_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.var 6)

def crepBody118_6 : CrepProg (BitVec 64) :=
.seq crepBody118_5 crepBody118_2

def crepBody118_7 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.var 0) crepBody118_6

def crepBody118_8 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 0#64]) crepBody118_7

def crepBody118_9 : CrepProg (BitVec 64) :=
.seq crepBody118_4 crepBody118_8

def crepBody118_10 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.var 3) crepBody118_6

def crepBody118_11 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 8#64]) crepBody118_10

def crepBody118_12 : CrepProg (BitVec 64) :=
.seq crepBody118_9 crepBody118_11

def crepBody118_13 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.var 1) crepBody118_6

def crepBody118_14 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 16#64]) crepBody118_13

def crepBody118_15 : CrepProg (BitVec 64) :=
.seq crepBody118_12 crepBody118_14

def crepBody118_16 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody118_6

def crepBody118_17 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 24#64]) crepBody118_16

def crepBody118_18 : CrepProg (BitVec 64) :=
.seq crepBody118_15 crepBody118_17

def crepBody118_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "alloc"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 1#64],
        Flapjack.CrepExp.var 3]]

def crepBody118_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.var 7)

def crepBody118_21 : CrepProg (BitVec 64) :=
.seq crepBody118_20 crepBody118_2

def crepBody118_22 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.var 5) crepBody118_21

def crepBody118_23 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 32#64]) crepBody118_22

def crepBody118_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "alloc"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 1#64],
        Flapjack.CrepExp.const 32#64]]

def crepBody118_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.var 8)

def crepBody118_26 : CrepProg (BitVec 64) :=
.seq crepBody118_25 crepBody118_2

def crepBody118_27 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.var 6) crepBody118_26

def crepBody118_28 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 40#64]) crepBody118_27

def crepBody118_29 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "alloc"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 1#64],
        Flapjack.CrepExp.const 8#64]]

def crepBody118_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.var 9)

def crepBody118_31 : CrepProg (BitVec 64) :=
.seq crepBody118_30 crepBody118_2

def crepBody118_32 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.var 7) crepBody118_31

def crepBody118_33 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 48#64]) crepBody118_32

def crepBody118_34 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody118_31

def crepBody118_35 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 56#64]) crepBody118_34

def crepBody118_36 : CrepProg (BitVec 64) :=
.seq crepBody118_33 crepBody118_35

def crepBody118_37 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 1#64) crepBody118_31

def crepBody118_38 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 64#64]) crepBody118_37

def crepBody118_39 : CrepProg (BitVec 64) :=
.seq crepBody118_36 crepBody118_38

def crepBody118_40 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 72#64]) crepBody118_34

def crepBody118_41 : CrepProg (BitVec 64) :=
.seq crepBody118_39 crepBody118_40

def crepBody118_42 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.var 4) crepBody118_31

def crepBody118_43 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 80#64]) crepBody118_42

def crepBody118_44 : CrepProg (BitVec 64) :=
.seq crepBody118_41 crepBody118_43

def crepBody118_45 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 2]

def crepBody118_46 : CrepProg (BitVec 64) :=
.seq crepBody118_44 crepBody118_45

def crepBody118_47 : CrepProg (BitVec 64) :=
.seq crepBody118_29 crepBody118_46

def crepBody118_48 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody118_47

def crepBody118_49 : CrepProg (BitVec 64) :=
.seq crepBody118_28 crepBody118_48

def crepBody118_50 : CrepProg (BitVec 64) :=
.seq crepBody118_24 crepBody118_49

def crepBody118_51 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody118_50

def crepBody118_52 : CrepProg (BitVec 64) :=
.seq crepBody118_23 crepBody118_51

def crepBody118_53 : CrepProg (BitVec 64) :=
.seq crepBody118_19 crepBody118_52

def crepBody118_54 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody118_53

def crepBody118_55 : CrepProg (BitVec 64) :=
.seq crepBody118_18 crepBody118_54

def crepBody118_56 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.var 1) crepBody118_55

def crepBody118_57 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 7#64],
    Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 8#64]]) crepBody118_56

def crepBody118_58 : CrepProg (BitVec 64) :=
.seq crepBody118_0 crepBody118_57

def crepBody118_59 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody118_58

def data118 : CrepProg (BitVec 64) := crepBody118_59
def output118 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [104#8, 116#8, 97#8, 98#8, 95#8, 110#8, 101#8, 119#8], [0, 1], crepProgToHOL data118)
end InitECandidate.Proofs.FrontendStages.Crep
