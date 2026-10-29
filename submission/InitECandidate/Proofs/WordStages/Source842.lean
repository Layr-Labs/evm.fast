import InitECandidate.Proofs.WordStages.Source826
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody842_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody842_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody842_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody842_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 9#64])

def sourceBody842_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody842_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody842_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 16)

def sourceBody842_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 28)

def sourceBody842_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody842_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody842_10 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 8 (Flapjack.WordRegImm.reg 22) sourceBody842_8 sourceBody842_9

def sourceBody842_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_10 sourceBody842_5

def sourceBody842_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody842_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 10,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 16)
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody842_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.const 9#64])

def sourceBody842_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody842_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody842_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody842_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody842_0, 842, 2)) (some 176) ([14, 30, 12]) (some (14, sourceBody842_17, 842, 3))

def sourceBody842_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_18 sourceBody842_5

def sourceBody842_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_19 sourceBody842_0

def sourceBody842_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_16 sourceBody842_20

def sourceBody842_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_15 sourceBody842_21

def sourceBody842_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_12 sourceBody842_22

def sourceBody842_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.var 22])

def sourceBody842_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 14)

def sourceBody842_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_25 sourceBody842_0

def sourceBody842_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_26 sourceBody842_0

def sourceBody842_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_24 sourceBody842_27

def sourceBody842_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_0 sourceBody842_28

def sourceBody842_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 9#64])

def sourceBody842_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody842_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody842_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 26)

def sourceBody842_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 12)

def sourceBody842_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody842_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody842_37 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 34 (Flapjack.WordRegImm.reg 6) sourceBody842_35 sourceBody842_36

def sourceBody842_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_37 sourceBody842_5

def sourceBody842_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 34)

def sourceBody842_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 30)

def sourceBody842_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 8#64]),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
        (Flapjack.WordLangExpHOL.const 5#64)])

def sourceBody842_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody842_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody842_44 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody842_0, 842, 4)) (some 176) ([18, 34, 6]) (some (18, sourceBody842_43, 842, 5))

def sourceBody842_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_44 sourceBody842_5

def sourceBody842_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_45 sourceBody842_0

def sourceBody842_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_42 sourceBody842_46

def sourceBody842_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_41 sourceBody842_47

def sourceBody842_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_40 sourceBody842_48

def sourceBody842_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.var 22])

def sourceBody842_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 18)

def sourceBody842_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_51 sourceBody842_0

def sourceBody842_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_52 sourceBody842_0

def sourceBody842_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_50 sourceBody842_53

def sourceBody842_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_0 sourceBody842_54

def sourceBody842_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_49 sourceBody842_55

def sourceBody842_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody842_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 18)

def sourceBody842_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_58 sourceBody842_0

def sourceBody842_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_59 sourceBody842_0

def sourceBody842_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_57 sourceBody842_60

def sourceBody842_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_0 sourceBody842_61

def sourceBody842_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_56 sourceBody842_62

def sourceBody842_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody842_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_63 sourceBody842_64

def sourceBody842_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody842_67 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 0#64) sourceBody842_65 sourceBody842_66

def sourceBody842_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_67 sourceBody842_5

def sourceBody842_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_68 sourceBody842_0

def sourceBody842_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_39 sourceBody842_69

def sourceBody842_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_38 sourceBody842_70

def sourceBody842_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_34 sourceBody842_71

def sourceBody842_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_33 sourceBody842_72

def sourceBody842_74 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln) sourceBody842_73 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody842_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_74 sourceBody842_5

def sourceBody842_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_5 sourceBody842_75

def sourceBody842_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 14)

def sourceBody842_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 30)

def sourceBody842_79 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody842_0, 842, 6)) (some 840) ([18, 34]) (some (18, sourceBody842_43, 842, 7))

def sourceBody842_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_79 sourceBody842_5

def sourceBody842_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_80 sourceBody842_0

def sourceBody842_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_78 sourceBody842_81

def sourceBody842_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_77 sourceBody842_82

def sourceBody842_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_76 sourceBody842_83

def sourceBody842_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.var 22])

def sourceBody842_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_85 sourceBody842_0

def sourceBody842_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_86 sourceBody842_0

def sourceBody842_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_84 sourceBody842_87

def sourceBody842_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 8)

def sourceBody842_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody842_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody842_92 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody842_0, 842, 8)) (some 176) ([18, 34, 6]) (some (18, sourceBody842_43, 842, 9))

def sourceBody842_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_92 sourceBody842_5

