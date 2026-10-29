import InitECandidate.Proofs.WordStages.Source747
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody763_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody763_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody763_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody763_0, 763, 2)) (some 69) ([]) (some (8, sourceBody763_1, 763, 3))

def sourceBody763_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody763_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_2 sourceBody763_3

def sourceBody763_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_4 sourceBody763_0

def sourceBody763_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 576#64)

def sourceBody763_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody763_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody763_0, 763, 4)) (some 68) ([18]) (some (18, sourceBody763_7, 763, 5))

def sourceBody763_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_8 sourceBody763_3

def sourceBody763_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_9 sourceBody763_0

def sourceBody763_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_6 sourceBody763_10

def sourceBody763_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 576#64)

def sourceBody763_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody763_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody763_0, 763, 6)) (some 68) ([14]) (some (14, sourceBody763_13, 763, 7))

def sourceBody763_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_14 sourceBody763_3

def sourceBody763_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_15 sourceBody763_0

def sourceBody763_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_12 sourceBody763_16

def sourceBody763_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 8)

def sourceBody763_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 4)

def sourceBody763_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody763_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody763_0, 763, 8)) (some 755) ([24, 6]) (some (24, sourceBody763_20, 763, 9))

def sourceBody763_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_21 sourceBody763_3

def sourceBody763_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_22 sourceBody763_0

def sourceBody763_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_19 sourceBody763_23

def sourceBody763_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_18 sourceBody763_24

def sourceBody763_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_0 sourceBody763_25

def sourceBody763_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_0 sourceBody763_26

def sourceBody763_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 18)

def sourceBody763_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody763_0, 763, 10)) (some 756) ([24]) (some (24, sourceBody763_20, 763, 11))

def sourceBody763_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_29 sourceBody763_3

def sourceBody763_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_30 sourceBody763_0

def sourceBody763_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_28 sourceBody763_31

def sourceBody763_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_0 sourceBody763_32

def sourceBody763_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_0 sourceBody763_33

def sourceBody763_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_27 sourceBody763_34

def sourceBody763_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 392#64]),
        Flapjack.WordLangExpHOL.const 1376#64]))

def sourceBody763_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody763_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 64#64)

def sourceBody763_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody763_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 6)

def sourceBody763_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody763_42 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.WordRegImm.reg 22) sourceBody763_41 sourceBody763_39

def sourceBody763_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_42 sourceBody763_3

def sourceBody763_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody763_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody763_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 16)

def sourceBody763_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_46 sourceBody763_0

def sourceBody763_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_47 sourceBody763_0

def sourceBody763_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_45 sourceBody763_48

def sourceBody763_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_0 sourceBody763_49

def sourceBody763_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 24)

def sourceBody763_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody763_53 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 22) sourceBody763_41 sourceBody763_39

def sourceBody763_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_53 sourceBody763_3

def sourceBody763_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 18)

def sourceBody763_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 18)

def sourceBody763_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 18)

def sourceBody763_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody763_59 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody763_0, 763, 12)) (some 758) ([12, 22, 10]) (some (12, sourceBody763_58, 763, 13))

def sourceBody763_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_59 sourceBody763_3

def sourceBody763_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_60 sourceBody763_0

def sourceBody763_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_57 sourceBody763_61

def sourceBody763_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_56 sourceBody763_62

def sourceBody763_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_55 sourceBody763_63

def sourceBody763_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_0 sourceBody763_64

def sourceBody763_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_0 sourceBody763_65

def sourceBody763_67 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody763_66 sourceBody763_0

def sourceBody763_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_67 sourceBody763_3

def sourceBody763_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_68 sourceBody763_0

def sourceBody763_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_44 sourceBody763_69

def sourceBody763_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_54 sourceBody763_70

def sourceBody763_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_52 sourceBody763_71

def sourceBody763_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_51 sourceBody763_72

def sourceBody763_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_50 sourceBody763_73

