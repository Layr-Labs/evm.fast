import InitECandidate.Proofs.WordStages.Source317
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody333_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody333_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody333_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody333_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody333_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody333_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody333_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 2)

def sourceBody333_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 4)

def sourceBody333_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 44

def sourceBody333_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody333_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.lookup (Flapjack.WordStore.temp 0#5))

def sourceBody333_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_10 sourceBody333_0

def sourceBody333_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_11 sourceBody333_0

def sourceBody333_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody333_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody333_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([44]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody333_0, 333, 3)) (some 286) ([28]) (some (28, sourceBody333_14, 333, 4))

def sourceBody333_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_15 sourceBody333_9

def sourceBody333_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_16 sourceBody333_0

def sourceBody333_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_13 sourceBody333_17

def sourceBody333_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_18

def sourceBody333_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_19

def sourceBody333_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_12 sourceBody333_20

def sourceBody333_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_9 sourceBody333_21

def sourceBody333_23 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 44 (Flapjack.WordRegImm.imm 1#64) sourceBody333_8 sourceBody333_22

def sourceBody333_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_23 sourceBody333_9

def sourceBody333_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 48, 32, 64]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody333_0, 333, 2)) (some 162) ([44, 28]) (some (44, sourceBody333_24, 333, 5))

def sourceBody333_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_25 sourceBody333_9

def sourceBody333_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_26 sourceBody333_0

def sourceBody333_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_7 sourceBody333_27

def sourceBody333_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_6 sourceBody333_28

def sourceBody333_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 16)

def sourceBody333_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody333_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody333_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody333_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 28 (Flapjack.WordRegImm.reg 60) sourceBody333_32 sourceBody333_33

def sourceBody333_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_34 sourceBody333_9

def sourceBody333_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 28)

def sourceBody333_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([44]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody333_0, 333, 6)) (some 286) ([28]) (some (28, sourceBody333_14, 333, 7))

def sourceBody333_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_37 sourceBody333_9

def sourceBody333_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_38 sourceBody333_0

def sourceBody333_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_13 sourceBody333_39

def sourceBody333_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_40

def sourceBody333_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_41

def sourceBody333_43 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 0#64) sourceBody333_42 sourceBody333_0

def sourceBody333_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_43 sourceBody333_9

def sourceBody333_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_44 sourceBody333_0

def sourceBody333_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_36 sourceBody333_45

def sourceBody333_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_35 sourceBody333_46

def sourceBody333_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_31 sourceBody333_47

def sourceBody333_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_30 sourceBody333_48

def sourceBody333_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_29 sourceBody333_49

def sourceBody333_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 48)

def sourceBody333_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 32)

def sourceBody333_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 60

def sourceBody333_54 : WordLangProgHOL (BitVec 64) :=
.call (some (([44, 28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody333_0, 333, 8)) (some 169) ([60, 20]) (some (60, sourceBody333_53, 333, 9))

def sourceBody333_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_54 sourceBody333_9

def sourceBody333_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_55 sourceBody333_0

def sourceBody333_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_52 sourceBody333_56

def sourceBody333_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_51 sourceBody333_57

def sourceBody333_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody333_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody333_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody333_62 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.reg 52) sourceBody333_60 sourceBody333_61

def sourceBody333_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_62 sourceBody333_9

def sourceBody333_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 20)

