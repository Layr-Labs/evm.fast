import InitECandidate.Proofs.WordStages.Source820
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody836_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody836_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
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
        Flapjack.WordLangExpHOL.const 112#64]))

def sourceBody836_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 88#64]))

def sourceBody836_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 96#64]))

def sourceBody836_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 272#64]))

def sourceBody836_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 60)

def sourceBody836_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 12)

def sourceBody836_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody836_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 96#64)

def sourceBody836_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 50)

def sourceBody836_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 70

def sourceBody836_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody836_0, 836, 2)) (some 484) ([70, 6, 46, 28, 66]) (some (70, sourceBody836_10, 836, 3))

def sourceBody836_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody836_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_11 sourceBody836_12

def sourceBody836_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_13 sourceBody836_0

def sourceBody836_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_9 sourceBody836_14

def sourceBody836_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_8 sourceBody836_15

def sourceBody836_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_7 sourceBody836_16

def sourceBody836_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_6 sourceBody836_17

def sourceBody836_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_5 sourceBody836_18

def sourceBody836_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_19

def sourceBody836_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_20

def sourceBody836_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 50)

def sourceBody836_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody836_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody836_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([32, 70, 6, 46]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody836_0, 836, 4)) (some 146) ([28, 66]) (some (28, sourceBody836_24, 836, 5))

def sourceBody836_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_25 sourceBody836_12

def sourceBody836_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_26 sourceBody836_0

def sourceBody836_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_23 sourceBody836_27

def sourceBody836_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_22 sourceBody836_28

def sourceBody836_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 32)

def sourceBody836_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 70)

def sourceBody836_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 6)

def sourceBody836_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 46)

def sourceBody836_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 66

def sourceBody836_35 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody836_0, 836, 6)) (some 462) ([66, 18, 56, 38]) (some (66, sourceBody836_34, 836, 7))

def sourceBody836_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_35 sourceBody836_12

def sourceBody836_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_36 sourceBody836_0

def sourceBody836_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_33 sourceBody836_37

def sourceBody836_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_32 sourceBody836_38

def sourceBody836_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_31 sourceBody836_39

def sourceBody836_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_30 sourceBody836_40

def sourceBody836_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1024#64)

def sourceBody836_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 28)

def sourceBody836_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody836_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody836_46 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 18 (Flapjack.WordRegImm.reg 56) sourceBody836_44 sourceBody836_45

def sourceBody836_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_46 sourceBody836_12

def sourceBody836_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 18)

def sourceBody836_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody836_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 66)

def sourceBody836_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_50 sourceBody836_0

def sourceBody836_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_51 sourceBody836_0

def sourceBody836_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_49 sourceBody836_52

def sourceBody836_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_53

def sourceBody836_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody836_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_55 sourceBody836_34

def sourceBody836_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_54 sourceBody836_56

def sourceBody836_58 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 38 (Flapjack.WordRegImm.imm 0#64) sourceBody836_57 sourceBody836_0

def sourceBody836_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_58 sourceBody836_12

def sourceBody836_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_59 sourceBody836_0

def sourceBody836_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_48 sourceBody836_60

def sourceBody836_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_47 sourceBody836_61

def sourceBody836_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_43 sourceBody836_62

def sourceBody836_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_42 sourceBody836_63

def sourceBody836_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 50, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody836_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody836_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 76

def sourceBody836_68 : WordLangProgHOL (BitVec 64) :=
.call (some (([66, 18, 56, 38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody836_0, 836, 8)) (some 146) ([76, 4]) (some (76, sourceBody836_67, 836, 9))

def sourceBody836_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_68 sourceBody836_12

def sourceBody836_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_69 sourceBody836_0

def sourceBody836_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_66 sourceBody836_70

def sourceBody836_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_65 sourceBody836_71

def sourceBody836_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 66)

def sourceBody836_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 18)

def sourceBody836_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 56)

def sourceBody836_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 38)

