import InitECandidate.Proofs.WordStages.Source572
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody588_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody588_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def sourceBody588_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody588_0, 588, 2)) (some 492) ([]) (some (40, sourceBody588_1, 588, 3))

def sourceBody588_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody588_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_2 sourceBody588_3

def sourceBody588_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_4 sourceBody588_0

def sourceBody588_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_5

def sourceBody588_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_6

def sourceBody588_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody588_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([14, 40, 8, 34]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody588_0, 588, 4)) (some 475) ([]) (some (22, sourceBody588_8, 588, 5))

def sourceBody588_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_9 sourceBody588_3

def sourceBody588_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_10 sourceBody588_0

def sourceBody588_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 14)

def sourceBody588_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 40)

def sourceBody588_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 8)

def sourceBody588_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 34)

def sourceBody588_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 48

def sourceBody588_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody588_0, 588, 6)) (some 466) ([48, 4, 30, 18]) (some (48, sourceBody588_16, 588, 7))

def sourceBody588_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_17 sourceBody588_3

def sourceBody588_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_18 sourceBody588_0

def sourceBody588_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_15 sourceBody588_19

def sourceBody588_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_14 sourceBody588_20

def sourceBody588_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_13 sourceBody588_21

def sourceBody588_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_12 sourceBody588_22

def sourceBody588_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 22)

def sourceBody588_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody588_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([48]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody588_0, 588, 8)) (some 493) ([4]) (some (4, sourceBody588_25, 588, 9))

def sourceBody588_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_26 sourceBody588_3

def sourceBody588_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_27 sourceBody588_0

def sourceBody588_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_24 sourceBody588_28

def sourceBody588_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 5000#64)

def sourceBody588_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 48)

def sourceBody588_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody588_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody588_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody588_35 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 18 (Flapjack.WordRegImm.reg 44) sourceBody588_33 sourceBody588_34

def sourceBody588_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_35 sourceBody588_3

def sourceBody588_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 18)

def sourceBody588_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 3000#64])

def sourceBody588_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 30)

def sourceBody588_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_39 sourceBody588_0

def sourceBody588_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_40 sourceBody588_0

def sourceBody588_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_38 sourceBody588_41

def sourceBody588_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_42

def sourceBody588_44 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody588_43 sourceBody588_0

def sourceBody588_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_44 sourceBody588_3

def sourceBody588_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_45 sourceBody588_0

def sourceBody588_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_37 sourceBody588_46

def sourceBody588_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_36 sourceBody588_47

def sourceBody588_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_32 sourceBody588_48

def sourceBody588_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_31 sourceBody588_49

def sourceBody588_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 4)

def sourceBody588_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody588_53 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody588_0, 588, 10)) (some 470) ([18]) (some (18, sourceBody588_52, 588, 11))

def sourceBody588_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_53 sourceBody588_3

def sourceBody588_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_54 sourceBody588_0

def sourceBody588_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_51 sourceBody588_55

def sourceBody588_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_56

def sourceBody588_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_57

def sourceBody588_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_50 sourceBody588_58

def sourceBody588_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 22)

def sourceBody588_61 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody588_0, 588, 12)) (some 494) ([18]) (some (18, sourceBody588_52, 588, 13))

def sourceBody588_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_61 sourceBody588_3

def sourceBody588_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_62 sourceBody588_0

def sourceBody588_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_60 sourceBody588_63

def sourceBody588_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_64

def sourceBody588_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_65

def sourceBody588_67 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody588_66 sourceBody588_0

def sourceBody588_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_67 sourceBody588_3

def sourceBody588_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_68 sourceBody588_0

def sourceBody588_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_37 sourceBody588_69

def sourceBody588_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_36 sourceBody588_70

def sourceBody588_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_32 sourceBody588_71

def sourceBody588_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_31 sourceBody588_72

def sourceBody588_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_59 sourceBody588_73

