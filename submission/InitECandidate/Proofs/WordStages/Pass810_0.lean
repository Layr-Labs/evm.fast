import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Source810
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def word810_0_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def word810_0_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def word810_0_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([126]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word810_0_0, 810, 2)) (some 69) ([]) (some (26, word810_0_1, 810, 3))

def word810_0_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def word810_0_4 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_2 word810_0_3

def word810_0_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 106 (Flapjack.WordLangExpHOL.const 720#64)

def word810_0_6 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_4 word810_0_5

def word810_0_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 106

def word810_0_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word810_0_0, 810, 4)) (some 68) ([106]) (some (106, word810_0_7, 810, 5))

def word810_0_9 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_5 word810_0_8

def word810_0_10 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_6 word810_0_9

def word810_0_11 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_10 word810_0_3

def word810_0_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 106 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 4))

def word810_0_13 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_11 word810_0_12

def word810_0_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 8#64]))

def word810_0_15 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_13 word810_0_14

def word810_0_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 148
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 16#64]))

def word810_0_17 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_15 word810_0_16

def word810_0_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 24#64]))

def word810_0_19 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_17 word810_0_18

def word810_0_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 32#64]))

def word810_0_21 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_19 word810_0_20

def word810_0_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 40#64]))

def word810_0_23 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_21 word810_0_22

def word810_0_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 138
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64]))

def word810_0_25 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_23 word810_0_24

def word810_0_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def word810_0_27 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_25 word810_0_26

def word810_0_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 116
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def word810_0_29 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_27 word810_0_28

def word810_0_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def word810_0_31 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_29 word810_0_30

def word810_0_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 158
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 32#64]))

def word810_0_33 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_31 word810_0_32

def word810_0_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 40#64]))

def word810_0_35 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_33 word810_0_34

def word810_0_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 90
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 96#64]))

def word810_0_37 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_35 word810_0_36

def word810_0_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 96#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def word810_0_39 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_37 word810_0_38

def word810_0_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 132
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 96#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def word810_0_41 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_39 word810_0_40

def word810_0_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 96#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def word810_0_43 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_41 word810_0_42

def word810_0_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 112
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 96#64],
        Flapjack.WordLangExpHOL.const 32#64]))

def word810_0_45 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_43 word810_0_44

def word810_0_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 96#64],
        Flapjack.WordLangExpHOL.const 40#64]))

def word810_0_47 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_45 word810_0_46

def word810_0_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 154 (Flapjack.WordLangExpHOL.var 90)

def word810_0_49 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_47 word810_0_48

def word810_0_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 50)

def word810_0_51 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_49 word810_0_50

def word810_0_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.var 132)

def word810_0_53 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_51 word810_0_52

def word810_0_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 32)

def word810_0_55 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_53 word810_0_54

def word810_0_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 144 (Flapjack.WordLangExpHOL.var 112)

def word810_0_57 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_55 word810_0_56

def word810_0_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 72)

def word810_0_59 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_57 word810_0_58

def word810_0_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122 (Flapjack.WordLangExpHOL.var 26)

def word810_0_61 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_59 word810_0_60

def word810_0_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82 (Flapjack.WordLangExpHOL.var 154)

def word810_0_63 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_61 word810_0_62

def word810_0_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164 (Flapjack.WordLangExpHOL.var 22)

def word810_0_65 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_63 word810_0_64

def word810_0_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 102)

def word810_0_67 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_65 word810_0_66

def word810_0_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 88 (Flapjack.WordLangExpHOL.var 62)

def word810_0_69 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_67 word810_0_68

def word810_0_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 144)

def word810_0_71 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_69 word810_0_70

def word810_0_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 130 (Flapjack.WordLangExpHOL.var 42)

def word810_0_73 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_71 word810_0_72

def word810_0_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 82)

def word810_0_75 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_73 word810_0_74

def word810_0_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 122) 30

def word810_0_77 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_75 word810_0_76

def word810_0_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 164)

def word810_0_79 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_77 word810_0_78

def word810_0_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 122, Flapjack.WordLangExpHOL.const 8#64])
  30

def word810_0_81 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_79 word810_0_80

def word810_0_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 8)

def word810_0_83 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_81 word810_0_82

def word810_0_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 122, Flapjack.WordLangExpHOL.const 16#64])
  30

def word810_0_85 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_83 word810_0_84

def word810_0_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 88)

