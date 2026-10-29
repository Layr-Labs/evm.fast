import InitECandidate.Proofs.WordStages.Source240
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody256_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody256_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody256_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody256_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody256_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 16 (Flapjack.WordRegImm.reg 54) sourceBody256_2 sourceBody256_3

def sourceBody256_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody256_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_4 sourceBody256_5

def sourceBody256_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 16)

def sourceBody256_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody256_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody256_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([64]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody256_8, 256, 2)) (some 245) ([16]) (some (16, sourceBody256_9, 256, 3))

def sourceBody256_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_10 sourceBody256_5

def sourceBody256_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_11 sourceBody256_8

def sourceBody256_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_2 sourceBody256_12

def sourceBody256_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_13

def sourceBody256_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_14

def sourceBody256_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 34 (Flapjack.WordRegImm.imm 0#64) sourceBody256_15 sourceBody256_8

def sourceBody256_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_16 sourceBody256_5

def sourceBody256_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_17 sourceBody256_8

def sourceBody256_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_7 sourceBody256_18

def sourceBody256_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_6 sourceBody256_19

def sourceBody256_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_1 sourceBody256_20

def sourceBody256_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_0 sourceBody256_21

def sourceBody256_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 2)

def sourceBody256_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 64 (Flapjack.WordLangAddr.addr 64 0#64))

def sourceBody256_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 64)

def sourceBody256_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 21#64)

def sourceBody256_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody256_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody256_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 54 (Flapjack.WordRegImm.reg 34) sourceBody256_27 sourceBody256_28

def sourceBody256_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_29 sourceBody256_5

def sourceBody256_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody256_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 74 (Flapjack.WordLangAddr.addr 74 0#64))

def sourceBody256_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 74)

def sourceBody256_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody256_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody256_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody256_37 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 48 (Flapjack.WordRegImm.reg 30) sourceBody256_35 sourceBody256_36

def sourceBody256_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_37 sourceBody256_5

def sourceBody256_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody256_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or [Flapjack.WordLangExpHOL.var 54, Flapjack.WordLangExpHOL.var 48])

def sourceBody256_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody256_42 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.reg 60) sourceBody256_41 sourceBody256_39

def sourceBody256_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_42 sourceBody256_5

def sourceBody256_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 22)

def sourceBody256_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody256_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([64]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody256_8, 256, 4)) (some 245) ([16]) (some (16, sourceBody256_9, 256, 5))

def sourceBody256_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_46 sourceBody256_5

def sourceBody256_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_47 sourceBody256_8

def sourceBody256_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_45 sourceBody256_48

def sourceBody256_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_49

def sourceBody256_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_50

def sourceBody256_52 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 40 (Flapjack.WordRegImm.imm 0#64) sourceBody256_51 sourceBody256_8

def sourceBody256_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_52 sourceBody256_5

def sourceBody256_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_53 sourceBody256_8

def sourceBody256_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_44 sourceBody256_54

def sourceBody256_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_43 sourceBody256_55

def sourceBody256_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_40 sourceBody256_56

def sourceBody256_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_39 sourceBody256_57

def sourceBody256_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_38 sourceBody256_58

def sourceBody256_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_34 sourceBody256_59

def sourceBody256_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_33 sourceBody256_60

def sourceBody256_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_32 sourceBody256_61

def sourceBody256_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_31 sourceBody256_62

def sourceBody256_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_30 sourceBody256_63

def sourceBody256_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_26 sourceBody256_64

def sourceBody256_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_25 sourceBody256_65

def sourceBody256_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_24 sourceBody256_66

def sourceBody256_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_23 sourceBody256_67

def sourceBody256_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_22 sourceBody256_68

def sourceBody256_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 2#64])

def sourceBody256_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 64)

def sourceBody256_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_71 sourceBody256_8

def sourceBody256_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_72 sourceBody256_8

def sourceBody256_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_70 sourceBody256_73

def sourceBody256_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_74

def sourceBody256_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_69 sourceBody256_75

def sourceBody256_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 2#64])

def sourceBody256_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 64)

def sourceBody256_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_78 sourceBody256_8

def sourceBody256_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_79 sourceBody256_8

def sourceBody256_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_77 sourceBody256_80

def sourceBody256_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_81

def sourceBody256_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_76 sourceBody256_82

def sourceBody256_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 16#64)

def sourceBody256_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 80#64)

