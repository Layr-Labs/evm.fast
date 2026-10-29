import InitECandidate.Proofs.WordStages.Source515
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody531_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody531_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody531_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([10, 28, 6, 24]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody531_0, 531, 2)) (some 475) ([]) (some (16, sourceBody531_1, 531, 3))

def sourceBody531_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody531_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_2 sourceBody531_3

def sourceBody531_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_4 sourceBody531_0

def sourceBody531_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody531_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 34, 4, 22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody531_0, 531, 4)) (some 475) ([]) (some (14, sourceBody531_6, 531, 5))

def sourceBody531_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_7 sourceBody531_3

def sourceBody531_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_8 sourceBody531_0

def sourceBody531_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody531_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody531_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 28)

def sourceBody531_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody531_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 24)

def sourceBody531_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody531_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody531_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody531_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody531_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def sourceBody531_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody531_0, 531, 6)) (some 483) ([32, 8, 26, 18, 36, 2, 20, 12, 30]) (some (32, sourceBody531_19, 531, 7))

def sourceBody531_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_20 sourceBody531_3

def sourceBody531_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_21 sourceBody531_0

def sourceBody531_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_18 sourceBody531_22

def sourceBody531_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_17 sourceBody531_23

def sourceBody531_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_16 sourceBody531_24

def sourceBody531_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_15 sourceBody531_25

def sourceBody531_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_14 sourceBody531_26

def sourceBody531_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_13 sourceBody531_27

def sourceBody531_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_12 sourceBody531_28

def sourceBody531_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_11 sourceBody531_29

def sourceBody531_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_10 sourceBody531_30

def sourceBody531_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_0 sourceBody531_31

def sourceBody531_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_0 sourceBody531_32

def sourceBody531_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 10)

def sourceBody531_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 28)

def sourceBody531_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 6)

def sourceBody531_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 24)

def sourceBody531_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody531_0, 531, 8)) (some 462) ([32, 8, 26, 18]) (some (32, sourceBody531_19, 531, 9))

def sourceBody531_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_38 sourceBody531_3

def sourceBody531_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_39 sourceBody531_0

def sourceBody531_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_37 sourceBody531_40

def sourceBody531_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_36 sourceBody531_41

def sourceBody531_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_35 sourceBody531_42

def sourceBody531_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_34 sourceBody531_43

def sourceBody531_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
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

def sourceBody531_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 255#64])

def sourceBody531_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 8 (Flapjack.WordLangAddr.addr 32 0#64))

def sourceBody531_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_47 sourceBody531_0

def sourceBody531_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_46 sourceBody531_48

def sourceBody531_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_45 sourceBody531_49

def sourceBody531_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody531_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody531_53 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody531_0, 531, 10)) (some 490) ([8]) (some (8, sourceBody531_52, 531, 11))

def sourceBody531_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_53 sourceBody531_3

def sourceBody531_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_54 sourceBody531_0

def sourceBody531_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_51 sourceBody531_55

def sourceBody531_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_0 sourceBody531_56

def sourceBody531_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_0 sourceBody531_57

def sourceBody531_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_50 sourceBody531_58

def sourceBody531_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody531_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [32]

def sourceBody531_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_61 sourceBody531_0

def sourceBody531_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_60 sourceBody531_62

def sourceBody531_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_59 sourceBody531_63

def sourceBody531_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_44 sourceBody531_64

def sourceBody531_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_0 sourceBody531_65

def sourceBody531_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_0 sourceBody531_66

def sourceBody531_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_33 sourceBody531_67

def sourceBody531_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_9 sourceBody531_68

def sourceBody531_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_0 sourceBody531_69

def sourceBody531_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_0 sourceBody531_70

def sourceBody531_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_0 sourceBody531_71

def sourceBody531_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_0 sourceBody531_72

def sourceBody531_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_0 sourceBody531_73

def sourceBody531_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_0 sourceBody531_74

def sourceBody531_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_0 sourceBody531_75

def sourceBody531_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_0 sourceBody531_76

def sourceBody531_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_5 sourceBody531_77

def sourceBody531_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_0 sourceBody531_78

def sourceBody531_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_0 sourceBody531_79

def sourceBody531_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_0 sourceBody531_80

def sourceBody531_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_0 sourceBody531_81

def sourceBody531_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_0 sourceBody531_82

def sourceBody531_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_0 sourceBody531_83

def sourceBody531_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_0 sourceBody531_84

def sourceBody531_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody531_0 sourceBody531_85

def source531 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (531, 1, sourceBody531_86)
end InitECandidate.Proofs.WordStages
