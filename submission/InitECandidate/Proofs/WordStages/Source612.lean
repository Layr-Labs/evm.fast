import InitECandidate.Proofs.WordStages.Source596
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody612_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody612_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
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

def sourceBody612_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 38

def sourceBody612_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([48]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody612_0, 612, 2)) (some 488) ([]) (some (38, sourceBody612_2, 612, 3))

def sourceBody612_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody612_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_3 sourceBody612_4

def sourceBody612_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_5 sourceBody612_0

def sourceBody612_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 48, Flapjack.WordLangExpHOL.const 0#64])

def sourceBody612_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody612_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 46)

def sourceBody612_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 38) 42

def sourceBody612_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_10 sourceBody612_0

def sourceBody612_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_9 sourceBody612_11

def sourceBody612_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_12 sourceBody612_0

def sourceBody612_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_8 sourceBody612_13

def sourceBody612_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_0 sourceBody612_14

def sourceBody612_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_7 sourceBody612_15

def sourceBody612_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_0 sourceBody612_16

def sourceBody612_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 48, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody612_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody612_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_19 sourceBody612_13

def sourceBody612_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_0 sourceBody612_20

def sourceBody612_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_18 sourceBody612_21

def sourceBody612_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_0 sourceBody612_22

def sourceBody612_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_17 sourceBody612_23

def sourceBody612_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 48, Flapjack.WordLangExpHOL.const 16#64])

def sourceBody612_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 2)

def sourceBody612_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_26 sourceBody612_13

def sourceBody612_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_0 sourceBody612_27

def sourceBody612_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_25 sourceBody612_28

def sourceBody612_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_0 sourceBody612_29

def sourceBody612_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_24 sourceBody612_30

def sourceBody612_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 48, Flapjack.WordLangExpHOL.const 24#64])

def sourceBody612_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 4)

def sourceBody612_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_33 sourceBody612_13

def sourceBody612_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_0 sourceBody612_34

def sourceBody612_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_32 sourceBody612_35

def sourceBody612_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_0 sourceBody612_36

def sourceBody612_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_31 sourceBody612_37

def sourceBody612_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 48, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody612_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 6)

def sourceBody612_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_40 sourceBody612_13

def sourceBody612_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_0 sourceBody612_41

def sourceBody612_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_39 sourceBody612_42

def sourceBody612_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_0 sourceBody612_43

def sourceBody612_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_38 sourceBody612_44

def sourceBody612_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 48, Flapjack.WordLangExpHOL.const 40#64])

def sourceBody612_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 8)

def sourceBody612_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_47 sourceBody612_13

def sourceBody612_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_0 sourceBody612_48

def sourceBody612_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_46 sourceBody612_49

def sourceBody612_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_0 sourceBody612_50

def sourceBody612_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_45 sourceBody612_51

def sourceBody612_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 48, Flapjack.WordLangExpHOL.const 48#64])

def sourceBody612_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 10)

def sourceBody612_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_54 sourceBody612_13

def sourceBody612_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_0 sourceBody612_55

def sourceBody612_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_53 sourceBody612_56

def sourceBody612_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_0 sourceBody612_57

def sourceBody612_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_52 sourceBody612_58

def sourceBody612_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 48, Flapjack.WordLangExpHOL.const 56#64])

def sourceBody612_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 12)

def sourceBody612_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 14)

def sourceBody612_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 16)

def sourceBody612_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 18)

def sourceBody612_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 46)

def sourceBody612_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 38) 44

def sourceBody612_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_66 sourceBody612_0

def sourceBody612_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_65 sourceBody612_67

def sourceBody612_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 42)

def sourceBody612_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 8#64])
  44

def sourceBody612_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_70 sourceBody612_0

def sourceBody612_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_69 sourceBody612_71

def sourceBody612_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 50)

def sourceBody612_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 16#64])
  44

def sourceBody612_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_74 sourceBody612_0

def sourceBody612_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_73 sourceBody612_75

def sourceBody612_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 36)

def sourceBody612_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 24#64])
  44

def sourceBody612_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_78 sourceBody612_0

def sourceBody612_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_77 sourceBody612_79

def sourceBody612_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_80 sourceBody612_0

def sourceBody612_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_76 sourceBody612_81

def sourceBody612_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_72 sourceBody612_82

def sourceBody612_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_68 sourceBody612_83

def sourceBody612_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_64 sourceBody612_84

def sourceBody612_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_0 sourceBody612_85

def sourceBody612_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_63 sourceBody612_86

def sourceBody612_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_0 sourceBody612_87

def sourceBody612_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_62 sourceBody612_88

def sourceBody612_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_0 sourceBody612_89

def sourceBody612_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_61 sourceBody612_90

def sourceBody612_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_0 sourceBody612_91

def sourceBody612_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_60 sourceBody612_92

def sourceBody612_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_0 sourceBody612_93

def sourceBody612_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_59 sourceBody612_94

def sourceBody612_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 48, Flapjack.WordLangExpHOL.const 88#64])

def sourceBody612_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 20)

def sourceBody612_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_97 sourceBody612_13

def sourceBody612_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_0 sourceBody612_98

def sourceBody612_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_96 sourceBody612_99

def sourceBody612_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_0 sourceBody612_100

def sourceBody612_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_95 sourceBody612_101

def sourceBody612_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 48, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody612_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 22)

def sourceBody612_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_104 sourceBody612_13

def sourceBody612_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_0 sourceBody612_105

def sourceBody612_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_103 sourceBody612_106

def sourceBody612_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_0 sourceBody612_107