def sourceBody836_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody836_78 : WordLangProgHOL (BitVec 64) :=
.call (some (([76]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody836_0, 836, 10)) (some 462) ([4, 44, 26, 64]) (some (4, sourceBody836_77, 836, 11))

def sourceBody836_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_78 sourceBody836_12

def sourceBody836_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_79 sourceBody836_0

def sourceBody836_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_76 sourceBody836_80

def sourceBody836_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_75 sourceBody836_81

def sourceBody836_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_74 sourceBody836_82

def sourceBody836_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_73 sourceBody836_83

def sourceBody836_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 1024#64)

def sourceBody836_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 76)

def sourceBody836_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody836_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody836_89 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 44 (Flapjack.WordRegImm.reg 26) sourceBody836_87 sourceBody836_88

def sourceBody836_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_89 sourceBody836_12

def sourceBody836_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 44)

def sourceBody836_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody836_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 4)

def sourceBody836_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_93 sourceBody836_0

def sourceBody836_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_94 sourceBody836_0

def sourceBody836_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_92 sourceBody836_95

def sourceBody836_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_96

def sourceBody836_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody836_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_98 sourceBody836_77

def sourceBody836_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_97 sourceBody836_99

def sourceBody836_101 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 64 (Flapjack.WordRegImm.imm 0#64) sourceBody836_100 sourceBody836_0

def sourceBody836_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_101 sourceBody836_12

def sourceBody836_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_102 sourceBody836_0

def sourceBody836_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_91 sourceBody836_103

def sourceBody836_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_90 sourceBody836_104

def sourceBody836_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_86 sourceBody836_105

def sourceBody836_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_85 sourceBody836_106

def sourceBody836_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 50, Flapjack.WordLangExpHOL.const 64#64])

def sourceBody836_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody836_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody836_111 : WordLangProgHOL (BitVec 64) :=
.call (some (([4, 44, 26, 64]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody836_0, 836, 12)) (some 146) ([16, 54]) (some (16, sourceBody836_110, 836, 13))

def sourceBody836_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_111 sourceBody836_12

def sourceBody836_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_112 sourceBody836_0

def sourceBody836_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_109 sourceBody836_113

def sourceBody836_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_108 sourceBody836_114

def sourceBody836_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 4)

def sourceBody836_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 44)

def sourceBody836_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 26)

def sourceBody836_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 64)

def sourceBody836_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 54

def sourceBody836_121 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody836_0, 836, 14)) (some 462) ([54, 36, 74, 10]) (some (54, sourceBody836_120, 836, 15))

def sourceBody836_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_121 sourceBody836_12

def sourceBody836_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_122 sourceBody836_0

def sourceBody836_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_119 sourceBody836_123

def sourceBody836_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_118 sourceBody836_124

def sourceBody836_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_117 sourceBody836_125

def sourceBody836_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_116 sourceBody836_126

def sourceBody836_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 1024#64)

def sourceBody836_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 16)

def sourceBody836_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody836_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody836_132 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 36 (Flapjack.WordRegImm.reg 74) sourceBody836_130 sourceBody836_131

def sourceBody836_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_132 sourceBody836_12

def sourceBody836_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 36)

def sourceBody836_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody836_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 54)

def sourceBody836_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_136 sourceBody836_0

def sourceBody836_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_137 sourceBody836_0

def sourceBody836_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_135 sourceBody836_138

def sourceBody836_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_139

def sourceBody836_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody836_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_141 sourceBody836_120

def sourceBody836_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_140 sourceBody836_142

def sourceBody836_144 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody836_143 sourceBody836_0

def sourceBody836_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_144 sourceBody836_12

def sourceBody836_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_145 sourceBody836_0

def sourceBody836_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_134 sourceBody836_146

def sourceBody836_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_133 sourceBody836_147

def sourceBody836_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_129 sourceBody836_148

def sourceBody836_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_128 sourceBody836_149

def sourceBody836_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.const 96#64, Flapjack.WordLangExpHOL.var 28])

def sourceBody836_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody836_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 76)

def sourceBody836_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 74

def sourceBody836_155 : WordLangProgHOL (BitVec 64) :=
.call (some (([36]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody836_0, 836, 16)) (some 92) ([74, 10]) (some (74, sourceBody836_154, 836, 17))

def sourceBody836_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_155 sourceBody836_12

def sourceBody836_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_156 sourceBody836_0

def sourceBody836_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_153 sourceBody836_157

def sourceBody836_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_152 sourceBody836_158

def sourceBody836_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 60)

