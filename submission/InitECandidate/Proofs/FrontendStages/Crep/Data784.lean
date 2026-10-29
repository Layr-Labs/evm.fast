import InitECandidate.Proofs.FrontendStages.Crep.Translate768
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody784_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 3)

def crepBody784_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody784_2 : CrepProg (BitVec 64) :=
.seq crepBody784_0 crepBody784_1

def crepBody784_3 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 60#64) crepBody784_2

def crepBody784_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 4#64

def crepBody784_5 : CrepProg (BitVec 64) :=
.seq crepBody784_3 crepBody784_4

def crepBody784_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 576#64)) crepBody784_5 crepBody784_1

def crepBody784_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "heap_mark" []

def crepBody784_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "is_zero_bytes" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 24#64]

def crepBody784_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "ld_be64"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 24#64]]

def crepBody784_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 4 (Flapjack.CrepExp.const 0#64)

def crepBody784_11 : CrepProg (BitVec 64) :=
.seq crepBody784_10 crepBody784_1

def crepBody784_12 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
  (Flapjack.CrepExp.op Flapjack.BinOp.or
    [Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 0#64),
      Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 160#64)])) crepBody784_11 crepBody784_1

def crepBody784_13 : CrepProg (BitVec 64) :=
.seq crepBody784_8 crepBody784_12

def crepBody784_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "is_zero_bytes"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64],
    Flapjack.CrepExp.const 24#64]

def crepBody784_15 : CrepProg (BitVec 64) :=
.seq crepBody784_13 crepBody784_14

def crepBody784_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "ld_be64"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 56#64]]

def crepBody784_17 : CrepProg (BitVec 64) :=
.seq crepBody784_15 crepBody784_16

def crepBody784_18 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
  (Flapjack.CrepExp.op Flapjack.BinOp.or
    [Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 0#64),
      Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 256#64)])) crepBody784_11 crepBody784_1

def crepBody784_19 : CrepProg (BitVec 64) :=
.seq crepBody784_17 crepBody784_18

def crepBody784_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "is_zero_bytes"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 64#64],
    Flapjack.CrepExp.const 24#64]

def crepBody784_21 : CrepProg (BitVec 64) :=
.seq crepBody784_19 crepBody784_20

def crepBody784_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "ld_be64"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 88#64]]

def crepBody784_23 : CrepProg (BitVec 64) :=
.seq crepBody784_21 crepBody784_22

def crepBody784_24 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
  (Flapjack.CrepExp.op Flapjack.BinOp.or
    [Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 0#64),
      Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 320#64)])) crepBody784_11 crepBody784_1

def crepBody784_25 : CrepProg (BitVec 64) :=
.seq crepBody784_23 crepBody784_24

def crepBody784_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "is_zero_bytes"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 96#64],
    Flapjack.CrepExp.const 24#64]

def crepBody784_27 : CrepProg (BitVec 64) :=
.seq crepBody784_25 crepBody784_26

def crepBody784_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "ld_be64"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 120#64]]

def crepBody784_29 : CrepProg (BitVec 64) :=
.seq crepBody784_27 crepBody784_28

def crepBody784_30 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
  (Flapjack.CrepExp.op Flapjack.BinOp.or
    [Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 0#64),
      Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 384#64)])) crepBody784_11 crepBody784_1

def crepBody784_31 : CrepProg (BitVec 64) :=
.seq crepBody784_29 crepBody784_30

def crepBody784_32 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "is_zero_bytes"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 128#64],
    Flapjack.CrepExp.const 24#64]

def crepBody784_33 : CrepProg (BitVec 64) :=
.seq crepBody784_31 crepBody784_32

def crepBody784_34 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "ld_be64"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 152#64]]

def crepBody784_35 : CrepProg (BitVec 64) :=
.seq crepBody784_33 crepBody784_34

def crepBody784_36 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
  (Flapjack.CrepExp.op Flapjack.BinOp.or
    [Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 0#64),
      Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 512#64)])) crepBody784_11 crepBody784_1

def crepBody784_37 : CrepProg (BitVec 64) :=
.seq crepBody784_35 crepBody784_36

def crepBody784_38 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "is_zero_bytes"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 160#64],
    Flapjack.CrepExp.const 24#64]

def crepBody784_39 : CrepProg (BitVec 64) :=
.seq crepBody784_37 crepBody784_38

def crepBody784_40 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "ld_be64"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 184#64]]

def crepBody784_41 : CrepProg (BitVec 64) :=
.seq crepBody784_39 crepBody784_40

def crepBody784_42 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
  (Flapjack.CrepExp.op Flapjack.BinOp.or
    [Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 0#64),
      Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 48#64)])) crepBody784_11 crepBody784_1

def crepBody784_43 : CrepProg (BitVec 64) :=
.seq crepBody784_41 crepBody784_42

def crepBody784_44 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "is_zero_bytes"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 256#64],
    Flapjack.CrepExp.const 24#64]

def crepBody784_45 : CrepProg (BitVec 64) :=
.seq crepBody784_43 crepBody784_44

def crepBody784_46 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "ld_be64"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 280#64]]

def crepBody784_47 : CrepProg (BitVec 64) :=
.seq crepBody784_45 crepBody784_46

def crepBody784_48 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
  (Flapjack.CrepExp.op Flapjack.BinOp.or
    [Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 0#64),
      Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 32#64)])) crepBody784_11 crepBody784_1

def crepBody784_49 : CrepProg (BitVec 64) :=
.seq crepBody784_47 crepBody784_48

def crepBody784_50 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "is_zero_bytes"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 320#64],
    Flapjack.CrepExp.const 24#64]

def crepBody784_51 : CrepProg (BitVec 64) :=
.seq crepBody784_49 crepBody784_50

def crepBody784_52 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "ld_be64"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 344#64]]

def crepBody784_53 : CrepProg (BitVec 64) :=
.seq crepBody784_51 crepBody784_52

def crepBody784_54 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
  (Flapjack.CrepExp.op Flapjack.BinOp.or
    [Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 0#64),
      Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 8#64)])) crepBody784_11 crepBody784_1

def crepBody784_55 : CrepProg (BitVec 64) :=
.seq crepBody784_53 crepBody784_54

def crepBody784_56 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "is_zero_bytes"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 384#64],
    Flapjack.CrepExp.const 24#64]

def crepBody784_57 : CrepProg (BitVec 64) :=
.seq crepBody784_55 crepBody784_56

def crepBody784_58 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "ld_be64"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 408#64]]

def crepBody784_59 : CrepProg (BitVec 64) :=
.seq crepBody784_57 crepBody784_58

def crepBody784_60 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
  (Flapjack.CrepExp.op Flapjack.BinOp.or
    [Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 0#64),
      Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 96#64)])) crepBody784_11 crepBody784_1

def crepBody784_61 : CrepProg (BitVec 64) :=
.seq crepBody784_59 crepBody784_60

def crepBody784_62 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "is_zero_bytes"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 512#64],
    Flapjack.CrepExp.const 24#64]

def crepBody784_63 : CrepProg (BitVec 64) :=
.seq crepBody784_61 crepBody784_62

def crepBody784_64 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "ld_be64"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 536#64]]

def crepBody784_65 : CrepProg (BitVec 64) :=
.seq crepBody784_63 crepBody784_64

def crepBody784_66 : CrepProg (BitVec 64) :=
.seq crepBody784_65 crepBody784_54

def crepBody784_67 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "heap_release" [Flapjack.CrepExp.var 3]

def crepBody784_68 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody784_67

def crepBody784_69 : CrepProg (BitVec 64) :=
.seq crepBody784_66 crepBody784_68

def crepBody784_70 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 8)

def crepBody784_71 : CrepProg (BitVec 64) :=
.seq crepBody784_70 crepBody784_1

def crepBody784_72 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 61#64) crepBody784_71

def crepBody784_73 : CrepProg (BitVec 64) :=
.seq crepBody784_72 crepBody784_4

def crepBody784_74 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 0#64)) crepBody784_73 crepBody784_1

def crepBody784_75 : CrepProg (BitVec 64) :=
.seq crepBody784_69 crepBody784_74

def crepBody784_76 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "memcpy"
  [Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 192#64],
    Flapjack.CrepExp.const 48#64]

def crepBody784_77 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody784_76

def crepBody784_78 : CrepProg (BitVec 64) :=
.seq crepBody784_75 crepBody784_77

def crepBody784_79 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "memcpy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 48#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 288#64],
    Flapjack.CrepExp.const 32#64]

def crepBody784_80 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody784_79

def crepBody784_81 : CrepProg (BitVec 64) :=
.seq crepBody784_78 crepBody784_80

def crepBody784_82 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "memcpy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 80#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 352#64],
    Flapjack.CrepExp.const 8#64]

def crepBody784_83 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody784_82

def crepBody784_84 : CrepProg (BitVec 64) :=
.seq crepBody784_81 crepBody784_83

def crepBody784_85 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "memcpy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 88#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 416#64],
    Flapjack.CrepExp.const 96#64]

def crepBody784_86 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody784_85

def crepBody784_87 : CrepProg (BitVec 64) :=
.seq crepBody784_84 crepBody784_86

def crepBody784_88 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "memcpy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 184#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 544#64],
    Flapjack.CrepExp.const 8#64]

def crepBody784_89 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody784_88

def crepBody784_90 : CrepProg (BitVec 64) :=
.seq crepBody784_87 crepBody784_89

def crepBody784_91 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody784_92 : CrepProg (BitVec 64) :=
.seq crepBody784_90 crepBody784_91

def crepBody784_93 : CrepProg (BitVec 64) :=
.seq crepBody784_9 crepBody784_92

def crepBody784_94 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody784_93

def crepBody784_95 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody784_94

def crepBody784_96 : CrepProg (BitVec 64) :=
.seq crepBody784_8 crepBody784_95

def crepBody784_97 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody784_96

def crepBody784_98 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 1#64) crepBody784_97

def crepBody784_99 : CrepProg (BitVec 64) :=
.seq crepBody784_7 crepBody784_98

def crepBody784_100 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody784_99

def crepBody784_101 : CrepProg (BitVec 64) :=
.seq crepBody784_6 crepBody784_100

def data784 : CrepProg (BitVec 64) := crepBody784_101
def output784 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [101#8, 120#8, 116#8, 114#8, 97#8, 99#8, 116#8, 95#8, 100#8, 101#8, 112#8, 111#8, 115#8, 105#8, 116#8, 95#8, 100#8,
    97#8, 116#8, 97#8], [0, 1, 2], crepProgToHOL data784)
end InitECandidate.Proofs.FrontendStages.Crep
