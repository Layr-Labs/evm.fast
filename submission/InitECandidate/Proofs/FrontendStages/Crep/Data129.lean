import InitECandidate.Proofs.FrontendStages.Crep.Translate113
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody129_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "htab_find_leaf" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody129_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody129_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody129_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 0#64)) crepBody129_1 crepBody129_2

def crepBody129_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "memeq"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 5,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 3]],
    Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2]

def crepBody129_5 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 0#64)) crepBody129_1 crepBody129_2

def crepBody129_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.var 13)

def crepBody129_7 : CrepProg (BitVec 64) :=
.seq crepBody129_6 crepBody129_2

def crepBody129_8 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.var 11) crepBody129_7

def crepBody129_9 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 10,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 8#64]]) crepBody129_8

def crepBody129_10 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.var 8) crepBody129_7

def crepBody129_11 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 7,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 32#64],
    Flapjack.CrepExp.const 16#64]) crepBody129_10

def crepBody129_12 : CrepProg (BitVec 64) :=
.seq crepBody129_9 crepBody129_11

def crepBody129_13 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 10,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 8#64]])) crepBody129_12

def crepBody129_14 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 48#64])) crepBody129_13

def crepBody129_15 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.var 9)) crepBody129_14 crepBody129_2

def crepBody129_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.var 11)

def crepBody129_17 : CrepProg (BitVec 64) :=
.seq crepBody129_16 crepBody129_2

def crepBody129_18 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 9) crepBody129_17

def crepBody129_19 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 24#64]) crepBody129_18

def crepBody129_20 : CrepProg (BitVec 64) :=
.seq crepBody129_15 crepBody129_19

def crepBody129_21 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody129_17

def crepBody129_22 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 56#64]) crepBody129_21

def crepBody129_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 12
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 7,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 32#64],
        Flapjack.CrepExp.const 16#64]))

def crepBody129_24 : CrepProg (BitVec 64) :=
.seq crepBody129_23 crepBody129_2

def crepBody129_25 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.var 4)) crepBody129_24 crepBody129_2

def crepBody129_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.var 14)

def crepBody129_27 : CrepProg (BitVec 64) :=
.seq crepBody129_26 crepBody129_2

def crepBody129_28 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.var 11) crepBody129_27

def crepBody129_29 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 7,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 32#64],
    Flapjack.CrepExp.const 0#64]) crepBody129_28

def crepBody129_30 : CrepProg (BitVec 64) :=
.seq crepBody129_25 crepBody129_29

def crepBody129_31 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.var 12) crepBody129_27

def crepBody129_32 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 56#64]) crepBody129_31

def crepBody129_33 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 7,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 32#64],
    Flapjack.CrepExp.const 8#64]) crepBody129_31

def crepBody129_34 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 7,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 32#64],
    Flapjack.CrepExp.const 16#64]) crepBody129_31

def crepBody129_35 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 7,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 32#64],
        Flapjack.CrepExp.const 8#64]))
  (Flapjack.CrepExp.var 10)) crepBody129_33 crepBody129_34

def crepBody129_36 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.const 0#64)) crepBody129_32 crepBody129_35

def crepBody129_37 : CrepProg (BitVec 64) :=
.seq crepBody129_30 crepBody129_36

def crepBody129_38 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 72#64])) crepBody129_27

def crepBody129_39 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 7,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 32#64],
    Flapjack.CrepExp.const 0#64]) crepBody129_38

def crepBody129_40 : CrepProg (BitVec 64) :=
.seq crepBody129_37 crepBody129_39

def crepBody129_41 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.var 10) crepBody129_27

def crepBody129_42 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 72#64]) crepBody129_41

def crepBody129_43 : CrepProg (BitVec 64) :=
.seq crepBody129_40 crepBody129_42

def crepBody129_44 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 7,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 32#64],
      Flapjack.CrepExp.const 8#64])) crepBody129_43

def crepBody129_45 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 7,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 32#64],
      Flapjack.CrepExp.const 0#64])) crepBody129_44

def crepBody129_46 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 7,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 32#64],
      Flapjack.CrepExp.const 0#64])) crepBody129_45

def crepBody129_47 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 4)
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 56#64]))) crepBody129_22 crepBody129_46

def crepBody129_48 : CrepProg (BitVec 64) :=
.seq crepBody129_20 crepBody129_47

def crepBody129_49 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 72#64])) crepBody129_17

def crepBody129_50 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 7,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 32#64],
    Flapjack.CrepExp.const 0#64]) crepBody129_49

def crepBody129_51 : CrepProg (BitVec 64) :=
.seq crepBody129_48 crepBody129_50

def crepBody129_52 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 4) crepBody129_17

def crepBody129_53 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 72#64]) crepBody129_52

def crepBody129_54 : CrepProg (BitVec 64) :=
.seq crepBody129_51 crepBody129_53

def crepBody129_55 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64]

def crepBody129_56 : CrepProg (BitVec 64) :=
.seq crepBody129_54 crepBody129_55

def crepBody129_57 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.sub
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 24#64]),
    Flapjack.CrepExp.const 1#64]) crepBody129_56

def crepBody129_58 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 7,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 32#64],
      Flapjack.CrepExp.const 16#64])) crepBody129_57

def crepBody129_59 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 40#64])) crepBody129_58

def crepBody129_60 : CrepProg (BitVec 64) :=
.seq crepBody129_5 crepBody129_59

def crepBody129_61 : CrepProg (BitVec 64) :=
.seq crepBody129_4 crepBody129_60

def crepBody129_62 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody129_61

def crepBody129_63 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64])) crepBody129_62

def crepBody129_64 : CrepProg (BitVec 64) :=
.seq crepBody129_3 crepBody129_63

def crepBody129_65 : CrepProg (BitVec 64) :=
.seq crepBody129_0 crepBody129_64

def crepBody129_66 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody129_65

def crepBody129_67 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64])) crepBody129_66

def crepBody129_68 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64])) crepBody129_67

def data129 : CrepProg (BitVec 64) := crepBody129_68
def output129 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [104#8, 116#8, 97#8, 98#8, 95#8, 100#8, 101#8, 108#8], [0, 1], crepProgToHOL data129)
end InitECandidate.Proofs.FrontendStages.Crep