def word810_0_87 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_85 word810_0_86

def word810_0_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 122, Flapjack.WordLangExpHOL.const 24#64])
  30

def word810_0_89 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_87 word810_0_88

def word810_0_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 48)

def word810_0_91 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_89 word810_0_90

def word810_0_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 122, Flapjack.WordLangExpHOL.const 32#64])
  30

def word810_0_93 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_91 word810_0_92

def word810_0_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 130)

def word810_0_95 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_93 word810_0_94

def word810_0_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 122, Flapjack.WordLangExpHOL.const 40#64])
  30

def word810_0_97 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_95 word810_0_96

def word810_0_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122 (Flapjack.WordLangExpHOL.const 1#64)

def word810_0_99 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_97 word810_0_98

def word810_0_100 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_99 word810_0_3

def word810_0_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164 (Flapjack.WordLangExpHOL.var 122)

def word810_0_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 15#64)

def word810_0_103 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_101 word810_0_102

def word810_0_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164 (Flapjack.WordLangExpHOL.const 1#64)

def word810_0_105 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_104 word810_0_3

def word810_0_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 88 (Flapjack.WordLangExpHOL.const 1#64)

def word810_0_107 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_105 word810_0_106

def word810_0_108 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_107 word810_0_62

def word810_0_109 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_108 word810_0_64

def word810_0_110 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_109 word810_0_66

def word810_0_111 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_110 word810_0_68

def word810_0_112 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_111 word810_0_70

def word810_0_113 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_112 word810_0_72

def word810_0_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 90)

def word810_0_115 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_113 word810_0_114

def word810_0_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 110 (Flapjack.WordLangExpHOL.var 50)

def word810_0_117 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_115 word810_0_116

def word810_0_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 132)

def word810_0_119 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_117 word810_0_118

def word810_0_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 152 (Flapjack.WordLangExpHOL.var 32)

def word810_0_121 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_119 word810_0_120

def word810_0_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 112)

def word810_0_123 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_121 word810_0_122

def word810_0_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 100 (Flapjack.WordLangExpHOL.var 72)

def word810_0_125 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_123 word810_0_124

def word810_0_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 82

def word810_0_127 : WordLangProgHOL (BitVec 64) :=
.call (some (([154, 22, 102, 62, 144, 42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word810_0_0, 810, 6)) (some 724) ([82, 164, 8, 88, 48, 130, 30, 110, 70, 152, 20, 100]) (some (82, word810_0_126, 810, 7))

def word810_0_128 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_125 word810_0_127

def word810_0_129 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_128 word810_0_3

def word810_0_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82 (Flapjack.WordLangExpHOL.var 122)

def word810_0_131 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_129 word810_0_130

def word810_0_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164 (Flapjack.WordLangExpHOL.const 48#64)

def word810_0_133 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_131 word810_0_132

def word810_0_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 8 8 82 164))

def word810_0_135 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_133 word810_0_134

def word810_0_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 88
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.var 8])

def word810_0_137 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_135 word810_0_136

def word810_0_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 154)

def word810_0_139 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_137 word810_0_138

def word810_0_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 130 (Flapjack.WordLangExpHOL.var 22)

def word810_0_141 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_139 word810_0_140

def word810_0_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 102)

def word810_0_143 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_141 word810_0_142

def word810_0_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 110 (Flapjack.WordLangExpHOL.var 62)

def word810_0_145 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_143 word810_0_144

def word810_0_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 144)

def word810_0_147 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_145 word810_0_146

def word810_0_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 152 (Flapjack.WordLangExpHOL.var 42)

def word810_0_149 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_147 word810_0_148

def word810_0_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 48)

def word810_0_151 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_149 word810_0_150

def word810_0_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 88) 20

def word810_0_153 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_151 word810_0_152

def word810_0_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 130)

def word810_0_155 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_153 word810_0_154

def word810_0_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 88, Flapjack.WordLangExpHOL.const 8#64])
  20

def word810_0_157 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_155 word810_0_156

def word810_0_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 30)

def word810_0_159 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_157 word810_0_158

def word810_0_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 88, Flapjack.WordLangExpHOL.const 16#64])
  20

def word810_0_161 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_159 word810_0_160

def word810_0_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 110)

def word810_0_163 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_161 word810_0_162

def word810_0_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 88, Flapjack.WordLangExpHOL.const 24#64])
  20

def word810_0_165 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_163 word810_0_164

