import InitECandidate.Proofs.WordStages.Source445
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody461_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody461_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody461_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 216#64]),
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody461_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody461_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody461_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 8)

def sourceBody461_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 32)

def sourceBody461_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody461_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody461_9 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 20 (Flapjack.WordRegImm.reg 38) sourceBody461_7 sourceBody461_8

def sourceBody461_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_9 sourceBody461_4

def sourceBody461_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 20)

def sourceBody461_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 216#64]))

def sourceBody461_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 8)

def sourceBody461_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody461_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([28, 20, 38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody461_0, 461, 2)) (some 197) ([6, 26]) (some (6, sourceBody461_14, 461, 3))

def sourceBody461_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_15 sourceBody461_4

def sourceBody461_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_16 sourceBody461_0

def sourceBody461_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_13 sourceBody461_17

def sourceBody461_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_12 sourceBody461_18

def sourceBody461_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 28)

def sourceBody461_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody461_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody461_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody461_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.reg 18) sourceBody461_22 sourceBody461_23

def sourceBody461_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_24 sourceBody461_4

def sourceBody461_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 26)

def sourceBody461_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 38)

def sourceBody461_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody461_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody461_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 1#64,
      Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.const 24#64])])

def sourceBody461_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 36)

def sourceBody461_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_31 sourceBody461_0

def sourceBody461_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_32 sourceBody461_0

def sourceBody461_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_30 sourceBody461_33

def sourceBody461_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_0 sourceBody461_34

def sourceBody461_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody461_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody461_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 12)

def sourceBody461_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 36)

def sourceBody461_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody461_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody461_42 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 22 (Flapjack.WordRegImm.reg 40) sourceBody461_40 sourceBody461_41

def sourceBody461_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_42 sourceBody461_4

def sourceBody461_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 22)

def sourceBody461_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 18)

def sourceBody461_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 12)

def sourceBody461_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody461_48 : WordLangProgHOL (BitVec 64) :=
.call (some (([30, 22, 40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody461_0, 461, 4)) (some 197) ([4, 24]) (some (4, sourceBody461_47, 461, 5))

def sourceBody461_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_48 sourceBody461_4

def sourceBody461_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_49 sourceBody461_0

def sourceBody461_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_46 sourceBody461_50

def sourceBody461_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_45 sourceBody461_51

def sourceBody461_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 30)

def sourceBody461_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody461_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody461_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody461_57 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.reg 16) sourceBody461_55 sourceBody461_56

def sourceBody461_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_57 sourceBody461_4

def sourceBody461_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 24)

def sourceBody461_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 26)

def sourceBody461_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 22)

def sourceBody461_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody461_63 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody461_0, 461, 6)) (some 187) ([24, 16]) (some (24, sourceBody461_62, 461, 7))

def sourceBody461_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_63 sourceBody461_4

def sourceBody461_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_64 sourceBody461_0

def sourceBody461_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_61 sourceBody461_65

def sourceBody461_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_60 sourceBody461_66

def sourceBody461_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody461_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody461_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody461_71 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 16 (Flapjack.WordRegImm.reg 34) sourceBody461_70 sourceBody461_54

def sourceBody461_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_71 sourceBody461_4

def sourceBody461_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 16)

def sourceBody461_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody461_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 24)

def sourceBody461_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_75 sourceBody461_0

def sourceBody461_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_76 sourceBody461_0

def sourceBody461_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_74 sourceBody461_77

def sourceBody461_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_0 sourceBody461_78

def sourceBody461_80 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody461_79 sourceBody461_0

def sourceBody461_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_80 sourceBody461_4

def sourceBody461_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_81 sourceBody461_0

def sourceBody461_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_73 sourceBody461_82

def sourceBody461_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_72 sourceBody461_83

def sourceBody461_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_69 sourceBody461_84

def sourceBody461_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_68 sourceBody461_85

def sourceBody461_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_67 sourceBody461_86

def sourceBody461_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_0 sourceBody461_87

def sourceBody461_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_0 sourceBody461_88

def sourceBody461_90 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 34 (Flapjack.WordRegImm.imm 0#64) sourceBody461_89 sourceBody461_0

def sourceBody461_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_90 sourceBody461_4

def sourceBody461_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_91 sourceBody461_0

def sourceBody461_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_59 sourceBody461_92

def sourceBody461_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_58 sourceBody461_93

def sourceBody461_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_54 sourceBody461_94

def sourceBody461_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_53 sourceBody461_95

def sourceBody461_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody461_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody461_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_98 sourceBody461_0

def sourceBody461_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_99 sourceBody461_0

def sourceBody461_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_97 sourceBody461_100

def sourceBody461_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_0 sourceBody461_101

def sourceBody461_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_96 sourceBody461_102

def sourceBody461_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_52 sourceBody461_103

def sourceBody461_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_0 sourceBody461_104

def sourceBody461_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_0 sourceBody461_105

def sourceBody461_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_0 sourceBody461_106

def sourceBody461_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_0 sourceBody461_107

def sourceBody461_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_0 sourceBody461_108

def sourceBody461_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_0 sourceBody461_109

def sourceBody461_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody461_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_110 sourceBody461_111

def sourceBody461_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody461_114 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.imm 0#64) sourceBody461_112 sourceBody461_113

def sourceBody461_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_114 sourceBody461_4

def sourceBody461_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_115 sourceBody461_0

def sourceBody461_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_44 sourceBody461_116

def sourceBody461_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_43 sourceBody461_117

def sourceBody461_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_39 sourceBody461_118

def sourceBody461_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_38 sourceBody461_119

def sourceBody461_121 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln) sourceBody461_120 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody461_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_121 sourceBody461_4

