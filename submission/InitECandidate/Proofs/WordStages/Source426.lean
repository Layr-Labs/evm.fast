import InitECandidate.Proofs.WordStages.Source410
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody426_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody426_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 2)

def sourceBody426_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 4)

def sourceBody426_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody426_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody426_0, 426, 2)) (some 392) ([14, 22]) (some (14, sourceBody426_3, 426, 3))

def sourceBody426_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody426_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_4 sourceBody426_5

def sourceBody426_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_6 sourceBody426_0

def sourceBody426_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_2 sourceBody426_7

def sourceBody426_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_1 sourceBody426_8

def sourceBody426_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 6)

def sourceBody426_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 8)

def sourceBody426_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 10)

def sourceBody426_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 12)

def sourceBody426_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody426_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody426_0, 426, 4)) (some 102) ([22, 18, 26, 16]) (some (22, sourceBody426_14, 426, 5))

def sourceBody426_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_15 sourceBody426_5

def sourceBody426_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_16 sourceBody426_0

def sourceBody426_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_13 sourceBody426_17

def sourceBody426_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_12 sourceBody426_18

def sourceBody426_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_11 sourceBody426_19

def sourceBody426_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_10 sourceBody426_20

def sourceBody426_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 14)

def sourceBody426_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody426_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody426_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody426_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.reg 26) sourceBody426_24 sourceBody426_25

def sourceBody426_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_26 sourceBody426_5

def sourceBody426_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 18)

def sourceBody426_29 : WordLangProgHOL (BitVec 64) :=
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
        Flapjack.WordLangExpHOL.const 64#64]))

def sourceBody426_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 28)

def sourceBody426_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody426_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody426_0, 426, 6)) (some 389) ([18, 26]) (some (18, sourceBody426_31, 426, 7))

def sourceBody426_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_32 sourceBody426_5

def sourceBody426_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_33 sourceBody426_0

def sourceBody426_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_30 sourceBody426_34

def sourceBody426_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_29 sourceBody426_35

def sourceBody426_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_0 sourceBody426_36

def sourceBody426_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_0 sourceBody426_37

def sourceBody426_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody426_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [22]

def sourceBody426_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_40 sourceBody426_0

def sourceBody426_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_39 sourceBody426_41

def sourceBody426_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_38 sourceBody426_42

def sourceBody426_44 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody426_43 sourceBody426_0

def sourceBody426_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_44 sourceBody426_5

def sourceBody426_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_45 sourceBody426_0

def sourceBody426_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_28 sourceBody426_46

def sourceBody426_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_27 sourceBody426_47

def sourceBody426_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_23 sourceBody426_48

def sourceBody426_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_22 sourceBody426_49

def sourceBody426_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody426_52 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody426_0, 426, 8)) (some 68) ([18]) (some (18, sourceBody426_31, 426, 9))

def sourceBody426_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_52 sourceBody426_5

def sourceBody426_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_53 sourceBody426_0

def sourceBody426_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_51 sourceBody426_54

def sourceBody426_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 22)

def sourceBody426_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 6)

def sourceBody426_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 8)

def sourceBody426_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 10)

def sourceBody426_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 12)

def sourceBody426_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 26)

def sourceBody426_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 18) 30

def sourceBody426_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_62 sourceBody426_0

def sourceBody426_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_61 sourceBody426_63

def sourceBody426_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 16)

def sourceBody426_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 8#64])
  30

def sourceBody426_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_66 sourceBody426_0

def sourceBody426_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_65 sourceBody426_67

def sourceBody426_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 24)

def sourceBody426_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 16#64])
  30

def sourceBody426_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_70 sourceBody426_0

def sourceBody426_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_69 sourceBody426_71

def sourceBody426_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 20)

def sourceBody426_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 24#64])
  30

def sourceBody426_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_74 sourceBody426_0

def sourceBody426_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_73 sourceBody426_75

def sourceBody426_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_76 sourceBody426_0

def sourceBody426_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_72 sourceBody426_77

def sourceBody426_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_68 sourceBody426_78

def sourceBody426_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_64 sourceBody426_79

def sourceBody426_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_60 sourceBody426_80

def sourceBody426_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_0 sourceBody426_81

def sourceBody426_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_59 sourceBody426_82

def sourceBody426_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_0 sourceBody426_83

def sourceBody426_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_58 sourceBody426_84

def sourceBody426_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_0 sourceBody426_85

def sourceBody426_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_57 sourceBody426_86

def sourceBody426_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_0 sourceBody426_87

def sourceBody426_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_56 sourceBody426_88

def sourceBody426_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_0 sourceBody426_89

def sourceBody426_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
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
        Flapjack.WordLangExpHOL.const 64#64]))

def sourceBody426_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 28)

def sourceBody426_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 22)

def sourceBody426_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody426_95 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody426_0, 426, 10)) (some 388) ([26, 16, 24]) (some (26, sourceBody426_94, 426, 11))

def sourceBody426_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_95 sourceBody426_5

def sourceBody426_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_96 sourceBody426_0

def sourceBody426_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_93 sourceBody426_97

def sourceBody426_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_92 sourceBody426_98

def sourceBody426_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_91 sourceBody426_99

def sourceBody426_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_0 sourceBody426_100

def sourceBody426_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_0 sourceBody426_101

def sourceBody426_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_90 sourceBody426_102

def sourceBody426_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18]

def sourceBody426_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_104 sourceBody426_0

def sourceBody426_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_25 sourceBody426_105

def sourceBody426_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_103 sourceBody426_106

def sourceBody426_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_55 sourceBody426_107

def sourceBody426_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_0 sourceBody426_108

def sourceBody426_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_0 sourceBody426_109

def sourceBody426_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_50 sourceBody426_110

def sourceBody426_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_21 sourceBody426_111

def sourceBody426_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_0 sourceBody426_112

def sourceBody426_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_0 sourceBody426_113

def sourceBody426_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_9 sourceBody426_114

def sourceBody426_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_0 sourceBody426_115

def sourceBody426_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody426_0 sourceBody426_116

def source426 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (426, 7, sourceBody426_117)
end InitECandidate.Proofs.WordStages