def sourceBody842_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_93 sourceBody842_0

def sourceBody842_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_91 sourceBody842_94

def sourceBody842_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_90 sourceBody842_95

def sourceBody842_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_89 sourceBody842_96

def sourceBody842_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_88 sourceBody842_97

def sourceBody842_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.var 22])

def sourceBody842_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 18)

def sourceBody842_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_100 sourceBody842_0

def sourceBody842_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_101 sourceBody842_0

def sourceBody842_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_99 sourceBody842_102

def sourceBody842_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_0 sourceBody842_103

def sourceBody842_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_98 sourceBody842_104

def sourceBody842_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 24)

def sourceBody842_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 8)

def sourceBody842_108 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody842_0, 842, 10)) (some 840) ([18, 34]) (some (18, sourceBody842_43, 842, 11))

def sourceBody842_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_108 sourceBody842_5

def sourceBody842_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_109 sourceBody842_0

def sourceBody842_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_107 sourceBody842_110

def sourceBody842_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_106 sourceBody842_111

def sourceBody842_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_105 sourceBody842_112

def sourceBody842_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 24, Flapjack.WordLangExpHOL.var 22])

def sourceBody842_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 18)

def sourceBody842_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_115 sourceBody842_0

def sourceBody842_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_116 sourceBody842_0

def sourceBody842_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_114 sourceBody842_117

def sourceBody842_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_0 sourceBody842_118

def sourceBody842_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_113 sourceBody842_119

def sourceBody842_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody842_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 18)

def sourceBody842_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_122 sourceBody842_0

def sourceBody842_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_123 sourceBody842_0

def sourceBody842_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_121 sourceBody842_124

def sourceBody842_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_0 sourceBody842_125

def sourceBody842_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_120 sourceBody842_126

def sourceBody842_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_32 sourceBody842_127

def sourceBody842_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_0 sourceBody842_128

def sourceBody842_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_31 sourceBody842_129

def sourceBody842_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_0 sourceBody842_130

def sourceBody842_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_30 sourceBody842_131

def sourceBody842_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_0 sourceBody842_132

def sourceBody842_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_12 sourceBody842_133

def sourceBody842_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_0 sourceBody842_134

def sourceBody842_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_29 sourceBody842_135

def sourceBody842_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_23 sourceBody842_136

def sourceBody842_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_0 sourceBody842_137

def sourceBody842_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_0 sourceBody842_138

def sourceBody842_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_14 sourceBody842_139

def sourceBody842_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_0 sourceBody842_140

def sourceBody842_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_13 sourceBody842_141

def sourceBody842_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_0 sourceBody842_142

def sourceBody842_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_143 sourceBody842_64

def sourceBody842_145 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody842_144 sourceBody842_66

def sourceBody842_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_145 sourceBody842_5

def sourceBody842_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_146 sourceBody842_0

def sourceBody842_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_12 sourceBody842_147

def sourceBody842_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_11 sourceBody842_148

def sourceBody842_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_7 sourceBody842_149

def sourceBody842_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_6 sourceBody842_150

def sourceBody842_152 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) sourceBody842_151 (Flapjack.Spt.bs
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln)

def sourceBody842_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_152 sourceBody842_5

def sourceBody842_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_5 sourceBody842_153

def sourceBody842_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 2)

def sourceBody842_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 24)

def sourceBody842_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody842_158 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody842_0, 842, 12)) (some 840) ([8, 22]) (some (8, sourceBody842_157, 842, 13))

def sourceBody842_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_158 sourceBody842_5

def sourceBody842_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_159 sourceBody842_0

def sourceBody842_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_156 sourceBody842_160

def sourceBody842_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_155 sourceBody842_161

def sourceBody842_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 32)

def sourceBody842_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody842_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_164 sourceBody842_0

def sourceBody842_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_163 sourceBody842_165

def sourceBody842_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_162 sourceBody842_166

def sourceBody842_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_0 sourceBody842_167

def sourceBody842_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_0 sourceBody842_168

def sourceBody842_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_154 sourceBody842_169

def sourceBody842_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_4 sourceBody842_170

def sourceBody842_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_0 sourceBody842_171

def sourceBody842_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_3 sourceBody842_172

def sourceBody842_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_0 sourceBody842_173

def sourceBody842_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_2 sourceBody842_174

def sourceBody842_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_0 sourceBody842_175

def sourceBody842_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_1 sourceBody842_176

def sourceBody842_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody842_0 sourceBody842_177

def source842 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (842, 3, sourceBody842_178)
end InitECandidate.Proofs.WordStages
