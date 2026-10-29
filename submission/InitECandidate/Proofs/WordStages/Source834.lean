import InitECandidate.Proofs.WordStages.Source818
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody834_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody834_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
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

def sourceBody834_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 96#64]))

def sourceBody834_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 58)

def sourceBody834_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 213#64)

def sourceBody834_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody834_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody834_7 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 48 (Flapjack.WordRegImm.reg 30) sourceBody834_5 sourceBody834_6

def sourceBody834_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody834_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_7 sourceBody834_8

def sourceBody834_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 48)

def sourceBody834_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 10#64)

def sourceBody834_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 10)

def sourceBody834_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_12 sourceBody834_0

def sourceBody834_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_13 sourceBody834_0

def sourceBody834_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_11 sourceBody834_14

def sourceBody834_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_0 sourceBody834_15

def sourceBody834_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody834_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody834_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_17 sourceBody834_18

def sourceBody834_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_16 sourceBody834_19

def sourceBody834_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 68 (Flapjack.WordRegImm.imm 0#64) sourceBody834_20 sourceBody834_0

def sourceBody834_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_21 sourceBody834_8

def sourceBody834_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_22 sourceBody834_0

def sourceBody834_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_10 sourceBody834_23

def sourceBody834_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_9 sourceBody834_24

def sourceBody834_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_4 sourceBody834_25

def sourceBody834_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_3 sourceBody834_26

def sourceBody834_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 88#64]))

def sourceBody834_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 10)

def sourceBody834_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 48 (Flapjack.WordLangAddr.addr 48 0#64))

def sourceBody834_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody834_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 30 (Flapjack.WordLangAddr.addr 30 0#64))

def sourceBody834_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 2#64])

def sourceBody834_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 68 (Flapjack.WordLangAddr.addr 68 0#64))

def sourceBody834_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 3#64])

def sourceBody834_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 6 0#64))

def sourceBody834_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_36 sourceBody834_0

def sourceBody834_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_35 sourceBody834_37

def sourceBody834_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_34 sourceBody834_38

def sourceBody834_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_33 sourceBody834_39

def sourceBody834_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_32 sourceBody834_40

def sourceBody834_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_31 sourceBody834_41

def sourceBody834_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_30 sourceBody834_42

def sourceBody834_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_29 sourceBody834_43

def sourceBody834_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 48)
        (Flapjack.WordLangExpHOL.const 24#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 30)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 68)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.var 6])

def sourceBody834_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 212#64])

def sourceBody834_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 26 (Flapjack.WordLangAddr.addr 26 0#64))

def sourceBody834_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_47 sourceBody834_0

def sourceBody834_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_46 sourceBody834_48

def sourceBody834_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 26)

def sourceBody834_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 44)

def sourceBody834_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 54

def sourceBody834_53 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody834_0, 834, 2)) (some 470) ([54]) (some (54, sourceBody834_52, 834, 3))

def sourceBody834_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_53 sourceBody834_8

def sourceBody834_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_54 sourceBody834_0

def sourceBody834_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_51 sourceBody834_55

def sourceBody834_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_0 sourceBody834_56

def sourceBody834_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_0 sourceBody834_57

def sourceBody834_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody834_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 64)

def sourceBody834_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody834_62 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 54 (Flapjack.WordRegImm.reg 36) sourceBody834_59 sourceBody834_61

def sourceBody834_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_62 sourceBody834_8

def sourceBody834_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 54)

def sourceBody834_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 10#64)

def sourceBody834_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 16)

def sourceBody834_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_66 sourceBody834_0

def sourceBody834_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_67 sourceBody834_0

def sourceBody834_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_65 sourceBody834_68

def sourceBody834_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_0 sourceBody834_69

def sourceBody834_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody834_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody834_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_71 sourceBody834_72

def sourceBody834_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_70 sourceBody834_73

def sourceBody834_75 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 74 (Flapjack.WordRegImm.imm 0#64) sourceBody834_74 sourceBody834_0

def sourceBody834_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_75 sourceBody834_8

def sourceBody834_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_76 sourceBody834_0

def sourceBody834_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_64 sourceBody834_77

def sourceBody834_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_63 sourceBody834_78

def sourceBody834_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_60 sourceBody834_79

def sourceBody834_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_59 sourceBody834_80

def sourceBody834_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_58 sourceBody834_81

def sourceBody834_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 64#64)

def sourceBody834_84 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody834_0, 834, 4)) (some 68) ([54]) (some (54, sourceBody834_52, 834, 5))

