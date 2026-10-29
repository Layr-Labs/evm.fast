import InitECandidate.Proofs.WordStages.Source558
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody574_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody574_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody574_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([10, 26, 6, 22]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody574_0, 574, 2)) (some 475) ([]) (some (14, sourceBody574_1, 574, 3))

def sourceBody574_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody574_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_2 sourceBody574_3

def sourceBody574_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_4 sourceBody574_0

def sourceBody574_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody574_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def sourceBody574_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody574_0, 574, 4)) (some 470) ([30]) (some (30, sourceBody574_7, 574, 5))

def sourceBody574_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_8 sourceBody574_3

def sourceBody574_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_9 sourceBody574_0

def sourceBody574_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_6 sourceBody574_10

def sourceBody574_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_0 sourceBody574_11

def sourceBody574_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_0 sourceBody574_12

def sourceBody574_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
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
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody574_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 136#64]))

def sourceBody574_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 10)

def sourceBody574_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 26)

def sourceBody574_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 6)

def sourceBody574_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 22)

def sourceBody574_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody574_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody574_0, 574, 6)) (some 462) ([20, 12, 28, 8]) (some (20, sourceBody574_20, 574, 7))

def sourceBody574_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_21 sourceBody574_3

def sourceBody574_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_22 sourceBody574_0

def sourceBody574_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_19 sourceBody574_23

def sourceBody574_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_18 sourceBody574_24

def sourceBody574_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_17 sourceBody574_25

def sourceBody574_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_16 sourceBody574_26

def sourceBody574_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody574_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 30)

def sourceBody574_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody574_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody574_32 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.WordRegImm.reg 28) sourceBody574_30 sourceBody574_31

def sourceBody574_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_32 sourceBody574_3

def sourceBody574_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 12)

def sourceBody574_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 128#64]),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
        (Flapjack.WordLangExpHOL.const 5#64)])

def sourceBody574_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody574_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody574_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([20, 12, 28, 8]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody574_0, 574, 8)) (some 146) ([24, 16]) (some (24, sourceBody574_37, 574, 9))

def sourceBody574_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_38 sourceBody574_3

def sourceBody574_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_39 sourceBody574_0

def sourceBody574_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_36 sourceBody574_40

def sourceBody574_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_35 sourceBody574_41

def sourceBody574_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 20)

def sourceBody574_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 12)

def sourceBody574_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 28)

def sourceBody574_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 8)

def sourceBody574_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody574_48 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody574_0, 574, 10)) (some 476) ([16, 32, 2, 18]) (some (16, sourceBody574_47, 574, 11))

def sourceBody574_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_48 sourceBody574_3

def sourceBody574_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_49 sourceBody574_0

def sourceBody574_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_46 sourceBody574_50

def sourceBody574_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_45 sourceBody574_51

def sourceBody574_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_44 sourceBody574_52

def sourceBody574_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_43 sourceBody574_53

def sourceBody574_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_0 sourceBody574_54

def sourceBody574_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_0 sourceBody574_55

def sourceBody574_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_42 sourceBody574_56

def sourceBody574_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_0 sourceBody574_57

def sourceBody574_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_0 sourceBody574_58

def sourceBody574_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_0 sourceBody574_59

def sourceBody574_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_0 sourceBody574_60

def sourceBody574_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_0 sourceBody574_61

def sourceBody574_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_0 sourceBody574_62

def sourceBody574_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_0 sourceBody574_63

def sourceBody574_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_0 sourceBody574_64

def sourceBody574_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody574_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody574_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody574_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody574_70 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody574_0, 574, 12)) (some 476) ([12, 28, 8, 24]) (some (12, sourceBody574_69, 574, 13))

def sourceBody574_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_70 sourceBody574_3

def sourceBody574_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_71 sourceBody574_0

def sourceBody574_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_68 sourceBody574_72

def sourceBody574_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_67 sourceBody574_73

def sourceBody574_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_66 sourceBody574_74

def sourceBody574_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_31 sourceBody574_75

def sourceBody574_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_0 sourceBody574_76

def sourceBody574_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_0 sourceBody574_77

def sourceBody574_79 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody574_65 sourceBody574_78

def sourceBody574_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_79 sourceBody574_3

def sourceBody574_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_80 sourceBody574_0

def sourceBody574_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_34 sourceBody574_81

def sourceBody574_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_33 sourceBody574_82

def sourceBody574_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_29 sourceBody574_83

def sourceBody574_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_28 sourceBody574_84

def sourceBody574_86 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody574_0, 574, 14)) (some 490) ([12]) (some (12, sourceBody574_69, 574, 15))

def sourceBody574_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_86 sourceBody574_3

def sourceBody574_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_87 sourceBody574_0

def sourceBody574_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_30 sourceBody574_88

def sourceBody574_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_0 sourceBody574_89

def sourceBody574_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_0 sourceBody574_90

def sourceBody574_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_85 sourceBody574_91

def sourceBody574_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody574_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20]

def sourceBody574_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_94 sourceBody574_0

def sourceBody574_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_93 sourceBody574_95

def sourceBody574_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_92 sourceBody574_96

def sourceBody574_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_27 sourceBody574_97

def sourceBody574_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_0 sourceBody574_98

def sourceBody574_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_0 sourceBody574_99

def sourceBody574_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_15 sourceBody574_100

def sourceBody574_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_0 sourceBody574_101

def sourceBody574_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_14 sourceBody574_102

def sourceBody574_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_0 sourceBody574_103

def sourceBody574_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_13 sourceBody574_104

def sourceBody574_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_5 sourceBody574_105

def sourceBody574_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_0 sourceBody574_106

def sourceBody574_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_0 sourceBody574_107

def sourceBody574_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_0 sourceBody574_108

def sourceBody574_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_0 sourceBody574_109

def sourceBody574_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_0 sourceBody574_110

def sourceBody574_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_0 sourceBody574_111

def sourceBody574_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_0 sourceBody574_112

def sourceBody574_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody574_0 sourceBody574_113

def source574 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (574, 1, sourceBody574_114)
end InitECandidate.Proofs.WordStages
