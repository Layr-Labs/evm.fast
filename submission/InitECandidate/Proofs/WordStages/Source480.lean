import InitECandidate.Proofs.WordStages.Source464
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody480_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody480_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 10)

def sourceBody480_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 12)

def sourceBody480_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 14)

def sourceBody480_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 16)

def sourceBody480_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody480_6 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody480_0, 480, 2)) (some 102) ([26, 40, 22, 36]) (some (26, sourceBody480_5, 480, 3))

def sourceBody480_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody480_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_6 sourceBody480_7

def sourceBody480_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_8 sourceBody480_0

def sourceBody480_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_4 sourceBody480_9

def sourceBody480_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_3 sourceBody480_10

def sourceBody480_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_2 sourceBody480_11

def sourceBody480_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_1 sourceBody480_12

def sourceBody480_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 32)

def sourceBody480_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody480_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody480_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody480_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 40 (Flapjack.WordRegImm.reg 22) sourceBody480_16 sourceBody480_17

def sourceBody480_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_18 sourceBody480_7

def sourceBody480_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 40)

def sourceBody480_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody480_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [26, 40]

def sourceBody480_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_22 sourceBody480_0

def sourceBody480_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_17 sourceBody480_23

def sourceBody480_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_21 sourceBody480_24

def sourceBody480_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 36 (Flapjack.WordRegImm.imm 0#64) sourceBody480_25 sourceBody480_0

def sourceBody480_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_26 sourceBody480_7

def sourceBody480_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_27 sourceBody480_0

def sourceBody480_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_20 sourceBody480_28

def sourceBody480_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_19 sourceBody480_29

def sourceBody480_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_15 sourceBody480_30

def sourceBody480_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_14 sourceBody480_31

def sourceBody480_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 2)

def sourceBody480_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 4)

def sourceBody480_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 6)

def sourceBody480_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 8)

def sourceBody480_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def sourceBody480_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody480_0, 480, 4)) (some 462) ([40, 22, 36, 28]) (some (40, sourceBody480_37, 480, 5))

def sourceBody480_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_38 sourceBody480_7

def sourceBody480_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_39 sourceBody480_0

def sourceBody480_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_36 sourceBody480_40

def sourceBody480_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_35 sourceBody480_41

def sourceBody480_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_34 sourceBody480_42

def sourceBody480_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_33 sourceBody480_43

def sourceBody480_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 10)

def sourceBody480_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 12)

def sourceBody480_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 14)

def sourceBody480_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 16)

def sourceBody480_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody480_50 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody480_0, 480, 6)) (some 462) ([22, 36, 28, 42]) (some (22, sourceBody480_49, 480, 7))

def sourceBody480_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_50 sourceBody480_7

def sourceBody480_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_51 sourceBody480_0

def sourceBody480_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_48 sourceBody480_52

def sourceBody480_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_47 sourceBody480_53

def sourceBody480_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_46 sourceBody480_54

def sourceBody480_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_45 sourceBody480_55

def sourceBody480_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 26)

def sourceBody480_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 40)

def sourceBody480_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 36

def sourceBody480_60 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody480_0, 480, 8)) (some 463) ([36, 28]) (some (36, sourceBody480_59, 480, 9))

def sourceBody480_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_60 sourceBody480_7

def sourceBody480_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_61 sourceBody480_0

def sourceBody480_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_58 sourceBody480_62

def sourceBody480_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_57 sourceBody480_63

def sourceBody480_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 22)

def sourceBody480_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody480_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody480_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody480_69 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 28 (Flapjack.WordRegImm.reg 42) sourceBody480_67 sourceBody480_68

def sourceBody480_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_69 sourceBody480_7

def sourceBody480_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 28)

def sourceBody480_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody480_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [36, 28]

def sourceBody480_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_73 sourceBody480_0

def sourceBody480_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_68 sourceBody480_74

def sourceBody480_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_72 sourceBody480_75

def sourceBody480_77 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 0#64) sourceBody480_76 sourceBody480_0

def sourceBody480_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_77 sourceBody480_7

def sourceBody480_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_78 sourceBody480_0

def sourceBody480_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_71 sourceBody480_79

def sourceBody480_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_70 sourceBody480_80

def sourceBody480_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_66 sourceBody480_81

def sourceBody480_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_65 sourceBody480_82

def sourceBody480_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 256#64]),
        Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody480_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 36)

def sourceBody480_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 42

def sourceBody480_87 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody480_0, 480, 10)) (some 464) ([42]) (some (42, sourceBody480_86, 480, 11))

def sourceBody480_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_87 sourceBody480_7

def sourceBody480_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_88 sourceBody480_0

def sourceBody480_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_85 sourceBody480_89

def sourceBody480_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 22)

