import InitECandidate.Proofs.FrontendStages.Crep.Translate265
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody281_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 2)

def crepBody281_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody281_2 : CrepProg (BitVec 64) :=
.seq crepBody281_0 crepBody281_1

def crepBody281_3 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 1#64) crepBody281_2

def crepBody281_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 6#64

def crepBody281_5 : CrepProg (BitVec 64) :=
.seq crepBody281_3 crepBody281_4

def crepBody281_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 0#64)) crepBody281_5 crepBody281_1

def crepBody281_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "alloc" [Flapjack.CrepExp.const 400#64]

def crepBody281_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "memzero" [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 400#64]

def crepBody281_9 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody281_8

def crepBody281_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.var 5)

def crepBody281_11 : CrepProg (BitVec 64) :=
.seq crepBody281_10 crepBody281_1

def crepBody281_12 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.var 0) crepBody281_11

def crepBody281_13 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 384#64]) crepBody281_12

def crepBody281_14 : CrepProg (BitVec 64) :=
.seq crepBody281_9 crepBody281_13

def crepBody281_15 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.var 1) crepBody281_11

def crepBody281_16 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 392#64]) crepBody281_15

def crepBody281_17 : CrepProg (BitVec 64) :=
.seq crepBody281_14 crepBody281_16

def crepBody281_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4, 5, 6, 7], none)) "rlp_decode_fully"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 1#64],
    Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 1#64]]

def crepBody281_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 8 (Flapjack.CrepExp.var 2)

def crepBody281_20 : CrepProg (BitVec 64) :=
.seq crepBody281_19 crepBody281_1

def crepBody281_21 : CrepProg (BitVec 64) :=
.seq crepBody281_18 crepBody281_20

def crepBody281_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 9 (Flapjack.CrepExp.const 11#64)

def crepBody281_23 : CrepProg (BitVec 64) :=
.seq crepBody281_22 crepBody281_1

def crepBody281_24 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.const 1#64)) crepBody281_23 crepBody281_1

def crepBody281_25 : CrepProg (BitVec 64) :=
.seq crepBody281_21 crepBody281_24

def crepBody281_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 9 (Flapjack.CrepExp.const 12#64)

def crepBody281_27 : CrepProg (BitVec 64) :=
.seq crepBody281_26 crepBody281_1

def crepBody281_28 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.const 2#64)) crepBody281_27 crepBody281_1

def crepBody281_29 : CrepProg (BitVec 64) :=
.seq crepBody281_25 crepBody281_28

def crepBody281_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 9 (Flapjack.CrepExp.const 14#64)

def crepBody281_31 : CrepProg (BitVec 64) :=
.seq crepBody281_30 crepBody281_1

def crepBody281_32 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.const 3#64)) crepBody281_31 crepBody281_1

def crepBody281_33 : CrepProg (BitVec 64) :=
.seq crepBody281_29 crepBody281_32

def crepBody281_34 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 9 (Flapjack.CrepExp.const 13#64)

def crepBody281_35 : CrepProg (BitVec 64) :=
.seq crepBody281_34 crepBody281_1

def crepBody281_36 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.const 4#64)) crepBody281_35 crepBody281_1

def crepBody281_37 : CrepProg (BitVec 64) :=
.seq crepBody281_33 crepBody281_36

def crepBody281_38 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4, 5, 6, 7], none)) "rlp_decode_fully" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody281_39 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 10)

def crepBody281_40 : CrepProg (BitVec 64) :=
.seq crepBody281_39 crepBody281_1

def crepBody281_41 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 2#64) crepBody281_40

def crepBody281_42 : CrepProg (BitVec 64) :=
.seq crepBody281_41 crepBody281_4

def crepBody281_43 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 192#64)),
    Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.const 254#64) (Flapjack.CrepExp.var 2))]) crepBody281_38 crepBody281_42

def crepBody281_44 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 1#64)),
    Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.const 4#64) (Flapjack.CrepExp.var 2))]) crepBody281_37 crepBody281_43

def crepBody281_45 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.var 11)

def crepBody281_46 : CrepProg (BitVec 64) :=
.seq crepBody281_45 crepBody281_1

def crepBody281_47 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 8) crepBody281_46

def crepBody281_48 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 0#64]) crepBody281_47

def crepBody281_49 : CrepProg (BitVec 64) :=
.seq crepBody281_44 crepBody281_48

