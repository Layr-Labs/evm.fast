import InitECandidate.Proofs.WordStages.Source142
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody158_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody158_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 72#64]))

def sourceBody158_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody158_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 200#64)

def sourceBody158_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody158_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody158_0, 158, 2)) (some 78) ([14, 20]) (some (14, sourceBody158_4, 158, 3))

def sourceBody158_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody158_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_5 sourceBody158_6

def sourceBody158_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_7 sourceBody158_0

def sourceBody158_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_3 sourceBody158_8

def sourceBody158_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_2 sourceBody158_9

def sourceBody158_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_0 sourceBody158_10

def sourceBody158_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_0 sourceBody158_11

def sourceBody158_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody158_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 4)

def sourceBody158_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 136#64])

def sourceBody158_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody158_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody158_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 20 (Flapjack.WordRegImm.reg 8) sourceBody158_16 sourceBody158_17

def sourceBody158_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_18 sourceBody158_6

def sourceBody158_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 20)

def sourceBody158_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 10)

def sourceBody158_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 18])

def sourceBody158_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody158_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody158_0, 158, 4)) (some 157) ([20, 8]) (some (20, sourceBody158_23, 158, 5))

def sourceBody158_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_24 sourceBody158_6

def sourceBody158_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_25 sourceBody158_0

def sourceBody158_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_22 sourceBody158_26

def sourceBody158_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_21 sourceBody158_27

def sourceBody158_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_0 sourceBody158_28

def sourceBody158_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_0 sourceBody158_29

def sourceBody158_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 136#64])

def sourceBody158_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 14)

def sourceBody158_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_32 sourceBody158_0

def sourceBody158_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_33 sourceBody158_0

def sourceBody158_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_31 sourceBody158_34

def sourceBody158_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_0 sourceBody158_35

def sourceBody158_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_30 sourceBody158_36

def sourceBody158_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody158_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_37 sourceBody158_38

def sourceBody158_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody158_41 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody158_39 sourceBody158_40

def sourceBody158_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_41 sourceBody158_6

def sourceBody158_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_42 sourceBody158_0

def sourceBody158_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_20 sourceBody158_43

def sourceBody158_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_19 sourceBody158_44

def sourceBody158_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_15 sourceBody158_45

def sourceBody158_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_14 sourceBody158_46

def sourceBody158_48 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln) sourceBody158_47 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody158_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_48 sourceBody158_6

def sourceBody158_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_6 sourceBody158_49

def sourceBody158_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 18])

def sourceBody158_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 80#64]))

def sourceBody158_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 136#64)

def sourceBody158_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody158_55 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody158_0, 158, 6)) (some 78) ([8, 16]) (some (8, sourceBody158_54, 158, 7))

def sourceBody158_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_55 sourceBody158_6

def sourceBody158_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_56 sourceBody158_0

def sourceBody158_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_53 sourceBody158_57

def sourceBody158_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_52 sourceBody158_58

def sourceBody158_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_0 sourceBody158_59

def sourceBody158_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_0 sourceBody158_60

def sourceBody158_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.var 18])

def sourceBody158_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody158_64 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody158_0, 158, 8)) (some 77) ([8, 16, 12]) (some (8, sourceBody158_54, 158, 9))

def sourceBody158_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_64 sourceBody158_6

def sourceBody158_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_65 sourceBody158_0

def sourceBody158_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_63 sourceBody158_66

def sourceBody158_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_62 sourceBody158_67

def sourceBody158_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_52 sourceBody158_68

def sourceBody158_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_0 sourceBody158_69

def sourceBody158_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_0 sourceBody158_70

def sourceBody158_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_61 sourceBody158_71

def sourceBody158_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 80#64]),
      Flapjack.WordLangExpHOL.var 14])