def sourceBody461_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_4 sourceBody461_122

def sourceBody461_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_37 sourceBody461_123

def sourceBody461_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_0 sourceBody461_124

def sourceBody461_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_36 sourceBody461_125

def sourceBody461_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_0 sourceBody461_126

def sourceBody461_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_35 sourceBody461_127

def sourceBody461_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_29 sourceBody461_128

def sourceBody461_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_0 sourceBody461_129

def sourceBody461_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_28 sourceBody461_130

def sourceBody461_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_0 sourceBody461_131

def sourceBody461_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_27 sourceBody461_132

def sourceBody461_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_0 sourceBody461_133

def sourceBody461_135 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 36 (Flapjack.WordRegImm.imm 0#64) sourceBody461_134 sourceBody461_0

def sourceBody461_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_135 sourceBody461_4

def sourceBody461_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_136 sourceBody461_0

def sourceBody461_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_26 sourceBody461_137

def sourceBody461_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_25 sourceBody461_138

def sourceBody461_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_21 sourceBody461_139

def sourceBody461_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_20 sourceBody461_140

def sourceBody461_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody461_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 6)

def sourceBody461_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_143 sourceBody461_0

def sourceBody461_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_144 sourceBody461_0

def sourceBody461_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_142 sourceBody461_145

def sourceBody461_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_0 sourceBody461_146

def sourceBody461_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_141 sourceBody461_147

def sourceBody461_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_19 sourceBody461_148

def sourceBody461_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_0 sourceBody461_149

def sourceBody461_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_0 sourceBody461_150

def sourceBody461_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_0 sourceBody461_151

def sourceBody461_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_0 sourceBody461_152

def sourceBody461_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_0 sourceBody461_153

def sourceBody461_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_0 sourceBody461_154

def sourceBody461_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_155 sourceBody461_111

def sourceBody461_157 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody461_156 sourceBody461_113

def sourceBody461_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_157 sourceBody461_4

def sourceBody461_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_158 sourceBody461_0

def sourceBody461_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_11 sourceBody461_159

def sourceBody461_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_10 sourceBody461_160

def sourceBody461_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_6 sourceBody461_161

def sourceBody461_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_5 sourceBody461_162

def sourceBody461_164 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln) sourceBody461_163 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln) PUnit.unit
  Flapjack.Spt.ln)

def sourceBody461_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_164 sourceBody461_4

def sourceBody461_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_4 sourceBody461_165

def sourceBody461_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 2)

def sourceBody461_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 2000#64)

def sourceBody461_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody461_170 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody461_0, 461, 8)) (some 95) ([20, 38]) (some (20, sourceBody461_169, 461, 9))

def sourceBody461_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_170 sourceBody461_4

def sourceBody461_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_171 sourceBody461_0

def sourceBody461_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_168 sourceBody461_172

def sourceBody461_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_167 sourceBody461_173

def sourceBody461_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 28)

def sourceBody461_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 14)

def sourceBody461_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody461_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody461_179 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 38 (Flapjack.WordRegImm.reg 6) sourceBody461_177 sourceBody461_178

def sourceBody461_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_179 sourceBody461_4

def sourceBody461_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 38)

def sourceBody461_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 40#64)

def sourceBody461_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 20)

def sourceBody461_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_183 sourceBody461_0

def sourceBody461_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_184 sourceBody461_0

def sourceBody461_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_182 sourceBody461_185

def sourceBody461_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_0 sourceBody461_186

def sourceBody461_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody461_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_188 sourceBody461_169

def sourceBody461_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_187 sourceBody461_189

def sourceBody461_191 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody461_190 sourceBody461_0

def sourceBody461_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_191 sourceBody461_4

def sourceBody461_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_192 sourceBody461_0

def sourceBody461_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_181 sourceBody461_193

def sourceBody461_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_180 sourceBody461_194

def sourceBody461_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_176 sourceBody461_195

def sourceBody461_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_175 sourceBody461_196

def sourceBody461_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20]

def sourceBody461_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_198 sourceBody461_0

def sourceBody461_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_8 sourceBody461_199

def sourceBody461_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_197 sourceBody461_200

def sourceBody461_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_174 sourceBody461_201

def sourceBody461_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_0 sourceBody461_202

def sourceBody461_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_0 sourceBody461_203

def sourceBody461_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_166 sourceBody461_204

def sourceBody461_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_3 sourceBody461_205

def sourceBody461_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_0 sourceBody461_206

def sourceBody461_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_2 sourceBody461_207

def sourceBody461_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_0 sourceBody461_208

def sourceBody461_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_1 sourceBody461_209

def sourceBody461_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody461_0 sourceBody461_210

def source461 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (461, 2, sourceBody461_211)
end InitECandidate.Proofs.WordStages