def sourceBody834_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_84 sourceBody834_8

def sourceBody834_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_85 sourceBody834_0

def sourceBody834_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_83 sourceBody834_86

def sourceBody834_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 36

def sourceBody834_89 : WordLangProgHOL (BitVec 64) :=
.call (some (([54]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody834_0, 834, 6)) (some 69) ([]) (some (36, sourceBody834_88, 834, 7))

def sourceBody834_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_89 sourceBody834_8

def sourceBody834_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_90 sourceBody834_0

def sourceBody834_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.const 64#64)

def sourceBody834_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 74

def sourceBody834_94 : WordLangProgHOL (BitVec 64) :=
.call (some (([36]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody834_0, 834, 8)) (some 68) ([74]) (some (74, sourceBody834_93, 834, 9))

def sourceBody834_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_94 sourceBody834_8

def sourceBody834_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_95 sourceBody834_0

def sourceBody834_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_92 sourceBody834_96

def sourceBody834_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 128#64)

def sourceBody834_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody834_100 : WordLangProgHOL (BitVec 64) :=
.call (some (([74]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody834_0, 834, 10)) (some 68) ([4]) (some (4, sourceBody834_99, 834, 11))

def sourceBody834_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_100 sourceBody834_8

def sourceBody834_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_101 sourceBody834_0

def sourceBody834_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_98 sourceBody834_102

def sourceBody834_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody834_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 4)

def sourceBody834_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody834_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody834_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody834_109 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 24 (Flapjack.WordRegImm.reg 62) sourceBody834_107 sourceBody834_108

def sourceBody834_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_109 sourceBody834_8

def sourceBody834_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 24)

def sourceBody834_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 36,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
        (Flapjack.WordLangExpHOL.const 3#64)])

def sourceBody834_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 4#64,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
        (Flapjack.WordLangExpHOL.const 3#64)])

def sourceBody834_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 24 (Flapjack.WordLangAddr.addr 24 0#64))

def sourceBody834_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 4#64,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
        (Flapjack.WordLangExpHOL.const 3#64),
      Flapjack.WordLangExpHOL.const 1#64])

def sourceBody834_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 62 (Flapjack.WordLangAddr.addr 62 0#64))

def sourceBody834_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 4#64,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
        (Flapjack.WordLangExpHOL.const 3#64),
      Flapjack.WordLangExpHOL.const 2#64])

def sourceBody834_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 14 (Flapjack.WordLangAddr.addr 14 0#64))

def sourceBody834_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 4#64,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
        (Flapjack.WordLangExpHOL.const 3#64),
      Flapjack.WordLangExpHOL.const 3#64])

def sourceBody834_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 52 (Flapjack.WordLangAddr.addr 52 0#64))

def sourceBody834_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 4#64,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
        (Flapjack.WordLangExpHOL.const 3#64),
      Flapjack.WordLangExpHOL.const 4#64])

def sourceBody834_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 34 (Flapjack.WordLangAddr.addr 34 0#64))

def sourceBody834_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 4#64,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
        (Flapjack.WordLangExpHOL.const 3#64),
      Flapjack.WordLangExpHOL.const 4#64, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody834_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 72 (Flapjack.WordLangAddr.addr 72 0#64))

def sourceBody834_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 4#64,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
        (Flapjack.WordLangExpHOL.const 3#64),
      Flapjack.WordLangExpHOL.const 4#64, Flapjack.WordLangExpHOL.const 2#64])

def sourceBody834_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 8 0#64))

def sourceBody834_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 4#64,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
        (Flapjack.WordLangExpHOL.const 3#64),
      Flapjack.WordLangExpHOL.const 4#64, Flapjack.WordLangExpHOL.const 3#64])

def sourceBody834_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 46 (Flapjack.WordLangAddr.addr 46 0#64))

def sourceBody834_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_128 sourceBody834_0

def sourceBody834_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_127 sourceBody834_129

def sourceBody834_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_126 sourceBody834_130

def sourceBody834_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_125 sourceBody834_131

def sourceBody834_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_124 sourceBody834_132

def sourceBody834_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_123 sourceBody834_133

def sourceBody834_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_122 sourceBody834_134

def sourceBody834_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_121 sourceBody834_135

def sourceBody834_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_120 sourceBody834_136

def sourceBody834_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_119 sourceBody834_137

def sourceBody834_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_118 sourceBody834_138

def sourceBody834_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_117 sourceBody834_139

def sourceBody834_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_116 sourceBody834_140

def sourceBody834_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_115 sourceBody834_141

def sourceBody834_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_114 sourceBody834_142

def sourceBody834_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_113 sourceBody834_143

def sourceBody834_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.var 24,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 62)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 52)
        (Flapjack.WordLangExpHOL.const 24#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
          [Flapjack.WordLangExpHOL.var 34,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
              (Flapjack.WordLangExpHOL.const 8#64),
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 8)
              (Flapjack.WordLangExpHOL.const 16#64),
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 46)
              (Flapjack.WordLangExpHOL.const 24#64)])
        (Flapjack.WordLangExpHOL.const 32#64)])

def sourceBody834_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 28)

def sourceBody834_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 42) 66

def sourceBody834_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_147 sourceBody834_0

def sourceBody834_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_146 sourceBody834_148

def sourceBody834_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_149 sourceBody834_0

def sourceBody834_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_145 sourceBody834_150

def sourceBody834_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_144 sourceBody834_151

def sourceBody834_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_112 sourceBody834_152

def sourceBody834_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_0 sourceBody834_153

def sourceBody834_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody834_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 42)

def sourceBody834_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_156 sourceBody834_0

def sourceBody834_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_157 sourceBody834_0

def sourceBody834_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_155 sourceBody834_158

def sourceBody834_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_0 sourceBody834_159

def sourceBody834_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_154 sourceBody834_160

def sourceBody834_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody834_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_161 sourceBody834_162

def sourceBody834_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody834_165 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody834_163 sourceBody834_164

def sourceBody834_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_165 sourceBody834_8

def sourceBody834_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_166 sourceBody834_0

def sourceBody834_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_111 sourceBody834_167

def sourceBody834_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_110 sourceBody834_168

def sourceBody834_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_106 sourceBody834_169

def sourceBody834_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_105 sourceBody834_170

def sourceBody834_172 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit Flapjack.Spt.ln))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  PUnit.unit Flapjack.Spt.ln) sourceBody834_171 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit Flapjack.Spt.ln))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody834_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_172 sourceBody834_8

def sourceBody834_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_8 sourceBody834_173

def sourceBody834_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_104 sourceBody834_0

def sourceBody834_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_175 sourceBody834_0

def sourceBody834_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_174 sourceBody834_176

def sourceBody834_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 16#64)

def sourceBody834_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 74,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
        (Flapjack.WordLangExpHOL.const 3#64)])

def sourceBody834_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 68#64,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
        (Flapjack.WordLangExpHOL.const 3#64)])

def sourceBody834_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 68#64,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
        (Flapjack.WordLangExpHOL.const 3#64),
      Flapjack.WordLangExpHOL.const 1#64])

def sourceBody834_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 68#64,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
        (Flapjack.WordLangExpHOL.const 3#64),
      Flapjack.WordLangExpHOL.const 2#64])

def sourceBody834_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 68#64,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
        (Flapjack.WordLangExpHOL.const 3#64),
      Flapjack.WordLangExpHOL.const 3#64])

def sourceBody834_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 68#64,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
        (Flapjack.WordLangExpHOL.const 3#64),
      Flapjack.WordLangExpHOL.const 4#64])

def sourceBody834_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 68#64,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
        (Flapjack.WordLangExpHOL.const 3#64),
      Flapjack.WordLangExpHOL.const 4#64, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody834_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 68#64,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
        (Flapjack.WordLangExpHOL.const 3#64),
      Flapjack.WordLangExpHOL.const 4#64, Flapjack.WordLangExpHOL.const 2#64])

def sourceBody834_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 68#64,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
        (Flapjack.WordLangExpHOL.const 3#64),
      Flapjack.WordLangExpHOL.const 4#64, Flapjack.WordLangExpHOL.const 3#64])

def sourceBody834_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_187 sourceBody834_129

def sourceBody834_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_126 sourceBody834_188

def sourceBody834_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_186 sourceBody834_189

def sourceBody834_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_124 sourceBody834_190

def sourceBody834_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_185 sourceBody834_191

def sourceBody834_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_122 sourceBody834_192

def sourceBody834_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_184 sourceBody834_193

def sourceBody834_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_120 sourceBody834_194

def sourceBody834_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_183 sourceBody834_195

def sourceBody834_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_118 sourceBody834_196

def sourceBody834_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_182 sourceBody834_197

def sourceBody834_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_116 sourceBody834_198

def sourceBody834_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_181 sourceBody834_199

def sourceBody834_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_114 sourceBody834_200

def sourceBody834_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_180 sourceBody834_201

def sourceBody834_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_202 sourceBody834_151

def sourceBody834_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_179 sourceBody834_203

def sourceBody834_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_0 sourceBody834_204

def sourceBody834_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_205 sourceBody834_160

def sourceBody834_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_206 sourceBody834_162

def sourceBody834_208 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody834_207 sourceBody834_164

def sourceBody834_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_208 sourceBody834_8

def sourceBody834_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_209 sourceBody834_0

def sourceBody834_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_111 sourceBody834_210

def sourceBody834_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_110 sourceBody834_211

def sourceBody834_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_178 sourceBody834_212

def sourceBody834_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_105 sourceBody834_213

def sourceBody834_215 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit Flapjack.Spt.ln))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  PUnit.unit Flapjack.Spt.ln) sourceBody834_214 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit Flapjack.Spt.ln))
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody834_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_215 sourceBody834_8

def sourceBody834_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_8 sourceBody834_216

def sourceBody834_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_177 sourceBody834_217

def sourceBody834_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 196#64])

def sourceBody834_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 196#64, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody834_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 196#64, Flapjack.WordLangExpHOL.const 2#64])

def sourceBody834_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 196#64, Flapjack.WordLangExpHOL.const 3#64])

def sourceBody834_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 196#64, Flapjack.WordLangExpHOL.const 4#64])

def sourceBody834_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 196#64, Flapjack.WordLangExpHOL.const 4#64,
      Flapjack.WordLangExpHOL.const 1#64])

def sourceBody834_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 196#64, Flapjack.WordLangExpHOL.const 4#64,
      Flapjack.WordLangExpHOL.const 2#64])

def sourceBody834_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 196#64, Flapjack.WordLangExpHOL.const 4#64,
      Flapjack.WordLangExpHOL.const 3#64])

def sourceBody834_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 204#64])

def sourceBody834_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 28 (Flapjack.WordLangAddr.addr 28 0#64))

def sourceBody834_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 204#64, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody834_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 66 (Flapjack.WordLangAddr.addr 66 0#64))

def sourceBody834_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 204#64, Flapjack.WordLangExpHOL.const 2#64])

def sourceBody834_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 18 (Flapjack.WordLangAddr.addr 18 0#64))

def sourceBody834_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 204#64, Flapjack.WordLangExpHOL.const 3#64])

def sourceBody834_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 56 (Flapjack.WordLangAddr.addr 56 0#64))

def sourceBody834_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 204#64, Flapjack.WordLangExpHOL.const 4#64])

def sourceBody834_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 38 (Flapjack.WordLangAddr.addr 38 0#64))

def sourceBody834_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 204#64, Flapjack.WordLangExpHOL.const 4#64,
      Flapjack.WordLangExpHOL.const 1#64])

def sourceBody834_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 76 (Flapjack.WordLangAddr.addr 76 0#64))

def sourceBody834_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 204#64, Flapjack.WordLangExpHOL.const 4#64,
      Flapjack.WordLangExpHOL.const 2#64])

def sourceBody834_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 2 (Flapjack.WordLangAddr.addr 2 0#64))

def sourceBody834_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 204#64, Flapjack.WordLangExpHOL.const 4#64,
      Flapjack.WordLangExpHOL.const 3#64])

def sourceBody834_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 40 (Flapjack.WordLangAddr.addr 40 0#64))

def sourceBody834_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 44)

def sourceBody834_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 36)

def sourceBody834_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 74)

def sourceBody834_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.var 24,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 62)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 52)
        (Flapjack.WordLangExpHOL.const 24#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
          [Flapjack.WordLangExpHOL.var 34,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 72)
              (Flapjack.WordLangExpHOL.const 8#64),
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 8)
              (Flapjack.WordLangExpHOL.const 16#64),
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 46)
              (Flapjack.WordLangExpHOL.const 24#64)])
        (Flapjack.WordLangExpHOL.const 32#64)])

def sourceBody834_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.var 28,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 66)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 18)
        (Flapjack.WordLangExpHOL.const 16#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 56)
        (Flapjack.WordLangExpHOL.const 24#64),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
          [Flapjack.WordLangExpHOL.var 38,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 76)
              (Flapjack.WordLangExpHOL.const 8#64),
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 2)
              (Flapjack.WordLangExpHOL.const 16#64),
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 40)
              (Flapjack.WordLangExpHOL.const 24#64)])
        (Flapjack.WordLangExpHOL.const 32#64)])

def sourceBody834_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 64)

def sourceBody834_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody834_250 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody834_0, 834, 12)) (some 634) ([22, 60, 12, 50, 32, 70]) (some (24, sourceBody834_249, 834, 13))

def sourceBody834_251 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_250 sourceBody834_8

def sourceBody834_252 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_251 sourceBody834_0

def sourceBody834_253 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_248 sourceBody834_252

def sourceBody834_254 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_247 sourceBody834_253

def sourceBody834_255 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_246 sourceBody834_254

def sourceBody834_256 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_245 sourceBody834_255

def sourceBody834_257 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_244 sourceBody834_256

def sourceBody834_258 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_243 sourceBody834_257

def sourceBody834_259 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_242 sourceBody834_258

def sourceBody834_260 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_241 sourceBody834_259

def sourceBody834_261 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_240 sourceBody834_260

def sourceBody834_262 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_239 sourceBody834_261

def sourceBody834_263 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_238 sourceBody834_262

def sourceBody834_264 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_237 sourceBody834_263

def sourceBody834_265 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_236 sourceBody834_264

def sourceBody834_266 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_235 sourceBody834_265

def sourceBody834_267 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_234 sourceBody834_266

def sourceBody834_268 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_233 sourceBody834_267

def sourceBody834_269 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_232 sourceBody834_268

def sourceBody834_270 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_231 sourceBody834_269

def sourceBody834_271 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_230 sourceBody834_270

def sourceBody834_272 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_229 sourceBody834_271

def sourceBody834_273 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_228 sourceBody834_272

def sourceBody834_274 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_227 sourceBody834_273

def sourceBody834_275 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_128 sourceBody834_274

def sourceBody834_276 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_226 sourceBody834_275

def sourceBody834_277 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_126 sourceBody834_276

def sourceBody834_278 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_225 sourceBody834_277

def sourceBody834_279 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_124 sourceBody834_278

def sourceBody834_280 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_224 sourceBody834_279

def sourceBody834_281 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_122 sourceBody834_280

def sourceBody834_282 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_223 sourceBody834_281

def sourceBody834_283 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_120 sourceBody834_282

def sourceBody834_284 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_222 sourceBody834_283

def sourceBody834_285 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_118 sourceBody834_284

def sourceBody834_286 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_221 sourceBody834_285

def sourceBody834_287 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_116 sourceBody834_286

def sourceBody834_288 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_220 sourceBody834_287

def sourceBody834_289 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_114 sourceBody834_288

def sourceBody834_290 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_219 sourceBody834_289

def sourceBody834_291 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_0 sourceBody834_290

def sourceBody834_292 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_0 sourceBody834_291

def sourceBody834_293 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_218 sourceBody834_292

def sourceBody834_294 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_293 sourceBody834_176

def sourceBody834_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 16,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
        (Flapjack.WordLangExpHOL.const 3#64)])

def sourceBody834_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 36,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody834_297 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody834_0, 834, 14)) (some 87) ([24, 62]) (some (24, sourceBody834_249, 834, 15))

def sourceBody834_298 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_297 sourceBody834_8

def sourceBody834_299 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_298 sourceBody834_0

def sourceBody834_300 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_296 sourceBody834_299

def sourceBody834_301 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_295 sourceBody834_300

def sourceBody834_302 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_0 sourceBody834_301

def sourceBody834_303 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_0 sourceBody834_302

def sourceBody834_304 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_303 sourceBody834_160

def sourceBody834_305 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_304 sourceBody834_162

def sourceBody834_306 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody834_305 sourceBody834_164

def sourceBody834_307 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_306 sourceBody834_8

def sourceBody834_308 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_307 sourceBody834_0

def sourceBody834_309 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_111 sourceBody834_308

def sourceBody834_310 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_110 sourceBody834_309

def sourceBody834_311 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_106 sourceBody834_310

def sourceBody834_312 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_105 sourceBody834_311

def sourceBody834_313 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit Flapjack.Spt.ln))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  PUnit.unit Flapjack.Spt.ln) sourceBody834_312 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody834_314 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_313 sourceBody834_8

def sourceBody834_315 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_8 sourceBody834_314

def sourceBody834_316 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_294 sourceBody834_315

def sourceBody834_317 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 54)

def sourceBody834_318 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody834_0, 834, 16)) (some 70) ([24]) (some (24, sourceBody834_249, 834, 17))

def sourceBody834_319 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_318 sourceBody834_8

def sourceBody834_320 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_319 sourceBody834_0

def sourceBody834_321 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_317 sourceBody834_320

def sourceBody834_322 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_0 sourceBody834_321

def sourceBody834_323 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_0 sourceBody834_322

def sourceBody834_324 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_316 sourceBody834_323

def sourceBody834_325 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 120#64])

def sourceBody834_326 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 16)

def sourceBody834_327 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 24)

def sourceBody834_328 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 42) 62

def sourceBody834_329 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_328 sourceBody834_0

def sourceBody834_330 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_327 sourceBody834_329

def sourceBody834_331 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_330 sourceBody834_0

def sourceBody834_332 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_326 sourceBody834_331

def sourceBody834_333 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_0 sourceBody834_332

def sourceBody834_334 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_325 sourceBody834_333

def sourceBody834_335 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_0 sourceBody834_334

def sourceBody834_336 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_324 sourceBody834_335

def sourceBody834_337 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.const 128#64])

def sourceBody834_338 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 64#64)

def sourceBody834_339 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_338 sourceBody834_331

def sourceBody834_340 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_0 sourceBody834_339

def sourceBody834_341 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_337 sourceBody834_340

def sourceBody834_342 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_0 sourceBody834_341

def sourceBody834_343 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_336 sourceBody834_342

def sourceBody834_344 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody834_345 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [42]

def sourceBody834_346 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_345 sourceBody834_0

def sourceBody834_347 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_344 sourceBody834_346

def sourceBody834_348 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_343 sourceBody834_347

def sourceBody834_349 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_104 sourceBody834_348

def sourceBody834_350 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_0 sourceBody834_349

def sourceBody834_351 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_103 sourceBody834_350

def sourceBody834_352 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_0 sourceBody834_351

def sourceBody834_353 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_0 sourceBody834_352

def sourceBody834_354 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_97 sourceBody834_353

def sourceBody834_355 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_0 sourceBody834_354

def sourceBody834_356 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_0 sourceBody834_355

def sourceBody834_357 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_91 sourceBody834_356

def sourceBody834_358 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_0 sourceBody834_357

def sourceBody834_359 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_0 sourceBody834_358

def sourceBody834_360 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_87 sourceBody834_359

def sourceBody834_361 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_0 sourceBody834_360

def sourceBody834_362 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_0 sourceBody834_361

def sourceBody834_363 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_82 sourceBody834_362

def sourceBody834_364 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_50 sourceBody834_363

def sourceBody834_365 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_49 sourceBody834_364

def sourceBody834_366 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_45 sourceBody834_365

def sourceBody834_367 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_44 sourceBody834_366

def sourceBody834_368 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_28 sourceBody834_367

def sourceBody834_369 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_0 sourceBody834_368

def sourceBody834_370 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_27 sourceBody834_369

def sourceBody834_371 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_2 sourceBody834_370

def sourceBody834_372 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_0 sourceBody834_371

def sourceBody834_373 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_1 sourceBody834_372

def sourceBody834_374 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody834_0 sourceBody834_373

def source834 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (834, 1, sourceBody834_374)
end InitECandidate.Proofs.WordStages