def word810_0_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 70)

def word810_0_167 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_165 word810_0_166

def word810_0_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 88, Flapjack.WordLangExpHOL.const 32#64])
  20

def word810_0_169 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_167 word810_0_168

def word810_0_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 152)

def word810_0_171 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_169 word810_0_170

def word810_0_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 88, Flapjack.WordLangExpHOL.const 40#64])
  20

def word810_0_173 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_171 word810_0_172

def word810_0_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 122, Flapjack.WordLangExpHOL.const 1#64])

def word810_0_175 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_173 word810_0_174

def word810_0_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122 (Flapjack.WordLangExpHOL.var 82)

def word810_0_177 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_175 word810_0_176

def word810_0_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def word810_0_179 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_177 word810_0_178

def word810_0_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164 (Flapjack.WordLangExpHOL.const 0#64)

def word810_0_181 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_180 word810_0_3

def word810_0_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 88 (Flapjack.WordLangExpHOL.const 0#64)

def word810_0_183 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_181 word810_0_182

def word810_0_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def word810_0_185 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_183 word810_0_184

def word810_0_186 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 164 (Flapjack.WordRegImm.reg 8) word810_0_179 word810_0_185

def word810_0_187 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_103 word810_0_186

def word810_0_188 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_187 word810_0_3

def word810_0_189 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))))
  PUnit.unit Flapjack.Spt.ln) word810_0_188 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))))
  PUnit.unit Flapjack.Spt.ln)

def word810_0_190 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_100 word810_0_189

def word810_0_191 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_190 word810_0_3

def word810_0_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 1904#64])

def word810_0_193 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_191 word810_0_192

def word810_0_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 110 (Flapjack.WordLangExpHOL.const 12#64)

def word810_0_195 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_193 word810_0_194

def word810_0_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 106)

def word810_0_197 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_195 word810_0_196

def word810_0_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 152 (Flapjack.WordLangExpHOL.var 66)

def word810_0_199 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_197 word810_0_198

def word810_0_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 148)

def word810_0_201 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_199 word810_0_200

def word810_0_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 100 (Flapjack.WordLangExpHOL.var 16)

def word810_0_203 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_201 word810_0_202

def word810_0_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 96)

def word810_0_205 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_203 word810_0_204

def word810_0_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142 (Flapjack.WordLangExpHOL.var 56)

def word810_0_207 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_205 word810_0_206

def word810_0_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 26)

def word810_0_209 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_207 word810_0_208

def word810_0_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def word810_0_211 : WordLangProgHOL (BitVec 64) :=
.call (some (([82, 164, 8, 88, 48, 130]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word810_0_0, 810, 8)) (some 809) ([30, 110, 70, 152, 20, 100, 60, 142, 40]) (some (30, word810_0_210, 810, 9))

def word810_0_212 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_194 word810_0_211

def word810_0_213 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_209 word810_0_212

def word810_0_214 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_213 word810_0_3

def word810_0_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 2480#64])

def word810_0_216 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_214 word810_0_215

def word810_0_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142 (Flapjack.WordLangExpHOL.const 11#64)

def word810_0_218 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_216 word810_0_217

def word810_0_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 106)

def word810_0_220 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_218 word810_0_219

def word810_0_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 120 (Flapjack.WordLangExpHOL.var 66)

def word810_0_222 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_220 word810_0_221

def word810_0_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.var 148)

def word810_0_224 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_222 word810_0_223

def word810_0_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 162 (Flapjack.WordLangExpHOL.var 16)

def word810_0_226 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_224 word810_0_225

def word810_0_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 96)

def word810_0_228 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_226 word810_0_227

def word810_0_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.var 56)

def word810_0_230 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_228 word810_0_229

def word810_0_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 26)

def word810_0_232 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_230 word810_0_231

def word810_0_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 60

def word810_0_234 : WordLangProgHOL (BitVec 64) :=
.call (some (([30, 110, 70, 152, 20, 100]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word810_0_0, 810, 10)) (some 809) ([60, 142, 40, 120, 80, 162, 14, 94, 54]) (some (60, word810_0_233, 810, 11))

def word810_0_235 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_217 word810_0_234

def word810_0_236 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_232 word810_0_235

def word810_0_237 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_236 word810_0_3

def word810_0_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3008#64])

def word810_0_239 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_237 word810_0_238

def word810_0_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.const 16#64)

def word810_0_241 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_239 word810_0_240

def word810_0_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 106)

