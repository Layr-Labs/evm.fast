import InitECandidate.Proofs.WordStages.Source137
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody153_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody153_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody153_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody153_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody153_0, 153, 2)) (some 150) ([18]) (some (18, sourceBody153_2, 153, 3))

def sourceBody153_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody153_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_3 sourceBody153_4

def sourceBody153_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_5 sourceBody153_0

def sourceBody153_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_1 sourceBody153_6

def sourceBody153_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_0 sourceBody153_7

def sourceBody153_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_0 sourceBody153_8

def sourceBody153_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody153_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody153_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 64#64])

def sourceBody153_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody153_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody153_15 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 14 (Flapjack.WordRegImm.reg 20) sourceBody153_13 sourceBody153_14

def sourceBody153_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_15 sourceBody153_4

def sourceBody153_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 14)

def sourceBody153_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody153_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 10])

def sourceBody153_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody153_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody153_0, 153, 4)) (some 151) ([14, 20]) (some (14, sourceBody153_20, 153, 5))

def sourceBody153_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_21 sourceBody153_4

def sourceBody153_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_22 sourceBody153_0

def sourceBody153_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_19 sourceBody153_23

def sourceBody153_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_18 sourceBody153_24

def sourceBody153_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_0 sourceBody153_25

def sourceBody153_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_0 sourceBody153_26

def sourceBody153_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 64#64])

def sourceBody153_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 18)

def sourceBody153_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_29 sourceBody153_0

def sourceBody153_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_30 sourceBody153_0

def sourceBody153_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_28 sourceBody153_31

def sourceBody153_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_0 sourceBody153_32

def sourceBody153_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_27 sourceBody153_33

def sourceBody153_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody153_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_34 sourceBody153_35

def sourceBody153_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody153_38 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody153_36 sourceBody153_37

def sourceBody153_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_38 sourceBody153_4

def sourceBody153_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_39 sourceBody153_0

def sourceBody153_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_17 sourceBody153_40

def sourceBody153_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_16 sourceBody153_41

def sourceBody153_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_12 sourceBody153_42

def sourceBody153_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_11 sourceBody153_43

def sourceBody153_45 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln) sourceBody153_44 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody153_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_45 sourceBody153_4

def sourceBody153_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_4 sourceBody153_46

def sourceBody153_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 10])

def sourceBody153_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 56#64]))

def sourceBody153_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 128#64)

def sourceBody153_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody153_52 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody153_0, 153, 6)) (some 78) ([20, 8]) (some (20, sourceBody153_51, 153, 7))

def sourceBody153_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_52 sourceBody153_4

def sourceBody153_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_53 sourceBody153_0

def sourceBody153_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_50 sourceBody153_54

def sourceBody153_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_49 sourceBody153_55

def sourceBody153_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_0 sourceBody153_56

def sourceBody153_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_0 sourceBody153_57

def sourceBody153_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 10])

def sourceBody153_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 18)

def sourceBody153_61 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody153_0, 153, 8)) (some 77) ([20, 8, 16]) (some (20, sourceBody153_51, 153, 9))

def sourceBody153_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_61 sourceBody153_4

def sourceBody153_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_62 sourceBody153_0

def sourceBody153_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_60 sourceBody153_63

def sourceBody153_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_59 sourceBody153_64

def sourceBody153_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_49 sourceBody153_65

def sourceBody153_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_0 sourceBody153_66

def sourceBody153_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_0 sourceBody153_67

def sourceBody153_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_58 sourceBody153_68

def sourceBody153_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 56#64]),
      Flapjack.WordLangExpHOL.var 18])

def sourceBody153_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 128#64)

def sourceBody153_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 20 (Flapjack.WordLangAddr.addr 14 0#64))

def sourceBody153_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_72 sourceBody153_0

def sourceBody153_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_71 sourceBody153_73

def sourceBody153_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_70 sourceBody153_74

def sourceBody153_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_69 sourceBody153_75

def sourceBody153_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 64#64)

def sourceBody153_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 18)

def sourceBody153_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 56#64)

def sourceBody153_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody153_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody153_82 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 8 (Flapjack.WordRegImm.reg 16) sourceBody153_80 sourceBody153_81

def sourceBody153_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_82 sourceBody153_4

def sourceBody153_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 8)

def sourceBody153_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 128#64)

def sourceBody153_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_85 sourceBody153_0

