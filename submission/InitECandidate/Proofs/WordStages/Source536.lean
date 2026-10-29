import InitECandidate.Proofs.WordStages.Source520
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody536_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 2)

def sourceBody536_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody536_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody536_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody536_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 20 (Flapjack.WordRegImm.reg 6) sourceBody536_2 sourceBody536_3

def sourceBody536_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody536_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_4 sourceBody536_5

def sourceBody536_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 20)

def sourceBody536_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody536_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody536_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody536_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody536_8, 536, 2)) (some 470) ([20]) (some (20, sourceBody536_10, 536, 3))

def sourceBody536_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_11 sourceBody536_5

def sourceBody536_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_12 sourceBody536_8

def sourceBody536_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_9 sourceBody536_13

def sourceBody536_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_8 sourceBody536_14

def sourceBody536_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_8 sourceBody536_15

def sourceBody536_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody536_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody536_8, 536, 4)) (some 470) ([20]) (some (20, sourceBody536_10, 536, 5))

def sourceBody536_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_18 sourceBody536_5

def sourceBody536_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_19 sourceBody536_8

def sourceBody536_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_17 sourceBody536_20

def sourceBody536_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_8 sourceBody536_21

def sourceBody536_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_8 sourceBody536_22

def sourceBody536_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 0#64) sourceBody536_16 sourceBody536_23

def sourceBody536_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_24 sourceBody536_5

def sourceBody536_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_25 sourceBody536_8

def sourceBody536_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_7 sourceBody536_26

def sourceBody536_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_6 sourceBody536_27

def sourceBody536_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_1 sourceBody536_28

def sourceBody536_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_0 sourceBody536_29

def sourceBody536_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody536_8, 536, 6)) (some 69) ([]) (some (20, sourceBody536_10, 536, 7))

def sourceBody536_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_31 sourceBody536_5

def sourceBody536_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_32 sourceBody536_8

def sourceBody536_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody536_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody536_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody536_8, 536, 8)) (some 68) ([6]) (some (6, sourceBody536_35, 536, 9))

def sourceBody536_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_36 sourceBody536_5

def sourceBody536_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_37 sourceBody536_8

def sourceBody536_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_34 sourceBody536_38

def sourceBody536_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
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
        Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody536_41 : WordLangProgHOL (BitVec 64) :=
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
              Flapjack.WordLangExpHOL.const 256#64]),
        Flapjack.WordLangExpHOL.const 56#64]))

def sourceBody536_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
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
            Flapjack.WordLangExpHOL.const 0#64]),
      Flapjack.WordLangExpHOL.const 1#64])

def sourceBody536_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 2)

def sourceBody536_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 20)

def sourceBody536_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody536_46 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody536_8, 536, 10)) (some 484) ([18, 14, 24, 4, 16]) (some (18, sourceBody536_45, 536, 11))

def sourceBody536_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_46 sourceBody536_5

def sourceBody536_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_47 sourceBody536_8

def sourceBody536_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_44 sourceBody536_48

def sourceBody536_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_43 sourceBody536_49

def sourceBody536_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_42 sourceBody536_50

def sourceBody536_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_41 sourceBody536_51

def sourceBody536_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_40 sourceBody536_52

def sourceBody536_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_8 sourceBody536_53

def sourceBody536_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_8 sourceBody536_54

def sourceBody536_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 20)

def sourceBody536_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def sourceBody536_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody536_59 : WordLangProgHOL (BitVec 64) :=
.call (some (([6, 18, 14, 24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody536_8, 536, 12)) (some 146) ([4, 16]) (some (4, sourceBody536_58, 536, 13))

def sourceBody536_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_59 sourceBody536_5

def sourceBody536_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_60 sourceBody536_8

def sourceBody536_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_57 sourceBody536_61

def sourceBody536_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_56 sourceBody536_62

def sourceBody536_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 10)

def sourceBody536_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody536_66 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody536_8, 536, 14)) (some 70) ([16]) (some (16, sourceBody536_65, 536, 15))

def sourceBody536_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_66 sourceBody536_5

def sourceBody536_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_67 sourceBody536_8

def sourceBody536_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_64 sourceBody536_68

def sourceBody536_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_8 sourceBody536_69

def sourceBody536_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_8 sourceBody536_70

def sourceBody536_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 6)

def sourceBody536_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 18)

def sourceBody536_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 14)

def sourceBody536_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 24)

def sourceBody536_76 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody536_8, 536, 16)) (some 476) ([16, 12, 22, 8]) (some (16, sourceBody536_65, 536, 17))

def sourceBody536_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_76 sourceBody536_5

def sourceBody536_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_77 sourceBody536_8

def sourceBody536_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_75 sourceBody536_78

def sourceBody536_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_74 sourceBody536_79

def sourceBody536_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_73 sourceBody536_80

def sourceBody536_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_72 sourceBody536_81

def sourceBody536_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_8 sourceBody536_82

def sourceBody536_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_8 sourceBody536_83

def sourceBody536_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_71 sourceBody536_84

def sourceBody536_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.const 1#64, Flapjack.WordLangExpHOL.var 2])

def sourceBody536_87 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody536_8, 536, 18)) (some 490) ([16]) (some (16, sourceBody536_65, 536, 19))

def sourceBody536_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_87 sourceBody536_5

def sourceBody536_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_88 sourceBody536_8

def sourceBody536_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_86 sourceBody536_89

def sourceBody536_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_8 sourceBody536_90

def sourceBody536_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_8 sourceBody536_91

def sourceBody536_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_85 sourceBody536_92

def sourceBody536_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody536_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def sourceBody536_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_95 sourceBody536_8

def sourceBody536_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_94 sourceBody536_96

def sourceBody536_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_93 sourceBody536_97

def sourceBody536_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_63 sourceBody536_98

def sourceBody536_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_8 sourceBody536_99

def sourceBody536_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_8 sourceBody536_100

def sourceBody536_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_8 sourceBody536_101

def sourceBody536_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_8 sourceBody536_102

def sourceBody536_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_8 sourceBody536_103

def sourceBody536_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_8 sourceBody536_104

def sourceBody536_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_8 sourceBody536_105

def sourceBody536_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_8 sourceBody536_106

def sourceBody536_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_55 sourceBody536_107

def sourceBody536_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_39 sourceBody536_108

def sourceBody536_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_8 sourceBody536_109

def sourceBody536_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_8 sourceBody536_110

def sourceBody536_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_33 sourceBody536_111

def sourceBody536_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_8 sourceBody536_112

def sourceBody536_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_8 sourceBody536_113

def sourceBody536_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody536_30 sourceBody536_114

def source536 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (536, 2, sourceBody536_115)
end InitECandidate.Proofs.WordStages