def sourceBody256_86 : WordLangProgHOL (BitVec 64) :=
.call (some (([64]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody256_8, 256, 6)) (some 245) ([16]) (some (16, sourceBody256_9, 256, 7))

def sourceBody256_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_86 sourceBody256_5

def sourceBody256_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_87 sourceBody256_8

def sourceBody256_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_85 sourceBody256_88

def sourceBody256_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_89

def sourceBody256_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_90

def sourceBody256_92 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 34 (Flapjack.WordRegImm.imm 0#64) sourceBody256_91 sourceBody256_8

def sourceBody256_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_92 sourceBody256_5

def sourceBody256_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_93 sourceBody256_8

def sourceBody256_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_7 sourceBody256_94

def sourceBody256_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_6 sourceBody256_95

def sourceBody256_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_84 sourceBody256_96

def sourceBody256_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_0 sourceBody256_97

def sourceBody256_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_83 sourceBody256_98

def sourceBody256_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 112#64]))

def sourceBody256_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def sourceBody256_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 16 (Flapjack.WordLangAddr.addr 16 0#64))

def sourceBody256_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody256_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 54 (Flapjack.WordLangAddr.addr 54 0#64))

def sourceBody256_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 2#64])

def sourceBody256_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 34 (Flapjack.WordLangAddr.addr 34 0#64))

def sourceBody256_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 3#64])

def sourceBody256_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_32 sourceBody256_8

def sourceBody256_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_107 sourceBody256_108

def sourceBody256_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_106 sourceBody256_109

def sourceBody256_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_105 sourceBody256_110

def sourceBody256_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_104 sourceBody256_111

def sourceBody256_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_103 sourceBody256_112

def sourceBody256_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_102 sourceBody256_113

def sourceBody256_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_101 sourceBody256_114

def sourceBody256_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.var 16,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 54)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 34)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 74)
        (Flapjack.WordLangExpHOL.const 24#64)])

def sourceBody256_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 10)

def sourceBody256_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 64) 48

def sourceBody256_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_118 sourceBody256_8

def sourceBody256_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_117 sourceBody256_119

def sourceBody256_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_120 sourceBody256_8

def sourceBody256_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_116 sourceBody256_121

def sourceBody256_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_115 sourceBody256_122

def sourceBody256_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_100 sourceBody256_123

def sourceBody256_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_124

def sourceBody256_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_99 sourceBody256_125

def sourceBody256_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 112#64]),
      Flapjack.WordLangExpHOL.const 8#64])

def sourceBody256_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 4#64])

def sourceBody256_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 4#64, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody256_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 4#64, Flapjack.WordLangExpHOL.const 2#64])

def sourceBody256_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 4#64, Flapjack.WordLangExpHOL.const 3#64])

def sourceBody256_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_131 sourceBody256_108

def sourceBody256_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_106 sourceBody256_132

def sourceBody256_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_130 sourceBody256_133

def sourceBody256_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_104 sourceBody256_134

def sourceBody256_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_129 sourceBody256_135

def sourceBody256_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_102 sourceBody256_136

def sourceBody256_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_128 sourceBody256_137

def sourceBody256_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_138 sourceBody256_122

def sourceBody256_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_127 sourceBody256_139

def sourceBody256_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_140

def sourceBody256_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_126 sourceBody256_141

def sourceBody256_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 112#64]))

def sourceBody256_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 16#64)

def sourceBody256_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 4)