def crepBody281_50 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 3#64) crepBody281_40

def crepBody281_51 : CrepProg (BitVec 64) :=
.seq crepBody281_50 crepBody281_4

def crepBody281_52 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 1#64)) crepBody281_51 crepBody281_1

def crepBody281_53 : CrepProg (BitVec 64) :=
.seq crepBody281_49 crepBody281_52

def crepBody281_54 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10, 11], none)) "rlp_list_to_slices" [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6]

def crepBody281_55 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 13)

def crepBody281_56 : CrepProg (BitVec 64) :=
.seq crepBody281_55 crepBody281_1

def crepBody281_57 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 4#64) crepBody281_56

def crepBody281_58 : CrepProg (BitVec 64) :=
.seq crepBody281_57 crepBody281_4

def crepBody281_59 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.var 9)) crepBody281_58 crepBody281_1

def crepBody281_60 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "tx_scalar_word"
  [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 8#64, Flapjack.CrepExp.const 12#64]

def crepBody281_61 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 15) (Flapjack.CrepExp.var 16)

def crepBody281_62 : CrepProg (BitVec 64) :=
.seq crepBody281_61 crepBody281_1

def crepBody281_63 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.var 14) crepBody281_62

def crepBody281_64 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 8#64]) crepBody281_63

def crepBody281_65 : CrepProg (BitVec 64) :=
.seq crepBody281_60 crepBody281_64

def crepBody281_66 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 13 (Flapjack.CrepExp.const 1#64)

def crepBody281_67 : CrepProg (BitVec 64) :=
.seq crepBody281_66 crepBody281_1

def crepBody281_68 : CrepProg (BitVec 64) :=
.seq crepBody281_65 crepBody281_67

def crepBody281_69 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.const 0#64)) crepBody281_68 crepBody281_1

def crepBody281_70 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "tx_scalar_word"
  [Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 8#64, Flapjack.CrepExp.const 12#64]

def crepBody281_71 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 15 (Flapjack.CrepExp.var 14)

def crepBody281_72 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 16 (Flapjack.CrepExp.const 0#64)

def crepBody281_73 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 17 (Flapjack.CrepExp.const 0#64)

def crepBody281_74 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 18 (Flapjack.CrepExp.const 0#64)

def crepBody281_75 : CrepProg (BitVec 64) :=
.seq crepBody281_74 crepBody281_1

def crepBody281_76 : CrepProg (BitVec 64) :=
.seq crepBody281_73 crepBody281_75

def crepBody281_77 : CrepProg (BitVec 64) :=
.seq crepBody281_72 crepBody281_76

def crepBody281_78 : CrepProg (BitVec 64) :=
.seq crepBody281_71 crepBody281_77

def crepBody281_79 : CrepProg (BitVec 64) :=
.seq crepBody281_70 crepBody281_78

def crepBody281_80 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15, 16, 17, 18], none)) "tx_scalar_u256"
  [Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 32#64]

def crepBody281_81 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.const 4#64)) crepBody281_79 crepBody281_80

def crepBody281_82 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.var 20)

def crepBody281_83 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 19, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 21)

def crepBody281_84 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 19, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 22)

def crepBody281_85 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 19, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 23)

def crepBody281_86 : CrepProg (BitVec 64) :=
.seq crepBody281_85 crepBody281_1

def crepBody281_87 : CrepProg (BitVec 64) :=
.seq crepBody281_84 crepBody281_86

def crepBody281_88 : CrepProg (BitVec 64) :=
.seq crepBody281_83 crepBody281_87

def crepBody281_89 : CrepProg (BitVec 64) :=
.seq crepBody281_82 crepBody281_88

def crepBody281_90 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.var 18) crepBody281_89

def crepBody281_91 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.var 17) crepBody281_90

def crepBody281_92 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.var 16) crepBody281_91

def crepBody281_93 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.var 15) crepBody281_92

def crepBody281_94 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 16#64]) crepBody281_93

def crepBody281_95 : CrepProg (BitVec 64) :=
.seq crepBody281_81 crepBody281_94

def crepBody281_96 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 13 (Flapjack.CrepExp.var 19)

def crepBody281_97 : CrepProg (BitVec 64) :=
.seq crepBody281_96 crepBody281_1

def crepBody281_98 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 1#64]) crepBody281_97