def sourceBody836_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 12)

def sourceBody836_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 54)

def sourceBody836_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 36)

def sourceBody836_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 50)

def sourceBody836_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody836_166 : WordLangProgHOL (BitVec 64) :=
.call (some (([74]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody836_0, 836, 18)) (some 484) ([10, 48, 30, 68, 20]) (some (10, sourceBody836_165, 836, 19))

def sourceBody836_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_166 sourceBody836_12

def sourceBody836_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_167 sourceBody836_0

def sourceBody836_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_164 sourceBody836_168

def sourceBody836_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_163 sourceBody836_169

def sourceBody836_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_162 sourceBody836_170

def sourceBody836_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_161 sourceBody836_171

def sourceBody836_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_160 sourceBody836_172

def sourceBody836_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_173

def sourceBody836_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_174

def sourceBody836_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 50)

def sourceBody836_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 36)

def sourceBody836_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 68

def sourceBody836_179 : WordLangProgHOL (BitVec 64) :=
.call (some (([74, 10, 48, 30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody836_0, 836, 20)) (some 146) ([68, 20]) (some (68, sourceBody836_178, 836, 21))

def sourceBody836_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_179 sourceBody836_12

def sourceBody836_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_180 sourceBody836_0

def sourceBody836_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_177 sourceBody836_181

def sourceBody836_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_176 sourceBody836_182

def sourceBody836_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 28)

def sourceBody836_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 16)

def sourceBody836_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 76)

def sourceBody836_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 74)

def sourceBody836_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 10)

def sourceBody836_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 48)

def sourceBody836_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 30)

def sourceBody836_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody836_192 : WordLangProgHOL (BitVec 64) :=
.call (some (([68]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody836_0, 836, 22)) (some 835) ([20, 58, 40, 78, 2, 42, 24]) (some (20, sourceBody836_191, 836, 23))

def sourceBody836_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_192 sourceBody836_12

def sourceBody836_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_193 sourceBody836_0

def sourceBody836_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_190 sourceBody836_194

def sourceBody836_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_189 sourceBody836_195

def sourceBody836_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_188 sourceBody836_196

def sourceBody836_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_187 sourceBody836_197

def sourceBody836_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_186 sourceBody836_198

def sourceBody836_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_185 sourceBody836_199

def sourceBody836_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_184 sourceBody836_200

def sourceBody836_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 68)

def sourceBody836_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 58

def sourceBody836_204 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody836_0, 836, 24)) (some 470) ([58]) (some (58, sourceBody836_203, 836, 25))

def sourceBody836_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_204 sourceBody836_12

def sourceBody836_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_205 sourceBody836_0

def sourceBody836_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_202 sourceBody836_206

def sourceBody836_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_207

def sourceBody836_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_208

def sourceBody836_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 28)

def sourceBody836_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody836_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody836_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody836_214 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 58 (Flapjack.WordRegImm.reg 40) sourceBody836_212 sourceBody836_213

def sourceBody836_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_214 sourceBody836_12

def sourceBody836_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody836_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 58)

def sourceBody836_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody836_219 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 42) sourceBody836_218 sourceBody836_216

def sourceBody836_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_219 sourceBody836_12

def sourceBody836_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 16)

def sourceBody836_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody836_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody836_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody836_225 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 62 (Flapjack.WordRegImm.reg 14) sourceBody836_223 sourceBody836_224

def sourceBody836_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_225 sourceBody836_12

def sourceBody836_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody836_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 62)

def sourceBody836_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody836_230 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 34 (Flapjack.WordRegImm.reg 72) sourceBody836_229 sourceBody836_227

def sourceBody836_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_230 sourceBody836_12

def sourceBody836_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 34])

def sourceBody836_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody836_234 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody836_0, 836, 26)) (some 68) ([58]) (some (58, sourceBody836_203, 836, 27))

def sourceBody836_235 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_234 sourceBody836_12

def sourceBody836_236 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_235 sourceBody836_0

def sourceBody836_237 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_233 sourceBody836_236

def sourceBody836_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 120#64])

def sourceBody836_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 20)

