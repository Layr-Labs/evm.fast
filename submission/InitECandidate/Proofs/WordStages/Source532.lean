import InitECandidate.Proofs.WordStages.Source516
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody532_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody532_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody532_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([8, 22, 4, 18]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody532_0, 532, 2)) (some 475) ([]) (some (12, sourceBody532_1, 532, 3))

def sourceBody532_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody532_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_2 sourceBody532_3

def sourceBody532_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_4 sourceBody532_0

def sourceBody532_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody532_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 8)

def sourceBody532_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 22)

def sourceBody532_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 4)

def sourceBody532_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 18)

def sourceBody532_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody532_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody532_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody532_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody532_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody532_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody532_0, 532, 4)) (some 483) ([26, 2, 16, 10, 24, 6, 20, 14, 28]) (some (26, sourceBody532_15, 532, 5))

def sourceBody532_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_16 sourceBody532_3

def sourceBody532_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_17 sourceBody532_0

def sourceBody532_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_14 sourceBody532_18

def sourceBody532_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_13 sourceBody532_19

def sourceBody532_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_12 sourceBody532_20

def sourceBody532_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_11 sourceBody532_21

def sourceBody532_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_10 sourceBody532_22

def sourceBody532_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_9 sourceBody532_23

def sourceBody532_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_8 sourceBody532_24

def sourceBody532_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_7 sourceBody532_25

def sourceBody532_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_6 sourceBody532_26

def sourceBody532_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_0 sourceBody532_27

def sourceBody532_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_0 sourceBody532_28

def sourceBody532_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 8)

def sourceBody532_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 22)

def sourceBody532_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody532_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 18)

def sourceBody532_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody532_0, 532, 6)) (some 462) ([26, 2, 16, 10]) (some (26, sourceBody532_15, 532, 7))

def sourceBody532_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_34 sourceBody532_3

def sourceBody532_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_35 sourceBody532_0

def sourceBody532_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_33 sourceBody532_36

def sourceBody532_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_32 sourceBody532_37

def sourceBody532_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_31 sourceBody532_38

def sourceBody532_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_30 sourceBody532_39

def sourceBody532_41 : WordLangProgHOL (BitVec 64) :=
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
            Flapjack.WordLangExpHOL.const 24#64]),
      Flapjack.WordLangExpHOL.var 12])

def sourceBody532_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody532_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([26, 2, 16, 10]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody532_0, 532, 8)) (some 146) ([24, 6]) (some (24, sourceBody532_42, 532, 9))

def sourceBody532_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_43 sourceBody532_3

def sourceBody532_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_44 sourceBody532_0

def sourceBody532_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_11 sourceBody532_45

def sourceBody532_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_41 sourceBody532_46

def sourceBody532_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 26)

def sourceBody532_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 2)

def sourceBody532_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 16)

def sourceBody532_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 10)

def sourceBody532_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody532_53 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody532_0, 532, 10)) (some 476) ([6, 20, 14, 28]) (some (6, sourceBody532_52, 532, 11))

def sourceBody532_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_53 sourceBody532_3

def sourceBody532_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_54 sourceBody532_0

def sourceBody532_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_51 sourceBody532_55

def sourceBody532_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_50 sourceBody532_56

def sourceBody532_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_49 sourceBody532_57

def sourceBody532_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_48 sourceBody532_58

def sourceBody532_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_0 sourceBody532_59

def sourceBody532_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_0 sourceBody532_60

def sourceBody532_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody532_63 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody532_0, 532, 12)) (some 490) ([6]) (some (6, sourceBody532_52, 532, 13))

def sourceBody532_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_63 sourceBody532_3

def sourceBody532_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_64 sourceBody532_0

def sourceBody532_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_62 sourceBody532_65

def sourceBody532_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_0 sourceBody532_66

def sourceBody532_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_0 sourceBody532_67

def sourceBody532_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_61 sourceBody532_68

def sourceBody532_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody532_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [24]

def sourceBody532_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_71 sourceBody532_0

def sourceBody532_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_70 sourceBody532_72

def sourceBody532_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_69 sourceBody532_73

def sourceBody532_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_47 sourceBody532_74

def sourceBody532_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_0 sourceBody532_75

def sourceBody532_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_0 sourceBody532_76

def sourceBody532_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_0 sourceBody532_77

def sourceBody532_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_0 sourceBody532_78

def sourceBody532_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_0 sourceBody532_79

def sourceBody532_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_0 sourceBody532_80

def sourceBody532_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_0 sourceBody532_81

def sourceBody532_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_0 sourceBody532_82

def sourceBody532_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_40 sourceBody532_83

def sourceBody532_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_0 sourceBody532_84

def sourceBody532_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_0 sourceBody532_85

def sourceBody532_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_29 sourceBody532_86

def sourceBody532_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_5 sourceBody532_87

def sourceBody532_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_0 sourceBody532_88

def sourceBody532_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_0 sourceBody532_89

def sourceBody532_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_0 sourceBody532_90

def sourceBody532_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_0 sourceBody532_91

def sourceBody532_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_0 sourceBody532_92

def sourceBody532_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_0 sourceBody532_93

def sourceBody532_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_0 sourceBody532_94

def sourceBody532_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody532_0 sourceBody532_95

def source532 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (532, 1, sourceBody532_96)
end InitECandidate.Proofs.WordStages
