import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody15_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody15_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody15_2 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.load (Flapjack.CrepExp.var 0))
  (Flapjack.CrepExp.load (Flapjack.CrepExp.var 1))) crepBody15_0 crepBody15_1

def crepBody15_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64]))
  (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 8#64]))) crepBody15_0 crepBody15_1

def crepBody15_4 : CrepProg (BitVec 64) :=
.seq crepBody15_2 crepBody15_3

def crepBody15_5 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.loadByte
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 16#64]))
  (Flapjack.CrepExp.loadByte
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 16#64]))) crepBody15_0 crepBody15_1

def crepBody15_6 : CrepProg (BitVec 64) :=
.seq crepBody15_4 crepBody15_5

def crepBody15_7 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.loadByte
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 17#64]))
  (Flapjack.CrepExp.loadByte
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 17#64]))) crepBody15_0 crepBody15_1

def crepBody15_8 : CrepProg (BitVec 64) :=
.seq crepBody15_6 crepBody15_7

def crepBody15_9 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.loadByte
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 18#64]))
  (Flapjack.CrepExp.loadByte
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 18#64]))) crepBody15_0 crepBody15_1

def crepBody15_10 : CrepProg (BitVec 64) :=
.seq crepBody15_8 crepBody15_9

def crepBody15_11 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.loadByte
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 19#64]))
  (Flapjack.CrepExp.loadByte
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 19#64]))) crepBody15_0 crepBody15_1

def crepBody15_12 : CrepProg (BitVec 64) :=
.seq crepBody15_10 crepBody15_11

def crepBody15_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64]

def crepBody15_14 : CrepProg (BitVec 64) :=
.seq crepBody15_12 crepBody15_13

def crepBody15_15 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 20#64)) crepBody15_14 crepBody15_1

def crepBody15_16 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 16#64]))
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 16#64]))) crepBody15_0 crepBody15_1

def crepBody15_17 : CrepProg (BitVec 64) :=
.seq crepBody15_4 crepBody15_16

def crepBody15_18 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 24#64]))
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 24#64]))) crepBody15_0 crepBody15_1

def crepBody15_19 : CrepProg (BitVec 64) :=
.seq crepBody15_17 crepBody15_18

def crepBody15_20 : CrepProg (BitVec 64) :=
.seq crepBody15_19 crepBody15_13

def crepBody15_21 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 32#64)) crepBody15_20 crepBody15_1

def crepBody15_22 : CrepProg (BitVec 64) :=
.seq crepBody15_15 crepBody15_21

def crepBody15_23 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64]))
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64]))) crepBody15_0 crepBody15_1

def crepBody15_24 : CrepProg (BitVec 64) :=
.seq crepBody15_19 crepBody15_23

def crepBody15_25 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 40#64]))
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 40#64]))) crepBody15_0 crepBody15_1

def crepBody15_26 : CrepProg (BitVec 64) :=
.seq crepBody15_24 crepBody15_25

def crepBody15_27 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.loadByte
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 48#64]))
  (Flapjack.CrepExp.loadByte
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 48#64]))) crepBody15_0 crepBody15_1

def crepBody15_28 : CrepProg (BitVec 64) :=
.seq crepBody15_26 crepBody15_27

def crepBody15_29 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.loadByte
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 49#64]))
  (Flapjack.CrepExp.loadByte
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 49#64]))) crepBody15_0 crepBody15_1

def crepBody15_30 : CrepProg (BitVec 64) :=
.seq crepBody15_28 crepBody15_29

def crepBody15_31 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.loadByte
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 50#64]))
  (Flapjack.CrepExp.loadByte
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 50#64]))) crepBody15_0 crepBody15_1

def crepBody15_32 : CrepProg (BitVec 64) :=
.seq crepBody15_30 crepBody15_31

def crepBody15_33 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.loadByte
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 51#64]))
  (Flapjack.CrepExp.loadByte
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 51#64]))) crepBody15_0 crepBody15_1

def crepBody15_34 : CrepProg (BitVec 64) :=
.seq crepBody15_32 crepBody15_33

def crepBody15_35 : CrepProg (BitVec 64) :=
.seq crepBody15_34 crepBody15_13

def crepBody15_36 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 52#64)) crepBody15_35 crepBody15_1

def crepBody15_37 : CrepProg (BitVec 64) :=
.seq crepBody15_22 crepBody15_36

def crepBody15_38 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3]))
  (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3]))) crepBody15_0 crepBody15_1

def crepBody15_39 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 8#64]))
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 8#64]))) crepBody15_0 crepBody15_1

def crepBody15_40 : CrepProg (BitVec 64) :=
.seq crepBody15_38 crepBody15_39

def crepBody15_41 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 16#64]))
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 16#64]))) crepBody15_0 crepBody15_1

