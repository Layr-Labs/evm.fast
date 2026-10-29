import InitECandidate.Proofs.WordStages.Source657
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody673_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody673_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody673_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody673_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 36)

def sourceBody673_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody673_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody673_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody673_7 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 46 (Flapjack.WordRegImm.reg 12) sourceBody673_5 sourceBody673_6

def sourceBody673_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_7 sourceBody673_2

def sourceBody673_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 46)

def sourceBody673_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
          (Flapjack.WordLangExpHOL.const 5#64)]))

def sourceBody673_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 6,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody673_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 6,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody673_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 6,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody673_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 8,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
          (Flapjack.WordLangExpHOL.const 5#64)]))

def sourceBody673_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 8,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody673_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 8,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody673_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 8,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
              (Flapjack.WordLangExpHOL.const 5#64)],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody673_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 24)

def sourceBody673_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 46)

def sourceBody673_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 12)

def sourceBody673_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 32)

def sourceBody673_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 22)

def sourceBody673_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 44)

def sourceBody673_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 18)

def sourceBody673_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 40)

def sourceBody673_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody673_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([28, 50, 10, 30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody673_0, 673, 2)) (some 659) ([20, 42, 16, 38, 26, 48, 14, 34]) (some (20, sourceBody673_26, 673, 3))

def sourceBody673_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_27 sourceBody673_2

def sourceBody673_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_28 sourceBody673_0

def sourceBody673_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_25 sourceBody673_29

def sourceBody673_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_24 sourceBody673_30

def sourceBody673_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_23 sourceBody673_31

def sourceBody673_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_22 sourceBody673_32

def sourceBody673_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_21 sourceBody673_33

def sourceBody673_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_20 sourceBody673_34

def sourceBody673_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_19 sourceBody673_35

def sourceBody673_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_18 sourceBody673_36

def sourceBody673_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 36)
        (Flapjack.WordLangExpHOL.const 5#64)])

def sourceBody673_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 28)

def sourceBody673_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 50)

def sourceBody673_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 10)

def sourceBody673_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 30)

def sourceBody673_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 42)

def sourceBody673_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 20) 48

def sourceBody673_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_44 sourceBody673_0

def sourceBody673_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_43 sourceBody673_45

def sourceBody673_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 16)

def sourceBody673_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 8#64])
  48

def sourceBody673_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_48 sourceBody673_0

def sourceBody673_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_47 sourceBody673_49

def sourceBody673_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 38)

def sourceBody673_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 16#64])
  48

def sourceBody673_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_52 sourceBody673_0

def sourceBody673_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_51 sourceBody673_53

def sourceBody673_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 26)

def sourceBody673_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 24#64])
  48

def sourceBody673_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_56 sourceBody673_0

def sourceBody673_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_55 sourceBody673_57

def sourceBody673_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_58 sourceBody673_0

def sourceBody673_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_54 sourceBody673_59

def sourceBody673_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_50 sourceBody673_60

def sourceBody673_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_46 sourceBody673_61

def sourceBody673_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_42 sourceBody673_62

def sourceBody673_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_0 sourceBody673_63

def sourceBody673_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_41 sourceBody673_64

def sourceBody673_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_0 sourceBody673_65

def sourceBody673_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_40 sourceBody673_66

def sourceBody673_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_0 sourceBody673_67

def sourceBody673_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_39 sourceBody673_68

def sourceBody673_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_0 sourceBody673_69

def sourceBody673_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_38 sourceBody673_70

def sourceBody673_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_0 sourceBody673_71

def sourceBody673_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 36, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody673_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 20)

def sourceBody673_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_74 sourceBody673_0

def sourceBody673_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_75 sourceBody673_0

def sourceBody673_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_73 sourceBody673_76

def sourceBody673_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_0 sourceBody673_77

def sourceBody673_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_72 sourceBody673_78

def sourceBody673_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_37 sourceBody673_79

def sourceBody673_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_0 sourceBody673_80

def sourceBody673_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_0 sourceBody673_81

def sourceBody673_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_0 sourceBody673_82

def sourceBody673_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_0 sourceBody673_83

def sourceBody673_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_0 sourceBody673_84

def sourceBody673_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_0 sourceBody673_85

def sourceBody673_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_0 sourceBody673_86

def sourceBody673_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_0 sourceBody673_87

def sourceBody673_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_17 sourceBody673_88

def sourceBody673_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_0 sourceBody673_89

def sourceBody673_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_16 sourceBody673_90

def sourceBody673_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_0 sourceBody673_91

def sourceBody673_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_15 sourceBody673_92

def sourceBody673_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_0 sourceBody673_93

def sourceBody673_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_14 sourceBody673_94

def sourceBody673_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_0 sourceBody673_95

def sourceBody673_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_13 sourceBody673_96

def sourceBody673_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_0 sourceBody673_97

def sourceBody673_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_12 sourceBody673_98

def sourceBody673_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_0 sourceBody673_99

def sourceBody673_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_11 sourceBody673_100

def sourceBody673_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_0 sourceBody673_101

def sourceBody673_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_10 sourceBody673_102

def sourceBody673_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_0 sourceBody673_103

def sourceBody673_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody673_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_104 sourceBody673_105

def sourceBody673_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody673_108 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 32 (Flapjack.WordRegImm.imm 0#64) sourceBody673_106 sourceBody673_107

def sourceBody673_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_108 sourceBody673_2

def sourceBody673_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_109 sourceBody673_0

def sourceBody673_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_9 sourceBody673_110

def sourceBody673_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_8 sourceBody673_111

def sourceBody673_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_4 sourceBody673_112

def sourceBody673_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_3 sourceBody673_113

def sourceBody673_115 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln) sourceBody673_114 (Flapjack.Spt.ls PUnit.unit)

def sourceBody673_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_115 sourceBody673_2

def sourceBody673_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_2 sourceBody673_116

def sourceBody673_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody673_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [24]

def sourceBody673_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_119 sourceBody673_0

def sourceBody673_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_118 sourceBody673_120

def sourceBody673_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_117 sourceBody673_121

def sourceBody673_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_1 sourceBody673_122

def sourceBody673_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody673_0 sourceBody673_123

def source673 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (673, 5, sourceBody673_124)
end InitECandidate.Proofs.WordStages
