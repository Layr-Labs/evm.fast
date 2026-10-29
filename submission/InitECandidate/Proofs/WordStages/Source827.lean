import InitECandidate.Proofs.WordStages.Source811
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody827_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody827_1 : WordLangProgHOL (BitVec 64) :=
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

def sourceBody827_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 96#64]))

def sourceBody827_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody827_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 128#64)

def sourceBody827_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody827_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody827_7 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.reg 8) sourceBody827_5 sourceBody827_6

def sourceBody827_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody827_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_7 sourceBody827_8

def sourceBody827_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 12)

def sourceBody827_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 10#64)

def sourceBody827_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 4)

def sourceBody827_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_12 sourceBody827_0

def sourceBody827_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_13 sourceBody827_0

def sourceBody827_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_11 sourceBody827_14

def sourceBody827_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_0 sourceBody827_15

def sourceBody827_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody827_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody827_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_17 sourceBody827_18

def sourceBody827_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_16 sourceBody827_19

def sourceBody827_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody827_20 sourceBody827_0

def sourceBody827_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_21 sourceBody827_8

def sourceBody827_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_22 sourceBody827_0

def sourceBody827_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_10 sourceBody827_23

def sourceBody827_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_9 sourceBody827_24

def sourceBody827_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_4 sourceBody827_25

def sourceBody827_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_3 sourceBody827_26

def sourceBody827_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 23800#64)

def sourceBody827_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody827_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody827_0, 827, 2)) (some 470) ([12]) (some (12, sourceBody827_29, 827, 3))

def sourceBody827_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_30 sourceBody827_8

def sourceBody827_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_31 sourceBody827_0

def sourceBody827_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_28 sourceBody827_32

def sourceBody827_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_0 sourceBody827_33

def sourceBody827_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_0 sourceBody827_34

def sourceBody827_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_27 sourceBody827_35

def sourceBody827_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 256#64)

def sourceBody827_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody827_0, 827, 4)) (some 68) ([12]) (some (12, sourceBody827_29, 827, 5))

def sourceBody827_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_38 sourceBody827_8

def sourceBody827_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_39 sourceBody827_0

def sourceBody827_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_37 sourceBody827_40

def sourceBody827_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 88#64]))

def sourceBody827_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody827_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody827_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody827_0, 827, 6)) (some 816) ([8, 16]) (some (8, sourceBody827_44, 827, 7))

def sourceBody827_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_45 sourceBody827_8

def sourceBody827_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_46 sourceBody827_0

def sourceBody827_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_43 sourceBody827_47

def sourceBody827_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_42 sourceBody827_48

def sourceBody827_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody827_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody827_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody827_53 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.reg 2) sourceBody827_51 sourceBody827_52

def sourceBody827_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_53 sourceBody827_8

def sourceBody827_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 16)

def sourceBody827_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 10#64)

def sourceBody827_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 8)

def sourceBody827_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_57 sourceBody827_0

def sourceBody827_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_58 sourceBody827_0

def sourceBody827_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_56 sourceBody827_59

def sourceBody827_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_0 sourceBody827_60

def sourceBody827_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody827_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_62 sourceBody827_44

def sourceBody827_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_61 sourceBody827_63

def sourceBody827_65 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody827_64 sourceBody827_0

def sourceBody827_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_65 sourceBody827_8

def sourceBody827_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_66 sourceBody827_0

def sourceBody827_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_55 sourceBody827_67

def sourceBody827_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_54 sourceBody827_68

def sourceBody827_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_50 sourceBody827_69

def sourceBody827_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_10 sourceBody827_70

def sourceBody827_72 : WordLangProgHOL (BitVec 64) :=
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

def sourceBody827_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 16)

def sourceBody827_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 8) 2

def sourceBody827_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_74 sourceBody827_0

def sourceBody827_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_73 sourceBody827_75

def sourceBody827_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_76 sourceBody827_0

def sourceBody827_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_43 sourceBody827_77

def sourceBody827_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_0 sourceBody827_78

def sourceBody827_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_72 sourceBody827_79

def sourceBody827_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_0 sourceBody827_80

def sourceBody827_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_71 sourceBody827_81

def sourceBody827_83 : WordLangProgHOL (BitVec 64) :=
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

def sourceBody827_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 256#64)

def sourceBody827_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_84 sourceBody827_77

def sourceBody827_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_0 sourceBody827_85

def sourceBody827_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_83 sourceBody827_86

def sourceBody827_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_0 sourceBody827_87

def sourceBody827_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_82 sourceBody827_88

def sourceBody827_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody827_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody827_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_91 sourceBody827_0

def sourceBody827_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_90 sourceBody827_92

def sourceBody827_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_89 sourceBody827_93

def sourceBody827_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_49 sourceBody827_94

def sourceBody827_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_0 sourceBody827_95

def sourceBody827_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_0 sourceBody827_96

def sourceBody827_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_41 sourceBody827_97

def sourceBody827_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_0 sourceBody827_98

def sourceBody827_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_0 sourceBody827_99

def sourceBody827_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_36 sourceBody827_100

def sourceBody827_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_2 sourceBody827_101

def sourceBody827_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_0 sourceBody827_102

def sourceBody827_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_1 sourceBody827_103

def sourceBody827_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody827_0 sourceBody827_104

def source827 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (827, 1, sourceBody827_105)
end InitECandidate.Proofs.WordStages