def sourceBody333_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody333_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody333_67 : WordLangProgHOL (BitVec 64) :=
.call (some (([60]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody333_0, 333, 10)) (some 286) ([20]) (some (20, sourceBody333_66, 333, 11))

def sourceBody333_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_67 sourceBody333_9

def sourceBody333_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_68 sourceBody333_0

def sourceBody333_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_65 sourceBody333_69

def sourceBody333_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_70

def sourceBody333_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_71

def sourceBody333_73 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 36 (Flapjack.WordRegImm.imm 0#64) sourceBody333_72 sourceBody333_0

def sourceBody333_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_73 sourceBody333_9

def sourceBody333_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_74 sourceBody333_0

def sourceBody333_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_64 sourceBody333_75

def sourceBody333_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_63 sourceBody333_76

def sourceBody333_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_59 sourceBody333_77

def sourceBody333_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_36 sourceBody333_78

def sourceBody333_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 44)

def sourceBody333_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 60, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody333_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 60, Flapjack.WordLangExpHOL.const 0#64, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody333_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody333_84 : WordLangProgHOL (BitVec 64) :=
.call (some (([20, 52, 36, 68]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody333_0, 333, 12)) (some 161) ([10, 42]) (some (10, sourceBody333_83, 333, 13))

def sourceBody333_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_84 sourceBody333_9

def sourceBody333_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_85 sourceBody333_0

def sourceBody333_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_82 sourceBody333_86

def sourceBody333_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_81 sourceBody333_87

def sourceBody333_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 60, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody333_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 60, Flapjack.WordLangExpHOL.const 16#64, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody333_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody333_92 : WordLangProgHOL (BitVec 64) :=
.call (some (([10, 42, 26, 58]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody333_0, 333, 14)) (some 161) ([18, 50]) (some (18, sourceBody333_91, 333, 15))

def sourceBody333_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_92 sourceBody333_9

def sourceBody333_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_93 sourceBody333_0

def sourceBody333_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_90 sourceBody333_94

def sourceBody333_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_89 sourceBody333_95

def sourceBody333_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 60, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody333_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 60, Flapjack.WordLangExpHOL.const 32#64, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody333_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody333_100 : WordLangProgHOL (BitVec 64) :=
.call (some (([18, 50, 34, 66]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody333_0, 333, 16)) (some 161) ([14, 46]) (some (14, sourceBody333_99, 333, 17))

def sourceBody333_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_100 sourceBody333_9

def sourceBody333_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_101 sourceBody333_0

def sourceBody333_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_98 sourceBody333_102

def sourceBody333_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_97 sourceBody333_103

def sourceBody333_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 60, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody333_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 60, Flapjack.WordLangExpHOL.const 48#64, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody333_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody333_108 : WordLangProgHOL (BitVec 64) :=
.call (some (([14, 46, 30, 62]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody333_0, 333, 18)) (some 161) ([22, 54]) (some (22, sourceBody333_107, 333, 19))

def sourceBody333_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_108 sourceBody333_9

def sourceBody333_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_109 sourceBody333_0

def sourceBody333_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_106 sourceBody333_110

def sourceBody333_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_105 sourceBody333_111

def sourceBody333_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.var 18,
      Flapjack.WordLangExpHOL.var 14])

def sourceBody333_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody333_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody333_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody333_117 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 54 (Flapjack.WordRegImm.reg 38) sourceBody333_115 sourceBody333_116

def sourceBody333_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_117 sourceBody333_9

def sourceBody333_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 54)

def sourceBody333_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody333_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 54

def sourceBody333_122 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody333_0, 333, 20)) (some 286) ([54]) (some (54, sourceBody333_121, 333, 21))

def sourceBody333_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_122 sourceBody333_9

def sourceBody333_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_123 sourceBody333_0

def sourceBody333_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_120 sourceBody333_124

def sourceBody333_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_125

def sourceBody333_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_126

def sourceBody333_128 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 70 (Flapjack.WordRegImm.imm 0#64) sourceBody333_127 sourceBody333_0

def sourceBody333_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_128 sourceBody333_9

def sourceBody333_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_129 sourceBody333_0

def sourceBody333_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_119 sourceBody333_130

def sourceBody333_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_118 sourceBody333_131

def sourceBody333_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_114 sourceBody333_132

def sourceBody333_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_113 sourceBody333_133

def sourceBody333_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody333_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 36)

def sourceBody333_137 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 54 (Flapjack.WordRegImm.reg 38) sourceBody333_115 sourceBody333_116

def sourceBody333_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_137 sourceBody333_9

def sourceBody333_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 21#64)

def sourceBody333_140 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody333_0, 333, 22)) (some 286) ([54]) (some (54, sourceBody333_121, 333, 23))

def sourceBody333_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_140 sourceBody333_9

def sourceBody333_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_141 sourceBody333_0

def sourceBody333_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_139 sourceBody333_142

def sourceBody333_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_143

def sourceBody333_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_144

def sourceBody333_146 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 70 (Flapjack.WordRegImm.imm 0#64) sourceBody333_145 sourceBody333_0

def sourceBody333_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_146 sourceBody333_9

def sourceBody333_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_147 sourceBody333_0

def sourceBody333_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_119 sourceBody333_148

def sourceBody333_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_138 sourceBody333_149

def sourceBody333_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_136 sourceBody333_150

def sourceBody333_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_135 sourceBody333_151

def sourceBody333_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_134 sourceBody333_152

def sourceBody333_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody333_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 36)

def sourceBody333_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody333_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody333_158 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 70 (Flapjack.WordRegImm.reg 8) sourceBody333_156 sourceBody333_157

def sourceBody333_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_158 sourceBody333_9