def word810_0_243 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_241 word810_0_242

def word810_0_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 136 (Flapjack.WordLangExpHOL.var 66)

def word810_0_245 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_243 word810_0_244

def word810_0_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 148)

def word810_0_247 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_245 word810_0_246

def word810_0_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 114 (Flapjack.WordLangExpHOL.var 16)

def word810_0_249 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_247 word810_0_248

def word810_0_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 96)

def word810_0_251 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_249 word810_0_250

def word810_0_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 156 (Flapjack.WordLangExpHOL.var 56)

def word810_0_253 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_251 word810_0_252

def word810_0_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 26)

def word810_0_255 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_253 word810_0_254

def word810_0_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def word810_0_257 : WordLangProgHOL (BitVec 64) :=
.call (some (([60, 142, 40, 120, 80, 162]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word810_0_0, 810, 12)) (some 809) ([14, 94, 54, 136, 34, 114, 74, 156, 24]) (some (14, word810_0_256, 810, 13))

def word810_0_258 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_240 word810_0_257

def word810_0_259 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_255 word810_0_258

def word810_0_260 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_259 word810_0_3

def word810_0_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3776#64])

def word810_0_262 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_260 word810_0_261

def word810_0_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 156 (Flapjack.WordLangExpHOL.const 16#64)

def word810_0_264 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_262 word810_0_263

def word810_0_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 106)

def word810_0_266 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_264 word810_0_265

def word810_0_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 104 (Flapjack.WordLangExpHOL.var 66)

def word810_0_268 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_266 word810_0_267

def word810_0_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 148)

def word810_0_270 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_268 word810_0_269

def word810_0_271 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 146 (Flapjack.WordLangExpHOL.var 16)

def word810_0_272 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_270 word810_0_271

def word810_0_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 96)

def word810_0_274 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_272 word810_0_273

def word810_0_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 124 (Flapjack.WordLangExpHOL.var 56)

def word810_0_276 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_274 word810_0_275

def word810_0_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 84 (Flapjack.WordLangExpHOL.var 26)

def word810_0_278 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_276 word810_0_277

def word810_0_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 74

def word810_0_280 : WordLangProgHOL (BitVec 64) :=
.call (some (([14, 94, 54, 136, 34, 114]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word810_0_0, 810, 14)) (some 809) ([74, 156, 24, 104, 64, 146, 44, 124, 84]) (some (74, word810_0_279, 810, 15))

def word810_0_281 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_263 word810_0_280

def word810_0_282 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_278 word810_0_281

def word810_0_283 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_282 word810_0_3

def word810_0_284 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 30)

def word810_0_285 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_283 word810_0_284

def word810_0_286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 156 (Flapjack.WordLangExpHOL.var 110)

def word810_0_287 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_285 word810_0_286

def word810_0_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 70)

def word810_0_289 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_287 word810_0_288

def word810_0_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 104 (Flapjack.WordLangExpHOL.var 152)

def word810_0_291 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_289 word810_0_290

def word810_0_292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 20)

def word810_0_293 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_291 word810_0_292

def word810_0_294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 146 (Flapjack.WordLangExpHOL.var 100)

def word810_0_295 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_293 word810_0_294

def word810_0_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 90)

def word810_0_297 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_295 word810_0_296

def word810_0_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 124 (Flapjack.WordLangExpHOL.var 50)

def word810_0_299 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_297 word810_0_298

def word810_0_300 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 84 (Flapjack.WordLangExpHOL.var 132)

def word810_0_301 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_299 word810_0_300

def word810_0_302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 166 (Flapjack.WordLangExpHOL.var 32)

def word810_0_303 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_301 word810_0_302

def word810_0_304 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 112)

def word810_0_305 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_303 word810_0_304

def word810_0_306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.var 72)

def word810_0_307 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_305 word810_0_306

def word810_0_308 : WordLangProgHOL (BitVec 64) :=
.call (some (([30, 110, 70, 152, 20, 100]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word810_0_0, 810, 16)) (some 724) ([74, 156, 24, 104, 64, 146, 44, 124, 84, 166, 6, 86]) (some (74, word810_0_279, 810, 17))

def word810_0_309 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_307 word810_0_308

def word810_0_310 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_309 word810_0_3

def word810_0_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 60)

def word810_0_312 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_310 word810_0_311