def sourceBody256_146 : WordLangProgHOL (BitVec 64) :=
.call (some (([64]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody256_8, 256, 8)) (some 250) ([16, 54, 34, 74]) (some (16, sourceBody256_9, 256, 9))

def sourceBody256_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_146 sourceBody256_5

def sourceBody256_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_147 sourceBody256_8

def sourceBody256_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_145 sourceBody256_148

def sourceBody256_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_144 sourceBody256_149

def sourceBody256_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_1 sourceBody256_150

def sourceBody256_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_143 sourceBody256_151

def sourceBody256_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_152

def sourceBody256_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_153

def sourceBody256_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_142 sourceBody256_154

def sourceBody256_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.load
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
            [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
          Flapjack.WordLangExpHOL.const 112#64])))

def sourceBody256_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 112#64]),
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody256_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 96#64)

def sourceBody256_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 34

def sourceBody256_160 : WordLangProgHOL (BitVec 64) :=
.call (some (([54]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody256_8, 256, 10)) (some 68) ([34]) (some (34, sourceBody256_159, 256, 11))

def sourceBody256_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_160 sourceBody256_5

def sourceBody256_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_161 sourceBody256_8

def sourceBody256_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_158 sourceBody256_162

def sourceBody256_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 54, Flapjack.WordLangExpHOL.const 88#64])

def sourceBody256_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody256_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody256_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 10 (Flapjack.WordLangAddr.addr 10 0#64))

def sourceBody256_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64, Flapjack.WordLangExpHOL.const 2#64])

def sourceBody256_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 48 (Flapjack.WordLangAddr.addr 48 0#64))

def sourceBody256_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64, Flapjack.WordLangExpHOL.const 3#64])

def sourceBody256_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 30 (Flapjack.WordLangAddr.addr 30 0#64))

def sourceBody256_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64, Flapjack.WordLangExpHOL.const 4#64])

def sourceBody256_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 70 (Flapjack.WordLangAddr.addr 70 0#64))

def sourceBody256_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64, Flapjack.WordLangExpHOL.const 4#64,
      Flapjack.WordLangExpHOL.const 1#64])

def sourceBody256_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 22 (Flapjack.WordLangAddr.addr 22 0#64))

def sourceBody256_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64, Flapjack.WordLangExpHOL.const 4#64,
      Flapjack.WordLangExpHOL.const 2#64])

def sourceBody256_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 60 (Flapjack.WordLangAddr.addr 60 0#64))

def sourceBody256_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64, Flapjack.WordLangExpHOL.const 4#64,
      Flapjack.WordLangExpHOL.const 3#64])

def sourceBody256_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 40 (Flapjack.WordLangAddr.addr 40 0#64))

def sourceBody256_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_179 sourceBody256_8

def sourceBody256_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_178 sourceBody256_180

def sourceBody256_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_177 sourceBody256_181

def sourceBody256_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_176 sourceBody256_182

def sourceBody256_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_175 sourceBody256_183

def sourceBody256_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_174 sourceBody256_184

def sourceBody256_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_173 sourceBody256_185

def sourceBody256_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_172 sourceBody256_186

def sourceBody256_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_171 sourceBody256_187

def sourceBody256_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_170 sourceBody256_188

def sourceBody256_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_169 sourceBody256_189

def sourceBody256_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_168 sourceBody256_190

def sourceBody256_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_167 sourceBody256_191

def sourceBody256_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_166 sourceBody256_192

def sourceBody256_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_32 sourceBody256_193

def sourceBody256_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_165 sourceBody256_194

def sourceBody256_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.var 74,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 10)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 48)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 30)
        (Flapjack.WordLangExpHOL.const 24#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
          [Flapjack.WordLangExpHOL.var 70,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 22)
              (Flapjack.WordLangExpHOL.const 8#64),
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 60)
              (Flapjack.WordLangExpHOL.const 16#64),
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 40)
              (Flapjack.WordLangExpHOL.const 24#64)])
        (Flapjack.WordLangExpHOL.const 32#64)])

def sourceBody256_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 80)

def sourceBody256_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 34) 8

def sourceBody256_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_198 sourceBody256_8

def sourceBody256_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_197 sourceBody256_199

def sourceBody256_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_200 sourceBody256_8

def sourceBody256_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_196 sourceBody256_201

def sourceBody256_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_195 sourceBody256_202

def sourceBody256_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_164 sourceBody256_203

def sourceBody256_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_204

def sourceBody256_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 64])

def sourceBody256_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.var 64])

def sourceBody256_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 44#64)

def sourceBody256_209 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 48 (Flapjack.WordRegImm.reg 30) sourceBody256_35 sourceBody256_36

def sourceBody256_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_209 sourceBody256_5

def sourceBody256_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 48)

def sourceBody256_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 81#64)

def sourceBody256_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 48

def sourceBody256_214 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody256_8, 256, 12)) (some 245) ([48]) (some (48, sourceBody256_213, 256, 13))

def sourceBody256_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_214 sourceBody256_5

def sourceBody256_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_215 sourceBody256_8

def sourceBody256_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_212 sourceBody256_216

def sourceBody256_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_217

def sourceBody256_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_218

def sourceBody256_220 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 70 (Flapjack.WordRegImm.imm 0#64) sourceBody256_219 sourceBody256_8

def sourceBody256_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_220 sourceBody256_5

def sourceBody256_222 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_221 sourceBody256_8

def sourceBody256_223 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_211 sourceBody256_222

def sourceBody256_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_210 sourceBody256_223

def sourceBody256_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_208 sourceBody256_224

def sourceBody256_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_33 sourceBody256_225

def sourceBody256_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 34)

def sourceBody256_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody256_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 2#64])

def sourceBody256_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 3#64])

def sourceBody256_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_173 sourceBody256_8

def sourceBody256_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_230 sourceBody256_231

def sourceBody256_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_171 sourceBody256_232

def sourceBody256_234 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_229 sourceBody256_233

def sourceBody256_235 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_169 sourceBody256_234

def sourceBody256_236 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_228 sourceBody256_235

def sourceBody256_237 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_167 sourceBody256_236

def sourceBody256_238 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_227 sourceBody256_237

def sourceBody256_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.var 10,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 48)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 30)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 70)
        (Flapjack.WordLangExpHOL.const 24#64)])

def sourceBody256_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 4#64])

def sourceBody256_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 4#64, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody256_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 4#64, Flapjack.WordLangExpHOL.const 2#64])

def sourceBody256_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 80 (Flapjack.WordLangAddr.addr 80 0#64))

def sourceBody256_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 4#64, Flapjack.WordLangExpHOL.const 3#64])

def sourceBody256_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 8 0#64))

def sourceBody256_246 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_245 sourceBody256_8

def sourceBody256_247 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_244 sourceBody256_246

def sourceBody256_248 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_243 sourceBody256_247

def sourceBody256_249 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_242 sourceBody256_248

def sourceBody256_250 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_179 sourceBody256_249

def sourceBody256_251 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_241 sourceBody256_250

def sourceBody256_252 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_177 sourceBody256_251

def sourceBody256_253 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_240 sourceBody256_252

def sourceBody256_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.var 60,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 40)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 80)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 8)
        (Flapjack.WordLangExpHOL.const 24#64)])

def sourceBody256_255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 40#64])

def sourceBody256_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 28 (Flapjack.WordLangAddr.addr 28 0#64))

def sourceBody256_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 40#64, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody256_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 68 (Flapjack.WordLangAddr.addr 68 0#64))

def sourceBody256_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 40#64, Flapjack.WordLangExpHOL.const 2#64])

def sourceBody256_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 20 (Flapjack.WordLangAddr.addr 20 0#64))

def sourceBody256_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 40#64, Flapjack.WordLangExpHOL.const 3#64])

def sourceBody256_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 58 (Flapjack.WordLangAddr.addr 58 0#64))

def sourceBody256_263 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_262 sourceBody256_8

def sourceBody256_264 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_261 sourceBody256_263

def sourceBody256_265 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_260 sourceBody256_264

def sourceBody256_266 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_259 sourceBody256_265

def sourceBody256_267 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_258 sourceBody256_266

def sourceBody256_268 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_257 sourceBody256_267

def sourceBody256_269 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_256 sourceBody256_268

def sourceBody256_270 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_255 sourceBody256_269

def sourceBody256_271 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.var 28,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 68)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 20)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 58)
        (Flapjack.WordLangExpHOL.const 24#64)])

def sourceBody256_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 112#64]))

def sourceBody256_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 22)

def sourceBody256_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 14)