def sourceBody333_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 70)

def sourceBody333_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 52, Flapjack.WordLangExpHOL.var 54])

def sourceBody333_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 38 (Flapjack.WordLangAddr.addr 38 0#64))

def sourceBody333_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_162 sourceBody333_0

def sourceBody333_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_161 sourceBody333_163

def sourceBody333_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 22)
        (Flapjack.WordLangExpHOL.const 8#64),
      Flapjack.WordLangExpHOL.var 38])

def sourceBody333_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 70)

def sourceBody333_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_166 sourceBody333_0

def sourceBody333_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_167 sourceBody333_0

def sourceBody333_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_165 sourceBody333_168

def sourceBody333_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_164 sourceBody333_169

def sourceBody333_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 54, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody333_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 38)

def sourceBody333_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_172 sourceBody333_0

def sourceBody333_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_173 sourceBody333_0

def sourceBody333_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_171 sourceBody333_174

def sourceBody333_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_175

def sourceBody333_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_170 sourceBody333_176

def sourceBody333_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody333_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_177 sourceBody333_178

def sourceBody333_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody333_181 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 40 (Flapjack.WordRegImm.imm 0#64) sourceBody333_179 sourceBody333_180

def sourceBody333_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_181 sourceBody333_9

def sourceBody333_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_182 sourceBody333_0

def sourceBody333_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_160 sourceBody333_183

def sourceBody333_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_159 sourceBody333_184

def sourceBody333_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_155 sourceBody333_185

def sourceBody333_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_119 sourceBody333_186

def sourceBody333_188 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
  PUnit.unit Flapjack.Spt.ln) sourceBody333_187 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody333_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_188 sourceBody333_9

def sourceBody333_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_9 sourceBody333_189

def sourceBody333_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 0#64])

def sourceBody333_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 22)

def sourceBody333_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 70)

def sourceBody333_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 38) 8

def sourceBody333_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_194 sourceBody333_0

def sourceBody333_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_193 sourceBody333_195

def sourceBody333_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_196 sourceBody333_0

def sourceBody333_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_192 sourceBody333_197

def sourceBody333_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_198

def sourceBody333_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_191 sourceBody333_199

def sourceBody333_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_200

def sourceBody333_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_190 sourceBody333_201

def sourceBody333_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody333_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 26)

def sourceBody333_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 22#64)

def sourceBody333_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 70

def sourceBody333_207 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody333_0, 333, 24)) (some 286) ([70]) (some (70, sourceBody333_206, 333, 25))

def sourceBody333_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_207 sourceBody333_9

def sourceBody333_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_208 sourceBody333_0

def sourceBody333_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_205 sourceBody333_209

def sourceBody333_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_210

def sourceBody333_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_211

def sourceBody333_213 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 40 (Flapjack.WordRegImm.imm 0#64) sourceBody333_212 sourceBody333_0

def sourceBody333_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_213 sourceBody333_9

def sourceBody333_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_214 sourceBody333_0

def sourceBody333_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_160 sourceBody333_215

def sourceBody333_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_159 sourceBody333_216

def sourceBody333_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_204 sourceBody333_217

def sourceBody333_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_203 sourceBody333_218

def sourceBody333_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_202 sourceBody333_219

def sourceBody333_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody333_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody333_223 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody333_0, 333, 26)) (some 78) ([70, 8]) (some (70, sourceBody333_206, 333, 27))

def sourceBody333_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_223 sourceBody333_9

def sourceBody333_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_224 sourceBody333_0

def sourceBody333_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_222 sourceBody333_225

def sourceBody333_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_221 sourceBody333_226

def sourceBody333_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_227

def sourceBody333_229 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_228

def sourceBody333_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_220 sourceBody333_229

def sourceBody333_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_116 sourceBody333_0

def sourceBody333_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_231 sourceBody333_0

def sourceBody333_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_230 sourceBody333_232

def sourceBody333_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.const 1#64],
      Flapjack.WordLangExpHOL.var 54])

def sourceBody333_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 8#64,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
        (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 38)
          (Flapjack.WordLangExpHOL.const 3#64))
        (Flapjack.WordLangExpHOL.const 3#64)])

def sourceBody333_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 42, Flapjack.WordLangExpHOL.var 54])

