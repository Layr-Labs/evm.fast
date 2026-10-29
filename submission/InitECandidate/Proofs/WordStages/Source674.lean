import InitECandidate.Proofs.WordStages.Source658
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody674_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody674_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody674_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody674_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 12)

def sourceBody674_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 2)

def sourceBody674_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody674_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody674_7 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 20 (Flapjack.WordRegImm.reg 34) sourceBody674_5 sourceBody674_6

def sourceBody674_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_7 sourceBody674_2

def sourceBody674_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 20)

def sourceBody674_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 12)
          (Flapjack.WordLangExpHOL.const 5#64)]))

def sourceBody674_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 6,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 12)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody674_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 6,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 12)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody674_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 6,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 12)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody674_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 28)

def sourceBody674_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 20)

def sourceBody674_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 34)

def sourceBody674_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody674_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def sourceBody674_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([26, 18, 32, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody674_0, 674, 2)) (some 660) ([30, 22, 36, 8]) (some (30, sourceBody674_18, 674, 3))

def sourceBody674_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_19 sourceBody674_2

def sourceBody674_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_20 sourceBody674_0

def sourceBody674_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_17 sourceBody674_21

def sourceBody674_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_16 sourceBody674_22

def sourceBody674_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_15 sourceBody674_23

def sourceBody674_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_14 sourceBody674_24

def sourceBody674_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 12)
        (Flapjack.WordLangExpHOL.const 5#64)])

def sourceBody674_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 26)

def sourceBody674_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 18)

def sourceBody674_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 32)

def sourceBody674_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 14)

def sourceBody674_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 22)

def sourceBody674_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 30) 16

def sourceBody674_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_32 sourceBody674_0

def sourceBody674_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_31 sourceBody674_33

def sourceBody674_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 36)

def sourceBody674_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.const 8#64])
  16

def sourceBody674_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_36 sourceBody674_0

def sourceBody674_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_35 sourceBody674_37

def sourceBody674_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 8)

def sourceBody674_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.const 16#64])
  16

def sourceBody674_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_40 sourceBody674_0

def sourceBody674_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_39 sourceBody674_41

def sourceBody674_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 24)

def sourceBody674_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.const 24#64])
  16

def sourceBody674_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_44 sourceBody674_0

def sourceBody674_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_43 sourceBody674_45

def sourceBody674_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_46 sourceBody674_0

def sourceBody674_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_42 sourceBody674_47

def sourceBody674_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_38 sourceBody674_48

def sourceBody674_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_34 sourceBody674_49

def sourceBody674_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_30 sourceBody674_50

def sourceBody674_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_0 sourceBody674_51

def sourceBody674_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_29 sourceBody674_52

def sourceBody674_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_0 sourceBody674_53

def sourceBody674_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_28 sourceBody674_54

def sourceBody674_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_0 sourceBody674_55

def sourceBody674_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_27 sourceBody674_56

def sourceBody674_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_0 sourceBody674_57

def sourceBody674_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_26 sourceBody674_58

def sourceBody674_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_0 sourceBody674_59

def sourceBody674_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody674_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 30)

def sourceBody674_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_62 sourceBody674_0

def sourceBody674_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_63 sourceBody674_0

def sourceBody674_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_61 sourceBody674_64

def sourceBody674_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_0 sourceBody674_65

def sourceBody674_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_60 sourceBody674_66

def sourceBody674_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_25 sourceBody674_67

def sourceBody674_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_0 sourceBody674_68

def sourceBody674_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_0 sourceBody674_69

def sourceBody674_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_0 sourceBody674_70

def sourceBody674_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_0 sourceBody674_71

def sourceBody674_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_0 sourceBody674_72

def sourceBody674_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_0 sourceBody674_73

def sourceBody674_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_0 sourceBody674_74

def sourceBody674_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_0 sourceBody674_75

def sourceBody674_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_13 sourceBody674_76

def sourceBody674_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_0 sourceBody674_77

def sourceBody674_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_12 sourceBody674_78

def sourceBody674_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_0 sourceBody674_79

def sourceBody674_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_11 sourceBody674_80

def sourceBody674_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_0 sourceBody674_81

def sourceBody674_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_10 sourceBody674_82

def sourceBody674_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_0 sourceBody674_83

def sourceBody674_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody674_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_84 sourceBody674_85

def sourceBody674_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody674_88 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody674_86 sourceBody674_87

def sourceBody674_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_88 sourceBody674_2

def sourceBody674_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_89 sourceBody674_0

def sourceBody674_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_9 sourceBody674_90

def sourceBody674_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_8 sourceBody674_91

def sourceBody674_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_4 sourceBody674_92

def sourceBody674_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_3 sourceBody674_93

def sourceBody674_95 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln) sourceBody674_94 (Flapjack.Spt.ls PUnit.unit)

def sourceBody674_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_95 sourceBody674_2

def sourceBody674_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_2 sourceBody674_96

def sourceBody674_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody674_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [28]

def sourceBody674_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_99 sourceBody674_0

def sourceBody674_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_98 sourceBody674_100

def sourceBody674_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_97 sourceBody674_101

def sourceBody674_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_1 sourceBody674_102

def sourceBody674_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody674_0 sourceBody674_103

def source674 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (674, 4, sourceBody674_104)
end InitECandidate.Proofs.WordStages
