import InitECandidate.Proofs.WordStages.Source316
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody332_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody332_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody332_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody332_0, 332, 2)) (some 69) ([]) (some (20, sourceBody332_1, 332, 3))

def sourceBody332_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody332_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_2 sourceBody332_3

def sourceBody332_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_4 sourceBody332_0

def sourceBody332_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody332_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody332_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody332_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody332_0, 332, 4)) (some 308) ([16, 26]) (some (16, sourceBody332_8, 332, 5))

def sourceBody332_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_9 sourceBody332_3

def sourceBody332_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_10 sourceBody332_0

def sourceBody332_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_7 sourceBody332_11

def sourceBody332_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_6 sourceBody332_12

def sourceBody332_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 16)

def sourceBody332_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 4)

def sourceBody332_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody332_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody332_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 18) sourceBody332_16 sourceBody332_17

def sourceBody332_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_18 sourceBody332_3

def sourceBody332_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody332_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 160#64]))

def sourceBody332_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 16)

def sourceBody332_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody332_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody332_0, 332, 6)) (some 177) ([8, 18]) (some (8, sourceBody332_23, 332, 7))

def sourceBody332_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_24 sourceBody332_3

def sourceBody332_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_25 sourceBody332_0

def sourceBody332_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_22 sourceBody332_26

def sourceBody332_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_21 sourceBody332_27

def sourceBody332_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 20)

def sourceBody332_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 160#64]))

def sourceBody332_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 26)

def sourceBody332_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 16)
          (Flapjack.WordLangExpHOL.const 4#64)]))

def sourceBody332_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 16)
          (Flapjack.WordLangExpHOL.const 4#64),
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody332_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody332_35 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody332_0, 332, 8)) (some 320) ([18, 14, 24, 12, 22]) (some (18, sourceBody332_34, 332, 9))

def sourceBody332_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_35 sourceBody332_3

def sourceBody332_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_36 sourceBody332_0

def sourceBody332_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_33 sourceBody332_37

def sourceBody332_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_32 sourceBody332_38

def sourceBody332_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_31 sourceBody332_39

def sourceBody332_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_30 sourceBody332_40

def sourceBody332_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_29 sourceBody332_41

def sourceBody332_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_0 sourceBody332_42

def sourceBody332_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_0 sourceBody332_43

def sourceBody332_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody332_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 8)

def sourceBody332_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_46 sourceBody332_0

def sourceBody332_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_47 sourceBody332_0

def sourceBody332_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_45 sourceBody332_48

def sourceBody332_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_0 sourceBody332_49

def sourceBody332_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_44 sourceBody332_50

def sourceBody332_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_28 sourceBody332_51

def sourceBody332_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_0 sourceBody332_52

def sourceBody332_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_0 sourceBody332_53

def sourceBody332_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody332_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_54 sourceBody332_55

def sourceBody332_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody332_58 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody332_56 sourceBody332_57

def sourceBody332_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_58 sourceBody332_3

def sourceBody332_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_59 sourceBody332_0

def sourceBody332_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_20 sourceBody332_60

def sourceBody332_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_19 sourceBody332_61

def sourceBody332_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_15 sourceBody332_62

def sourceBody332_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_14 sourceBody332_63

def sourceBody332_65 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) sourceBody332_64 (Flapjack.Spt.bs
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody332_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_65 sourceBody332_3

def sourceBody332_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_3 sourceBody332_66

def sourceBody332_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 20)

def sourceBody332_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody332_70 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody332_0, 332, 10)) (some 331) ([8, 18]) (some (8, sourceBody332_23, 332, 11))

def sourceBody332_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_70 sourceBody332_3

def sourceBody332_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_71 sourceBody332_0

def sourceBody332_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_69 sourceBody332_72

def sourceBody332_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_68 sourceBody332_73

def sourceBody332_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_0 sourceBody332_74

def sourceBody332_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_0 sourceBody332_75

def sourceBody332_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_67 sourceBody332_76

def sourceBody332_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody332_79 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody332_0, 332, 12)) (some 70) ([8]) (some (8, sourceBody332_23, 332, 13))

def sourceBody332_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_79 sourceBody332_3

def sourceBody332_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_80 sourceBody332_0

def sourceBody332_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_78 sourceBody332_81

def sourceBody332_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_0 sourceBody332_82

def sourceBody332_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_0 sourceBody332_83

def sourceBody332_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_77 sourceBody332_84

def sourceBody332_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [26]

def sourceBody332_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_86 sourceBody332_0

def sourceBody332_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_7 sourceBody332_87

def sourceBody332_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_85 sourceBody332_88

def sourceBody332_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_6 sourceBody332_89

def sourceBody332_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_0 sourceBody332_90

def sourceBody332_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_13 sourceBody332_91

def sourceBody332_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_0 sourceBody332_92

def sourceBody332_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_0 sourceBody332_93

def sourceBody332_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_5 sourceBody332_94

def sourceBody332_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_0 sourceBody332_95

def sourceBody332_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody332_0 sourceBody332_96

def source332 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (332, 4, sourceBody332_97)
end InitECandidate.Proofs.WordStages