def sourceBody763_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 14) (Flapjack.WordLangExpHOL.var 6),
      Flapjack.WordLangExpHOL.const 1#64])

def sourceBody763_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody763_77 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody763_0, 763, 14)) (some 758) ([12, 22, 10]) (some (12, sourceBody763_58, 763, 15))

def sourceBody763_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_77 sourceBody763_3

def sourceBody763_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_78 sourceBody763_0

def sourceBody763_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_76 sourceBody763_79

def sourceBody763_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_56 sourceBody763_80

def sourceBody763_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_55 sourceBody763_81

def sourceBody763_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_0 sourceBody763_82

def sourceBody763_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_0 sourceBody763_83

def sourceBody763_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody763_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_85 sourceBody763_0

def sourceBody763_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_86 sourceBody763_0

def sourceBody763_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_84 sourceBody763_87

def sourceBody763_89 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody763_88 sourceBody763_0

def sourceBody763_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_89 sourceBody763_3

def sourceBody763_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_90 sourceBody763_0

def sourceBody763_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_44 sourceBody763_91

def sourceBody763_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_54 sourceBody763_92

def sourceBody763_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_52 sourceBody763_93

def sourceBody763_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_75 sourceBody763_94

def sourceBody763_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_74 sourceBody763_95

def sourceBody763_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody763_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_96 sourceBody763_97

def sourceBody763_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody763_100 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody763_98 sourceBody763_99

def sourceBody763_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_100 sourceBody763_3

def sourceBody763_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_101 sourceBody763_0

def sourceBody763_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_44 sourceBody763_102

def sourceBody763_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_43 sourceBody763_103

def sourceBody763_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_40 sourceBody763_104

def sourceBody763_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_39 sourceBody763_105

def sourceBody763_107 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln) sourceBody763_106 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody763_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_107 sourceBody763_3

def sourceBody763_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_3 sourceBody763_108

def sourceBody763_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody763_111 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody763_0, 763, 16)) (some 755) ([12, 22]) (some (12, sourceBody763_58, 763, 17))

def sourceBody763_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_111 sourceBody763_3

def sourceBody763_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_112 sourceBody763_0

def sourceBody763_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_56 sourceBody763_113

def sourceBody763_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_110 sourceBody763_114

def sourceBody763_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_0 sourceBody763_115

def sourceBody763_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_0 sourceBody763_116

def sourceBody763_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_109 sourceBody763_117

def sourceBody763_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 20)

def sourceBody763_120 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody763_0, 763, 18)) (some 70) ([12]) (some (12, sourceBody763_58, 763, 19))

def sourceBody763_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_120 sourceBody763_3

def sourceBody763_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_121 sourceBody763_0

def sourceBody763_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_119 sourceBody763_122

def sourceBody763_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_0 sourceBody763_123

def sourceBody763_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_0 sourceBody763_124

def sourceBody763_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_118 sourceBody763_125

def sourceBody763_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody763_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [16]

def sourceBody763_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_128 sourceBody763_0

def sourceBody763_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_127 sourceBody763_129

def sourceBody763_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_126 sourceBody763_130

def sourceBody763_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_38 sourceBody763_131

def sourceBody763_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_0 sourceBody763_132

def sourceBody763_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_37 sourceBody763_133

def sourceBody763_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_0 sourceBody763_134

def sourceBody763_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_36 sourceBody763_135

def sourceBody763_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_0 sourceBody763_136

def sourceBody763_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_35 sourceBody763_137

def sourceBody763_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_17 sourceBody763_138

def sourceBody763_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_0 sourceBody763_139

def sourceBody763_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_0 sourceBody763_140

def sourceBody763_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_11 sourceBody763_141

def sourceBody763_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_0 sourceBody763_142

def sourceBody763_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_0 sourceBody763_143

def sourceBody763_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_5 sourceBody763_144

def sourceBody763_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_0 sourceBody763_145

def sourceBody763_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody763_0 sourceBody763_146

def source763 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (763, 3, sourceBody763_147)
end InitECandidate.Proofs.WordStages