def crepBody15_42 : CrepProg (BitVec 64) :=
.seq crepBody15_40 crepBody15_41

def crepBody15_43 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 24#64]))
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 24#64]))) crepBody15_0 crepBody15_1

def crepBody15_44 : CrepProg (BitVec 64) :=
.seq crepBody15_42 crepBody15_43

def crepBody15_45 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.var 4)

def crepBody15_46 : CrepProg (BitVec 64) :=
.seq crepBody15_45 crepBody15_1

def crepBody15_47 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 32#64]) crepBody15_46

def crepBody15_48 : CrepProg (BitVec 64) :=
.seq crepBody15_44 crepBody15_47

def crepBody15_49 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.var 2)
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 32#64])) crepBody15_48

def crepBody15_50 : CrepProg (BitVec 64) :=
.seq crepBody15_37 crepBody15_49

def crepBody15_51 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 8#64]) crepBody15_46

def crepBody15_52 : CrepProg (BitVec 64) :=
.seq crepBody15_38 crepBody15_51

def crepBody15_53 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.var 2)
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 8#64])) crepBody15_52

def crepBody15_54 : CrepProg (BitVec 64) :=
.seq crepBody15_50 crepBody15_53

def crepBody15_55 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.op Flapjack.BinOp.and
    [Flapjack.CrepExp.op Flapjack.BinOp.or [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1],
      Flapjack.CrepExp.const 7#64])
  (Flapjack.CrepExp.const 0#64)) crepBody15_54 crepBody15_1

def crepBody15_56 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.loadByte (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3]))
  (Flapjack.CrepExp.loadByte (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3]))) crepBody15_0 crepBody15_1

def crepBody15_57 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.loadByte
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 1#64]))
  (Flapjack.CrepExp.loadByte
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 1#64]))) crepBody15_0 crepBody15_1

def crepBody15_58 : CrepProg (BitVec 64) :=
.seq crepBody15_56 crepBody15_57

def crepBody15_59 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.loadByte
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 2#64]))
  (Flapjack.CrepExp.loadByte
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 2#64]))) crepBody15_0 crepBody15_1

def crepBody15_60 : CrepProg (BitVec 64) :=
.seq crepBody15_58 crepBody15_59

def crepBody15_61 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.loadByte
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 3#64]))
  (Flapjack.CrepExp.loadByte
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 3#64]))) crepBody15_0 crepBody15_1

def crepBody15_62 : CrepProg (BitVec 64) :=
.seq crepBody15_60 crepBody15_61

def crepBody15_63 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.loadByte
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 4#64]))
  (Flapjack.CrepExp.loadByte
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 4#64]))) crepBody15_0 crepBody15_1

def crepBody15_64 : CrepProg (BitVec 64) :=
.seq crepBody15_62 crepBody15_63

def crepBody15_65 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.loadByte
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 5#64]))
  (Flapjack.CrepExp.loadByte
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 5#64]))) crepBody15_0 crepBody15_1

def crepBody15_66 : CrepProg (BitVec 64) :=
.seq crepBody15_64 crepBody15_65

def crepBody15_67 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.loadByte
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 6#64]))
  (Flapjack.CrepExp.loadByte
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 6#64]))) crepBody15_0 crepBody15_1

def crepBody15_68 : CrepProg (BitVec 64) :=
.seq crepBody15_66 crepBody15_67

def crepBody15_69 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.loadByte
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 7#64]))
  (Flapjack.CrepExp.loadByte
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 7#64]))) crepBody15_0 crepBody15_1

def crepBody15_70 : CrepProg (BitVec 64) :=
.seq crepBody15_68 crepBody15_69

def crepBody15_71 : CrepProg (BitVec 64) :=
.seq crepBody15_70 crepBody15_51

def crepBody15_72 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.var 2)
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 8#64])) crepBody15_71

def crepBody15_73 : CrepProg (BitVec 64) :=
.seq crepBody15_55 crepBody15_72

def crepBody15_74 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 1#64]) crepBody15_46

def crepBody15_75 : CrepProg (BitVec 64) :=
.seq crepBody15_56 crepBody15_74

def crepBody15_76 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 2)) crepBody15_75

def crepBody15_77 : CrepProg (BitVec 64) :=
.seq crepBody15_73 crepBody15_76

def crepBody15_78 : CrepProg (BitVec 64) :=
.seq crepBody15_77 crepBody15_13

def crepBody15_79 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody15_78

def data15 : CrepProg (BitVec 64) := crepBody15_79
def output15 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [109#8, 101#8, 109#8, 101#8, 113#8], [0, 1, 2], crepProgToHOL data15)
end InitECandidate.Proofs.FrontendStages.Crep