def crepBody281_99 : CrepProg (BitVec 64) :=
.seq crepBody281_95 crepBody281_98

def crepBody281_100 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15, 16, 17, 18], none)) "tx_scalar_u256"
  [Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 0#64]

def crepBody281_101 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 48#64]) crepBody281_93

def crepBody281_102 : CrepProg (BitVec 64) :=
.seq crepBody281_100 crepBody281_101

def crepBody281_103 : CrepProg (BitVec 64) :=
.seq crepBody281_102 crepBody281_98

def crepBody281_104 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 80#64]) crepBody281_93

def crepBody281_105 : CrepProg (BitVec 64) :=
.seq crepBody281_100 crepBody281_104

def crepBody281_106 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15, 16, 17, 18], none)) "tx_scalar_u256"
  [Flapjack.CrepExp.var 12,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 1#64],
    Flapjack.CrepExp.const 0#64]

def crepBody281_107 : CrepProg (BitVec 64) :=
.seq crepBody281_105 crepBody281_106

def crepBody281_108 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 112#64]) crepBody281_93

def crepBody281_109 : CrepProg (BitVec 64) :=
.seq crepBody281_107 crepBody281_108

def crepBody281_110 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 2#64]) crepBody281_97

def crepBody281_111 : CrepProg (BitVec 64) :=
.seq crepBody281_109 crepBody281_110

def crepBody281_112 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.const 1#64) (Flapjack.CrepExp.var 8)) crepBody281_103 crepBody281_111

def crepBody281_113 : CrepProg (BitVec 64) :=
.seq crepBody281_99 crepBody281_112

def crepBody281_114 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "tx_scalar_word"
  [Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 14#64]

def crepBody281_115 : CrepProg (BitVec 64) :=
.seq crepBody281_113 crepBody281_114

def crepBody281_116 : CrepProg (BitVec 64) :=
.seq crepBody281_82 crepBody281_1

def crepBody281_117 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.var 14) crepBody281_116

def crepBody281_118 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 144#64]) crepBody281_117

def crepBody281_119 : CrepProg (BitVec 64) :=
.seq crepBody281_115 crepBody281_118

def crepBody281_120 : CrepProg (BitVec 64) :=
.seq crepBody281_119 crepBody281_98

def crepBody281_121 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "tx_fixed_bytes"
  [Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 20#64]

def crepBody281_122 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "tx_to_item" [Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13]

def crepBody281_123 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.const 3#64)) crepBody281_121 crepBody281_122

def crepBody281_124 : CrepProg (BitVec 64) :=
.seq crepBody281_120 crepBody281_123

def crepBody281_125 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 152#64]) crepBody281_117

def crepBody281_126 : CrepProg (BitVec 64) :=
.seq crepBody281_124 crepBody281_125

def crepBody281_127 : CrepProg (BitVec 64) :=
.seq crepBody281_126 crepBody281_98

def crepBody281_128 : CrepProg (BitVec 64) :=
.seq crepBody281_127 crepBody281_80

def crepBody281_129 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 160#64]) crepBody281_93

def crepBody281_130 : CrepProg (BitVec 64) :=
.seq crepBody281_128 crepBody281_129

def crepBody281_131 : CrepProg (BitVec 64) :=
.seq crepBody281_130 crepBody281_98

def crepBody281_132 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19, 20], none)) "tx_bytes_item" [Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13]

def crepBody281_133 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.var 22)

def crepBody281_134 : CrepProg (BitVec 64) :=
.seq crepBody281_133 crepBody281_1

def crepBody281_135 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.var 19) crepBody281_134

def crepBody281_136 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 192#64]) crepBody281_135

def crepBody281_137 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.var 20) crepBody281_134

def crepBody281_138 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 200#64]) crepBody281_137

def crepBody281_139 : CrepProg (BitVec 64) :=
.seq crepBody281_136 crepBody281_138

def crepBody281_140 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 13 (Flapjack.CrepExp.var 21)

def crepBody281_141 : CrepProg (BitVec 64) :=
.seq crepBody281_140 crepBody281_1

def crepBody281_142 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 1#64]) crepBody281_141

def crepBody281_143 : CrepProg (BitVec 64) :=
.seq crepBody281_139 crepBody281_142

def crepBody281_144 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21, 22], none)) "tx_list_item" [Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13]

def crepBody281_145 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([23, 24], none)) "decode_access_list" [Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 22]

