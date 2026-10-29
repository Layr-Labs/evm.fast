import InitECandidate.Proofs.WordStages.Source514
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody530_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody530_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody530_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([10, 28, 6, 24]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody530_0, 530, 2)) (some 475) ([]) (some (16, sourceBody530_1, 530, 3))

def sourceBody530_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody530_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_2 sourceBody530_3

def sourceBody530_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_4 sourceBody530_0

def sourceBody530_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody530_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 34, 4, 22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody530_0, 530, 4)) (some 475) ([]) (some (14, sourceBody530_6, 530, 5))

def sourceBody530_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_7 sourceBody530_3

def sourceBody530_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_8 sourceBody530_0

def sourceBody530_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody530_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody530_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 28)

def sourceBody530_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody530_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 24)

def sourceBody530_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody530_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody530_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody530_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody530_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def sourceBody530_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody530_0, 530, 6)) (some 483) ([32, 8, 26, 18, 36, 2, 20, 12, 30]) (some (32, sourceBody530_19, 530, 7))

def sourceBody530_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_20 sourceBody530_3

def sourceBody530_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_21 sourceBody530_0

def sourceBody530_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_18 sourceBody530_22

def sourceBody530_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_17 sourceBody530_23

def sourceBody530_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_16 sourceBody530_24

def sourceBody530_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_15 sourceBody530_25

def sourceBody530_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_14 sourceBody530_26

def sourceBody530_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_13 sourceBody530_27

def sourceBody530_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_12 sourceBody530_28

def sourceBody530_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_11 sourceBody530_29

def sourceBody530_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_10 sourceBody530_30

def sourceBody530_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_0 sourceBody530_31

def sourceBody530_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_0 sourceBody530_32

def sourceBody530_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 10)

def sourceBody530_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 28)

def sourceBody530_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 6)

def sourceBody530_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 24)

def sourceBody530_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody530_0, 530, 8)) (some 462) ([32, 8, 26, 18]) (some (32, sourceBody530_19, 530, 9))

def sourceBody530_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_38 sourceBody530_3

def sourceBody530_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_39 sourceBody530_0

def sourceBody530_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_37 sourceBody530_40

def sourceBody530_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_36 sourceBody530_41

def sourceBody530_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_35 sourceBody530_42

def sourceBody530_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_34 sourceBody530_43

def sourceBody530_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 16)

def sourceBody530_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 34)

def sourceBody530_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 4)

def sourceBody530_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 22)

def sourceBody530_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
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
      Flapjack.WordLangExpHOL.var 14])

def sourceBody530_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody530_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody530_0, 530, 10)) (some 147) ([8, 26, 18, 36, 2]) (some (8, sourceBody530_50, 530, 11))

def sourceBody530_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_51 sourceBody530_3

def sourceBody530_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_52 sourceBody530_0

def sourceBody530_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_49 sourceBody530_53

def sourceBody530_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_48 sourceBody530_54

def sourceBody530_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_47 sourceBody530_55

def sourceBody530_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_46 sourceBody530_56

def sourceBody530_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_45 sourceBody530_57

def sourceBody530_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_0 sourceBody530_58

def sourceBody530_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_0 sourceBody530_59

def sourceBody530_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody530_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody530_0, 530, 12)) (some 490) ([8]) (some (8, sourceBody530_50, 530, 13))

def sourceBody530_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_62 sourceBody530_3

def sourceBody530_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_63 sourceBody530_0

def sourceBody530_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_61 sourceBody530_64

def sourceBody530_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_0 sourceBody530_65

def sourceBody530_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_0 sourceBody530_66

def sourceBody530_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_60 sourceBody530_67

def sourceBody530_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody530_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [32]

def sourceBody530_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_70 sourceBody530_0

def sourceBody530_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_69 sourceBody530_71

def sourceBody530_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_68 sourceBody530_72

def sourceBody530_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_44 sourceBody530_73

def sourceBody530_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_0 sourceBody530_74

def sourceBody530_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_0 sourceBody530_75

def sourceBody530_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_33 sourceBody530_76

def sourceBody530_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_9 sourceBody530_77

def sourceBody530_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_0 sourceBody530_78

def sourceBody530_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_0 sourceBody530_79

def sourceBody530_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_0 sourceBody530_80

def sourceBody530_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_0 sourceBody530_81

def sourceBody530_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_0 sourceBody530_82

def sourceBody530_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_0 sourceBody530_83

def sourceBody530_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_0 sourceBody530_84

def sourceBody530_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_0 sourceBody530_85

def sourceBody530_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_5 sourceBody530_86

def sourceBody530_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_0 sourceBody530_87

def sourceBody530_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_0 sourceBody530_88

def sourceBody530_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_0 sourceBody530_89

def sourceBody530_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_0 sourceBody530_90

def sourceBody530_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_0 sourceBody530_91

def sourceBody530_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_0 sourceBody530_92

def sourceBody530_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_0 sourceBody530_93

def sourceBody530_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody530_0 sourceBody530_94

def source530 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (530, 1, sourceBody530_95)
end InitECandidate.Proofs.WordStages