def sourceBody333_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 40 (Flapjack.WordLangAddr.addr 40 0#64))

def sourceBody333_238 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_237 sourceBody333_0

def sourceBody333_239 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_236 sourceBody333_238

def sourceBody333_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 70),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 40)
        (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
            [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 7#64])
          (Flapjack.WordLangExpHOL.const 3#64))])

def sourceBody333_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 24)

def sourceBody333_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 8) 56

def sourceBody333_243 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_242 sourceBody333_0

def sourceBody333_244 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_241 sourceBody333_243

def sourceBody333_245 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_244 sourceBody333_0

def sourceBody333_246 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_240 sourceBody333_245

def sourceBody333_247 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_239 sourceBody333_246

def sourceBody333_248 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_193 sourceBody333_247

def sourceBody333_249 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_248

def sourceBody333_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 54, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody333_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 8)

def sourceBody333_252 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_251 sourceBody333_0

def sourceBody333_253 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_252 sourceBody333_0

def sourceBody333_254 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_250 sourceBody333_253

def sourceBody333_255 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_254

def sourceBody333_256 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_249 sourceBody333_255

def sourceBody333_257 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_235 sourceBody333_256

def sourceBody333_258 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_257

def sourceBody333_259 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_234 sourceBody333_258

def sourceBody333_260 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_259

def sourceBody333_261 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_260 sourceBody333_178

def sourceBody333_262 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 40 (Flapjack.WordRegImm.imm 0#64) sourceBody333_261 sourceBody333_180

def sourceBody333_263 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_262 sourceBody333_9

def sourceBody333_264 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_263 sourceBody333_0

def sourceBody333_265 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_160 sourceBody333_264

def sourceBody333_266 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_159 sourceBody333_265

def sourceBody333_267 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_204 sourceBody333_266

def sourceBody333_268 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_119 sourceBody333_267

def sourceBody333_269 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
  PUnit.unit Flapjack.Spt.ln) sourceBody333_268 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
    Flapjack.Spt.ln)
  PUnit.unit Flapjack.Spt.ln)

def sourceBody333_270 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_269 sourceBody333_9

def sourceBody333_271 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_9 sourceBody333_270

def sourceBody333_272 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_233 sourceBody333_271

def sourceBody333_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 34)

def sourceBody333_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody333_275 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 70 (Flapjack.WordRegImm.reg 8) sourceBody333_156 sourceBody333_157

def sourceBody333_276 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_275 sourceBody333_9

def sourceBody333_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 40#64])

def sourceBody333_278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 128#64]))

def sourceBody333_279 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_278 sourceBody333_197

def sourceBody333_280 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_279

def sourceBody333_281 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_277 sourceBody333_280

def sourceBody333_282 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_281

def sourceBody333_283 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 70 (Flapjack.WordRegImm.reg 8) sourceBody333_156 sourceBody333_157

def sourceBody333_284 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_283 sourceBody333_9

def sourceBody333_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 23#64)

def sourceBody333_286 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody333_0, 333, 28)) (some 286) ([70]) (some (70, sourceBody333_206, 333, 29))

def sourceBody333_287 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_286 sourceBody333_9

def sourceBody333_288 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_287 sourceBody333_0

def sourceBody333_289 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_285 sourceBody333_288

def sourceBody333_290 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_289

def sourceBody333_291 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_290

def sourceBody333_292 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 40 (Flapjack.WordRegImm.imm 0#64) sourceBody333_291 sourceBody333_0

def sourceBody333_293 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_292 sourceBody333_9

def sourceBody333_294 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_293 sourceBody333_0

def sourceBody333_295 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_160 sourceBody333_294

def sourceBody333_296 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_284 sourceBody333_295

def sourceBody333_297 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_222 sourceBody333_296

def sourceBody333_298 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_273 sourceBody333_297

def sourceBody333_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 50)

def sourceBody333_300 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_299 sourceBody333_197

def sourceBody333_301 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_300

def sourceBody333_302 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_277 sourceBody333_301

def sourceBody333_303 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_302

def sourceBody333_304 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_298 sourceBody333_303

def sourceBody333_305 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 40 (Flapjack.WordRegImm.imm 0#64) sourceBody333_282 sourceBody333_304

def sourceBody333_306 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_305 sourceBody333_9

def sourceBody333_307 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_306 sourceBody333_0

def sourceBody333_308 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_160 sourceBody333_307

def sourceBody333_309 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_276 sourceBody333_308

def sourceBody333_310 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_274 sourceBody333_309

def sourceBody333_311 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_273 sourceBody333_310

def sourceBody333_312 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_272 sourceBody333_311

def sourceBody333_313 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 30)

def sourceBody333_314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 48#64])

def sourceBody333_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 136#64]))

def sourceBody333_316 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_315 sourceBody333_197

def sourceBody333_317 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_316

def sourceBody333_318 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_314 sourceBody333_317