def sourceBody836_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 40)

def sourceBody836_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 58) 78

def sourceBody836_242 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_241 sourceBody836_0

def sourceBody836_243 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_240 sourceBody836_242

def sourceBody836_244 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_243 sourceBody836_0

def sourceBody836_245 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_239 sourceBody836_244

def sourceBody836_246 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_245

def sourceBody836_247 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_238 sourceBody836_246

def sourceBody836_248 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_247

def sourceBody836_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 128#64])

def sourceBody836_250 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_211 sourceBody836_244

def sourceBody836_251 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_250

def sourceBody836_252 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_249 sourceBody836_251

def sourceBody836_253 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_252

def sourceBody836_254 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_248 sourceBody836_253

def sourceBody836_255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [58]

def sourceBody836_256 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_255 sourceBody836_0

def sourceBody836_257 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_213 sourceBody836_256

def sourceBody836_258 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_254 sourceBody836_257

def sourceBody836_259 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_237 sourceBody836_258

def sourceBody836_260 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_259

def sourceBody836_261 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_260

def sourceBody836_262 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody836_261 sourceBody836_0

def sourceBody836_263 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_262 sourceBody836_12

def sourceBody836_264 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_263 sourceBody836_0

def sourceBody836_265 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_232 sourceBody836_264

def sourceBody836_266 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_231 sourceBody836_265

def sourceBody836_267 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_228 sourceBody836_266

def sourceBody836_268 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_227 sourceBody836_267

def sourceBody836_269 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_226 sourceBody836_268

def sourceBody836_270 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_222 sourceBody836_269

def sourceBody836_271 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_221 sourceBody836_270

def sourceBody836_272 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_220 sourceBody836_271

def sourceBody836_273 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_217 sourceBody836_272

def sourceBody836_274 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_216 sourceBody836_273

def sourceBody836_275 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_215 sourceBody836_274

def sourceBody836_276 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_211 sourceBody836_275

def sourceBody836_277 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_210 sourceBody836_276

def sourceBody836_278 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_209 sourceBody836_277

def sourceBody836_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody836_280 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody836_0, 836, 28)) (some 68) ([58]) (some (58, sourceBody836_203, 836, 29))

def sourceBody836_281 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_280 sourceBody836_12

def sourceBody836_282 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_281 sourceBody836_0

def sourceBody836_283 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_279 sourceBody836_282

def sourceBody836_284 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def sourceBody836_285 : WordLangProgHOL (BitVec 64) :=
.call (some (([58]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody836_0, 836, 30)) (some 69) ([]) (some (40, sourceBody836_284, 836, 31))

def sourceBody836_286 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_285 sourceBody836_12

def sourceBody836_287 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_286 sourceBody836_0

def sourceBody836_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody836_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 78

def sourceBody836_290 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody836_0, 836, 32)) (some 68) ([78]) (some (78, sourceBody836_289, 836, 33))

def sourceBody836_291 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_290 sourceBody836_12

def sourceBody836_292 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_291 sourceBody836_0

def sourceBody836_293 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_288 sourceBody836_292

def sourceBody836_294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 76, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody836_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def sourceBody836_296 : WordLangProgHOL (BitVec 64) :=
.call (some (([78]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody836_0, 836, 34)) (some 68) ([2]) (some (2, sourceBody836_295, 836, 35))

def sourceBody836_297 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_296 sourceBody836_12

def sourceBody836_298 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_297 sourceBody836_0

def sourceBody836_299 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_294 sourceBody836_298

def sourceBody836_300 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody836_301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 42

def sourceBody836_302 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody836_0, 836, 36)) (some 68) ([42]) (some (42, sourceBody836_301, 836, 37))

def sourceBody836_303 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_302 sourceBody836_12

def sourceBody836_304 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_303 sourceBody836_0

def sourceBody836_305 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_300 sourceBody836_304

def sourceBody836_306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 60)

def sourceBody836_307 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 12)

def sourceBody836_308 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 96#64)

def sourceBody836_309 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 28)

def sourceBody836_310 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 40)

def sourceBody836_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody836_312 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody836_0, 836, 38)) (some 484) ([24, 62, 14, 52, 34]) (some (24, sourceBody836_311, 836, 39))