def sourceBody256_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 78) 52

def sourceBody256_276 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_275 sourceBody256_8

def sourceBody256_277 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_274 sourceBody256_276

def sourceBody256_278 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_277 sourceBody256_8

def sourceBody256_279 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_273 sourceBody256_278

def sourceBody256_280 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_279

def sourceBody256_281 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_272 sourceBody256_280

def sourceBody256_282 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_281

def sourceBody256_283 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 112#64]),
      Flapjack.WordLangExpHOL.const 8#64])

def sourceBody256_284 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 46)

def sourceBody256_285 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_284 sourceBody256_278

def sourceBody256_286 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_285

def sourceBody256_287 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_283 sourceBody256_286

def sourceBody256_288 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_287

def sourceBody256_289 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_282 sourceBody256_288

def sourceBody256_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 112#64]),
      Flapjack.WordLangExpHOL.const 16#64])

def sourceBody256_291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 38)

def sourceBody256_292 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_291 sourceBody256_278

def sourceBody256_293 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_292

def sourceBody256_294 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_290 sourceBody256_293

def sourceBody256_295 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_294

def sourceBody256_296 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_289 sourceBody256_295

def sourceBody256_297 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 112#64]))

def sourceBody256_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody256_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 44#64)

def sourceBody256_300 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 74)

def sourceBody256_301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody256_302 : WordLangProgHOL (BitVec 64) :=
.call (some (([78]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody256_8, 256, 14)) (some 250) ([14, 52, 32, 72]) (some (14, sourceBody256_301, 256, 15))

def sourceBody256_303 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_302 sourceBody256_5

def sourceBody256_304 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_303 sourceBody256_8

def sourceBody256_305 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_300 sourceBody256_304

def sourceBody256_306 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_299 sourceBody256_305

def sourceBody256_307 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_298 sourceBody256_306

def sourceBody256_308 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_297 sourceBody256_307

def sourceBody256_309 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_308

def sourceBody256_310 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_309

def sourceBody256_311 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_296 sourceBody256_310

def sourceBody256_312 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.var 22])

def sourceBody256_313 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 46, Flapjack.WordLangExpHOL.var 22])