def sourceBody333_319 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_318

def sourceBody333_320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 24#64)

def sourceBody333_321 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody333_0, 333, 30)) (some 286) ([70]) (some (70, sourceBody333_206, 333, 31))

def sourceBody333_322 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_321 sourceBody333_9

def sourceBody333_323 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_322 sourceBody333_0

def sourceBody333_324 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_320 sourceBody333_323

def sourceBody333_325 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_324

def sourceBody333_326 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_325

def sourceBody333_327 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 40 (Flapjack.WordRegImm.imm 0#64) sourceBody333_326 sourceBody333_0

def sourceBody333_328 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_327 sourceBody333_9

def sourceBody333_329 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_328 sourceBody333_0

def sourceBody333_330 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_160 sourceBody333_329

def sourceBody333_331 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_284 sourceBody333_330

def sourceBody333_332 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_222 sourceBody333_331

def sourceBody333_333 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_313 sourceBody333_332

def sourceBody333_334 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 46)

def sourceBody333_335 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_334 sourceBody333_197

def sourceBody333_336 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_335

def sourceBody333_337 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_314 sourceBody333_336

def sourceBody333_338 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_337

def sourceBody333_339 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_333 sourceBody333_338

def sourceBody333_340 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 40 (Flapjack.WordRegImm.imm 0#64) sourceBody333_319 sourceBody333_339

def sourceBody333_341 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_340 sourceBody333_9

def sourceBody333_342 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_341 sourceBody333_0

def sourceBody333_343 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_160 sourceBody333_342

def sourceBody333_344 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_276 sourceBody333_343

def sourceBody333_345 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_274 sourceBody333_344

def sourceBody333_346 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_313 sourceBody333_345

def sourceBody333_347 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_312 sourceBody333_346

def sourceBody333_348 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [38]

def sourceBody333_349 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_348 sourceBody333_0

def sourceBody333_350 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_114 sourceBody333_349

def sourceBody333_351 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_347 sourceBody333_350

def sourceBody333_352 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_116 sourceBody333_351

def sourceBody333_353 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_352

def sourceBody333_354 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_154 sourceBody333_353

def sourceBody333_355 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_354

def sourceBody333_356 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_153 sourceBody333_355

def sourceBody333_357 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_112 sourceBody333_356

def sourceBody333_358 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_357

def sourceBody333_359 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_358

def sourceBody333_360 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_359

def sourceBody333_361 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_360

def sourceBody333_362 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_361

def sourceBody333_363 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_362

def sourceBody333_364 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_363

def sourceBody333_365 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_364

def sourceBody333_366 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_104 sourceBody333_365

def sourceBody333_367 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_366

def sourceBody333_368 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_367

def sourceBody333_369 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_368

def sourceBody333_370 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_369

def sourceBody333_371 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_370

def sourceBody333_372 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_371

def sourceBody333_373 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_372

def sourceBody333_374 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_373

def sourceBody333_375 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_96 sourceBody333_374

def sourceBody333_376 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_375

def sourceBody333_377 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_376

def sourceBody333_378 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_377

def sourceBody333_379 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_378

def sourceBody333_380 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_379

def sourceBody333_381 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_380

def sourceBody333_382 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_381

def sourceBody333_383 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_382

def sourceBody333_384 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_88 sourceBody333_383

def sourceBody333_385 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_384

def sourceBody333_386 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_385

def sourceBody333_387 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_386

def sourceBody333_388 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_387

def sourceBody333_389 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_388

def sourceBody333_390 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_389

def sourceBody333_391 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_390

def sourceBody333_392 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_391

def sourceBody333_393 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_80 sourceBody333_392

def sourceBody333_394 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_393

def sourceBody333_395 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_79 sourceBody333_394

def sourceBody333_396 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_58 sourceBody333_395

def sourceBody333_397 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_396

def sourceBody333_398 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_397

def sourceBody333_399 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_398

def sourceBody333_400 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_399

def sourceBody333_401 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_50 sourceBody333_400

def sourceBody333_402 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_5 sourceBody333_401

def sourceBody333_403 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_402

def sourceBody333_404 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_4 sourceBody333_403

def sourceBody333_405 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_404

def sourceBody333_406 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_3 sourceBody333_405

def sourceBody333_407 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_406

def sourceBody333_408 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_2 sourceBody333_407

def sourceBody333_409 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_408

def sourceBody333_410 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_1 sourceBody333_409

def sourceBody333_411 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody333_0 sourceBody333_410

def source333 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (333, 4, sourceBody333_411)
end InitECandidate.Proofs.WordStages
