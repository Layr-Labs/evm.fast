import InitECandidate.Proofs.WordStages.Source392
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody408_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody408_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 2)

def sourceBody408_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 136#64]))

def sourceBody408_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody408_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody408_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody408_0, 408, 2)) (some 79) ([8, 16, 12]) (some (8, sourceBody408_4, 408, 3))

def sourceBody408_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody408_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_5 sourceBody408_6

def sourceBody408_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_7 sourceBody408_0

def sourceBody408_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_3 sourceBody408_8

def sourceBody408_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_2 sourceBody408_9

def sourceBody408_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_1 sourceBody408_10

def sourceBody408_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 18)

def sourceBody408_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody408_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody408_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody408_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.reg 12) sourceBody408_14 sourceBody408_15

def sourceBody408_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_16 sourceBody408_6

def sourceBody408_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 16)

def sourceBody408_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody408_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8, 16]

def sourceBody408_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_20 sourceBody408_0

def sourceBody408_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_15 sourceBody408_21

def sourceBody408_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_19 sourceBody408_22

def sourceBody408_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 0#64) sourceBody408_23 sourceBody408_0

def sourceBody408_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_24 sourceBody408_6

def sourceBody408_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_25 sourceBody408_0

def sourceBody408_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_18 sourceBody408_26

def sourceBody408_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_17 sourceBody408_27

def sourceBody408_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_13 sourceBody408_28

def sourceBody408_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_12 sourceBody408_29

def sourceBody408_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
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
        Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody408_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 2)

def sourceBody408_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody408_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([8, 16]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody408_0, 408, 4)) (some 186) ([12, 20]) (some (12, sourceBody408_33, 408, 5))

def sourceBody408_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_34 sourceBody408_6

def sourceBody408_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_35 sourceBody408_0

def sourceBody408_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_32 sourceBody408_36

def sourceBody408_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_31 sourceBody408_37

def sourceBody408_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 8)

def sourceBody408_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody408_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody408_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody408_43 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.reg 6) sourceBody408_41 sourceBody408_42

def sourceBody408_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_43 sourceBody408_6

def sourceBody408_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 20)

def sourceBody408_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 16))

def sourceBody408_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody408_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12, 20]

def sourceBody408_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_48 sourceBody408_0

def sourceBody408_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_47 sourceBody408_49

def sourceBody408_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_46 sourceBody408_50

def sourceBody408_52 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody408_51 sourceBody408_0

def sourceBody408_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_52 sourceBody408_6

def sourceBody408_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_53 sourceBody408_0

def sourceBody408_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_45 sourceBody408_54

def sourceBody408_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_44 sourceBody408_55

def sourceBody408_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_40 sourceBody408_56

def sourceBody408_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_39 sourceBody408_57

def sourceBody408_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 176#64]),
        Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody408_60 : WordLangProgHOL (BitVec 64) :=
.call (some (([8, 16]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody408_0, 408, 6)) (some 186) ([12, 20]) (some (12, sourceBody408_33, 408, 7))

def sourceBody408_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_60 sourceBody408_6

def sourceBody408_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_61 sourceBody408_0

def sourceBody408_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_32 sourceBody408_62

def sourceBody408_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_59 sourceBody408_63

def sourceBody408_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_58 sourceBody408_64

def sourceBody408_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_65 sourceBody408_58

def sourceBody408_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 4)

def sourceBody408_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody408_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody408_70 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody408_0, 408, 8)) (some 392) ([20, 6]) (some (20, sourceBody408_69, 408, 9))

def sourceBody408_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_70 sourceBody408_6

def sourceBody408_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_71 sourceBody408_0

def sourceBody408_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_68 sourceBody408_72

def sourceBody408_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_67 sourceBody408_73

def sourceBody408_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
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
        Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody408_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 12)

def sourceBody408_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody408_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody408_79 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody408_0, 408, 10)) (some 192) ([6, 14, 10]) (some (6, sourceBody408_78, 408, 11))

def sourceBody408_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_79 sourceBody408_6

def sourceBody408_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_80 sourceBody408_0

def sourceBody408_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_77 sourceBody408_81

def sourceBody408_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_76 sourceBody408_82

def sourceBody408_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_75 sourceBody408_83

def sourceBody408_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_0 sourceBody408_84

def sourceBody408_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_0 sourceBody408_85

def sourceBody408_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 2)

def sourceBody408_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody408_89 : WordLangProgHOL (BitVec 64) :=
.call (some (([20, 6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody408_0, 408, 12)) (some 402) ([14]) (some (14, sourceBody408_88, 408, 13))

def sourceBody408_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_89 sourceBody408_6

def sourceBody408_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_90 sourceBody408_0

def sourceBody408_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_87 sourceBody408_91

def sourceBody408_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody408_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14, 10]

def sourceBody408_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_94 sourceBody408_0

def sourceBody408_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_93 sourceBody408_95

def sourceBody408_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_45 sourceBody408_96

def sourceBody408_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_92 sourceBody408_97

def sourceBody408_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_0 sourceBody408_98

def sourceBody408_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_0 sourceBody408_99

def sourceBody408_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_0 sourceBody408_100

def sourceBody408_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_0 sourceBody408_101

def sourceBody408_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_86 sourceBody408_102

def sourceBody408_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_74 sourceBody408_103

def sourceBody408_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_0 sourceBody408_104

def sourceBody408_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_0 sourceBody408_105

def sourceBody408_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_66 sourceBody408_106

def sourceBody408_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_38 sourceBody408_107

def sourceBody408_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_0 sourceBody408_108

def sourceBody408_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_0 sourceBody408_109

def sourceBody408_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_0 sourceBody408_110

def sourceBody408_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_0 sourceBody408_111

def sourceBody408_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_30 sourceBody408_112

def sourceBody408_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_11 sourceBody408_113

def sourceBody408_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_0 sourceBody408_114

def sourceBody408_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody408_0 sourceBody408_115

def source408 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (408, 3, sourceBody408_116)
end InitECandidate.Proofs.WordStages