def sourceBody588_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
            [Flapjack.WordLangExpHOL.load
                (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                  [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                      [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                          (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                          (Flapjack.WordLangExpHOL.const 1#64)],
                    Flapjack.WordLangExpHOL.const 256#64]),
              Flapjack.WordLangExpHOL.const 112#64]),
        Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody588_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 22)

def sourceBody588_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 44

def sourceBody588_78 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody588_0, 588, 14)) (some 418) ([44]) (some (44, sourceBody588_77, 588, 15))

def sourceBody588_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_78 sourceBody588_3

def sourceBody588_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_79 sourceBody588_0

def sourceBody588_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_76 sourceBody588_80

def sourceBody588_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 30)

def sourceBody588_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody588_84 : WordLangProgHOL (BitVec 64) :=
.call (some (([44]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody588_0, 588, 16)) (some 407) ([12]) (some (12, sourceBody588_83, 588, 17))

def sourceBody588_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_84 sourceBody588_3

def sourceBody588_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_85 sourceBody588_0

def sourceBody588_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_82 sourceBody588_86

def sourceBody588_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 44, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody588_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 44, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody588_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 44, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody588_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 44, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody588_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 38

def sourceBody588_93 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody588_0, 588, 18)) (some 102) ([38, 26, 52, 2]) (some (38, sourceBody588_92, 588, 19))

def sourceBody588_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_93 sourceBody588_3

def sourceBody588_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_94 sourceBody588_0

def sourceBody588_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_91 sourceBody588_95

def sourceBody588_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_90 sourceBody588_96

def sourceBody588_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_89 sourceBody588_97

def sourceBody588_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_88 sourceBody588_98

def sourceBody588_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody588_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody588_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 18)

def sourceBody588_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody588_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody588_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody588_106 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 28) sourceBody588_104 sourceBody588_105

def sourceBody588_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_106 sourceBody588_3

def sourceBody588_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody588_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody588_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody588_111 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 42 (Flapjack.WordRegImm.reg 10) sourceBody588_110 sourceBody588_108

def sourceBody588_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_111 sourceBody588_3

def sourceBody588_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 12)

def sourceBody588_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody588_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody588_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody588_117 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 24 (Flapjack.WordRegImm.reg 50) sourceBody588_115 sourceBody588_116

def sourceBody588_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_117 sourceBody588_3

def sourceBody588_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody588_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 24)

def sourceBody588_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody588_122 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 32 (Flapjack.WordRegImm.reg 20) sourceBody588_121 sourceBody588_119

def sourceBody588_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_122 sourceBody588_3

def sourceBody588_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 42, Flapjack.WordLangExpHOL.var 32])

def sourceBody588_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 183600#64)

def sourceBody588_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_125 sourceBody588_0

def sourceBody588_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_126 sourceBody588_0

def sourceBody588_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 9000#64)

def sourceBody588_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_128 sourceBody588_0

def sourceBody588_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_129 sourceBody588_0

def sourceBody588_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_127 sourceBody588_130

def sourceBody588_132 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 46 (Flapjack.WordRegImm.imm 0#64) sourceBody588_131 sourceBody588_0

def sourceBody588_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_132 sourceBody588_3

def sourceBody588_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_133 sourceBody588_0

def sourceBody588_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_124 sourceBody588_134

def sourceBody588_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_123 sourceBody588_135

def sourceBody588_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_120 sourceBody588_136

def sourceBody588_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_119 sourceBody588_137

def sourceBody588_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_118 sourceBody588_138

def sourceBody588_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_114 sourceBody588_139

def sourceBody588_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_113 sourceBody588_140

def sourceBody588_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_112 sourceBody588_141

def sourceBody588_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_109 sourceBody588_142

def sourceBody588_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_108 sourceBody588_143

def sourceBody588_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_107 sourceBody588_144

def sourceBody588_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_103 sourceBody588_145

def sourceBody588_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_102 sourceBody588_146

def sourceBody588_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 26)

def sourceBody588_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def sourceBody588_150 : WordLangProgHOL (BitVec 64) :=
.call (some (([52]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody588_0, 588, 20)) (some 470) ([2]) (some (2, sourceBody588_149, 588, 21))

def sourceBody588_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_150 sourceBody588_3

def sourceBody588_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_151 sourceBody588_0

def sourceBody588_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_148 sourceBody588_152

def sourceBody588_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_153

def sourceBody588_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_154

def sourceBody588_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_147 sourceBody588_155

def sourceBody588_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 38)

def sourceBody588_158 : WordLangProgHOL (BitVec 64) :=
.call (some (([52]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody588_0, 588, 22)) (some 471) ([2]) (some (2, sourceBody588_149, 588, 23))

def sourceBody588_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_158 sourceBody588_3

def sourceBody588_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_159 sourceBody588_0

def sourceBody588_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_157 sourceBody588_160

def sourceBody588_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_161

def sourceBody588_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_162

def sourceBody588_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_156 sourceBody588_163

def sourceBody588_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 30)