def word810_0_313 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 156 (Flapjack.WordLangExpHOL.var 142)

def word810_0_314 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_312 word810_0_313

def word810_0_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 40)

def word810_0_316 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_314 word810_0_315

def word810_0_317 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 104 (Flapjack.WordLangExpHOL.var 120)

def word810_0_318 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_316 word810_0_317

def word810_0_319 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 80)

def word810_0_320 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_318 word810_0_319

def word810_0_321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 146 (Flapjack.WordLangExpHOL.var 162)

def word810_0_322 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_320 word810_0_321

def word810_0_323 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 138)

def word810_0_324 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_322 word810_0_323

def word810_0_325 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 124 (Flapjack.WordLangExpHOL.var 36)

def word810_0_326 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_324 word810_0_325

def word810_0_327 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 84 (Flapjack.WordLangExpHOL.var 116)

def word810_0_328 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_326 word810_0_327

def word810_0_329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 166 (Flapjack.WordLangExpHOL.var 76)

def word810_0_330 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_328 word810_0_329

def word810_0_331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 158)

def word810_0_332 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_330 word810_0_331

def word810_0_333 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.var 10)

def word810_0_334 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_332 word810_0_333

def word810_0_335 : WordLangProgHOL (BitVec 64) :=
.call (some (([60, 142, 40, 120, 80, 162]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word810_0_0, 810, 18)) (some 724) ([74, 156, 24, 104, 64, 146, 44, 124, 84, 166, 6, 86]) (some (74, word810_0_279, 810, 19))

def word810_0_336 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_334 word810_0_335

def word810_0_337 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_336 word810_0_3

def word810_0_338 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 14)

def word810_0_339 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_337 word810_0_338

def word810_0_340 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 156 (Flapjack.WordLangExpHOL.var 94)

def word810_0_341 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_339 word810_0_340

def word810_0_342 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 54)

def word810_0_343 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_341 word810_0_342

def word810_0_344 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 104 (Flapjack.WordLangExpHOL.var 136)

def word810_0_345 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_343 word810_0_344

def word810_0_346 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 34)

def word810_0_347 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_345 word810_0_346

def word810_0_348 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 146 (Flapjack.WordLangExpHOL.var 114)

def word810_0_349 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_347 word810_0_348

def word810_0_350 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_349 word810_0_296

def word810_0_351 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_350 word810_0_298

def word810_0_352 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_351 word810_0_300

def word810_0_353 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_352 word810_0_302

def word810_0_354 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_353 word810_0_304

def word810_0_355 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_354 word810_0_306

def word810_0_356 : WordLangProgHOL (BitVec 64) :=
.call (some (([14, 94, 54, 136, 34, 114]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word810_0_0, 810, 20)) (some 724) ([74, 156, 24, 104, 64, 146, 44, 124, 84, 166, 6, 86]) (some (74, word810_0_279, 810, 21))

def word810_0_357 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_355 word810_0_356

def word810_0_358 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_357 word810_0_3

def word810_0_359 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 82)

def word810_0_360 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_358 word810_0_359

def word810_0_361 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 124 (Flapjack.WordLangExpHOL.var 164)

def word810_0_362 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_360 word810_0_361

def word810_0_363 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 84 (Flapjack.WordLangExpHOL.var 8)

def word810_0_364 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_362 word810_0_363

def word810_0_365 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 166 (Flapjack.WordLangExpHOL.var 88)

def word810_0_366 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_364 word810_0_365

def word810_0_367 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 48)

def word810_0_368 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_366 word810_0_367

def word810_0_369 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.var 130)

def word810_0_370 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_368 word810_0_369

def word810_0_371 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 14)

def word810_0_372 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_370 word810_0_371

def word810_0_373 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 128 (Flapjack.WordLangExpHOL.var 94)

def word810_0_374 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_372 word810_0_373

def word810_0_375 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 54)

def word810_0_376 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_374 word810_0_375

def word810_0_377 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108 (Flapjack.WordLangExpHOL.var 136)

def word810_0_378 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_376 word810_0_377

def word810_0_379 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 34)

def word810_0_380 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_378 word810_0_379

def word810_0_381 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 150 (Flapjack.WordLangExpHOL.var 114)

def word810_0_382 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_380 word810_0_381

def word810_0_383 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 44

