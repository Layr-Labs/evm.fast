import InitECandidate.Proofs.FrontendStages.Crep.Translate235
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody251_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 8 (Flapjack.CrepExp.const 0#64)

def crepBody251_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody251_2 : CrepProg (BitVec 64) :=
.seq crepBody251_0 crepBody251_1

def crepBody251_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "node_new_leaf"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3],
    Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3], Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.var 5]

def crepBody251_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "mpt_fail" [Flapjack.CrepExp.const 2#64]

def crepBody251_5 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody251_4

def crepBody251_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.const 0#64)) crepBody251_5 crepBody251_1

def crepBody251_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "node_invalidate" [Flapjack.CrepExp.var 0]

def crepBody251_8 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody251_7

def crepBody251_9 : CrepProg (BitVec 64) :=
.seq crepBody251_6 crepBody251_8

def crepBody251_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "_insert_into_leaf"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3],
    Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3], Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.var 5]

def crepBody251_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "common_prefix_length"
  [Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3],
    Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3]]

def crepBody251_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 9 (Flapjack.CrepExp.var 0)

def crepBody251_13 : CrepProg (BitVec 64) :=
.seq crepBody251_12 crepBody251_1

def crepBody251_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 10
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 48#64]))

def crepBody251_15 : CrepProg (BitVec 64) :=
.seq crepBody251_14 crepBody251_1

def crepBody251_16 : CrepProg (BitVec 64) :=
.seq crepBody251_13 crepBody251_15

def crepBody251_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 11
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 48#64])

def crepBody251_18 : CrepProg (BitVec 64) :=
.seq crepBody251_17 crepBody251_1

def crepBody251_19 : CrepProg (BitVec 64) :=
.seq crepBody251_16 crepBody251_18

def crepBody251_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 12 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 16])

def crepBody251_21 : CrepProg (BitVec 64) :=
.seq crepBody251_20 crepBody251_1

def crepBody251_22 : CrepProg (BitVec 64) :=
.seq crepBody251_19 crepBody251_21

def crepBody251_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 8 (Flapjack.CrepExp.const 1#64)

def crepBody251_24 : CrepProg (BitVec 64) :=
.seq crepBody251_23 crepBody251_1

def crepBody251_25 : CrepProg (BitVec 64) :=
.seq crepBody251_22 crepBody251_24

def crepBody251_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([17], none)) "_split_extension"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3],
    Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3], Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 16]

def crepBody251_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "node_new_ext"
  [Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17]

def crepBody251_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 9 (Flapjack.CrepExp.var 17)

def crepBody251_29 : CrepProg (BitVec 64) :=
.seq crepBody251_28 crepBody251_1

def crepBody251_30 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 0#64) (Flapjack.CrepExp.var 16)) crepBody251_27 crepBody251_29

def crepBody251_31 : CrepProg (BitVec 64) :=
.seq crepBody251_26 crepBody251_30

def crepBody251_32 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody251_31

def crepBody251_33 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 16) (Flapjack.CrepExp.var 15)) crepBody251_25 crepBody251_32

def crepBody251_34 : CrepProg (BitVec 64) :=
.seq crepBody251_11 crepBody251_33

def crepBody251_35 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody251_34

def crepBody251_36 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 40#64])) crepBody251_35

def crepBody251_37 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64])) crepBody251_36

def crepBody251_38 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 14) (Flapjack.CrepExp.var 15)

def crepBody251_39 : CrepProg (BitVec 64) :=
.seq crepBody251_38 crepBody251_1

def crepBody251_40 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.var 4) crepBody251_39

def crepBody251_41 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 160#64]) crepBody251_40

def crepBody251_42 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.var 5) crepBody251_39

def crepBody251_43 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 168#64]) crepBody251_42

def crepBody251_44 : CrepProg (BitVec 64) :=
.seq crepBody251_41 crepBody251_43

def crepBody251_45 : CrepProg (BitVec 64) :=
.seq crepBody251_44 crepBody251_13

def crepBody251_46 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 10
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 14, Flapjack.CrepExp.const 8#64]]))