def sourceBody588_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 52

def sourceBody588_167 : WordLangProgHOL (BitVec 64) :=
.call (some (([44]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody588_0, 588, 24)) (some 407) ([52]) (some (52, sourceBody588_166, 588, 25))

def sourceBody588_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_167 sourceBody588_3

def sourceBody588_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_168 sourceBody588_0

def sourceBody588_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_165 sourceBody588_169

def sourceBody588_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_164 sourceBody588_170

def sourceBody588_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 44, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody588_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 44, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody588_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 44, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody588_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 44, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody588_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 30)

def sourceBody588_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 22)

def sourceBody588_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 52)

def sourceBody588_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 2)

def sourceBody588_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 28)

def sourceBody588_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 16)

def sourceBody588_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody588_183 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody588_0, 588, 26)) (some 427) ([10, 36, 24, 50, 6, 32]) (some (10, sourceBody588_182, 588, 27))

def sourceBody588_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_183 sourceBody588_3

def sourceBody588_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_184 sourceBody588_0

def sourceBody588_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_181 sourceBody588_185

def sourceBody588_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_180 sourceBody588_186

def sourceBody588_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_179 sourceBody588_187

def sourceBody588_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_178 sourceBody588_188

def sourceBody588_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_177 sourceBody588_189

def sourceBody588_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_176 sourceBody588_190

def sourceBody588_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_191

def sourceBody588_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_192

def sourceBody588_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 22)

def sourceBody588_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 30)

def sourceBody588_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody588_197 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody588_0, 588, 28)) (some 79) ([10, 36, 24]) (some (10, sourceBody588_182, 588, 29))

def sourceBody588_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_197 sourceBody588_3

def sourceBody588_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_198 sourceBody588_0

def sourceBody588_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_196 sourceBody588_199

def sourceBody588_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_195 sourceBody588_200

def sourceBody588_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_194 sourceBody588_201

def sourceBody588_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 42)

def sourceBody588_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody588_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody588_206 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 36 (Flapjack.WordRegImm.reg 24) sourceBody588_204 sourceBody588_205

def sourceBody588_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_206 sourceBody588_3

def sourceBody588_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 36)

def sourceBody588_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 22)

def sourceBody588_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 52)

def sourceBody588_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody588_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 28)

def sourceBody588_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 16)

def sourceBody588_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 36

def sourceBody588_215 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody588_0, 588, 30)) (some 585) ([36, 24, 50, 6, 32, 20]) (some (36, sourceBody588_214, 588, 31))

def sourceBody588_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_215 sourceBody588_3

def sourceBody588_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_216 sourceBody588_0

def sourceBody588_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_213 sourceBody588_217

def sourceBody588_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_212 sourceBody588_218

def sourceBody588_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_211 sourceBody588_219

def sourceBody588_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_210 sourceBody588_220

def sourceBody588_222 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_209 sourceBody588_221

def sourceBody588_223 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_195 sourceBody588_222

def sourceBody588_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_223

def sourceBody588_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_224

def sourceBody588_226 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 50 (Flapjack.WordRegImm.imm 0#64) sourceBody588_225 sourceBody588_0

def sourceBody588_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_226 sourceBody588_3

def sourceBody588_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_227 sourceBody588_0

def sourceBody588_229 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_208 sourceBody588_228

def sourceBody588_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_207 sourceBody588_229

def sourceBody588_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_116 sourceBody588_230

def sourceBody588_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_203 sourceBody588_231

def sourceBody588_233 : WordLangProgHOL (BitVec 64) :=
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
              Flapjack.WordLangExpHOL.const 184#64]),
        Flapjack.WordLangExpHOL.const 56#64]))

def sourceBody588_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 30)

def sourceBody588_235 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody588_0, 588, 32)) (some 187) ([36, 24]) (some (36, sourceBody588_214, 588, 33))

def sourceBody588_236 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_235 sourceBody588_3

def sourceBody588_237 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_236 sourceBody588_0

def sourceBody588_238 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_234 sourceBody588_237

def sourceBody588_239 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_233 sourceBody588_238

def sourceBody588_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 10)

def sourceBody588_241 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.reg 50) sourceBody588_115 sourceBody588_116