def word810_0_384 : WordLangProgHOL (BitVec 64) :=
.call (some (([74, 156, 24, 104, 64, 146]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              Flapjack.Spt.ln))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word810_0_0, 810, 22)) (some 724) ([44, 124, 84, 166, 6, 86, 46, 128, 28, 108, 68, 150]) (some (44, word810_0_383, 810, 23))

def word810_0_385 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_382 word810_0_384

def word810_0_386 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_385 word810_0_3

def word810_0_387 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 30)

def word810_0_388 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_386 word810_0_387

def word810_0_389 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 128 (Flapjack.WordLangExpHOL.var 110)

def word810_0_390 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_388 word810_0_389

def word810_0_391 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 70)

def word810_0_392 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_390 word810_0_391

def word810_0_393 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108 (Flapjack.WordLangExpHOL.var 152)

def word810_0_394 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_392 word810_0_393

def word810_0_395 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 20)

def word810_0_396 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_394 word810_0_395

def word810_0_397 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 150 (Flapjack.WordLangExpHOL.var 100)

def word810_0_398 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_396 word810_0_397

def word810_0_399 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 60)

def word810_0_400 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_398 word810_0_399

def word810_0_401 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.var 142)

def word810_0_402 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_400 word810_0_401

def word810_0_403 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 40)

def word810_0_404 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_402 word810_0_403

def word810_0_405 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.var 120)

def word810_0_406 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_404 word810_0_405

def word810_0_407 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 80)

def word810_0_408 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_406 word810_0_407

def word810_0_409 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 118 (Flapjack.WordLangExpHOL.var 162)

def word810_0_410 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_408 word810_0_409

def word810_0_411 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 46

def word810_0_412 : WordLangProgHOL (BitVec 64) :=
.call (some (([44, 124, 84, 166, 6, 86]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word810_0_0, 810, 24)) (some 724) ([46, 128, 28, 108, 68, 150, 18, 98, 58, 140, 38, 118]) (some (46, word810_0_411, 810, 25))

def word810_0_413 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_410 word810_0_412

def word810_0_414 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_413 word810_0_3

def word810_0_415 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 30)

def word810_0_416 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_414 word810_0_415

def word810_0_417 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.var 110)

def word810_0_418 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_416 word810_0_417

def word810_0_419 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 70)

def word810_0_420 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_418 word810_0_419

def word810_0_421 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.var 152)

def word810_0_422 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_420 word810_0_421

def word810_0_423 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 20)

def word810_0_424 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_422 word810_0_423

def word810_0_425 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 118 (Flapjack.WordLangExpHOL.var 100)

def word810_0_426 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_424 word810_0_425

def word810_0_427 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 14)

def word810_0_428 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_426 word810_0_427

def word810_0_429 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 160 (Flapjack.WordLangExpHOL.var 94)

def word810_0_430 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_428 word810_0_429

def word810_0_431 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 54)

def word810_0_432 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_430 word810_0_431

def word810_0_433 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.var 136)

def word810_0_434 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_432 word810_0_433

def word810_0_435 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 34)

def word810_0_436 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_434 word810_0_435

def word810_0_437 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 134 (Flapjack.WordLangExpHOL.var 114)

def word810_0_438 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_436 word810_0_437

def word810_0_439 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def word810_0_440 : WordLangProgHOL (BitVec 64) :=
.call (some (([46, 128, 28, 108, 68, 150]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word810_0_0, 810, 26)) (some 724) ([18, 98, 58, 140, 38, 118, 78, 160, 12, 92, 52, 134]) (some (18, word810_0_439, 810, 27))

def word810_0_441 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_438 word810_0_440

def word810_0_442 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_441 word810_0_3

def word810_0_443 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 2)

def word810_0_444 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_442 word810_0_443

def word810_0_445 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.var 74)

def word810_0_446 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_444 word810_0_445

def word810_0_447 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 156)

def word810_0_448 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_446 word810_0_447

def word810_0_449 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.var 24)

def word810_0_450 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_448 word810_0_449

def word810_0_451 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 104)

def word810_0_452 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_450 word810_0_451

def word810_0_453 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 118 (Flapjack.WordLangExpHOL.var 64)

def word810_0_454 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_452 word810_0_453

def word810_0_455 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 146)

def word810_0_456 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_454 word810_0_455

def word810_0_457 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 160 (Flapjack.WordLangExpHOL.var 98)

def word810_0_458 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_456 word810_0_457

def word810_0_459 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 18) 160

def word810_0_460 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_458 word810_0_459