def sourceBody256_314 : WordLangProgHOL (BitVec 64) :=
.call (some (([78]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody256_8, 256, 16)) (some 253) ([14, 52]) (some (14, sourceBody256_301, 256, 17))

def sourceBody256_315 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_314 sourceBody256_5

def sourceBody256_316 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_315 sourceBody256_8

def sourceBody256_317 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_313 sourceBody256_316

def sourceBody256_318 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_312 sourceBody256_317

def sourceBody256_319 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 54, Flapjack.WordLangExpHOL.const 0#64])

def sourceBody256_320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 78)

def sourceBody256_321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 52)

def sourceBody256_322 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 14) 32

def sourceBody256_323 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_322 sourceBody256_8

def sourceBody256_324 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_321 sourceBody256_323

def sourceBody256_325 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_324 sourceBody256_8

def sourceBody256_326 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_320 sourceBody256_325

def sourceBody256_327 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_326

def sourceBody256_328 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_319 sourceBody256_327

def sourceBody256_329 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_328

def sourceBody256_330 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.var 46])

def sourceBody256_331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody256_332 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.const 9223372036854775807#64)

def sourceBody256_333 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 52

def sourceBody256_334 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody256_8, 256, 18)) (some 252) ([52, 32, 72]) (some (52, sourceBody256_333, 256, 19))

def sourceBody256_335 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_334 sourceBody256_5

def sourceBody256_336 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_335 sourceBody256_8

def sourceBody256_337 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_332 sourceBody256_336

def sourceBody256_338 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_331 sourceBody256_337

def sourceBody256_339 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_330 sourceBody256_338

def sourceBody256_340 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 54, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody256_341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.var 46])

def sourceBody256_342 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 32)

def sourceBody256_343 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 52) 72

def sourceBody256_344 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_343 sourceBody256_8

def sourceBody256_345 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_342 sourceBody256_344

def sourceBody256_346 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_345 sourceBody256_8

def sourceBody256_347 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_341 sourceBody256_346

def sourceBody256_348 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_347

def sourceBody256_349 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_340 sourceBody256_348

def sourceBody256_350 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_349

def sourceBody256_351 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 54, Flapjack.WordLangExpHOL.const 16#64])

def sourceBody256_352 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 14)

def sourceBody256_353 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_352 sourceBody256_346

def sourceBody256_354 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_353

def sourceBody256_355 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_351 sourceBody256_354

def sourceBody256_356 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_355

def sourceBody256_357 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_350 sourceBody256_356

def sourceBody256_358 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 54, Flapjack.WordLangExpHOL.const 24#64])

def sourceBody256_359 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody256_360 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_359 sourceBody256_346

def sourceBody256_361 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_360

def sourceBody256_362 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_358 sourceBody256_361

def sourceBody256_363 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_362

def sourceBody256_364 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_357 sourceBody256_363

def sourceBody256_365 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 34, Flapjack.WordLangExpHOL.var 38])

def sourceBody256_366 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 74, Flapjack.WordLangExpHOL.var 38])

def sourceBody256_367 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def sourceBody256_368 : WordLangProgHOL (BitVec 64) :=
.call (some (([52]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody256_8, 256, 20)) (some 254) ([32, 72]) (some (32, sourceBody256_367, 256, 21))

def sourceBody256_369 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_368 sourceBody256_5

def sourceBody256_370 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_369 sourceBody256_8

def sourceBody256_371 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_366 sourceBody256_370

def sourceBody256_372 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_365 sourceBody256_371

def sourceBody256_373 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 54, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody256_374 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 52)

def sourceBody256_375 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 72)

def sourceBody256_376 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 32) 24

def sourceBody256_377 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_376 sourceBody256_8

def sourceBody256_378 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_375 sourceBody256_377

def sourceBody256_379 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_378 sourceBody256_8

def sourceBody256_380 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_374 sourceBody256_379

def sourceBody256_381 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_380

def sourceBody256_382 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_373 sourceBody256_381

def sourceBody256_383 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_382

def sourceBody256_384 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 16])

def sourceBody256_385 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 16])

def sourceBody256_386 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 72)

def sourceBody256_387 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 12#64)

def sourceBody256_388 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody256_389 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody256_390 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 62 (Flapjack.WordRegImm.reg 42) sourceBody256_388 sourceBody256_389

def sourceBody256_391 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_390 sourceBody256_5

def sourceBody256_392 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82 (Flapjack.WordLangExpHOL.var 62)

def sourceBody256_393 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 82#64)

def sourceBody256_394 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 62

def sourceBody256_395 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody256_8, 256, 22)) (some 245) ([62]) (some (62, sourceBody256_394, 256, 23))

def sourceBody256_396 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_395 sourceBody256_5