def sourceBody158_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody158_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 8 (Flapjack.WordLangAddr.addr 20 0#64))

def sourceBody158_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_75 sourceBody158_0

def sourceBody158_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_74 sourceBody158_76

def sourceBody158_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_73 sourceBody158_77

def sourceBody158_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_72 sourceBody158_78

def sourceBody158_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 80#64]),
      Flapjack.WordLangExpHOL.const 135#64])

def sourceBody158_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 20 (Flapjack.WordLangAddr.addr 20 0#64))

def sourceBody158_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 80#64]),
      Flapjack.WordLangExpHOL.const 135#64])

def sourceBody158_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 128#64])

def sourceBody158_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 16 (Flapjack.WordLangAddr.addr 8 0#64))

def sourceBody158_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_84 sourceBody158_0

def sourceBody158_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_83 sourceBody158_85

def sourceBody158_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_82 sourceBody158_86

def sourceBody158_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_81 sourceBody158_87

def sourceBody158_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_80 sourceBody158_88

def sourceBody158_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_79 sourceBody158_89

def sourceBody158_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody158_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 80#64]))

def sourceBody158_93 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody158_0, 158, 10)) (some 157) ([8, 16]) (some (8, sourceBody158_54, 158, 11))

def sourceBody158_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_93 sourceBody158_6

def sourceBody158_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_94 sourceBody158_0

def sourceBody158_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_92 sourceBody158_95

def sourceBody158_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_91 sourceBody158_96

def sourceBody158_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_0 sourceBody158_97

def sourceBody158_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_0 sourceBody158_98

def sourceBody158_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_90 sourceBody158_99

def sourceBody158_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 7#64])

def sourceBody158_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody158_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody158_104 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 16) sourceBody158_74 sourceBody158_103

def sourceBody158_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_104 sourceBody158_6

def sourceBody158_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 8)

def sourceBody158_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 6)

def sourceBody158_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 10))

def sourceBody158_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 8)

def sourceBody158_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 20) 16

def sourceBody158_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_110 sourceBody158_0

def sourceBody158_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_109 sourceBody158_111

def sourceBody158_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_112 sourceBody158_0

def sourceBody158_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_108 sourceBody158_113

def sourceBody158_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_0 sourceBody158_114

def sourceBody158_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_107 sourceBody158_115

def sourceBody158_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_0 sourceBody158_116

def sourceBody158_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody158_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody158_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_119 sourceBody158_113

def sourceBody158_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_0 sourceBody158_120

def sourceBody158_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_118 sourceBody158_121

def sourceBody158_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_0 sourceBody158_122

def sourceBody158_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_117 sourceBody158_123

def sourceBody158_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 16#64])

def sourceBody158_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody158_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_126 sourceBody158_113

def sourceBody158_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_0 sourceBody158_127

def sourceBody158_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_125 sourceBody158_128

def sourceBody158_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_0 sourceBody158_129

def sourceBody158_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_124 sourceBody158_130

def sourceBody158_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 24#64])

def sourceBody158_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody158_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_133 sourceBody158_113

def sourceBody158_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_0 sourceBody158_134

def sourceBody158_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_132 sourceBody158_135

def sourceBody158_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_0 sourceBody158_136

def sourceBody158_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_131 sourceBody158_137

def sourceBody158_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 6)

def sourceBody158_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 10)

def sourceBody158_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody158_142 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody158_0, 158, 12)) (some 77) ([8, 16, 12]) (some (8, sourceBody158_54, 158, 13))

def sourceBody158_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_142 sourceBody158_6

def sourceBody158_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_143 sourceBody158_0

def sourceBody158_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_141 sourceBody158_144

def sourceBody158_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_140 sourceBody158_145

def sourceBody158_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_139 sourceBody158_146

def sourceBody158_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_0 sourceBody158_147

def sourceBody158_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_0 sourceBody158_148

def sourceBody158_150 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody158_138 sourceBody158_149

def sourceBody158_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_150 sourceBody158_6

def sourceBody158_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_151 sourceBody158_0

def sourceBody158_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_106 sourceBody158_152

def sourceBody158_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_105 sourceBody158_153

def sourceBody158_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_102 sourceBody158_154

def sourceBody158_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_101 sourceBody158_155

def sourceBody158_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_100 sourceBody158_156

def sourceBody158_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20]

def sourceBody158_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_158 sourceBody158_0

def sourceBody158_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_17 sourceBody158_159

def sourceBody158_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_157 sourceBody158_160

def sourceBody158_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_51 sourceBody158_161

def sourceBody158_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_0 sourceBody158_162

def sourceBody158_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_50 sourceBody158_163

def sourceBody158_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_13 sourceBody158_164

def sourceBody158_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_0 sourceBody158_165

def sourceBody158_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_12 sourceBody158_166

def sourceBody158_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_1 sourceBody158_167

def sourceBody158_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody158_0 sourceBody158_168

def source158 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (158, 4, sourceBody158_169)
end InitECandidate.Proofs.WordStages