def crepBody281_146 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.var 26)

def crepBody281_147 : CrepProg (BitVec 64) :=
.seq crepBody281_146 crepBody281_1

def crepBody281_148 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.var 23) crepBody281_147

def crepBody281_149 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 208#64]) crepBody281_148

def crepBody281_150 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.var 24) crepBody281_147

def crepBody281_151 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 216#64]) crepBody281_150

def crepBody281_152 : CrepProg (BitVec 64) :=
.seq crepBody281_149 crepBody281_151

def crepBody281_153 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 13 (Flapjack.CrepExp.var 25)

def crepBody281_154 : CrepProg (BitVec 64) :=
.seq crepBody281_153 crepBody281_1

def crepBody281_155 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 1#64]) crepBody281_154

def crepBody281_156 : CrepProg (BitVec 64) :=
.seq crepBody281_152 crepBody281_155

def crepBody281_157 : CrepProg (BitVec 64) :=
.seq crepBody281_145 crepBody281_156

def crepBody281_158 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.const 0#64) crepBody281_157

def crepBody281_159 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody281_158

def crepBody281_160 : CrepProg (BitVec 64) :=
.seq crepBody281_144 crepBody281_159

def crepBody281_161 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody281_160

def crepBody281_162 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody281_161

def crepBody281_163 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.const 0#64)) crepBody281_162 crepBody281_1

def crepBody281_164 : CrepProg (BitVec 64) :=
.seq crepBody281_143 crepBody281_163

def crepBody281_165 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 21, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 23)

def crepBody281_166 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 21, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 24)

def crepBody281_167 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 21, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 25)

def crepBody281_168 : CrepProg (BitVec 64) :=
.seq crepBody281_167 crepBody281_1

def crepBody281_169 : CrepProg (BitVec 64) :=
.seq crepBody281_166 crepBody281_168

def crepBody281_170 : CrepProg (BitVec 64) :=
.seq crepBody281_165 crepBody281_169

def crepBody281_171 : CrepProg (BitVec 64) :=
.seq crepBody281_133 crepBody281_170

def crepBody281_172 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.var 18) crepBody281_171

def crepBody281_173 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.var 17) crepBody281_172

def crepBody281_174 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.var 16) crepBody281_173

def crepBody281_175 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.var 15) crepBody281_174

def crepBody281_176 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 224#64]) crepBody281_175

def crepBody281_177 : CrepProg (BitVec 64) :=
.seq crepBody281_80 crepBody281_176

def crepBody281_178 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21, 22], none)) "tx_list_item"
  [Flapjack.CrepExp.var 12,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 1#64]]

def crepBody281_179 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([23, 24], none)) "decode_blob_hashes" [Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 22]

def crepBody281_180 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 256#64]) crepBody281_148

def crepBody281_181 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 264#64]) crepBody281_150

def crepBody281_182 : CrepProg (BitVec 64) :=
.seq crepBody281_180 crepBody281_181

def crepBody281_183 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 2#64]) crepBody281_154

def crepBody281_184 : CrepProg (BitVec 64) :=
.seq crepBody281_182 crepBody281_183

def crepBody281_185 : CrepProg (BitVec 64) :=
.seq crepBody281_179 crepBody281_184

def crepBody281_186 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.const 0#64) crepBody281_185

def crepBody281_187 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody281_186

def crepBody281_188 : CrepProg (BitVec 64) :=
.seq crepBody281_178 crepBody281_187

def crepBody281_189 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody281_188

def crepBody281_190 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody281_189

def crepBody281_191 : CrepProg (BitVec 64) :=
.seq crepBody281_177 crepBody281_190

def crepBody281_192 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.const 3#64)) crepBody281_191 crepBody281_1

def crepBody281_193 : CrepProg (BitVec 64) :=
.seq crepBody281_164 crepBody281_192

def crepBody281_194 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([23, 24], none)) "decode_authorizations"
  [Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 22]

def crepBody281_195 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 272#64]) crepBody281_148

def crepBody281_196 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 280#64]) crepBody281_150

def crepBody281_197 : CrepProg (BitVec 64) :=
.seq crepBody281_195 crepBody281_196

def crepBody281_198 : CrepProg (BitVec 64) :=
.seq crepBody281_197 crepBody281_155

