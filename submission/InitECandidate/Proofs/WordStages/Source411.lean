import InitECandidate.Proofs.WordStages.Source395
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody411_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody411_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
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

def sourceBody411_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 2)

def sourceBody411_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody411_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody411_0, 411, 2)) (some 187) ([8, 18]) (some (8, sourceBody411_3, 411, 3))

def sourceBody411_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody411_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_4 sourceBody411_5

def sourceBody411_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_6 sourceBody411_0

def sourceBody411_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_2 sourceBody411_7

def sourceBody411_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_1 sourceBody411_8

def sourceBody411_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 22)

def sourceBody411_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody411_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody411_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody411_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.reg 14) sourceBody411_12 sourceBody411_13

def sourceBody411_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_14 sourceBody411_5

def sourceBody411_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 18)

def sourceBody411_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody411_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody411_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8, 18, 14, 26]

def sourceBody411_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_19 sourceBody411_0

def sourceBody411_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_18 sourceBody411_20

def sourceBody411_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_11 sourceBody411_21

def sourceBody411_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_13 sourceBody411_22

def sourceBody411_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_17 sourceBody411_23

def sourceBody411_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.imm 0#64) sourceBody411_24 sourceBody411_0

def sourceBody411_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_25 sourceBody411_5

def sourceBody411_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_26 sourceBody411_0

def sourceBody411_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_16 sourceBody411_27

def sourceBody411_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_15 sourceBody411_28

def sourceBody411_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_11 sourceBody411_29

def sourceBody411_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_10 sourceBody411_30

def sourceBody411_32 : WordLangProgHOL (BitVec 64) :=
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

def sourceBody411_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 2)

def sourceBody411_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 4)

def sourceBody411_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody411_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([8, 18]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody411_0, 411, 4)) (some 409) ([14, 26, 6]) (some (14, sourceBody411_35, 411, 5))

def sourceBody411_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_36 sourceBody411_5

def sourceBody411_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_37 sourceBody411_0

def sourceBody411_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_34 sourceBody411_38

def sourceBody411_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_33 sourceBody411_39

def sourceBody411_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_32 sourceBody411_40

def sourceBody411_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 8)

def sourceBody411_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody411_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody411_45 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 26 (Flapjack.WordRegImm.reg 6) sourceBody411_44 sourceBody411_18

def sourceBody411_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_45 sourceBody411_5

def sourceBody411_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 26)

def sourceBody411_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 18))

def sourceBody411_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody411_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody411_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody411_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14, 26, 6, 16]

def sourceBody411_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_52 sourceBody411_0

def sourceBody411_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_51 sourceBody411_53

def sourceBody411_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_50 sourceBody411_54

def sourceBody411_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_49 sourceBody411_55

def sourceBody411_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_48 sourceBody411_56

def sourceBody411_58 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody411_57 sourceBody411_0

def sourceBody411_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_58 sourceBody411_5

def sourceBody411_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_59 sourceBody411_0

def sourceBody411_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_47 sourceBody411_60

def sourceBody411_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_46 sourceBody411_61

def sourceBody411_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_43 sourceBody411_62

def sourceBody411_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_42 sourceBody411_63

def sourceBody411_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody411_66 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody411_0, 411, 6)) (some 396) ([26]) (some (26, sourceBody411_65, 411, 7))

def sourceBody411_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_66 sourceBody411_5

def sourceBody411_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_67 sourceBody411_0

def sourceBody411_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_33 sourceBody411_68

def sourceBody411_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_0 sourceBody411_69

def sourceBody411_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_0 sourceBody411_70

def sourceBody411_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_64 sourceBody411_71

def sourceBody411_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody411_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 4)

def sourceBody411_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody411_76 : WordLangProgHOL (BitVec 64) :=
.call (some (([14, 26, 6, 16]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody411_0, 411, 8)) (some 401) ([12, 24]) (some (12, sourceBody411_75, 411, 9))

def sourceBody411_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_76 sourceBody411_5

def sourceBody411_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_77 sourceBody411_0

def sourceBody411_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_74 sourceBody411_78

def sourceBody411_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_73 sourceBody411_79

def sourceBody411_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody411_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 26)

def sourceBody411_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody411_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 16)

def sourceBody411_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12, 24, 10, 20]

def sourceBody411_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_85 sourceBody411_0

def sourceBody411_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_84 sourceBody411_86

def sourceBody411_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_83 sourceBody411_87

def sourceBody411_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_82 sourceBody411_88

def sourceBody411_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_81 sourceBody411_89

def sourceBody411_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_80 sourceBody411_90

def sourceBody411_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_0 sourceBody411_91

def sourceBody411_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_0 sourceBody411_92

def sourceBody411_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_0 sourceBody411_93

def sourceBody411_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_0 sourceBody411_94

def sourceBody411_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_0 sourceBody411_95

def sourceBody411_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_0 sourceBody411_96

def sourceBody411_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_0 sourceBody411_97

def sourceBody411_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_0 sourceBody411_98

def sourceBody411_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_72 sourceBody411_99

def sourceBody411_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_41 sourceBody411_100

def sourceBody411_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_0 sourceBody411_101

def sourceBody411_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_0 sourceBody411_102

def sourceBody411_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_0 sourceBody411_103

def sourceBody411_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_0 sourceBody411_104

def sourceBody411_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_31 sourceBody411_105

def sourceBody411_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_9 sourceBody411_106

def sourceBody411_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_0 sourceBody411_107

def sourceBody411_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody411_0 sourceBody411_108

def source411 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (411, 3, sourceBody411_109)
end InitECandidate.Proofs.WordStages
