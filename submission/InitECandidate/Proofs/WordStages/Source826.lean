import InitECandidate.Proofs.WordStages.Source810
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody826_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody826_1 : WordLangProgHOL (BitVec 64) :=
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
              Flapjack.WordLangExpHOL.const 256#64]),
        Flapjack.WordLangExpHOL.const 112#64]))

def sourceBody826_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 96#64]))

def sourceBody826_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody826_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 64#64)

def sourceBody826_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody826_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody826_7 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.reg 8) sourceBody826_5 sourceBody826_6

def sourceBody826_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody826_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_7 sourceBody826_8

def sourceBody826_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 12)

def sourceBody826_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 10#64)

def sourceBody826_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 4)

def sourceBody826_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_12 sourceBody826_0

def sourceBody826_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_13 sourceBody826_0

def sourceBody826_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_11 sourceBody826_14

def sourceBody826_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_0 sourceBody826_15

def sourceBody826_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody826_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody826_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_17 sourceBody826_18

def sourceBody826_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_16 sourceBody826_19

def sourceBody826_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody826_20 sourceBody826_0

def sourceBody826_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_21 sourceBody826_8

def sourceBody826_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_22 sourceBody826_0

def sourceBody826_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_10 sourceBody826_23

def sourceBody826_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_9 sourceBody826_24

def sourceBody826_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_4 sourceBody826_25

def sourceBody826_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_3 sourceBody826_26

def sourceBody826_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 5500#64)

def sourceBody826_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody826_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody826_0, 826, 2)) (some 470) ([12]) (some (12, sourceBody826_29, 826, 3))

def sourceBody826_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_30 sourceBody826_8

def sourceBody826_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_31 sourceBody826_0

def sourceBody826_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_28 sourceBody826_32

def sourceBody826_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_0 sourceBody826_33

def sourceBody826_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_0 sourceBody826_34

def sourceBody826_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_27 sourceBody826_35

def sourceBody826_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 128#64)

def sourceBody826_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody826_0, 826, 4)) (some 68) ([12]) (some (12, sourceBody826_29, 826, 5))

def sourceBody826_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_38 sourceBody826_8

def sourceBody826_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_39 sourceBody826_0

def sourceBody826_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_37 sourceBody826_40

def sourceBody826_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 88#64]))

def sourceBody826_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody826_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody826_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody826_0, 826, 6)) (some 815) ([8, 16]) (some (8, sourceBody826_44, 826, 7))

def sourceBody826_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_45 sourceBody826_8

def sourceBody826_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_46 sourceBody826_0

def sourceBody826_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_43 sourceBody826_47

def sourceBody826_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_42 sourceBody826_48

def sourceBody826_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody826_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody826_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody826_53 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.reg 2) sourceBody826_51 sourceBody826_52

def sourceBody826_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_53 sourceBody826_8

def sourceBody826_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 16)

def sourceBody826_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 10#64)

def sourceBody826_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 8)

def sourceBody826_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_57 sourceBody826_0

def sourceBody826_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_58 sourceBody826_0

def sourceBody826_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_56 sourceBody826_59

def sourceBody826_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_0 sourceBody826_60

def sourceBody826_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody826_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_62 sourceBody826_44

def sourceBody826_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_61 sourceBody826_63

def sourceBody826_65 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody826_64 sourceBody826_0

def sourceBody826_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_65 sourceBody826_8

def sourceBody826_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_66 sourceBody826_0

def sourceBody826_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_55 sourceBody826_67

def sourceBody826_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_54 sourceBody826_68

def sourceBody826_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_50 sourceBody826_69

def sourceBody826_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_10 sourceBody826_70

def sourceBody826_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 120#64])

def sourceBody826_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 16)

def sourceBody826_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 8) 2

def sourceBody826_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_74 sourceBody826_0

def sourceBody826_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_73 sourceBody826_75

def sourceBody826_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_76 sourceBody826_0

def sourceBody826_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_43 sourceBody826_77

def sourceBody826_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_0 sourceBody826_78

def sourceBody826_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_72 sourceBody826_79

def sourceBody826_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_0 sourceBody826_80

def sourceBody826_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_71 sourceBody826_81

def sourceBody826_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 128#64])

def sourceBody826_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 128#64)

def sourceBody826_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_84 sourceBody826_77

def sourceBody826_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_0 sourceBody826_85

def sourceBody826_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_83 sourceBody826_86

def sourceBody826_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_0 sourceBody826_87

def sourceBody826_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_82 sourceBody826_88

def sourceBody826_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody826_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody826_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_91 sourceBody826_0

def sourceBody826_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_90 sourceBody826_92

def sourceBody826_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_89 sourceBody826_93

def sourceBody826_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_49 sourceBody826_94

def sourceBody826_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_0 sourceBody826_95

def sourceBody826_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_0 sourceBody826_96

def sourceBody826_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_41 sourceBody826_97

def sourceBody826_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_0 sourceBody826_98

def sourceBody826_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_0 sourceBody826_99

def sourceBody826_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_36 sourceBody826_100

def sourceBody826_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_2 sourceBody826_101

def sourceBody826_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_0 sourceBody826_102

def sourceBody826_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_1 sourceBody826_103

def sourceBody826_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody826_0 sourceBody826_104

def source826 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (826, 1, sourceBody826_105)
end InitECandidate.Proofs.WordStages
