import InitECandidate.Proofs.WordStages.Source535
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody551_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody551_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody551_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([10, 24, 6, 20]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody551_0, 551, 2)) (some 475) ([]) (some (14, sourceBody551_1, 551, 3))

def sourceBody551_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody551_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_2 sourceBody551_3

def sourceBody551_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_4 sourceBody551_0

def sourceBody551_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 100#64)

def sourceBody551_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody551_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody551_0, 551, 4)) (some 470) ([28]) (some (28, sourceBody551_7, 551, 5))

def sourceBody551_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_8 sourceBody551_3

def sourceBody551_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_9 sourceBody551_0

def sourceBody551_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_6 sourceBody551_10

def sourceBody551_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_0 sourceBody551_11

def sourceBody551_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_0 sourceBody551_12

def sourceBody551_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 280#64]))

def sourceBody551_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 10)

def sourceBody551_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 24)

def sourceBody551_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody551_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 20)

def sourceBody551_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 14)

def sourceBody551_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody551_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody551_0, 551, 6)) (some 147) ([4, 18, 12, 26, 8]) (some (4, sourceBody551_20, 551, 7))

def sourceBody551_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_21 sourceBody551_3

def sourceBody551_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_22 sourceBody551_0

def sourceBody551_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_19 sourceBody551_23

def sourceBody551_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_18 sourceBody551_24

def sourceBody551_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_17 sourceBody551_25

def sourceBody551_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_16 sourceBody551_26

def sourceBody551_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_15 sourceBody551_27

def sourceBody551_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_0 sourceBody551_28

def sourceBody551_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_0 sourceBody551_29

def sourceBody551_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
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

def sourceBody551_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 28)

def sourceBody551_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 14)

def sourceBody551_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody551_35 : WordLangProgHOL (BitVec 64) :=
.call (some (([4, 18, 12, 26]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody551_0, 551, 8)) (some 412) ([8, 22]) (some (8, sourceBody551_34, 551, 9))

def sourceBody551_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_35 sourceBody551_3

def sourceBody551_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_36 sourceBody551_0

def sourceBody551_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_33 sourceBody551_37

def sourceBody551_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_32 sourceBody551_38

def sourceBody551_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 4)

def sourceBody551_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 18)

def sourceBody551_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 12)

def sourceBody551_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 26)

def sourceBody551_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody551_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody551_0, 551, 10)) (some 476) ([22, 16, 30, 2]) (some (22, sourceBody551_44, 551, 11))

def sourceBody551_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_45 sourceBody551_3

def sourceBody551_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_46 sourceBody551_0

def sourceBody551_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_43 sourceBody551_47

def sourceBody551_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_42 sourceBody551_48

def sourceBody551_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_41 sourceBody551_49

def sourceBody551_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_40 sourceBody551_50

def sourceBody551_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_0 sourceBody551_51

def sourceBody551_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_0 sourceBody551_52

def sourceBody551_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody551_55 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody551_0, 551, 12)) (some 490) ([22]) (some (22, sourceBody551_44, 551, 13))

def sourceBody551_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_55 sourceBody551_3

def sourceBody551_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_56 sourceBody551_0

def sourceBody551_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_54 sourceBody551_57

def sourceBody551_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_0 sourceBody551_58

def sourceBody551_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_0 sourceBody551_59

def sourceBody551_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_53 sourceBody551_60

def sourceBody551_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody551_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody551_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_63 sourceBody551_0

def sourceBody551_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_62 sourceBody551_64

def sourceBody551_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_61 sourceBody551_65

def sourceBody551_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_39 sourceBody551_66

def sourceBody551_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_0 sourceBody551_67

def sourceBody551_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_0 sourceBody551_68

def sourceBody551_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_0 sourceBody551_69

def sourceBody551_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_0 sourceBody551_70

def sourceBody551_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_0 sourceBody551_71

def sourceBody551_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_0 sourceBody551_72

def sourceBody551_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_0 sourceBody551_73

def sourceBody551_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_0 sourceBody551_74

def sourceBody551_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_31 sourceBody551_75

def sourceBody551_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_0 sourceBody551_76

def sourceBody551_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_30 sourceBody551_77

def sourceBody551_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_14 sourceBody551_78

def sourceBody551_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_0 sourceBody551_79

def sourceBody551_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_13 sourceBody551_80

def sourceBody551_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_5 sourceBody551_81

def sourceBody551_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_0 sourceBody551_82

def sourceBody551_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_0 sourceBody551_83

def sourceBody551_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_0 sourceBody551_84

def sourceBody551_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_0 sourceBody551_85

def sourceBody551_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_0 sourceBody551_86

def sourceBody551_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_0 sourceBody551_87

def sourceBody551_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_0 sourceBody551_88

def sourceBody551_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody551_0 sourceBody551_89

def source551 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (551, 1, sourceBody551_90)
end InitECandidate.Proofs.WordStages