def sourceBody836_313 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_312 sourceBody836_12

def sourceBody836_314 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_313 sourceBody836_0

def sourceBody836_315 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_310 sourceBody836_314

def sourceBody836_316 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_309 sourceBody836_315

def sourceBody836_317 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_308 sourceBody836_316

def sourceBody836_318 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_307 sourceBody836_317

def sourceBody836_319 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_306 sourceBody836_318

def sourceBody836_320 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_319

def sourceBody836_321 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_320

def sourceBody836_322 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 54)

def sourceBody836_323 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 76)

def sourceBody836_324 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 78)

def sourceBody836_325 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody836_0, 836, 40)) (some 484) ([24, 62, 14, 52, 34]) (some (24, sourceBody836_311, 836, 41))

def sourceBody836_326 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_325 sourceBody836_12

def sourceBody836_327 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_326 sourceBody836_0

def sourceBody836_328 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_324 sourceBody836_327

def sourceBody836_329 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_323 sourceBody836_328

def sourceBody836_330 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_322 sourceBody836_329

def sourceBody836_331 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_307 sourceBody836_330

def sourceBody836_332 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_306 sourceBody836_331

def sourceBody836_333 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_332

def sourceBody836_334 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_333

def sourceBody836_335 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_321 sourceBody836_334

def sourceBody836_336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 54, Flapjack.WordLangExpHOL.var 76])

def sourceBody836_337 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 16)

def sourceBody836_338 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 2)

def sourceBody836_339 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody836_0, 836, 42)) (some 484) ([24, 62, 14, 52, 34]) (some (24, sourceBody836_311, 836, 43))

def sourceBody836_340 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_339 sourceBody836_12

def sourceBody836_341 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_340 sourceBody836_0

def sourceBody836_342 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_338 sourceBody836_341

def sourceBody836_343 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_337 sourceBody836_342

def sourceBody836_344 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_336 sourceBody836_343

def sourceBody836_345 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_307 sourceBody836_344

def sourceBody836_346 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_306 sourceBody836_345

def sourceBody836_347 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_346

def sourceBody836_348 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_347

def sourceBody836_349 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_335 sourceBody836_348

def sourceBody836_350 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 40)

def sourceBody836_351 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 28)

def sourceBody836_352 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 78)

def sourceBody836_353 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 16)

def sourceBody836_354 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 20)

def sourceBody836_355 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody836_0, 836, 44)) (some 641) ([24, 62, 14, 52, 34, 72, 8]) (some (24, sourceBody836_311, 836, 45))

def sourceBody836_356 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_355 sourceBody836_12

def sourceBody836_357 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_356 sourceBody836_0

def sourceBody836_358 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_354 sourceBody836_357

def sourceBody836_359 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_353 sourceBody836_358

def sourceBody836_360 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_338 sourceBody836_359

def sourceBody836_361 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_323 sourceBody836_360

def sourceBody836_362 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_352 sourceBody836_361

def sourceBody836_363 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_351 sourceBody836_362

def sourceBody836_364 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_350 sourceBody836_363

def sourceBody836_365 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_364

def sourceBody836_366 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_365

def sourceBody836_367 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_349 sourceBody836_366

def sourceBody836_368 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 58)

def sourceBody836_369 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody836_0, 836, 46)) (some 70) ([24]) (some (24, sourceBody836_311, 836, 47))

def sourceBody836_370 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_369 sourceBody836_12

def sourceBody836_371 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_370 sourceBody836_0

def sourceBody836_372 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_368 sourceBody836_371

def sourceBody836_373 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_372

def sourceBody836_374 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_373

def sourceBody836_375 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_367 sourceBody836_374

def sourceBody836_376 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 120#64])

def sourceBody836_377 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 20)

def sourceBody836_378 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 24)

def sourceBody836_379 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 42) 62

def sourceBody836_380 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_379 sourceBody836_0

def sourceBody836_381 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_378 sourceBody836_380

def sourceBody836_382 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_381 sourceBody836_0

def sourceBody836_383 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_377 sourceBody836_382

def sourceBody836_384 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_383

def sourceBody836_385 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_376 sourceBody836_384

def sourceBody836_386 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_385

