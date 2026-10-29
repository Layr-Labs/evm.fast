import InitECandidate.Proofs.WordStages.Source656
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody672_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody672_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody672_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody672_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 36)

def sourceBody672_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody672_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody672_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody672_7 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 46 (Flapjack.WordRegImm.reg 12) sourceBody672_5 sourceBody672_6

def sourceBody672_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_7 sourceBody672_2

def sourceBody672_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 46)

def sourceBody672_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
          (Flapjack.WordLangExpHOL.const 5#64)]))

def sourceBody672_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 6,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody672_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 6,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody672_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 6,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody672_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 8,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
          (Flapjack.WordLangExpHOL.const 5#64)]))

def sourceBody672_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 8,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody672_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 8,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody672_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 8,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody672_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 24)

def sourceBody672_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 46)

def sourceBody672_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 12)

def sourceBody672_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 32)

def sourceBody672_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 22)

def sourceBody672_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 44)

def sourceBody672_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 18)

def sourceBody672_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 40)

def sourceBody672_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody672_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([28, 50, 10, 30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody672_0, 672, 2)) (some 658) ([20, 42, 16, 38, 26, 48, 14, 34]) (some (20, sourceBody672_26, 672, 3))

def sourceBody672_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_27 sourceBody672_2

def sourceBody672_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_28 sourceBody672_0

def sourceBody672_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_25 sourceBody672_29

def sourceBody672_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_24 sourceBody672_30

def sourceBody672_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_23 sourceBody672_31

def sourceBody672_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_22 sourceBody672_32

def sourceBody672_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_21 sourceBody672_33

def sourceBody672_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_20 sourceBody672_34

def sourceBody672_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_19 sourceBody672_35

def sourceBody672_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_18 sourceBody672_36

def sourceBody672_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
        (Flapjack.WordLangExpHOL.const 5#64)])

def sourceBody672_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 28)

def sourceBody672_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 50)

def sourceBody672_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 10)

def sourceBody672_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 30)

def sourceBody672_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 42)

def sourceBody672_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 20) 48

def sourceBody672_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_44 sourceBody672_0

def sourceBody672_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_43 sourceBody672_45

def sourceBody672_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 16)

def sourceBody672_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 8#64])
  48

def sourceBody672_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_48 sourceBody672_0

def sourceBody672_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_47 sourceBody672_49

def sourceBody672_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 38)

def sourceBody672_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 16#64])
  48

def sourceBody672_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_52 sourceBody672_0

def sourceBody672_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_51 sourceBody672_53

def sourceBody672_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 26)

def sourceBody672_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 24#64])
  48

def sourceBody672_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_56 sourceBody672_0

def sourceBody672_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_55 sourceBody672_57

def sourceBody672_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_58 sourceBody672_0

def sourceBody672_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_54 sourceBody672_59

def sourceBody672_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_50 sourceBody672_60

def sourceBody672_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_46 sourceBody672_61

def sourceBody672_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_42 sourceBody672_62

def sourceBody672_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_0 sourceBody672_63

def sourceBody672_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_41 sourceBody672_64

def sourceBody672_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_0 sourceBody672_65

def sourceBody672_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_40 sourceBody672_66

def sourceBody672_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_0 sourceBody672_67

def sourceBody672_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_39 sourceBody672_68

def sourceBody672_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_0 sourceBody672_69

def sourceBody672_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_38 sourceBody672_70

def sourceBody672_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_0 sourceBody672_71

def sourceBody672_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 36, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody672_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 20)

def sourceBody672_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_74 sourceBody672_0

def sourceBody672_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_75 sourceBody672_0

def sourceBody672_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_73 sourceBody672_76

def sourceBody672_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_0 sourceBody672_77

def sourceBody672_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_72 sourceBody672_78

def sourceBody672_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_37 sourceBody672_79

def sourceBody672_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_0 sourceBody672_80

def sourceBody672_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_0 sourceBody672_81

def sourceBody672_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_0 sourceBody672_82

def sourceBody672_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_0 sourceBody672_83

def sourceBody672_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_0 sourceBody672_84

def sourceBody672_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_0 sourceBody672_85

def sourceBody672_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_0 sourceBody672_86

def sourceBody672_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_0 sourceBody672_87

def sourceBody672_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_17 sourceBody672_88

def sourceBody672_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_0 sourceBody672_89

def sourceBody672_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_16 sourceBody672_90

def sourceBody672_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_0 sourceBody672_91

def sourceBody672_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_15 sourceBody672_92

def sourceBody672_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_0 sourceBody672_93

def sourceBody672_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_14 sourceBody672_94

def sourceBody672_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_0 sourceBody672_95

def sourceBody672_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_13 sourceBody672_96

def sourceBody672_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_0 sourceBody672_97

def sourceBody672_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_12 sourceBody672_98

def sourceBody672_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_0 sourceBody672_99

def sourceBody672_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_11 sourceBody672_100

def sourceBody672_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_0 sourceBody672_101

def sourceBody672_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_10 sourceBody672_102

def sourceBody672_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_0 sourceBody672_103

def sourceBody672_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody672_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_104 sourceBody672_105

def sourceBody672_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody672_108 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 32 (Flapjack.WordRegImm.imm 0#64) sourceBody672_106 sourceBody672_107

def sourceBody672_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_108 sourceBody672_2

def sourceBody672_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_109 sourceBody672_0

def sourceBody672_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_9 sourceBody672_110

def sourceBody672_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_8 sourceBody672_111

def sourceBody672_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_4 sourceBody672_112

def sourceBody672_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_3 sourceBody672_113

def sourceBody672_115 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln) sourceBody672_114 (Flapjack.Spt.ls PUnit.unit)

def sourceBody672_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_115 sourceBody672_2

def sourceBody672_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_2 sourceBody672_116

def sourceBody672_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody672_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [24]

def sourceBody672_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_119 sourceBody672_0

def sourceBody672_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_118 sourceBody672_120

def sourceBody672_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_117 sourceBody672_121

def sourceBody672_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_1 sourceBody672_122

def sourceBody672_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody672_0 sourceBody672_123

def source672 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (672, 5, sourceBody672_124)
end InitECandidate.Proofs.WordStages