def sourceBody153_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_86 sourceBody153_0

def sourceBody153_88 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody153_87 sourceBody153_0

def sourceBody153_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_88 sourceBody153_4

def sourceBody153_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_89 sourceBody153_0

def sourceBody153_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_84 sourceBody153_90

def sourceBody153_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_83 sourceBody153_91

def sourceBody153_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_79 sourceBody153_92

def sourceBody153_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_78 sourceBody153_93

def sourceBody153_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.load
            (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
              [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                  [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                    Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                      (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                      (Flapjack.WordLangExpHOL.const 1#64)],
                Flapjack.WordLangExpHOL.const 56#64]),
          Flapjack.WordLangExpHOL.var 14],
      Flapjack.WordLangExpHOL.const 8#64])

def sourceBody153_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
    (Flapjack.WordLangExpHOL.const 3#64))

def sourceBody153_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody153_98 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody153_0, 153, 10)) (some 89) ([8, 16]) (some (8, sourceBody153_97, 153, 11))

def sourceBody153_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_98 sourceBody153_4

def sourceBody153_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_99 sourceBody153_0

def sourceBody153_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_96 sourceBody153_100

def sourceBody153_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_95 sourceBody153_101

def sourceBody153_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_0 sourceBody153_102

def sourceBody153_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_0 sourceBody153_103

def sourceBody153_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_94 sourceBody153_104

def sourceBody153_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody153_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 56#64]))

def sourceBody153_108 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody153_0, 153, 12)) (some 151) ([8, 16]) (some (8, sourceBody153_97, 153, 13))

def sourceBody153_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_108 sourceBody153_4

def sourceBody153_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_109 sourceBody153_0

def sourceBody153_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_107 sourceBody153_110

def sourceBody153_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_106 sourceBody153_111

def sourceBody153_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_0 sourceBody153_112

def sourceBody153_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_0 sourceBody153_113

def sourceBody153_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_105 sourceBody153_114

def sourceBody153_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 128#64)

def sourceBody153_117 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 16) sourceBody153_80 sourceBody153_81

def sourceBody153_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_117 sourceBody153_4

def sourceBody153_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 56#64]),
      Flapjack.WordLangExpHOL.const 64#64])

def sourceBody153_120 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody153_0, 153, 14)) (some 151) ([8, 16]) (some (8, sourceBody153_97, 153, 15))

def sourceBody153_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_120 sourceBody153_4

def sourceBody153_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_121 sourceBody153_0

def sourceBody153_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_119 sourceBody153_122

def sourceBody153_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_106 sourceBody153_123

def sourceBody153_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_0 sourceBody153_124

def sourceBody153_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_0 sourceBody153_125

def sourceBody153_127 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody153_126 sourceBody153_0

def sourceBody153_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_127 sourceBody153_4

def sourceBody153_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_128 sourceBody153_0

def sourceBody153_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_84 sourceBody153_129

def sourceBody153_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_118 sourceBody153_130

def sourceBody153_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_116 sourceBody153_131

def sourceBody153_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_17 sourceBody153_132

def sourceBody153_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_115 sourceBody153_133

def sourceBody153_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 6)

def sourceBody153_136 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody153_0, 153, 16)) (some 152) ([8, 16]) (some (8, sourceBody153_97, 153, 17))

def sourceBody153_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_136 sourceBody153_4

def sourceBody153_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_137 sourceBody153_0

def sourceBody153_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_135 sourceBody153_138

def sourceBody153_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_106 sourceBody153_139

def sourceBody153_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_0 sourceBody153_140

def sourceBody153_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_0 sourceBody153_141

def sourceBody153_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_134 sourceBody153_142

def sourceBody153_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody153_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20]

def sourceBody153_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_145 sourceBody153_0

def sourceBody153_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_144 sourceBody153_146

def sourceBody153_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_143 sourceBody153_147

def sourceBody153_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_77 sourceBody153_148

def sourceBody153_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_0 sourceBody153_149

def sourceBody153_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_76 sourceBody153_150

def sourceBody153_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_48 sourceBody153_151

def sourceBody153_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_0 sourceBody153_152

def sourceBody153_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_47 sourceBody153_153

def sourceBody153_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_10 sourceBody153_154

def sourceBody153_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_0 sourceBody153_155

def sourceBody153_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody153_9 sourceBody153_156

def source153 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (153, 4, sourceBody153_157)
end InitECandidate.Proofs.WordStages