def crepBody281_199 : CrepProg (BitVec 64) :=
.seq crepBody281_194 crepBody281_198

def crepBody281_200 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.const 0#64) crepBody281_199

def crepBody281_201 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody281_200

def crepBody281_202 : CrepProg (BitVec 64) :=
.seq crepBody281_144 crepBody281_201

def crepBody281_203 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody281_202

def crepBody281_204 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody281_203

def crepBody281_205 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.const 4#64)) crepBody281_204 crepBody281_1

def crepBody281_206 : CrepProg (BitVec 64) :=
.seq crepBody281_193 crepBody281_205

def crepBody281_207 : CrepProg (BitVec 64) :=
.seq crepBody281_206 crepBody281_80

def crepBody281_208 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 288#64]) crepBody281_175

def crepBody281_209 : CrepProg (BitVec 64) :=
.seq crepBody281_207 crepBody281_208

def crepBody281_210 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15, 16, 17, 18], none)) "tx_scalar_u256"
  [Flapjack.CrepExp.var 12,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 1#64],
    Flapjack.CrepExp.const 32#64]

def crepBody281_211 : CrepProg (BitVec 64) :=
.seq crepBody281_209 crepBody281_210

def crepBody281_212 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 320#64]) crepBody281_175

def crepBody281_213 : CrepProg (BitVec 64) :=
.seq crepBody281_211 crepBody281_212

def crepBody281_214 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15, 16, 17, 18], none)) "tx_scalar_u256"
  [Flapjack.CrepExp.var 12,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 2#64],
    Flapjack.CrepExp.const 32#64]

def crepBody281_215 : CrepProg (BitVec 64) :=
.seq crepBody281_213 crepBody281_214

def crepBody281_216 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 352#64]) crepBody281_175

def crepBody281_217 : CrepProg (BitVec 64) :=
.seq crepBody281_215 crepBody281_216

def crepBody281_218 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 3]

def crepBody281_219 : CrepProg (BitVec 64) :=
.seq crepBody281_217 crepBody281_218

def crepBody281_220 : CrepProg (BitVec 64) :=
.seq crepBody281_132 crepBody281_219

def crepBody281_221 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody281_220

def crepBody281_222 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody281_221

def crepBody281_223 : CrepProg (BitVec 64) :=
.seq crepBody281_131 crepBody281_222

def crepBody281_224 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody281_223

def crepBody281_225 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody281_224

def crepBody281_226 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody281_225

def crepBody281_227 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody281_226

def crepBody281_228 : CrepProg (BitVec 64) :=
.seq crepBody281_69 crepBody281_227

def crepBody281_229 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody281_228

def crepBody281_230 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody281_229

def crepBody281_231 : CrepProg (BitVec 64) :=
.seq crepBody281_59 crepBody281_230

def crepBody281_232 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.var 10) crepBody281_231

def crepBody281_233 : CrepProg (BitVec 64) :=
.seq crepBody281_54 crepBody281_232

def crepBody281_234 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody281_233

def crepBody281_235 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody281_234

def crepBody281_236 : CrepProg (BitVec 64) :=
.seq crepBody281_53 crepBody281_235

def crepBody281_237 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 9#64) crepBody281_236

def crepBody281_238 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody281_237

def crepBody281_239 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody281_238

def crepBody281_240 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody281_239

def crepBody281_241 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody281_240

def crepBody281_242 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody281_241

def crepBody281_243 : CrepProg (BitVec 64) :=
.seq crepBody281_17 crepBody281_242

def crepBody281_244 : CrepProg (BitVec 64) :=
.seq crepBody281_7 crepBody281_243

def crepBody281_245 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody281_244

def crepBody281_246 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.loadByte (Flapjack.CrepExp.var 0)) crepBody281_245

def crepBody281_247 : CrepProg (BitVec 64) :=
.seq crepBody281_6 crepBody281_246

def data281 : CrepProg (BitVec 64) := crepBody281_247
def output281 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [100#8, 101#8, 99#8, 111#8, 100#8, 101#8, 95#8, 116#8, 114#8, 97#8, 110#8, 115#8, 97#8, 99#8, 116#8, 105#8, 111#8,
    110#8, 95#8, 114#8, 108#8, 112#8], [0, 1], crepProgToHOL data281)
end InitECandidate.Proofs.FrontendStages.Crep