def sourceBody836_387 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_375 sourceBody836_386

def sourceBody836_388 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 128#64])

def sourceBody836_389 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 16)

def sourceBody836_390 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_389 sourceBody836_382

def sourceBody836_391 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_390

def sourceBody836_392 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_388 sourceBody836_391

def sourceBody836_393 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_392

def sourceBody836_394 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_387 sourceBody836_393

def sourceBody836_395 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody836_396 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [42]

def sourceBody836_397 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_396 sourceBody836_0

def sourceBody836_398 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_395 sourceBody836_397

def sourceBody836_399 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_394 sourceBody836_398

def sourceBody836_400 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_305 sourceBody836_399

def sourceBody836_401 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_400

def sourceBody836_402 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_401

def sourceBody836_403 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_299 sourceBody836_402

def sourceBody836_404 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_403

def sourceBody836_405 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_404

def sourceBody836_406 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_293 sourceBody836_405

def sourceBody836_407 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_406

def sourceBody836_408 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_407

def sourceBody836_409 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_287 sourceBody836_408

def sourceBody836_410 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_409

def sourceBody836_411 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_410

def sourceBody836_412 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_283 sourceBody836_411

def sourceBody836_413 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_412

def sourceBody836_414 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_413

def sourceBody836_415 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_278 sourceBody836_414

def sourceBody836_416 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_201 sourceBody836_415

def sourceBody836_417 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_416

def sourceBody836_418 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_417

def sourceBody836_419 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_183 sourceBody836_418

def sourceBody836_420 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_419

def sourceBody836_421 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_420

def sourceBody836_422 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_421

def sourceBody836_423 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_422

def sourceBody836_424 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_423

def sourceBody836_425 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_424

def sourceBody836_426 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_425

def sourceBody836_427 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_426

def sourceBody836_428 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_175 sourceBody836_427

def sourceBody836_429 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_159 sourceBody836_428

def sourceBody836_430 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_429

def sourceBody836_431 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_430

def sourceBody836_432 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_151 sourceBody836_431

def sourceBody836_433 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_432

def sourceBody836_434 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_150 sourceBody836_433

def sourceBody836_435 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_127 sourceBody836_434

def sourceBody836_436 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_435

def sourceBody836_437 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_436

def sourceBody836_438 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_115 sourceBody836_437

def sourceBody836_439 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_438

def sourceBody836_440 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_439

def sourceBody836_441 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_440

def sourceBody836_442 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_441

def sourceBody836_443 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_442

def sourceBody836_444 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_443

def sourceBody836_445 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_444

def sourceBody836_446 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_445

def sourceBody836_447 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_107 sourceBody836_446

def sourceBody836_448 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_84 sourceBody836_447

def sourceBody836_449 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_448

def sourceBody836_450 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_449

def sourceBody836_451 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_72 sourceBody836_450

def sourceBody836_452 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_451

def sourceBody836_453 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_452

def sourceBody836_454 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_453

def sourceBody836_455 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_454

def sourceBody836_456 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_455

def sourceBody836_457 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_456

def sourceBody836_458 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_457

def sourceBody836_459 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_458

def sourceBody836_460 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_64 sourceBody836_459

def sourceBody836_461 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_41 sourceBody836_460

def sourceBody836_462 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_461

def sourceBody836_463 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_462

def sourceBody836_464 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_29 sourceBody836_463

def sourceBody836_465 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_464

def sourceBody836_466 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_465

def sourceBody836_467 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_466

def sourceBody836_468 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_467

def sourceBody836_469 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_468

def sourceBody836_470 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_469

def sourceBody836_471 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_470

def sourceBody836_472 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_471

def sourceBody836_473 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_21 sourceBody836_472

def sourceBody836_474 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_4 sourceBody836_473

def sourceBody836_475 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_474

def sourceBody836_476 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_3 sourceBody836_475

def sourceBody836_477 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_476

def sourceBody836_478 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_2 sourceBody836_477

def sourceBody836_479 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_478

def sourceBody836_480 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_1 sourceBody836_479

def sourceBody836_481 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody836_0 sourceBody836_480

def source836 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (836, 1, sourceBody836_481)
end InitECandidate.Proofs.WordStages