def sourceBody612_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_102 sourceBody612_108

def sourceBody612_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 48, Flapjack.WordLangExpHOL.const 104#64])

def sourceBody612_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 24)

def sourceBody612_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_111 sourceBody612_13

def sourceBody612_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_0 sourceBody612_112

def sourceBody612_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_110 sourceBody612_113

def sourceBody612_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_0 sourceBody612_114

def sourceBody612_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_109 sourceBody612_115

def sourceBody612_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 48, Flapjack.WordLangExpHOL.const 112#64])

def sourceBody612_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 26)

def sourceBody612_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_118 sourceBody612_13

def sourceBody612_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_0 sourceBody612_119

def sourceBody612_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_117 sourceBody612_120

def sourceBody612_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_0 sourceBody612_121

def sourceBody612_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_116 sourceBody612_122

def sourceBody612_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 48, Flapjack.WordLangExpHOL.const 120#64])

def sourceBody612_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 28)

def sourceBody612_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_125 sourceBody612_13

def sourceBody612_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_0 sourceBody612_126

def sourceBody612_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_124 sourceBody612_127

def sourceBody612_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_0 sourceBody612_128

def sourceBody612_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_123 sourceBody612_129

def sourceBody612_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 48, Flapjack.WordLangExpHOL.const 128#64])

def sourceBody612_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 128#64]),
      Flapjack.WordLangExpHOL.const 1#64])

def sourceBody612_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_132 sourceBody612_13

def sourceBody612_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_0 sourceBody612_133

def sourceBody612_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_131 sourceBody612_134

def sourceBody612_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_0 sourceBody612_135

def sourceBody612_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_130 sourceBody612_136

def sourceBody612_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 48, Flapjack.WordLangExpHOL.const 136#64])

def sourceBody612_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 30)

def sourceBody612_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_139 sourceBody612_13

def sourceBody612_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_0 sourceBody612_140

def sourceBody612_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_138 sourceBody612_141

def sourceBody612_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_0 sourceBody612_142

def sourceBody612_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_137 sourceBody612_143

def sourceBody612_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 32)

def sourceBody612_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 144#64]))

def sourceBody612_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody612_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody612_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody612_150 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 42 (Flapjack.WordRegImm.reg 50) sourceBody612_148 sourceBody612_149

def sourceBody612_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_150 sourceBody612_4

def sourceBody612_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 42)

def sourceBody612_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody612_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_153 sourceBody612_0

def sourceBody612_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_154 sourceBody612_0

def sourceBody612_156 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 36 (Flapjack.WordRegImm.imm 0#64) sourceBody612_155 sourceBody612_0

def sourceBody612_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_156 sourceBody612_4

def sourceBody612_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_157 sourceBody612_0

def sourceBody612_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_152 sourceBody612_158

def sourceBody612_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_151 sourceBody612_159

def sourceBody612_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_147 sourceBody612_160

def sourceBody612_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_146 sourceBody612_161

def sourceBody612_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 48, Flapjack.WordLangExpHOL.const 144#64])

def sourceBody612_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 38)

def sourceBody612_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 42)

def sourceBody612_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 46) 50

def sourceBody612_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_166 sourceBody612_0

def sourceBody612_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_165 sourceBody612_167

def sourceBody612_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_168 sourceBody612_0

def sourceBody612_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_164 sourceBody612_169

def sourceBody612_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_0 sourceBody612_170

def sourceBody612_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_163 sourceBody612_171

def sourceBody612_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_0 sourceBody612_172

def sourceBody612_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_162 sourceBody612_173

def sourceBody612_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 48, Flapjack.WordLangExpHOL.const 152#64])

def sourceBody612_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
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
        Flapjack.WordLangExpHOL.const 168#64]))

def sourceBody612_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_176 sourceBody612_169

def sourceBody612_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_0 sourceBody612_177

def sourceBody612_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_175 sourceBody612_178

def sourceBody612_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_0 sourceBody612_179

def sourceBody612_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_174 sourceBody612_180

def sourceBody612_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 48, Flapjack.WordLangExpHOL.const 160#64])

def sourceBody612_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
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
        Flapjack.WordLangExpHOL.const 176#64]))

def sourceBody612_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_183 sourceBody612_169

def sourceBody612_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_0 sourceBody612_184

def sourceBody612_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_182 sourceBody612_185

def sourceBody612_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_0 sourceBody612_186

def sourceBody612_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_181 sourceBody612_187

def sourceBody612_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 48, Flapjack.WordLangExpHOL.const 168#64])

def sourceBody612_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 34)

def sourceBody612_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_190 sourceBody612_169

def sourceBody612_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_0 sourceBody612_191

def sourceBody612_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_189 sourceBody612_192

def sourceBody612_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_0 sourceBody612_193

def sourceBody612_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_188 sourceBody612_194

def sourceBody612_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 48)

def sourceBody612_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [46]

def sourceBody612_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_197 sourceBody612_0

def sourceBody612_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_196 sourceBody612_198

def sourceBody612_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_195 sourceBody612_199

def sourceBody612_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_145 sourceBody612_200

def sourceBody612_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_0 sourceBody612_201

def sourceBody612_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_144 sourceBody612_202

def sourceBody612_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_6 sourceBody612_203

def sourceBody612_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_0 sourceBody612_204

def sourceBody612_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_0 sourceBody612_205

def sourceBody612_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_1 sourceBody612_206

def sourceBody612_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody612_0 sourceBody612_207

def source612 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (612, 18, sourceBody612_208)
end InitECandidate.Proofs.WordStages