def sourceBody256_397 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_396 sourceBody256_8

def sourceBody256_398 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_393 sourceBody256_397

def sourceBody256_399 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_398

def sourceBody256_400 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_399

def sourceBody256_401 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 82 (Flapjack.WordRegImm.imm 0#64) sourceBody256_400 sourceBody256_8

def sourceBody256_402 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_401 sourceBody256_5

def sourceBody256_403 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_402 sourceBody256_8

def sourceBody256_404 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_392 sourceBody256_403

def sourceBody256_405 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_391 sourceBody256_404

def sourceBody256_406 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_387 sourceBody256_405

def sourceBody256_407 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_386 sourceBody256_406

def sourceBody256_408 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody256_409 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 24)

def sourceBody256_410 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody256_411 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody256_412 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody256_413 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 42 (Flapjack.WordRegImm.reg 82) sourceBody256_411 sourceBody256_412

def sourceBody256_414 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_413 sourceBody256_5

def sourceBody256_415 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 42)

def sourceBody256_416 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 112#64]),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
        (Flapjack.WordLangExpHOL.const 3#64)])

def sourceBody256_417 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 32,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
        (Flapjack.WordLangExpHOL.const 2#64)])

def sourceBody256_418 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 42 (Flapjack.WordLangAddr.addr 42 0#64))

def sourceBody256_419 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 32,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
        (Flapjack.WordLangExpHOL.const 2#64),
      Flapjack.WordLangExpHOL.const 1#64])

def sourceBody256_420 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 82 (Flapjack.WordLangAddr.addr 82 0#64))

def sourceBody256_421 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 32,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
        (Flapjack.WordLangExpHOL.const 2#64),
      Flapjack.WordLangExpHOL.const 2#64])

def sourceBody256_422 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 6 0#64))

def sourceBody256_423 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 32,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 24)
        (Flapjack.WordLangExpHOL.const 2#64),
      Flapjack.WordLangExpHOL.const 3#64])

def sourceBody256_424 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 44 (Flapjack.WordLangAddr.addr 44 0#64))

def sourceBody256_425 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_424 sourceBody256_8

def sourceBody256_426 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_423 sourceBody256_425

def sourceBody256_427 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_422 sourceBody256_426

def sourceBody256_428 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_421 sourceBody256_427

def sourceBody256_429 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_420 sourceBody256_428

def sourceBody256_430 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_419 sourceBody256_429

def sourceBody256_431 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_418 sourceBody256_430

def sourceBody256_432 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_417 sourceBody256_431

def sourceBody256_433 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.var 42,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 82)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 6)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 44)
        (Flapjack.WordLangExpHOL.const 24#64)])

def sourceBody256_434 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 26)

def sourceBody256_435 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 62) 66

def sourceBody256_436 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_435 sourceBody256_8

def sourceBody256_437 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_434 sourceBody256_436

def sourceBody256_438 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_437 sourceBody256_8

def sourceBody256_439 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_433 sourceBody256_438

def sourceBody256_440 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_432 sourceBody256_439

def sourceBody256_441 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_416 sourceBody256_440

def sourceBody256_442 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_441

def sourceBody256_443 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody256_444 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 62)

def sourceBody256_445 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_444 sourceBody256_8

def sourceBody256_446 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_445 sourceBody256_8

def sourceBody256_447 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_443 sourceBody256_446

def sourceBody256_448 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_447

def sourceBody256_449 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_442 sourceBody256_448

def sourceBody256_450 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody256_451 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_449 sourceBody256_450

def sourceBody256_452 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody256_453 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody256_451 sourceBody256_452

def sourceBody256_454 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_453 sourceBody256_5

def sourceBody256_455 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_454 sourceBody256_8

def sourceBody256_456 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_415 sourceBody256_455

def sourceBody256_457 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_414 sourceBody256_456

def sourceBody256_458 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_410 sourceBody256_457

def sourceBody256_459 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_409 sourceBody256_458

def sourceBody256_460 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
  PUnit.unit Flapjack.Spt.ln) sourceBody256_459 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody256_461 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_460 sourceBody256_5

def sourceBody256_462 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_5 sourceBody256_461

def sourceBody256_463 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 112#64]))

def sourceBody256_464 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 12#64)

def sourceBody256_465 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 72)

def sourceBody256_466 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 42