def word810_0_461 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 160 (Flapjack.WordLangExpHOL.var 58)

def word810_0_462 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_460 word810_0_461

def word810_0_463 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 8#64])
  160

def word810_0_464 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_462 word810_0_463

def word810_0_465 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 160 (Flapjack.WordLangExpHOL.var 140)

def word810_0_466 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_464 word810_0_465

def word810_0_467 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 16#64])
  160

def word810_0_468 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_466 word810_0_467

def word810_0_469 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 160 (Flapjack.WordLangExpHOL.var 38)

def word810_0_470 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_468 word810_0_469

def word810_0_471 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 24#64])
  160

def word810_0_472 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_470 word810_0_471

def word810_0_473 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 160 (Flapjack.WordLangExpHOL.var 118)

def word810_0_474 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_472 word810_0_473

def word810_0_475 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 32#64])
  160

def word810_0_476 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_474 word810_0_475

def word810_0_477 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 160 (Flapjack.WordLangExpHOL.var 78)

def word810_0_478 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_476 word810_0_477

def word810_0_479 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 40#64])
  160

def word810_0_480 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_478 word810_0_479

def word810_0_481 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64])

def word810_0_482 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_480 word810_0_481

def word810_0_483 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.var 44)

def word810_0_484 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_482 word810_0_483

def word810_0_485 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 124)

def word810_0_486 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_484 word810_0_485

def word810_0_487 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.var 84)

def word810_0_488 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_486 word810_0_487

def word810_0_489 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 166)

def word810_0_490 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_488 word810_0_489

def word810_0_491 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 118 (Flapjack.WordLangExpHOL.var 6)

def word810_0_492 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_490 word810_0_491

def word810_0_493 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 86)

def word810_0_494 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_492 word810_0_493

def word810_0_495 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_494 word810_0_457

def word810_0_496 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_495 word810_0_459

def word810_0_497 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_496 word810_0_461

def word810_0_498 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_497 word810_0_463

def word810_0_499 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_498 word810_0_465

def word810_0_500 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_499 word810_0_467

def word810_0_501 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_500 word810_0_469

def word810_0_502 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_501 word810_0_471

def word810_0_503 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_502 word810_0_473

def word810_0_504 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_503 word810_0_475

def word810_0_505 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_504 word810_0_477

def word810_0_506 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_505 word810_0_479

def word810_0_507 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 96#64])

def word810_0_508 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_506 word810_0_507

def word810_0_509 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.var 46)

def word810_0_510 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_508 word810_0_509

def word810_0_511 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 128)

def word810_0_512 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_510 word810_0_511

def word810_0_513 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.var 28)

def word810_0_514 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_512 word810_0_513

def word810_0_515 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 108)

def word810_0_516 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_514 word810_0_515

def word810_0_517 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 118 (Flapjack.WordLangExpHOL.var 68)

def word810_0_518 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_516 word810_0_517

def word810_0_519 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 150)

def word810_0_520 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_518 word810_0_519

def word810_0_521 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_520 word810_0_457

def word810_0_522 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_521 word810_0_459

def word810_0_523 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_522 word810_0_461

def word810_0_524 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_523 word810_0_463

def word810_0_525 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_524 word810_0_465

def word810_0_526 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_525 word810_0_467

def word810_0_527 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_526 word810_0_469

def word810_0_528 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_527 word810_0_471

def word810_0_529 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_528 word810_0_473

def word810_0_530 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_529 word810_0_475

def word810_0_531 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_530 word810_0_477

def word810_0_532 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_531 word810_0_479

def word810_0_533 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.var 126)

def word810_0_534 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_532 word810_0_533

def word810_0_535 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 98

def word810_0_536 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word810_0_0, 810, 28)) (some 70) ([98]) (some (98, word810_0_535, 810, 29))

def word810_0_537 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_534 word810_0_536

def word810_0_538 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_537 word810_0_3

def word810_0_539 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def word810_0_540 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_538 word810_0_539

def word810_0_541 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18]

def word810_0_542 : WordLangProgHOL (BitVec 64) :=
.seq word810_0_540 word810_0_541

def pass810_0 : WordLangProgHOL (BitVec 64) :=
word810_0_542
theorem pass810_0_eq : WordSimp.compileExp (source810.2.2) = pass810_0 := by
  kernel_rfl
#print axioms pass810_0_eq
end InitECandidate.Proofs.WordStages
