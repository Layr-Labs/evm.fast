import InitECandidate.Proofs.WordStages.Source277
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody293_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody293_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody293_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody293_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 16)

def sourceBody293_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
        (Flapjack.WordLangExpHOL.const 1#64),
      Flapjack.WordLangExpHOL.const 2#64])

def sourceBody293_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody293_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody293_7 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 14 (Flapjack.WordRegImm.reg 10) sourceBody293_5 sourceBody293_6

def sourceBody293_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_7 sourceBody293_2

def sourceBody293_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 14)

def sourceBody293_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 16)
    (Flapjack.WordLangExpHOL.const 1#64))

def sourceBody293_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 8)

def sourceBody293_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_11 sourceBody293_0

def sourceBody293_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_12 sourceBody293_0

def sourceBody293_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_10 sourceBody293_13

def sourceBody293_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_0 sourceBody293_14

def sourceBody293_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody293_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_15 sourceBody293_16

def sourceBody293_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody293_19 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 0#64) sourceBody293_17 sourceBody293_18

def sourceBody293_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_19 sourceBody293_2

def sourceBody293_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_20 sourceBody293_0

def sourceBody293_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_9 sourceBody293_21

def sourceBody293_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_8 sourceBody293_22

def sourceBody293_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_4 sourceBody293_23

def sourceBody293_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_3 sourceBody293_24

def sourceBody293_26 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) sourceBody293_25 (Flapjack.Spt.bs
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody293_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_26 sourceBody293_2

def sourceBody293_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_2 sourceBody293_27

def sourceBody293_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody293_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 16)

def sourceBody293_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody293_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody293_0, 293, 2)) (some 182) ([14, 10]) (some (14, sourceBody293_31, 293, 3))

def sourceBody293_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_32 sourceBody293_2

def sourceBody293_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_33 sourceBody293_0

def sourceBody293_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_30 sourceBody293_34

def sourceBody293_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_29 sourceBody293_35

def sourceBody293_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 4)

def sourceBody293_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody293_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody293_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 18 (Flapjack.WordRegImm.reg 6) sourceBody293_38 sourceBody293_39

def sourceBody293_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_40 sourceBody293_2

def sourceBody293_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 18)

def sourceBody293_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
          (Flapjack.WordLangExpHOL.const 4#64)]))

def sourceBody293_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
          (Flapjack.WordLangExpHOL.const 4#64),
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody293_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 152#64]))

def sourceBody293_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody293_47 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody293_0, 293, 4)) (some 158) ([18, 6, 12]) (some (18, sourceBody293_46, 293, 5))

def sourceBody293_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_47 sourceBody293_2

def sourceBody293_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_48 sourceBody293_0

def sourceBody293_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_45 sourceBody293_49

def sourceBody293_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_44 sourceBody293_50

def sourceBody293_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_43 sourceBody293_51

def sourceBody293_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_0 sourceBody293_52

def sourceBody293_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_0 sourceBody293_53

def sourceBody293_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 8)

def sourceBody293_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 152#64]))

def sourceBody293_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 2,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
        (Flapjack.WordLangExpHOL.const 4#64)])

def sourceBody293_58 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody293_0, 293, 6)) (some 192) ([18, 6, 12]) (some (18, sourceBody293_46, 293, 7))

def sourceBody293_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_58 sourceBody293_2

def sourceBody293_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_59 sourceBody293_0

def sourceBody293_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_57 sourceBody293_60

def sourceBody293_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_56 sourceBody293_61

def sourceBody293_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_55 sourceBody293_62

def sourceBody293_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_0 sourceBody293_63

def sourceBody293_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_0 sourceBody293_64

def sourceBody293_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_54 sourceBody293_65

def sourceBody293_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody293_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody293_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_68 sourceBody293_0

def sourceBody293_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_69 sourceBody293_0

def sourceBody293_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_67 sourceBody293_70

def sourceBody293_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_0 sourceBody293_71

def sourceBody293_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_66 sourceBody293_72

def sourceBody293_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_73 sourceBody293_16

def sourceBody293_75 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody293_74 sourceBody293_18

def sourceBody293_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_75 sourceBody293_2

def sourceBody293_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_76 sourceBody293_0

def sourceBody293_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_42 sourceBody293_77

def sourceBody293_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_41 sourceBody293_78

def sourceBody293_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_37 sourceBody293_79

def sourceBody293_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_9 sourceBody293_80

def sourceBody293_82 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) sourceBody293_81 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody293_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_82 sourceBody293_2

def sourceBody293_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_2 sourceBody293_83

def sourceBody293_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody293_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody293_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_86 sourceBody293_0

def sourceBody293_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_85 sourceBody293_87

def sourceBody293_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_84 sourceBody293_88

def sourceBody293_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_6 sourceBody293_89

def sourceBody293_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_0 sourceBody293_90

def sourceBody293_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_36 sourceBody293_91

def sourceBody293_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_0 sourceBody293_92

def sourceBody293_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_0 sourceBody293_93

def sourceBody293_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_28 sourceBody293_94

def sourceBody293_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_1 sourceBody293_95

def sourceBody293_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody293_0 sourceBody293_96

def source293 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (293, 3, sourceBody293_97)
end InitECandidate.Proofs.WordStages