def sourceBody256_467 : WordLangProgHOL (BitVec 64) :=
.call (some (([62]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody256_8, 256, 24)) (some 250) ([42, 82, 6, 44]) (some (42, sourceBody256_466, 256, 25))

def sourceBody256_468 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_467 sourceBody256_5

def sourceBody256_469 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_468 sourceBody256_8

def sourceBody256_470 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_465 sourceBody256_469

def sourceBody256_471 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_464 sourceBody256_470

def sourceBody256_472 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_410 sourceBody256_471

def sourceBody256_473 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_463 sourceBody256_472

def sourceBody256_474 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_473

def sourceBody256_475 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_474

def sourceBody256_476 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_462 sourceBody256_475

def sourceBody256_477 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.load
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
            [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
          Flapjack.WordLangExpHOL.const 112#64])))

def sourceBody256_478 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 112#64]),
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody256_479 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 112#64]),
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody256_480 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.var 62])

def sourceBody256_481 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 42, Flapjack.WordLangExpHOL.var 62])

def sourceBody256_482 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 9223372036854775807#64)

def sourceBody256_483 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 1024#64)

def sourceBody256_484 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody256_485 : WordLangProgHOL (BitVec 64) :=
.call (some (([6, 44]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody256_8, 256, 26)) (some 255) ([26, 66, 18, 56]) (some (26, sourceBody256_484, 256, 27))

def sourceBody256_486 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_485 sourceBody256_5

def sourceBody256_487 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_486 sourceBody256_8

def sourceBody256_488 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_483 sourceBody256_487

def sourceBody256_489 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_482 sourceBody256_488

def sourceBody256_490 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_481 sourceBody256_489

def sourceBody256_491 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_480 sourceBody256_490

def sourceBody256_492 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 54, Flapjack.WordLangExpHOL.const 40#64])

def sourceBody256_493 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 6)

def sourceBody256_494 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 66)

def sourceBody256_495 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 26) 18

def sourceBody256_496 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_495 sourceBody256_8

def sourceBody256_497 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_494 sourceBody256_496

def sourceBody256_498 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_497 sourceBody256_8

def sourceBody256_499 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_493 sourceBody256_498

def sourceBody256_500 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_499

def sourceBody256_501 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_492 sourceBody256_500

def sourceBody256_502 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_501

def sourceBody256_503 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 54, Flapjack.WordLangExpHOL.const 48#64])

def sourceBody256_504 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 44)

def sourceBody256_505 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_504 sourceBody256_498

def sourceBody256_506 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_505

def sourceBody256_507 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_503 sourceBody256_506

def sourceBody256_508 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_507

def sourceBody256_509 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_502 sourceBody256_508

def sourceBody256_510 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.var 42])

def sourceBody256_511 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 82, Flapjack.WordLangExpHOL.var 42])

def sourceBody256_512 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 9223372036854775807#64)

def sourceBody256_513 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.const 65536#64)

def sourceBody256_514 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody256_515 : WordLangProgHOL (BitVec 64) :=
.call (some (([26, 66]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody256_8, 256, 28)) (some 255) ([18, 56, 36, 76]) (some (18, sourceBody256_514, 256, 29))

def sourceBody256_516 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_515 sourceBody256_5

def sourceBody256_517 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_516 sourceBody256_8

def sourceBody256_518 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_513 sourceBody256_517

def sourceBody256_519 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_512 sourceBody256_518

def sourceBody256_520 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_511 sourceBody256_519

def sourceBody256_521 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_510 sourceBody256_520

def sourceBody256_522 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 54, Flapjack.WordLangExpHOL.const 56#64])

def sourceBody256_523 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 26)

def sourceBody256_524 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 56)

def sourceBody256_525 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 18) 36

def sourceBody256_526 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_525 sourceBody256_8

def sourceBody256_527 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_524 sourceBody256_526

def sourceBody256_528 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_527 sourceBody256_8

def sourceBody256_529 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_523 sourceBody256_528

def sourceBody256_530 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_529

def sourceBody256_531 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_522 sourceBody256_530

def sourceBody256_532 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_531

def sourceBody256_533 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 54, Flapjack.WordLangExpHOL.const 64#64])

def sourceBody256_534 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 66)

def sourceBody256_535 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_534 sourceBody256_528

def sourceBody256_536 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_535

def sourceBody256_537 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_533 sourceBody256_536

def sourceBody256_538 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_537

def sourceBody256_539 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_532 sourceBody256_538

def sourceBody256_540 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.var 82])

def sourceBody256_541 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 72, Flapjack.WordLangExpHOL.var 82])

def sourceBody256_542 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 256#64)

def sourceBody256_543 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 1024#64)

def sourceBody256_544 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 36

