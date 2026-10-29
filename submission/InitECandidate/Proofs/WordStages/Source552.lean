import InitECandidate.Proofs.WordStages.Source536
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody552_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody552_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody552_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody552_0, 552, 2)) (some 492) ([]) (some (28, sourceBody552_1, 552, 3))

def sourceBody552_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody552_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_2 sourceBody552_3

def sourceBody552_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_4 sourceBody552_0

def sourceBody552_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_0 sourceBody552_5

def sourceBody552_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_0 sourceBody552_6

def sourceBody552_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody552_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([10, 28, 6, 24]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody552_0, 552, 4)) (some 475) ([]) (some (16, sourceBody552_8, 552, 5))

def sourceBody552_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_9 sourceBody552_3

def sourceBody552_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_10 sourceBody552_0

def sourceBody552_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody552_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 32, 4, 22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody552_0, 552, 6)) (some 475) ([]) (some (14, sourceBody552_12, 552, 7))

def sourceBody552_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_13 sourceBody552_3

def sourceBody552_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_14 sourceBody552_0

def sourceBody552_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 100#64)

def sourceBody552_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def sourceBody552_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody552_0, 552, 8)) (some 470) ([30]) (some (30, sourceBody552_17, 552, 9))

def sourceBody552_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_18 sourceBody552_3

def sourceBody552_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_19 sourceBody552_0

def sourceBody552_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_16 sourceBody552_20

def sourceBody552_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_0 sourceBody552_21

def sourceBody552_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_0 sourceBody552_22

def sourceBody552_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 280#64]))

def sourceBody552_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody552_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 28)

def sourceBody552_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody552_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 24)

def sourceBody552_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 14)

def sourceBody552_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody552_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody552_0, 552, 10)) (some 147) ([8, 26, 18, 34, 2]) (some (8, sourceBody552_30, 552, 11))

def sourceBody552_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_31 sourceBody552_3

def sourceBody552_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_32 sourceBody552_0

def sourceBody552_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_29 sourceBody552_33

def sourceBody552_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_28 sourceBody552_34

def sourceBody552_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_27 sourceBody552_35

def sourceBody552_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_26 sourceBody552_36

def sourceBody552_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_25 sourceBody552_37

def sourceBody552_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_0 sourceBody552_38

def sourceBody552_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_0 sourceBody552_39

def sourceBody552_41 : WordLangProgHOL (BitVec 64) :=
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

def sourceBody552_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 30)

def sourceBody552_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 14)

def sourceBody552_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 16)

def sourceBody552_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 32)

def sourceBody552_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 4)

def sourceBody552_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 22)

def sourceBody552_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody552_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody552_0, 552, 12)) (some 426) ([26, 18, 34, 2, 20, 12]) (some (26, sourceBody552_48, 552, 13))

def sourceBody552_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_49 sourceBody552_3

def sourceBody552_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_50 sourceBody552_0

def sourceBody552_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_47 sourceBody552_51

def sourceBody552_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_46 sourceBody552_52

def sourceBody552_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_45 sourceBody552_53

def sourceBody552_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_44 sourceBody552_54

def sourceBody552_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_43 sourceBody552_55

def sourceBody552_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_42 sourceBody552_56

def sourceBody552_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_0 sourceBody552_57

def sourceBody552_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_0 sourceBody552_58

def sourceBody552_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody552_61 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody552_0, 552, 14)) (some 490) ([26]) (some (26, sourceBody552_48, 552, 15))

def sourceBody552_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_61 sourceBody552_3

def sourceBody552_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_62 sourceBody552_0

def sourceBody552_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_60 sourceBody552_63

def sourceBody552_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_0 sourceBody552_64

def sourceBody552_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_0 sourceBody552_65

def sourceBody552_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_59 sourceBody552_66

def sourceBody552_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody552_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody552_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_69 sourceBody552_0

def sourceBody552_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_68 sourceBody552_70

def sourceBody552_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_67 sourceBody552_71

def sourceBody552_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_41 sourceBody552_72

def sourceBody552_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_0 sourceBody552_73

def sourceBody552_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_40 sourceBody552_74

def sourceBody552_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_24 sourceBody552_75

def sourceBody552_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_0 sourceBody552_76

def sourceBody552_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_23 sourceBody552_77

def sourceBody552_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_15 sourceBody552_78

def sourceBody552_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_0 sourceBody552_79

def sourceBody552_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_0 sourceBody552_80

def sourceBody552_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_0 sourceBody552_81

def sourceBody552_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_0 sourceBody552_82

def sourceBody552_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_0 sourceBody552_83

def sourceBody552_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_0 sourceBody552_84

def sourceBody552_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_0 sourceBody552_85

def sourceBody552_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_0 sourceBody552_86

def sourceBody552_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_11 sourceBody552_87

def sourceBody552_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_0 sourceBody552_88

def sourceBody552_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_0 sourceBody552_89

def sourceBody552_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_0 sourceBody552_90

def sourceBody552_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_0 sourceBody552_91

def sourceBody552_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_0 sourceBody552_92

def sourceBody552_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_0 sourceBody552_93

def sourceBody552_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_0 sourceBody552_94

def sourceBody552_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_0 sourceBody552_95

def sourceBody552_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody552_7 sourceBody552_96

def source552 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (552, 1, sourceBody552_97)
end InitECandidate.Proofs.WordStages
