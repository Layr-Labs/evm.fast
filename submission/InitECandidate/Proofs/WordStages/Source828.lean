import InitECandidate.Proofs.WordStages.Source812
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody828_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody828_1 : WordLangProgHOL (BitVec 64) :=
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

def sourceBody828_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 96#64]))

def sourceBody828_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody828_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 192#64)

def sourceBody828_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody828_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody828_7 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.reg 8) sourceBody828_5 sourceBody828_6

def sourceBody828_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody828_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_7 sourceBody828_8

def sourceBody828_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 12)

def sourceBody828_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 13#64)

def sourceBody828_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 4)

def sourceBody828_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_12 sourceBody828_0

def sourceBody828_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_13 sourceBody828_0

def sourceBody828_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_11 sourceBody828_14

def sourceBody828_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_0 sourceBody828_15

def sourceBody828_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody828_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody828_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_17 sourceBody828_18

def sourceBody828_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_16 sourceBody828_19

def sourceBody828_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody828_20 sourceBody828_0

def sourceBody828_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_21 sourceBody828_8

def sourceBody828_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_22 sourceBody828_0

def sourceBody828_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_10 sourceBody828_23

def sourceBody828_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_9 sourceBody828_24

def sourceBody828_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_4 sourceBody828_25

def sourceBody828_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_3 sourceBody828_26

def sourceBody828_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 50000#64)

def sourceBody828_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody828_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody828_0, 828, 2)) (some 470) ([12]) (some (12, sourceBody828_29, 828, 3))

def sourceBody828_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_30 sourceBody828_8

def sourceBody828_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_31 sourceBody828_0

def sourceBody828_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_28 sourceBody828_32

def sourceBody828_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_0 sourceBody828_33

def sourceBody828_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_0 sourceBody828_34

def sourceBody828_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_27 sourceBody828_35

def sourceBody828_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 64#64)

def sourceBody828_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody828_0, 828, 4)) (some 68) ([12]) (some (12, sourceBody828_29, 828, 5))

def sourceBody828_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_38 sourceBody828_8

def sourceBody828_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_39 sourceBody828_0

def sourceBody828_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_37 sourceBody828_40

def sourceBody828_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 88#64]))

def sourceBody828_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody828_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody828_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody828_0, 828, 6)) (some 817) ([8, 16]) (some (8, sourceBody828_44, 828, 7))

def sourceBody828_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_45 sourceBody828_8

def sourceBody828_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_46 sourceBody828_0

def sourceBody828_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_43 sourceBody828_47

def sourceBody828_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_42 sourceBody828_48

def sourceBody828_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody828_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody828_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody828_53 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.reg 2) sourceBody828_51 sourceBody828_52

def sourceBody828_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_53 sourceBody828_8

def sourceBody828_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 16)

def sourceBody828_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13#64)

def sourceBody828_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 8)

def sourceBody828_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_57 sourceBody828_0

def sourceBody828_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_58 sourceBody828_0

def sourceBody828_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_56 sourceBody828_59

def sourceBody828_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_0 sourceBody828_60

def sourceBody828_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody828_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_62 sourceBody828_44

def sourceBody828_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_61 sourceBody828_63

def sourceBody828_65 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody828_64 sourceBody828_0

def sourceBody828_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_65 sourceBody828_8

def sourceBody828_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_66 sourceBody828_0

def sourceBody828_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_55 sourceBody828_67

def sourceBody828_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_54 sourceBody828_68

def sourceBody828_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_50 sourceBody828_69

def sourceBody828_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_10 sourceBody828_70

def sourceBody828_72 : WordLangProgHOL (BitVec 64) :=
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

def sourceBody828_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 16)

def sourceBody828_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 8) 2

def sourceBody828_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_74 sourceBody828_0

def sourceBody828_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_73 sourceBody828_75

def sourceBody828_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_76 sourceBody828_0

def sourceBody828_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_43 sourceBody828_77

def sourceBody828_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_0 sourceBody828_78

def sourceBody828_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_72 sourceBody828_79

def sourceBody828_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_0 sourceBody828_80

def sourceBody828_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_71 sourceBody828_81

def sourceBody828_83 : WordLangProgHOL (BitVec 64) :=
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

def sourceBody828_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 64#64)

def sourceBody828_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_84 sourceBody828_77

def sourceBody828_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_0 sourceBody828_85

def sourceBody828_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_83 sourceBody828_86

def sourceBody828_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_0 sourceBody828_87

def sourceBody828_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_82 sourceBody828_88

def sourceBody828_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody828_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody828_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_91 sourceBody828_0

def sourceBody828_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_90 sourceBody828_92

def sourceBody828_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_89 sourceBody828_93

def sourceBody828_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_49 sourceBody828_94

def sourceBody828_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_0 sourceBody828_95

def sourceBody828_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_0 sourceBody828_96

def sourceBody828_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_41 sourceBody828_97

def sourceBody828_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_0 sourceBody828_98

def sourceBody828_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_0 sourceBody828_99

def sourceBody828_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_36 sourceBody828_100

def sourceBody828_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_2 sourceBody828_101

def sourceBody828_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_0 sourceBody828_102

def sourceBody828_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_1 sourceBody828_103

def sourceBody828_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody828_0 sourceBody828_104

def source828 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (828, 1, sourceBody828_105)
end InitECandidate.Proofs.WordStages