def sourceBody588_242 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_241 sourceBody588_3

def sourceBody588_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 24)

def sourceBody588_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
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
        Flapjack.WordLangExpHOL.const 136#64]))

def sourceBody588_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 30)

def sourceBody588_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody588_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody588_248 : WordLangProgHOL (BitVec 64) :=
.call (some (([36]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody588_0, 588, 34)) (some 192) ([24, 50, 6]) (some (24, sourceBody588_247, 588, 35))

def sourceBody588_249 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_248 sourceBody588_3

def sourceBody588_250 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_249 sourceBody588_0

def sourceBody588_251 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_246 sourceBody588_250

def sourceBody588_252 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_245 sourceBody588_251

def sourceBody588_253 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_244 sourceBody588_252

def sourceBody588_254 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_253

def sourceBody588_255 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_254

def sourceBody588_256 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody588_255 sourceBody588_0

def sourceBody588_257 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_256 sourceBody588_3

def sourceBody588_258 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_257 sourceBody588_0

def sourceBody588_259 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_243 sourceBody588_258

def sourceBody588_260 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_242 sourceBody588_259

def sourceBody588_261 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_114 sourceBody588_260

def sourceBody588_262 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_240 sourceBody588_261

def sourceBody588_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 104#64])

def sourceBody588_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 24)

def sourceBody588_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 36) 50

def sourceBody588_266 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_265 sourceBody588_0

def sourceBody588_267 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_264 sourceBody588_266

def sourceBody588_268 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_267 sourceBody588_0

def sourceBody588_269 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_116 sourceBody588_268

def sourceBody588_270 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_269

def sourceBody588_271 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_263 sourceBody588_270

def sourceBody588_272 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_271

def sourceBody588_273 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_262 sourceBody588_272

def sourceBody588_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [36]

def sourceBody588_275 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_274 sourceBody588_0

def sourceBody588_276 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_205 sourceBody588_275

def sourceBody588_277 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_273 sourceBody588_276

def sourceBody588_278 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_239 sourceBody588_277

def sourceBody588_279 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_278

def sourceBody588_280 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_279

def sourceBody588_281 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_232 sourceBody588_280

def sourceBody588_282 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_202 sourceBody588_281

def sourceBody588_283 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_282

def sourceBody588_284 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_283

def sourceBody588_285 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_193 sourceBody588_284

def sourceBody588_286 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_175 sourceBody588_285

def sourceBody588_287 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_286

def sourceBody588_288 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_174 sourceBody588_287

def sourceBody588_289 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_288

def sourceBody588_290 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_173 sourceBody588_289

def sourceBody588_291 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_290

def sourceBody588_292 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_172 sourceBody588_291

def sourceBody588_293 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_292

def sourceBody588_294 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_171 sourceBody588_293

def sourceBody588_295 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_101 sourceBody588_294

def sourceBody588_296 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_295

def sourceBody588_297 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_100 sourceBody588_296

def sourceBody588_298 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_297

def sourceBody588_299 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_99 sourceBody588_298

def sourceBody588_300 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_299

def sourceBody588_301 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_300

def sourceBody588_302 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_87 sourceBody588_301

def sourceBody588_303 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_302

def sourceBody588_304 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_303

def sourceBody588_305 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_81 sourceBody588_304

def sourceBody588_306 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_305

def sourceBody588_307 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_306

def sourceBody588_308 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_75 sourceBody588_307

def sourceBody588_309 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_308

def sourceBody588_310 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_74 sourceBody588_309

def sourceBody588_311 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_30 sourceBody588_310

def sourceBody588_312 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_311

def sourceBody588_313 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_29 sourceBody588_312

def sourceBody588_314 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_313

def sourceBody588_315 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_314

def sourceBody588_316 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_23 sourceBody588_315

def sourceBody588_317 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_316

def sourceBody588_318 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_317

def sourceBody588_319 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_11 sourceBody588_318

def sourceBody588_320 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_319

def sourceBody588_321 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_320

def sourceBody588_322 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_321

def sourceBody588_323 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_322

def sourceBody588_324 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_323

def sourceBody588_325 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_324

def sourceBody588_326 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_325

def sourceBody588_327 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_0 sourceBody588_326

def sourceBody588_328 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody588_7 sourceBody588_327

def source588 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (588, 1, sourceBody588_328)
end InitECandidate.Proofs.WordStages
