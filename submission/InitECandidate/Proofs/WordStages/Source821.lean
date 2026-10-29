import InitECandidate.Proofs.WordStages.Source805
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody821_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody821_1 : WordLangProgHOL (BitVec 64) :=
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

def sourceBody821_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 96#64]))

def sourceBody821_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody821_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 256#64)

def sourceBody821_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody821_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody821_7 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.reg 8) sourceBody821_5 sourceBody821_6

def sourceBody821_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody821_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_7 sourceBody821_8

def sourceBody821_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 12)

def sourceBody821_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 10#64)

def sourceBody821_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 4)

def sourceBody821_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_12 sourceBody821_0

def sourceBody821_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_13 sourceBody821_0

def sourceBody821_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_11 sourceBody821_14

def sourceBody821_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_0 sourceBody821_15

def sourceBody821_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody821_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody821_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_17 sourceBody821_18

def sourceBody821_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_16 sourceBody821_19

def sourceBody821_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody821_20 sourceBody821_0

def sourceBody821_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_21 sourceBody821_8

def sourceBody821_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_22 sourceBody821_0

def sourceBody821_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_10 sourceBody821_23

def sourceBody821_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_9 sourceBody821_24

def sourceBody821_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_4 sourceBody821_25

def sourceBody821_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_3 sourceBody821_26

def sourceBody821_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 375#64)

def sourceBody821_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody821_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody821_0, 821, 2)) (some 470) ([12]) (some (12, sourceBody821_29, 821, 3))

def sourceBody821_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_30 sourceBody821_8

def sourceBody821_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_31 sourceBody821_0

def sourceBody821_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_28 sourceBody821_32

def sourceBody821_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_0 sourceBody821_33

def sourceBody821_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_0 sourceBody821_34

def sourceBody821_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_27 sourceBody821_35

def sourceBody821_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 128#64)

def sourceBody821_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody821_0, 821, 4)) (some 68) ([12]) (some (12, sourceBody821_29, 821, 5))

def sourceBody821_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_38 sourceBody821_8

def sourceBody821_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_39 sourceBody821_0

def sourceBody821_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_37 sourceBody821_40

def sourceBody821_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 88#64]))

def sourceBody821_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody821_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody821_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody821_0, 821, 6)) (some 810) ([8, 16]) (some (8, sourceBody821_44, 821, 7))

def sourceBody821_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_45 sourceBody821_8

def sourceBody821_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_46 sourceBody821_0

def sourceBody821_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_43 sourceBody821_47

def sourceBody821_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_42 sourceBody821_48

def sourceBody821_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody821_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody821_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody821_53 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.reg 2) sourceBody821_51 sourceBody821_52

def sourceBody821_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_53 sourceBody821_8

def sourceBody821_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 16)

def sourceBody821_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 10#64)

def sourceBody821_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 8)

def sourceBody821_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_57 sourceBody821_0

def sourceBody821_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_58 sourceBody821_0

def sourceBody821_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_56 sourceBody821_59

def sourceBody821_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_0 sourceBody821_60

def sourceBody821_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody821_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_62 sourceBody821_44

def sourceBody821_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_61 sourceBody821_63

def sourceBody821_65 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody821_64 sourceBody821_0

def sourceBody821_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_65 sourceBody821_8

def sourceBody821_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_66 sourceBody821_0

def sourceBody821_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_55 sourceBody821_67

def sourceBody821_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_54 sourceBody821_68

def sourceBody821_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_50 sourceBody821_69

def sourceBody821_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_10 sourceBody821_70

def sourceBody821_72 : WordLangProgHOL (BitVec 64) :=
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

def sourceBody821_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 16)

def sourceBody821_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 8) 2

def sourceBody821_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_74 sourceBody821_0

def sourceBody821_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_73 sourceBody821_75

def sourceBody821_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_76 sourceBody821_0

def sourceBody821_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_43 sourceBody821_77

def sourceBody821_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_0 sourceBody821_78

def sourceBody821_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_72 sourceBody821_79

def sourceBody821_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_0 sourceBody821_80

def sourceBody821_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_71 sourceBody821_81

def sourceBody821_83 : WordLangProgHOL (BitVec 64) :=
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

def sourceBody821_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 128#64)

def sourceBody821_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_84 sourceBody821_77

def sourceBody821_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_0 sourceBody821_85

def sourceBody821_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_83 sourceBody821_86

def sourceBody821_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_0 sourceBody821_87

def sourceBody821_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_82 sourceBody821_88

def sourceBody821_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody821_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody821_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_91 sourceBody821_0

def sourceBody821_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_90 sourceBody821_92

def sourceBody821_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_89 sourceBody821_93

def sourceBody821_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_49 sourceBody821_94

def sourceBody821_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_0 sourceBody821_95

def sourceBody821_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_0 sourceBody821_96

def sourceBody821_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_41 sourceBody821_97

def sourceBody821_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_0 sourceBody821_98

def sourceBody821_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_0 sourceBody821_99

def sourceBody821_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_36 sourceBody821_100

def sourceBody821_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_2 sourceBody821_101

def sourceBody821_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_0 sourceBody821_102

def sourceBody821_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_1 sourceBody821_103

def sourceBody821_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody821_0 sourceBody821_104

def source821 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (821, 1, sourceBody821_105)
end InitECandidate.Proofs.WordStages
