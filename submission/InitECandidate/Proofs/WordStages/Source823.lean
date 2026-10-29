import InitECandidate.Proofs.WordStages.Source807
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody823_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody823_1 : WordLangProgHOL (BitVec 64) :=
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

def sourceBody823_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 96#64]))

def sourceBody823_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody823_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 512#64)

def sourceBody823_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody823_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody823_7 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.reg 8) sourceBody823_5 sourceBody823_6

def sourceBody823_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody823_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_7 sourceBody823_8

def sourceBody823_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 12)

def sourceBody823_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 10#64)

def sourceBody823_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 4)

def sourceBody823_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_12 sourceBody823_0

def sourceBody823_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_13 sourceBody823_0

def sourceBody823_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_11 sourceBody823_14

def sourceBody823_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_0 sourceBody823_15

def sourceBody823_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody823_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody823_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_17 sourceBody823_18

def sourceBody823_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_16 sourceBody823_19

def sourceBody823_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody823_20 sourceBody823_0

def sourceBody823_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_21 sourceBody823_8

def sourceBody823_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_22 sourceBody823_0

def sourceBody823_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_10 sourceBody823_23

def sourceBody823_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_9 sourceBody823_24

def sourceBody823_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_4 sourceBody823_25

def sourceBody823_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_3 sourceBody823_26

def sourceBody823_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 600#64)

def sourceBody823_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody823_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody823_0, 823, 2)) (some 470) ([12]) (some (12, sourceBody823_29, 823, 3))

def sourceBody823_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_30 sourceBody823_8

def sourceBody823_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_31 sourceBody823_0

def sourceBody823_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_28 sourceBody823_32

def sourceBody823_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_0 sourceBody823_33

def sourceBody823_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_0 sourceBody823_34

def sourceBody823_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_27 sourceBody823_35

def sourceBody823_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 256#64)

def sourceBody823_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody823_0, 823, 4)) (some 68) ([12]) (some (12, sourceBody823_29, 823, 5))

def sourceBody823_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_38 sourceBody823_8

def sourceBody823_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_39 sourceBody823_0

def sourceBody823_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_37 sourceBody823_40

def sourceBody823_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 88#64]))

def sourceBody823_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody823_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody823_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody823_0, 823, 6)) (some 812) ([8, 16]) (some (8, sourceBody823_44, 823, 7))

def sourceBody823_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_45 sourceBody823_8

def sourceBody823_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_46 sourceBody823_0

def sourceBody823_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_43 sourceBody823_47

def sourceBody823_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_42 sourceBody823_48

def sourceBody823_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody823_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody823_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody823_53 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.reg 2) sourceBody823_51 sourceBody823_52

def sourceBody823_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_53 sourceBody823_8

def sourceBody823_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 16)

def sourceBody823_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 10#64)

def sourceBody823_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 8)

def sourceBody823_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_57 sourceBody823_0

def sourceBody823_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_58 sourceBody823_0

def sourceBody823_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_56 sourceBody823_59

def sourceBody823_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_0 sourceBody823_60

def sourceBody823_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody823_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_62 sourceBody823_44

def sourceBody823_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_61 sourceBody823_63

def sourceBody823_65 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody823_64 sourceBody823_0

def sourceBody823_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_65 sourceBody823_8

def sourceBody823_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_66 sourceBody823_0

def sourceBody823_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_55 sourceBody823_67

def sourceBody823_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_54 sourceBody823_68

def sourceBody823_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_50 sourceBody823_69

def sourceBody823_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_10 sourceBody823_70

def sourceBody823_72 : WordLangProgHOL (BitVec 64) :=
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

def sourceBody823_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 16)

def sourceBody823_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 8) 2

def sourceBody823_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_74 sourceBody823_0

def sourceBody823_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_73 sourceBody823_75

def sourceBody823_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_76 sourceBody823_0

def sourceBody823_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_43 sourceBody823_77

def sourceBody823_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_0 sourceBody823_78

def sourceBody823_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_72 sourceBody823_79

def sourceBody823_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_0 sourceBody823_80

def sourceBody823_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_71 sourceBody823_81

def sourceBody823_83 : WordLangProgHOL (BitVec 64) :=
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

def sourceBody823_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 256#64)

def sourceBody823_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_84 sourceBody823_77

def sourceBody823_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_0 sourceBody823_85

def sourceBody823_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_83 sourceBody823_86

def sourceBody823_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_0 sourceBody823_87

def sourceBody823_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_82 sourceBody823_88

def sourceBody823_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody823_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody823_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_91 sourceBody823_0

def sourceBody823_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_90 sourceBody823_92

def sourceBody823_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_89 sourceBody823_93

def sourceBody823_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_49 sourceBody823_94

def sourceBody823_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_0 sourceBody823_95

def sourceBody823_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_0 sourceBody823_96

def sourceBody823_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_41 sourceBody823_97

def sourceBody823_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_0 sourceBody823_98

def sourceBody823_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_0 sourceBody823_99

def sourceBody823_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_36 sourceBody823_100

def sourceBody823_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_2 sourceBody823_101

def sourceBody823_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_0 sourceBody823_102

def sourceBody823_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_1 sourceBody823_103

def sourceBody823_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody823_0 sourceBody823_104

def source823 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (823, 1, sourceBody823_105)
end InitECandidate.Proofs.WordStages
