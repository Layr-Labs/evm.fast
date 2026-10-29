import InitECandidate.Proofs.WordStages.Source394
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody410_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody410_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 2)

def sourceBody410_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 4)

def sourceBody410_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody410_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody410_0, 410, 2)) (some 392) ([8, 18]) (some (8, sourceBody410_3, 410, 3))

def sourceBody410_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody410_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_4 sourceBody410_5

def sourceBody410_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_6 sourceBody410_0

def sourceBody410_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_2 sourceBody410_7

def sourceBody410_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_1 sourceBody410_8

def sourceBody410_10 : WordLangProgHOL (BitVec 64) :=
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
              Flapjack.WordLangExpHOL.const 184#64]),
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody410_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 22)

def sourceBody410_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody410_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody410_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody410_0, 410, 4)) (some 192) ([18, 14, 26]) (some (18, sourceBody410_13, 410, 5))

def sourceBody410_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_14 sourceBody410_5

def sourceBody410_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_15 sourceBody410_0

def sourceBody410_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_12 sourceBody410_16

def sourceBody410_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_11 sourceBody410_17

def sourceBody410_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_10 sourceBody410_18

def sourceBody410_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_0 sourceBody410_19

def sourceBody410_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_0 sourceBody410_20

def sourceBody410_22 : WordLangProgHOL (BitVec 64) :=
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
              Flapjack.WordLangExpHOL.const 184#64]),
        Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody410_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 2)

def sourceBody410_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 4)

def sourceBody410_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody410_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([8, 18]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody410_0, 410, 6)) (some 409) ([14, 26, 6]) (some (14, sourceBody410_25, 410, 7))

def sourceBody410_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_26 sourceBody410_5

def sourceBody410_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_27 sourceBody410_0

def sourceBody410_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_24 sourceBody410_28

def sourceBody410_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_23 sourceBody410_29

def sourceBody410_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_22 sourceBody410_30

def sourceBody410_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 8)

def sourceBody410_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody410_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody410_35 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.reg 6) sourceBody410_12 sourceBody410_34

def sourceBody410_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_35 sourceBody410_5

def sourceBody410_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 26)

def sourceBody410_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 18))

def sourceBody410_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody410_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody410_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody410_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14, 26, 6, 16]

def sourceBody410_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_42 sourceBody410_0

def sourceBody410_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_41 sourceBody410_43

def sourceBody410_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_40 sourceBody410_44

def sourceBody410_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_39 sourceBody410_45

def sourceBody410_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_38 sourceBody410_46

def sourceBody410_48 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody410_47 sourceBody410_0

def sourceBody410_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_48 sourceBody410_5

def sourceBody410_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_49 sourceBody410_0

def sourceBody410_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_37 sourceBody410_50

def sourceBody410_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_36 sourceBody410_51

def sourceBody410_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_33 sourceBody410_52

def sourceBody410_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_32 sourceBody410_53

def sourceBody410_55 : WordLangProgHOL (BitVec 64) :=
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
              Flapjack.WordLangExpHOL.const 176#64]),
        Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody410_56 : WordLangProgHOL (BitVec 64) :=
.call (some (([8, 18]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody410_0, 410, 8)) (some 409) ([14, 26, 6]) (some (14, sourceBody410_25, 410, 9))

def sourceBody410_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_56 sourceBody410_5

def sourceBody410_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_57 sourceBody410_0

def sourceBody410_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_24 sourceBody410_58

def sourceBody410_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_23 sourceBody410_59

def sourceBody410_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_55 sourceBody410_60

def sourceBody410_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_54 sourceBody410_61

def sourceBody410_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_62 sourceBody410_54

def sourceBody410_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody410_65 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody410_0, 410, 10)) (some 396) ([26]) (some (26, sourceBody410_64, 410, 11))

def sourceBody410_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_65 sourceBody410_5

def sourceBody410_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_66 sourceBody410_0

def sourceBody410_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_23 sourceBody410_67

def sourceBody410_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_0 sourceBody410_68

def sourceBody410_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_0 sourceBody410_69

def sourceBody410_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_63 sourceBody410_70

def sourceBody410_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody410_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 4)

def sourceBody410_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody410_75 : WordLangProgHOL (BitVec 64) :=
.call (some (([14, 26, 6, 16]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody410_0, 410, 12)) (some 401) ([12, 24]) (some (12, sourceBody410_74, 410, 13))

def sourceBody410_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_75 sourceBody410_5

def sourceBody410_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_76 sourceBody410_0

def sourceBody410_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_73 sourceBody410_77

def sourceBody410_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_72 sourceBody410_78

def sourceBody410_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody410_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 26)

def sourceBody410_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody410_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 16)

def sourceBody410_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12, 24, 10, 20]

def sourceBody410_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_84 sourceBody410_0

def sourceBody410_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_83 sourceBody410_85

def sourceBody410_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_82 sourceBody410_86

def sourceBody410_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_81 sourceBody410_87

def sourceBody410_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_80 sourceBody410_88

def sourceBody410_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_79 sourceBody410_89

def sourceBody410_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_0 sourceBody410_90

def sourceBody410_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_0 sourceBody410_91

def sourceBody410_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_0 sourceBody410_92

def sourceBody410_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_0 sourceBody410_93

def sourceBody410_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_0 sourceBody410_94

def sourceBody410_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_0 sourceBody410_95

def sourceBody410_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_0 sourceBody410_96

def sourceBody410_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_0 sourceBody410_97

def sourceBody410_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_71 sourceBody410_98

def sourceBody410_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_31 sourceBody410_99

def sourceBody410_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_0 sourceBody410_100

def sourceBody410_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_0 sourceBody410_101

def sourceBody410_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_0 sourceBody410_102

def sourceBody410_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_0 sourceBody410_103

def sourceBody410_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_21 sourceBody410_104

def sourceBody410_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_9 sourceBody410_105

def sourceBody410_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_0 sourceBody410_106

def sourceBody410_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody410_0 sourceBody410_107

def source410 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (410, 3, sourceBody410_108)
end InitECandidate.Proofs.WordStages
