import InitECandidate.Proofs.WordStages.Source112
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody128_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody128_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 40#64]),
      Flapjack.WordLangExpHOL.const 216#64])

def sourceBody128_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 40#64]),
      Flapjack.WordLangExpHOL.const 352#64])

def sourceBody128_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 40#64]),
      Flapjack.WordLangExpHOL.const 560#64])

def sourceBody128_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 28)

def sourceBody128_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody128_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 8)

def sourceBody128_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 10)

def sourceBody128_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 12)

def sourceBody128_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 34

def sourceBody128_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody128_0, 128, 2)) (some 124) ([34, 18, 30, 24, 38]) (some (34, sourceBody128_9, 128, 3))

def sourceBody128_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody128_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_10 sourceBody128_11

def sourceBody128_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_12 sourceBody128_0

def sourceBody128_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_8 sourceBody128_13

def sourceBody128_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_7 sourceBody128_14

def sourceBody128_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_6 sourceBody128_15

def sourceBody128_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_5 sourceBody128_16

def sourceBody128_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_4 sourceBody128_17

def sourceBody128_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_0 sourceBody128_18

def sourceBody128_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_0 sourceBody128_19

def sourceBody128_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody128_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody128_0, 128, 4)) (some 126) ([34, 18]) (some (34, sourceBody128_9, 128, 5))

def sourceBody128_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_22 sourceBody128_11

def sourceBody128_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_23 sourceBody128_0

def sourceBody128_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_21 sourceBody128_24

def sourceBody128_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_4 sourceBody128_25

def sourceBody128_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 2)

def sourceBody128_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 4)

def sourceBody128_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody128_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody128_0, 128, 6)) (some 126) ([18, 30]) (some (18, sourceBody128_29, 128, 7))

def sourceBody128_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_30 sourceBody128_11

def sourceBody128_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_31 sourceBody128_0

def sourceBody128_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_28 sourceBody128_32

def sourceBody128_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_27 sourceBody128_33

def sourceBody128_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody128_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 18)

def sourceBody128_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 16#64)

def sourceBody128_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody128_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody128_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.WordRegImm.reg 38) sourceBody128_38 sourceBody128_39

def sourceBody128_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_40 sourceBody128_11

def sourceBody128_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 24)

def sourceBody128_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 36,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 18)
        (Flapjack.WordLangExpHOL.const 3#64)])

def sourceBody128_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 24)

def sourceBody128_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 30) 38

def sourceBody128_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_45 sourceBody128_0

def sourceBody128_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_44 sourceBody128_46

def sourceBody128_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_47 sourceBody128_0

def sourceBody128_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_39 sourceBody128_48

def sourceBody128_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_0 sourceBody128_49

def sourceBody128_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_43 sourceBody128_50

def sourceBody128_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_0 sourceBody128_51

def sourceBody128_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody128_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 30)

def sourceBody128_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_54 sourceBody128_0

def sourceBody128_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_55 sourceBody128_0

def sourceBody128_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_53 sourceBody128_56

def sourceBody128_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_0 sourceBody128_57

def sourceBody128_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_52 sourceBody128_58

def sourceBody128_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody128_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_59 sourceBody128_60

def sourceBody128_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody128_63 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody128_61 sourceBody128_62

def sourceBody128_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_63 sourceBody128_11

def sourceBody128_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_64 sourceBody128_0

def sourceBody128_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_42 sourceBody128_65

def sourceBody128_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_41 sourceBody128_66

def sourceBody128_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_37 sourceBody128_67

def sourceBody128_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_36 sourceBody128_68

def sourceBody128_70 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) sourceBody128_69 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody128_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_70 sourceBody128_11

def sourceBody128_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_11 sourceBody128_71

def sourceBody128_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 34)

def sourceBody128_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 22)

def sourceBody128_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 2)

def sourceBody128_76 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 125) ([0, 30]) (none)

def sourceBody128_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_76 sourceBody128_0

def sourceBody128_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_75 sourceBody128_77

def sourceBody128_79 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody128_78 sourceBody128_0

def sourceBody128_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_79 sourceBody128_11

def sourceBody128_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_80 sourceBody128_0

def sourceBody128_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_42 sourceBody128_81

def sourceBody128_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_41 sourceBody128_82

def sourceBody128_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_74 sourceBody128_83

def sourceBody128_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_73 sourceBody128_84

def sourceBody128_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_72 sourceBody128_85

def sourceBody128_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_35 sourceBody128_0

def sourceBody128_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_87 sourceBody128_0

def sourceBody128_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_86 sourceBody128_88

def sourceBody128_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody128_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 16,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 18)
        (Flapjack.WordLangExpHOL.const 3#64)])

def sourceBody128_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_91 sourceBody128_50

def sourceBody128_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_0 sourceBody128_92

def sourceBody128_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_93 sourceBody128_58

def sourceBody128_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_94 sourceBody128_60

def sourceBody128_96 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody128_95 sourceBody128_62

def sourceBody128_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_96 sourceBody128_11

def sourceBody128_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_97 sourceBody128_0

def sourceBody128_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_42 sourceBody128_98

def sourceBody128_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_41 sourceBody128_99

def sourceBody128_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_90 sourceBody128_100

def sourceBody128_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_36 sourceBody128_101

def sourceBody128_103 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) sourceBody128_102 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody128_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_103 sourceBody128_11

def sourceBody128_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_11 sourceBody128_104

def sourceBody128_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_89 sourceBody128_105

def sourceBody128_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 36)

def sourceBody128_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 16)

def sourceBody128_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 2)

def sourceBody128_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 34)

def sourceBody128_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 28)

def sourceBody128_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 22)

def sourceBody128_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody128_114 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody128_0, 128, 8)) (some 127) ([24, 38, 14, 26, 20, 32]) (some (24, sourceBody128_113, 128, 9))

def sourceBody128_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_114 sourceBody128_11

def sourceBody128_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_115 sourceBody128_0

def sourceBody128_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_112 sourceBody128_116

def sourceBody128_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_111 sourceBody128_117

def sourceBody128_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_110 sourceBody128_118

def sourceBody128_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_109 sourceBody128_119

def sourceBody128_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_108 sourceBody128_120

def sourceBody128_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_107 sourceBody128_121

def sourceBody128_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_0 sourceBody128_122

def sourceBody128_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_0 sourceBody128_123

def sourceBody128_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_106 sourceBody128_124

def sourceBody128_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 16)

def sourceBody128_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_126 sourceBody128_77

def sourceBody128_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_125 sourceBody128_127

def sourceBody128_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_35 sourceBody128_128

def sourceBody128_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_0 sourceBody128_129

def sourceBody128_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_34 sourceBody128_130

def sourceBody128_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_0 sourceBody128_131

def sourceBody128_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_0 sourceBody128_132

def sourceBody128_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_26 sourceBody128_133

def sourceBody128_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_0 sourceBody128_134

def sourceBody128_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_0 sourceBody128_135

def sourceBody128_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_20 sourceBody128_136

def sourceBody128_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_3 sourceBody128_137

def sourceBody128_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_0 sourceBody128_138

def sourceBody128_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_2 sourceBody128_139

def sourceBody128_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_0 sourceBody128_140

def sourceBody128_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_1 sourceBody128_141

def sourceBody128_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody128_0 sourceBody128_142

def source128 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (128, 7, sourceBody128_143)
end InitECandidate.Proofs.WordStages