def sourceBody256_545 : WordLangProgHOL (BitVec 64) :=
.call (some (([18, 56]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody256_8, 256, 30)) (some 255) ([36, 76, 12, 50]) (some (36, sourceBody256_544, 256, 31))

def sourceBody256_546 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_545 sourceBody256_5

def sourceBody256_547 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_546 sourceBody256_8

def sourceBody256_548 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_543 sourceBody256_547

def sourceBody256_549 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_542 sourceBody256_548

def sourceBody256_550 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_541 sourceBody256_549

def sourceBody256_551 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_540 sourceBody256_550

def sourceBody256_552 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 54, Flapjack.WordLangExpHOL.const 72#64])

def sourceBody256_553 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.var 18)

def sourceBody256_554 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 76)

def sourceBody256_555 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 36) 12

def sourceBody256_556 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_555 sourceBody256_8

def sourceBody256_557 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_554 sourceBody256_556

def sourceBody256_558 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_557 sourceBody256_8

def sourceBody256_559 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_553 sourceBody256_558

def sourceBody256_560 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_559

def sourceBody256_561 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_552 sourceBody256_560

def sourceBody256_562 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_561

def sourceBody256_563 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 54, Flapjack.WordLangExpHOL.const 80#64])

def sourceBody256_564 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.var 56)

def sourceBody256_565 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_564 sourceBody256_558

def sourceBody256_566 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_565

def sourceBody256_567 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_563 sourceBody256_566

def sourceBody256_568 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_567

def sourceBody256_569 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_562 sourceBody256_568

def sourceBody256_570 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 54)

def sourceBody256_571 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [36]

def sourceBody256_572 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_571 sourceBody256_8

def sourceBody256_573 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_570 sourceBody256_572

def sourceBody256_574 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_569 sourceBody256_573

def sourceBody256_575 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_551 sourceBody256_574

def sourceBody256_576 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_575

def sourceBody256_577 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_576

def sourceBody256_578 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_577

def sourceBody256_579 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_578

def sourceBody256_580 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_539 sourceBody256_579

def sourceBody256_581 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_521 sourceBody256_580

def sourceBody256_582 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_581

def sourceBody256_583 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_582

def sourceBody256_584 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_583

def sourceBody256_585 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_584

def sourceBody256_586 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_509 sourceBody256_585

def sourceBody256_587 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_491 sourceBody256_586

def sourceBody256_588 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_587

def sourceBody256_589 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_588

def sourceBody256_590 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_589

def sourceBody256_591 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_590

def sourceBody256_592 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_479 sourceBody256_591

def sourceBody256_593 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_592

def sourceBody256_594 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_478 sourceBody256_593

def sourceBody256_595 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_594

def sourceBody256_596 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_477 sourceBody256_595

def sourceBody256_597 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_596

def sourceBody256_598 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_476 sourceBody256_597

def sourceBody256_599 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_408 sourceBody256_598

def sourceBody256_600 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_599

def sourceBody256_601 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_407 sourceBody256_600

def sourceBody256_602 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_385 sourceBody256_601

def sourceBody256_603 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_602

def sourceBody256_604 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_384 sourceBody256_603

def sourceBody256_605 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_604

def sourceBody256_606 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_383 sourceBody256_605

def sourceBody256_607 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_372 sourceBody256_606

def sourceBody256_608 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_607

def sourceBody256_609 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_608

def sourceBody256_610 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_364 sourceBody256_609

def sourceBody256_611 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_339 sourceBody256_610

def sourceBody256_612 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_611

def sourceBody256_613 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_612

def sourceBody256_614 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_329 sourceBody256_613

def sourceBody256_615 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_318 sourceBody256_614

def sourceBody256_616 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_615

def sourceBody256_617 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_616

def sourceBody256_618 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_311 sourceBody256_617

def sourceBody256_619 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_271 sourceBody256_618

def sourceBody256_620 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_270 sourceBody256_619

def sourceBody256_621 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_254 sourceBody256_620

def sourceBody256_622 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_253 sourceBody256_621

def sourceBody256_623 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_239 sourceBody256_622

def sourceBody256_624 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_238 sourceBody256_623

def sourceBody256_625 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_226 sourceBody256_624

def sourceBody256_626 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_207 sourceBody256_625

def sourceBody256_627 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_626

def sourceBody256_628 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_206 sourceBody256_627

def sourceBody256_629 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_628

def sourceBody256_630 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_205 sourceBody256_629

def sourceBody256_631 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_163 sourceBody256_630

def sourceBody256_632 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_631

def sourceBody256_633 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_632

def sourceBody256_634 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_157 sourceBody256_633

def sourceBody256_635 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_634

def sourceBody256_636 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_156 sourceBody256_635

def sourceBody256_637 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_8 sourceBody256_636

def sourceBody256_638 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody256_155 sourceBody256_637

def source256 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (256, 3, sourceBody256_638)
end InitECandidate.Proofs.WordStages