def sourceBody480_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody480_93 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody480_0, 480, 12)) (some 464) ([18]) (some (18, sourceBody480_92, 480, 13))

def sourceBody480_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_93 sourceBody480_7

def sourceBody480_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_94 sourceBody480_0

def sourceBody480_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_91 sourceBody480_95

def sourceBody480_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 28)

def sourceBody480_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 42)

def sourceBody480_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody480_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody480_101 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 30 (Flapjack.WordRegImm.reg 24) sourceBody480_99 sourceBody480_100

def sourceBody480_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_101 sourceBody480_7

def sourceBody480_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 30)

def sourceBody480_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody480_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18, 30]

def sourceBody480_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_105 sourceBody480_0

def sourceBody480_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_100 sourceBody480_106

def sourceBody480_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_104 sourceBody480_107

def sourceBody480_109 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 38 (Flapjack.WordRegImm.imm 0#64) sourceBody480_108 sourceBody480_0

def sourceBody480_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_109 sourceBody480_7

def sourceBody480_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_110 sourceBody480_0

def sourceBody480_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_103 sourceBody480_111

def sourceBody480_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_102 sourceBody480_112

def sourceBody480_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_98 sourceBody480_113

def sourceBody480_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_97 sourceBody480_114

def sourceBody480_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 42)

def sourceBody480_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def sourceBody480_118 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody480_0, 480, 14)) (some 479) ([30]) (some (30, sourceBody480_117, 480, 15))

def sourceBody480_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_118 sourceBody480_7

def sourceBody480_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_119 sourceBody480_0

def sourceBody480_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_116 sourceBody480_120

def sourceBody480_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 28)

def sourceBody480_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody480_124 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody480_0, 480, 16)) (some 479) ([24]) (some (24, sourceBody480_123, 480, 17))

def sourceBody480_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_124 sourceBody480_7

def sourceBody480_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_125 sourceBody480_0

def sourceBody480_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_122 sourceBody480_126

def sourceBody480_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 18)

def sourceBody480_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody480_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody480_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody480_132 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 38 (Flapjack.WordRegImm.reg 20) sourceBody480_130 sourceBody480_131

def sourceBody480_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_132 sourceBody480_7

def sourceBody480_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 38)

def sourceBody480_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 18446744073709551615#64)

def sourceBody480_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [24, 38]

def sourceBody480_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_136 sourceBody480_0

def sourceBody480_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_131 sourceBody480_137

def sourceBody480_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_135 sourceBody480_138

def sourceBody480_140 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 34 (Flapjack.WordRegImm.imm 0#64) sourceBody480_139 sourceBody480_0

def sourceBody480_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_140 sourceBody480_7

def sourceBody480_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_141 sourceBody480_0

def sourceBody480_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_134 sourceBody480_142

def sourceBody480_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_133 sourceBody480_143

def sourceBody480_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_129 sourceBody480_144

def sourceBody480_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_128 sourceBody480_145

def sourceBody480_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.var 30])

def sourceBody480_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 42, Flapjack.WordLangExpHOL.var 28])

def sourceBody480_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_148 sourceBody480_137

def sourceBody480_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_147 sourceBody480_149

def sourceBody480_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_146 sourceBody480_150

def sourceBody480_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_127 sourceBody480_151

def sourceBody480_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_0 sourceBody480_152

def sourceBody480_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_0 sourceBody480_153

def sourceBody480_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_121 sourceBody480_154

def sourceBody480_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_0 sourceBody480_155

def sourceBody480_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_0 sourceBody480_156

def sourceBody480_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_115 sourceBody480_157

def sourceBody480_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_96 sourceBody480_158

def sourceBody480_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_0 sourceBody480_159

def sourceBody480_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_0 sourceBody480_160

def sourceBody480_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_90 sourceBody480_161

def sourceBody480_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_0 sourceBody480_162

def sourceBody480_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_0 sourceBody480_163

def sourceBody480_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_84 sourceBody480_164

def sourceBody480_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_0 sourceBody480_165

def sourceBody480_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_83 sourceBody480_166

def sourceBody480_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_64 sourceBody480_167

def sourceBody480_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_0 sourceBody480_168

def sourceBody480_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_0 sourceBody480_169

def sourceBody480_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_56 sourceBody480_170

def sourceBody480_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_0 sourceBody480_171

def sourceBody480_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_0 sourceBody480_172

def sourceBody480_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_44 sourceBody480_173

def sourceBody480_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_0 sourceBody480_174

def sourceBody480_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_0 sourceBody480_175

def sourceBody480_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_32 sourceBody480_176

def sourceBody480_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_13 sourceBody480_177

def sourceBody480_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_0 sourceBody480_178

def sourceBody480_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody480_0 sourceBody480_179

def source480 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (480, 9, sourceBody480_180)
end InitECandidate.Proofs.WordStages