def crepBody251_47 : CrepProg (BitVec 64) :=
.seq crepBody251_46 crepBody251_1

def crepBody251_48 : CrepProg (BitVec 64) :=
.seq crepBody251_13 crepBody251_47

def crepBody251_49 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 11
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 14, Flapjack.CrepExp.const 8#64]])

def crepBody251_50 : CrepProg (BitVec 64) :=
.seq crepBody251_49 crepBody251_1

def crepBody251_51 : CrepProg (BitVec 64) :=
.seq crepBody251_48 crepBody251_50

def crepBody251_52 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 12
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 1#64])

def crepBody251_53 : CrepProg (BitVec 64) :=
.seq crepBody251_52 crepBody251_1

def crepBody251_54 : CrepProg (BitVec 64) :=
.seq crepBody251_51 crepBody251_53

def crepBody251_55 : CrepProg (BitVec 64) :=
.seq crepBody251_54 crepBody251_24

def crepBody251_56 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.loadByte (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3])) crepBody251_55

def crepBody251_57 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 2)) crepBody251_45 crepBody251_56

def crepBody251_58 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.const 2#64)) crepBody251_37 crepBody251_57

def crepBody251_59 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.const 1#64)) crepBody251_10 crepBody251_58

def crepBody251_60 : CrepProg (BitVec 64) :=
.seq crepBody251_9 crepBody251_59

def crepBody251_61 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64])) crepBody251_60

def crepBody251_62 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 0#64)) crepBody251_3 crepBody251_61

def crepBody251_63 : CrepProg (BitVec 64) :=
.seq crepBody251_2 crepBody251_62

def crepBody251_64 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 6 (Flapjack.CrepExp.var 9)

def crepBody251_65 : CrepProg (BitVec 64) :=
.seq crepBody251_64 crepBody251_1

def crepBody251_66 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.var 14)

def crepBody251_67 : CrepProg (BitVec 64) :=
.seq crepBody251_66 crepBody251_1

def crepBody251_68 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.var 9) crepBody251_67

def crepBody251_69 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.var 7) crepBody251_68

def crepBody251_70 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 0#64)) crepBody251_65 crepBody251_69

def crepBody251_71 : CrepProg (BitVec 64) :=
.seq crepBody251_63 crepBody251_70

def crepBody251_72 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 0 (Flapjack.CrepExp.var 10)

def crepBody251_73 : CrepProg (BitVec 64) :=
.seq crepBody251_72 crepBody251_1

def crepBody251_74 : CrepProg (BitVec 64) :=
.seq crepBody251_71 crepBody251_73

def crepBody251_75 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7 (Flapjack.CrepExp.var 11)

def crepBody251_76 : CrepProg (BitVec 64) :=
.seq crepBody251_75 crepBody251_1

def crepBody251_77 : CrepProg (BitVec 64) :=
.seq crepBody251_74 crepBody251_76

def crepBody251_78 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.var 12)

def crepBody251_79 : CrepProg (BitVec 64) :=
.seq crepBody251_78 crepBody251_1

def crepBody251_80 : CrepProg (BitVec 64) :=
.seq crepBody251_77 crepBody251_79

def crepBody251_81 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody251_80

def crepBody251_82 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody251_81

def crepBody251_83 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody251_82

def crepBody251_84 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody251_83

def crepBody251_85 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.const 0#64)) crepBody251_84

def crepBody251_86 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 6]

def crepBody251_87 : CrepProg (BitVec 64) :=
.seq crepBody251_85 crepBody251_86

def crepBody251_88 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 1#64) crepBody251_87

def crepBody251_89 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody251_88

def crepBody251_90 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody251_89

def data251 : CrepProg (BitVec 64) := crepBody251_90
def output251 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [95#8, 109#8, 112#8, 116#8, 95#8, 105#8, 110#8, 115#8, 101#8, 114#8, 116#8, 95#8, 110#8, 111#8, 100#8, 101#8], [0, 1, 2, 3, 4, 5], crepProgToHOL data251)
end InitECandidate.Proofs.FrontendStages.Crep
