import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Source692
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def word692_0_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 2)

def word692_0_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.const 1#64)

def word692_0_2 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_0 word692_0_1

def word692_0_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 1#64)

def word692_0_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def word692_0_5 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_3 word692_0_4

def word692_0_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def word692_0_7 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_5 word692_0_6

def word692_0_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 64#64]))

def word692_0_9 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_7 word692_0_8

def word692_0_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 64#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def word692_0_11 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_9 word692_0_10

def word692_0_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 64#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def word692_0_13 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_11 word692_0_12

def word692_0_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 64#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def word692_0_15 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_13 word692_0_14

def word692_0_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 68)

def word692_0_17 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_15 word692_0_16

def word692_0_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.var 44)

def word692_0_19 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_17 word692_0_18

def word692_0_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 92)

def word692_0_21 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_19 word692_0_20

def word692_0_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 16)

def word692_0_23 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_21 word692_0_22

def word692_0_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def word692_0_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 38

def word692_0_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([62]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 2)) (some 102) ([38, 86, 26, 74]) (some (38, word692_0_25, 692, 3))

def word692_0_27 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_23 word692_0_26

def word692_0_28 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_27 word692_0_4

def word692_0_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.var 62)

def word692_0_30 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_28 word692_0_29

def word692_0_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def word692_0_32 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_30 word692_0_31

def word692_0_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.const 1#64)

def word692_0_34 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_33 word692_0_4

def word692_0_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.const 1#64)

def word692_0_36 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_34 word692_0_35

def word692_0_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 4)

def word692_0_38 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_36 word692_0_37

def word692_0_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 8))

def word692_0_40 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_38 word692_0_39

def word692_0_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 8#64]))

def word692_0_42 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_40 word692_0_41

def word692_0_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 16#64]))

def word692_0_44 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_42 word692_0_43

def word692_0_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 24#64]))

def word692_0_46 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_44 word692_0_45

def word692_0_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.var 86)

def word692_0_48 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_46 word692_0_47

def word692_0_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 38) 98

def word692_0_50 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_48 word692_0_49

def word692_0_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.var 26)

def word692_0_52 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_50 word692_0_51

def word692_0_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 8#64])
  98

def word692_0_54 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_52 word692_0_53

def word692_0_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.var 74)

def word692_0_56 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_54 word692_0_55

def word692_0_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 16#64])
  98

def word692_0_58 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_56 word692_0_57

def word692_0_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.var 50)

def word692_0_60 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_58 word692_0_59

def word692_0_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 24#64])
  98

def word692_0_62 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_60 word692_0_61

def word692_0_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 32#64])

def word692_0_64 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_62 word692_0_63

def word692_0_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 32#64]))

def word692_0_66 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_64 word692_0_65

def word692_0_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 32#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def word692_0_68 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_66 word692_0_67

def word692_0_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 32#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def word692_0_70 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_68 word692_0_69

def word692_0_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 32#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def word692_0_72 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_70 word692_0_71

def word692_0_73 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_72 word692_0_47

def word692_0_74 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_73 word692_0_49

def word692_0_75 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_74 word692_0_51

def word692_0_76 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_75 word692_0_53

def word692_0_77 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_76 word692_0_55

def word692_0_78 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_77 word692_0_57

def word692_0_79 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_78 word692_0_59

def word692_0_80 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_79 word692_0_61

def word692_0_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 64#64])

def word692_0_82 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_80 word692_0_81

def word692_0_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 64#64]))

def word692_0_84 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_82 word692_0_83

def word692_0_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 64#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def word692_0_86 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_84 word692_0_85

def word692_0_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 64#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def word692_0_88 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_86 word692_0_87

def word692_0_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 64#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def word692_0_90 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_88 word692_0_89

def word692_0_91 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_90 word692_0_47

def word692_0_92 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_91 word692_0_49

def word692_0_93 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_92 word692_0_51

def word692_0_94 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_93 word692_0_53

def word692_0_95 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_94 word692_0_55

def word692_0_96 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_95 word692_0_57

def word692_0_97 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_96 word692_0_59

def word692_0_98 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_97 word692_0_61

def word692_0_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 0#64)

def word692_0_100 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_98 word692_0_99

def word692_0_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [38]

def word692_0_102 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_100 word692_0_101

def word692_0_103 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 86 (Flapjack.WordRegImm.reg 26) word692_0_102 word692_0_24

def word692_0_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.const 0#64)

def word692_0_105 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_104 word692_0_4

def word692_0_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.const 0#64)

def word692_0_107 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_105 word692_0_106

def word692_0_108 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_103 word692_0_107

def word692_0_109 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_32 word692_0_108

def word692_0_110 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_109 word692_0_4

def word692_0_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 64#64]))

def word692_0_112 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_110 word692_0_111

def word692_0_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 64#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def word692_0_114 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_112 word692_0_113

def word692_0_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 64#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def word692_0_116 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_114 word692_0_115

def word692_0_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 64#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def word692_0_118 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_116 word692_0_117

def word692_0_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.var 38)

def word692_0_120 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_118 word692_0_119

def word692_0_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 86)

def word692_0_122 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_120 word692_0_121

def word692_0_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 26)

def word692_0_124 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_122 word692_0_123

def word692_0_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 74)

def word692_0_126 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_124 word692_0_125

def word692_0_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 98

def word692_0_128 : WordLangProgHOL (BitVec 64) :=
.call (some (([50]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 4)) (some 102) ([98, 12, 58, 34]) (some (98, word692_0_127, 692, 5))

def word692_0_129 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_126 word692_0_128

def word692_0_130 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_129 word692_0_4

def word692_0_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 50)

def word692_0_132 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_130 word692_0_131

def word692_0_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 1#64)

def word692_0_134 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_132 word692_0_133

def word692_0_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def word692_0_136 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_135 word692_0_4

def word692_0_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 1#64)

def word692_0_138 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_136 word692_0_137

def word692_0_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.var 4)

def word692_0_140 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_138 word692_0_139

def word692_0_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 6))

def word692_0_142 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_140 word692_0_141

def word692_0_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 8#64]))

def word692_0_144 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_142 word692_0_143

def word692_0_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 16#64]))

def word692_0_146 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_144 word692_0_145

def word692_0_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 24#64]))

def word692_0_148 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_146 word692_0_147

def word692_0_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 12)

def word692_0_150 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_148 word692_0_149

def word692_0_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 98) 24

def word692_0_152 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_150 word692_0_151

def word692_0_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 58)

def word692_0_154 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_152 word692_0_153

def word692_0_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 98, Flapjack.WordLangExpHOL.const 8#64])
  24

def word692_0_156 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_154 word692_0_155

def word692_0_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 34)

def word692_0_158 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_156 word692_0_157

def word692_0_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 98, Flapjack.WordLangExpHOL.const 16#64])
  24

def word692_0_160 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_158 word692_0_159

def word692_0_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 82)

def word692_0_162 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_160 word692_0_161

def word692_0_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 98, Flapjack.WordLangExpHOL.const 24#64])
  24

def word692_0_164 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_162 word692_0_163

def word692_0_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 32#64])

def word692_0_166 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_164 word692_0_165

def word692_0_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 32#64]))

def word692_0_168 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_166 word692_0_167

def word692_0_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 32#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def word692_0_170 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_168 word692_0_169

def word692_0_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 32#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def word692_0_172 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_170 word692_0_171

def word692_0_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 32#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def word692_0_174 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_172 word692_0_173

def word692_0_175 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_174 word692_0_149

def word692_0_176 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_175 word692_0_151

def word692_0_177 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_176 word692_0_153

def word692_0_178 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_177 word692_0_155

def word692_0_179 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_178 word692_0_157

def word692_0_180 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_179 word692_0_159

def word692_0_181 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_180 word692_0_161

def word692_0_182 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_181 word692_0_163

def word692_0_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 64#64])

def word692_0_184 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_182 word692_0_183

def word692_0_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 64#64]))

def word692_0_186 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_184 word692_0_185

def word692_0_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 64#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def word692_0_188 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_186 word692_0_187

def word692_0_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 64#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def word692_0_190 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_188 word692_0_189

def word692_0_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 64#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def word692_0_192 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_190 word692_0_191

def word692_0_193 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_192 word692_0_149

def word692_0_194 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_193 word692_0_151

def word692_0_195 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_194 word692_0_153

def word692_0_196 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_195 word692_0_155

def word692_0_197 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_196 word692_0_157

def word692_0_198 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_197 word692_0_159

def word692_0_199 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_198 word692_0_161

def word692_0_200 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_199 word692_0_163

def word692_0_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.const 0#64)

def word692_0_202 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_200 word692_0_201

def word692_0_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [98]

def word692_0_204 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_202 word692_0_203

def word692_0_205 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 58) word692_0_204 word692_0_24

def word692_0_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def word692_0_207 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_206 word692_0_4

def word692_0_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def word692_0_209 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_207 word692_0_208

def word692_0_210 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_205 word692_0_209

def word692_0_211 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_134 word692_0_210

def word692_0_212 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_211 word692_0_4

def word692_0_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 6))

def word692_0_214 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_212 word692_0_213

def word692_0_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 8#64]))

def word692_0_216 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_214 word692_0_215

def word692_0_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 16#64]))

def word692_0_218 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_216 word692_0_217

def word692_0_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 24#64]))

def word692_0_220 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_218 word692_0_219

def word692_0_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 32#64]))

def word692_0_222 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_220 word692_0_221

def word692_0_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 32#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def word692_0_224 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_222 word692_0_223

def word692_0_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 32#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def word692_0_226 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_224 word692_0_225

def word692_0_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 32#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def word692_0_228 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_226 word692_0_227

def word692_0_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 8))

def word692_0_230 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_228 word692_0_229

def word692_0_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 8#64]))

def word692_0_232 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_230 word692_0_231

def word692_0_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 16#64]))

def word692_0_234 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_232 word692_0_233

def word692_0_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 24#64]))

def word692_0_236 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_234 word692_0_235

def word692_0_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 90
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 32#64]))

def word692_0_238 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_236 word692_0_237

def word692_0_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 32#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def word692_0_240 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_238 word692_0_239

def word692_0_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 32#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def word692_0_242 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_240 word692_0_241

def word692_0_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 32#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def word692_0_244 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_242 word692_0_243

def word692_0_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 68)

def word692_0_246 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_244 word692_0_245

def word692_0_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 44)

def word692_0_248 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_246 word692_0_247

def word692_0_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 92)

def word692_0_250 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_248 word692_0_249

def word692_0_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.var 16)

def word692_0_252 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_250 word692_0_251

def word692_0_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def word692_0_254 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_252 word692_0_253

def word692_0_255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 0#64)

def word692_0_256 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_254 word692_0_255

def word692_0_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 0#64)

def word692_0_258 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_256 word692_0_257

def word692_0_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.const 0#64)

def word692_0_260 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_258 word692_0_259

def word692_0_261 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_260 word692_0_259

def word692_0_262 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_261 word692_0_257

def word692_0_263 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_262 word692_0_255

def word692_0_264 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_263 word692_0_253

def word692_0_265 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_264 word692_0_259

def word692_0_266 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_265 word692_0_257

def word692_0_267 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_266 word692_0_255

def word692_0_268 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_267 word692_0_253

def word692_0_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def word692_0_270 : WordLangProgHOL (BitVec 64) :=
.call (some (([102]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 6)) (some 105) ([10, 56, 32, 80, 22, 70, 46, 94]) (some (10, word692_0_269, 692, 7))

def word692_0_271 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_268 word692_0_270

def word692_0_272 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_271 word692_0_4

def word692_0_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 102)

def word692_0_274 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_272 word692_0_273

def word692_0_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 0#64)

def word692_0_276 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_274 word692_0_275

def word692_0_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 1#64)

def word692_0_278 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_277 word692_0_4

def word692_0_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.const 1#64)

def word692_0_280 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_278 word692_0_279

def word692_0_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 68)

def word692_0_282 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_280 word692_0_281

def word692_0_283 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 44)

def word692_0_284 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_282 word692_0_283

def word692_0_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 92)

def word692_0_286 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_284 word692_0_285

def word692_0_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.var 16)

def word692_0_288 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_286 word692_0_287

def word692_0_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def word692_0_290 : WordLangProgHOL (BitVec 64) :=
.call (some (([10, 56, 32, 80]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 8)) (some 671) ([22, 70, 46, 94]) (some (22, word692_0_289, 692, 9))

def word692_0_291 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_288 word692_0_290

def word692_0_292 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_291 word692_0_4

def word692_0_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 98)

def word692_0_294 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_292 word692_0_293

def word692_0_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 12)

def word692_0_296 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_294 word692_0_295

def word692_0_297 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 58)

def word692_0_298 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_296 word692_0_297

def word692_0_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.var 34)

def word692_0_300 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_298 word692_0_299

def word692_0_301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 10)

def word692_0_302 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_300 word692_0_301

def word692_0_303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 56)

def word692_0_304 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_302 word692_0_303

def word692_0_305 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 32)

def word692_0_306 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_304 word692_0_305

def word692_0_307 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 88 (Flapjack.WordLangExpHOL.var 80)

def word692_0_308 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_306 word692_0_307

def word692_0_309 : WordLangProgHOL (BitVec 64) :=
.call (some (([98, 12, 58, 34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 10)) (some 668) ([22, 70, 46, 94, 18, 64, 40, 88]) (some (22, word692_0_289, 692, 11))

def word692_0_310 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_308 word692_0_309

def word692_0_311 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_310 word692_0_4

def word692_0_312 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 82)

def word692_0_313 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_311 word692_0_312

def word692_0_314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 24)

def word692_0_315 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_313 word692_0_314

def word692_0_316 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 72)

def word692_0_317 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_315 word692_0_316

def word692_0_318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.var 48)

def word692_0_319 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_317 word692_0_318

def word692_0_320 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_319 word692_0_301

def word692_0_321 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_320 word692_0_303

def word692_0_322 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_321 word692_0_305

def word692_0_323 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_322 word692_0_307

def word692_0_324 : WordLangProgHOL (BitVec 64) :=
.call (some (([82, 24, 72, 48]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 12)) (some 668) ([22, 70, 46, 94, 18, 64, 40, 88]) (some (22, word692_0_289, 692, 13))

def word692_0_325 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_323 word692_0_324

def word692_0_326 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_325 word692_0_4

def word692_0_327 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 0#64)

def word692_0_328 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_327 word692_0_4

def word692_0_329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.const 0#64)

def word692_0_330 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_328 word692_0_329

def word692_0_331 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 56 (Flapjack.WordRegImm.reg 32) word692_0_326 word692_0_330

def word692_0_332 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_276 word692_0_331

def word692_0_333 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_332 word692_0_4

def word692_0_334 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 38)

def word692_0_335 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_333 word692_0_334

def word692_0_336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 86)

def word692_0_337 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_335 word692_0_336

def word692_0_338 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.var 26)

def word692_0_339 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_337 word692_0_338

def word692_0_340 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 74)

def word692_0_341 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_339 word692_0_340

def word692_0_342 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 1#64)

def word692_0_343 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_341 word692_0_342

def word692_0_344 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_343 word692_0_257

def word692_0_345 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_344 word692_0_259

def word692_0_346 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def word692_0_347 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_345 word692_0_346

def word692_0_348 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_347 word692_0_346

def word692_0_349 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_348 word692_0_259

def word692_0_350 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_349 word692_0_257

def word692_0_351 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_350 word692_0_342

def word692_0_352 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_351 word692_0_346

def word692_0_353 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_352 word692_0_259

def word692_0_354 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_353 word692_0_257

def word692_0_355 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_354 word692_0_342

def word692_0_356 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 56

def word692_0_357 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 14)) (some 105) ([56, 32, 80, 22, 70, 46, 94, 18]) (some (56, word692_0_356, 692, 15))

def word692_0_358 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_355 word692_0_357

def word692_0_359 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_358 word692_0_4

def word692_0_360 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 10)

def word692_0_361 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_359 word692_0_360

def word692_0_362 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_361 word692_0_329

def word692_0_363 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 1#64)

def word692_0_364 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_363 word692_0_4

def word692_0_365 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_364 word692_0_253

def word692_0_366 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 38)

def word692_0_367 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_365 word692_0_366

def word692_0_368 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 86)

def word692_0_369 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_367 word692_0_368

def word692_0_370 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.var 26)

def word692_0_371 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_369 word692_0_370

def word692_0_372 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 74)

def word692_0_373 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_371 word692_0_372

def word692_0_374 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 70

def word692_0_375 : WordLangProgHOL (BitVec 64) :=
.call (some (([56, 32, 80, 22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 16)) (some 671) ([70, 46, 94, 18]) (some (70, word692_0_374, 692, 17))

def word692_0_376 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_373 word692_0_375

def word692_0_377 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_376 word692_0_4

def word692_0_378 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 96)

def word692_0_379 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_377 word692_0_378

def word692_0_380 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 20)

def word692_0_381 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_379 word692_0_380

def word692_0_382 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.var 66)

def word692_0_383 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_381 word692_0_382

def word692_0_384 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 42)

def word692_0_385 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_383 word692_0_384

def word692_0_386 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_385 word692_0_303

def word692_0_387 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_386 word692_0_305

def word692_0_388 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_387 word692_0_307

def word692_0_389 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 22)

def word692_0_390 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_388 word692_0_389

def word692_0_391 : WordLangProgHOL (BitVec 64) :=
.call (some (([96, 20, 66, 42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 18)) (some 668) ([70, 46, 94, 18, 64, 40, 88, 28]) (some (70, word692_0_374, 692, 19))

def word692_0_392 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_390 word692_0_391

def word692_0_393 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_392 word692_0_4

def word692_0_394 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 90)

def word692_0_395 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_393 word692_0_394

def word692_0_396 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 30)

def word692_0_397 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_395 word692_0_396

def word692_0_398 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.var 78)

def word692_0_399 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_397 word692_0_398

def word692_0_400 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 54)

def word692_0_401 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_399 word692_0_400

def word692_0_402 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_401 word692_0_303

def word692_0_403 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_402 word692_0_305

def word692_0_404 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_403 word692_0_307

def word692_0_405 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_404 word692_0_389

def word692_0_406 : WordLangProgHOL (BitVec 64) :=
.call (some (([90, 30, 78, 54]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 20)) (some 668) ([70, 46, 94, 18, 64, 40, 88, 28]) (some (70, word692_0_374, 692, 21))

def word692_0_407 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_405 word692_0_406

def word692_0_408 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_407 word692_0_4

def word692_0_409 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_275 word692_0_4

def word692_0_410 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def word692_0_411 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_409 word692_0_410

def word692_0_412 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 32 (Flapjack.WordRegImm.reg 80) word692_0_408 word692_0_411

def word692_0_413 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_362 word692_0_412

def word692_0_414 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_413 word692_0_4

def word692_0_415 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 98)

def word692_0_416 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_414 word692_0_415

def word692_0_417 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.var 12)

def word692_0_418 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_416 word692_0_417

def word692_0_419 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 58)

def word692_0_420 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_418 word692_0_419

def word692_0_421 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 34)

def word692_0_422 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_420 word692_0_421

def word692_0_423 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 96)

def word692_0_424 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_422 word692_0_423

def word692_0_425 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.var 20)

def word692_0_426 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_424 word692_0_425

def word692_0_427 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 66)

def word692_0_428 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_426 word692_0_427

def word692_0_429 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 42)

def word692_0_430 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_428 word692_0_429

def word692_0_431 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def word692_0_432 : WordLangProgHOL (BitVec 64) :=
.call (some (([56]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 22)) (some 105) ([32, 80, 22, 70, 46, 94, 18, 64]) (some (32, word692_0_431, 692, 23))

def word692_0_433 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_430 word692_0_432

def word692_0_434 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_433 word692_0_4

def word692_0_435 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.var 56)

def word692_0_436 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_434 word692_0_435

def word692_0_437 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_436 word692_0_253

def word692_0_438 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_279 word692_0_4

def word692_0_439 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_438 word692_0_342

def word692_0_440 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 82)

def word692_0_441 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_439 word692_0_440

def word692_0_442 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.var 24)

def word692_0_443 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_441 word692_0_442

def word692_0_444 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 72)

def word692_0_445 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_443 word692_0_444

def word692_0_446 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 48)

def word692_0_447 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_445 word692_0_446

def word692_0_448 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 90)

def word692_0_449 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_447 word692_0_448

def word692_0_450 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 88 (Flapjack.WordLangExpHOL.var 30)

def word692_0_451 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_449 word692_0_450

def word692_0_452 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 78)

def word692_0_453 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_451 word692_0_452

def word692_0_454 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.var 54)

def word692_0_455 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_453 word692_0_454

def word692_0_456 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 46

def word692_0_457 : WordLangProgHOL (BitVec 64) :=
.call (some (([32, 80, 22, 70]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 24)) (some 665) ([46, 94, 18, 64, 40, 88, 28, 76]) (some (46, word692_0_456, 692, 25))

def word692_0_458 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_455 word692_0_457

def word692_0_459 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_458 word692_0_4

def word692_0_460 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.var 32)

def word692_0_461 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_459 word692_0_460

def word692_0_462 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 80)

def word692_0_463 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_461 word692_0_462

def word692_0_464 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 22)

def word692_0_465 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_463 word692_0_464

def word692_0_466 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 70)

def word692_0_467 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_465 word692_0_466

def word692_0_468 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 94

def word692_0_469 : WordLangProgHOL (BitVec 64) :=
.call (some (([46]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 26)) (some 102) ([94, 18, 64, 40]) (some (94, word692_0_468, 692, 27))

def word692_0_470 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_467 word692_0_469

def word692_0_471 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_470 word692_0_4

def word692_0_472 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 46)

def word692_0_473 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_471 word692_0_472

def word692_0_474 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.const 1#64)

def word692_0_475 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_473 word692_0_474

def word692_0_476 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def word692_0_477 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_476 word692_0_4

def word692_0_478 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 1#64)

def word692_0_479 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_477 word692_0_478

def word692_0_480 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 2)

def word692_0_481 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_479 word692_0_480

def word692_0_482 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 4)

def word692_0_483 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_481 word692_0_482

def word692_0_484 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def word692_0_485 : WordLangProgHOL (BitVec 64) :=
.call (some (([94]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word692_0_24, 692, 28)) (some 687) ([18, 64]) (some (18, word692_0_484, 692, 29))

def word692_0_486 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_483 word692_0_485

def word692_0_487 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_486 word692_0_4

def word692_0_488 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_487 word692_0_259

def word692_0_489 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [94]

def word692_0_490 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_488 word692_0_489

def word692_0_491 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 18 (Flapjack.WordRegImm.reg 64) word692_0_490 word692_0_24

def word692_0_492 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_346 word692_0_4

def word692_0_493 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 0#64)

def word692_0_494 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_492 word692_0_493

def word692_0_495 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_491 word692_0_494

def word692_0_496 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_475 word692_0_495

def word692_0_497 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_496 word692_0_4

def word692_0_498 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 4)

def word692_0_499 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_497 word692_0_498

def word692_0_500 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 98)

def word692_0_501 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_499 word692_0_500

def word692_0_502 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 12)

def word692_0_503 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_501 word692_0_502

def word692_0_504 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 88 (Flapjack.WordLangExpHOL.var 58)

def word692_0_505 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_503 word692_0_504

def word692_0_506 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 34)

def word692_0_507 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_505 word692_0_506

def word692_0_508 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.var 82)

def word692_0_509 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_507 word692_0_508

def word692_0_510 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 24)

def word692_0_511 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_509 word692_0_510

def word692_0_512 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 100 (Flapjack.WordLangExpHOL.var 72)

def word692_0_513 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_511 word692_0_512

def word692_0_514 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 48)

def word692_0_515 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_513 word692_0_514

def word692_0_516 : WordLangProgHOL (BitVec 64) :=
.call (some (([94]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word692_0_24, 692, 30)) (some 689) ([18, 64, 40, 88, 28, 76, 52, 100, 14]) (some (18, word692_0_484, 692, 31))

def word692_0_517 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_515 word692_0_516

def word692_0_518 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_517 word692_0_4

def word692_0_519 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_518 word692_0_259

def word692_0_520 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_519 word692_0_489

def word692_0_521 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 80 (Flapjack.WordRegImm.reg 22) word692_0_520 word692_0_24

def word692_0_522 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_329 word692_0_4

def word692_0_523 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_522 word692_0_255

def word692_0_524 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_521 word692_0_523

def word692_0_525 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_437 word692_0_524

def word692_0_526 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_525 word692_0_4

def word692_0_527 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.var 4)

def word692_0_528 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_526 word692_0_527

def word692_0_529 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_528 word692_0_293

def word692_0_530 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_529 word692_0_295

def word692_0_531 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_530 word692_0_297

def word692_0_532 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_531 word692_0_299

def word692_0_533 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 82)

def word692_0_534 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_532 word692_0_533

def word692_0_535 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 24)

def word692_0_536 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_534 word692_0_535

def word692_0_537 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 72)

def word692_0_538 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_536 word692_0_537

def word692_0_539 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 88 (Flapjack.WordLangExpHOL.var 48)

def word692_0_540 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_538 word692_0_539

def word692_0_541 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 96)

def word692_0_542 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_540 word692_0_541

def word692_0_543 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.var 20)

def word692_0_544 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_542 word692_0_543

def word692_0_545 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 66)

def word692_0_546 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_544 word692_0_545

def word692_0_547 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 100 (Flapjack.WordLangExpHOL.var 42)

def word692_0_548 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_546 word692_0_547

def word692_0_549 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 90)

def word692_0_550 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_548 word692_0_549

def word692_0_551 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 30)

def word692_0_552 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_550 word692_0_551

def word692_0_553 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 78)

def word692_0_554 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_552 word692_0_553

def word692_0_555 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 84 (Flapjack.WordLangExpHOL.var 54)

def word692_0_556 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_554 word692_0_555

def word692_0_557 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 80

def word692_0_558 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word692_0_24, 692, 32)) (some 690) ([80, 22, 70, 46, 94, 18, 64, 40, 88, 28, 76, 52, 100, 14, 60, 36, 84]) (some (80, word692_0_557, 692, 33))

def word692_0_559 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_556 word692_0_558

def word692_0_560 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_559 word692_0_4

def word692_0_561 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_560 word692_0_275

def word692_0_562 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [32]

def word692_0_563 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_561 word692_0_562

def word692_0_564 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 44 (Flapjack.WordRegImm.reg 92) word692_0_563 word692_0_24

def word692_0_565 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 0#64)

def word692_0_566 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_565 word692_0_4

def word692_0_567 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def word692_0_568 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_566 word692_0_567

def word692_0_569 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_564 word692_0_568

def word692_0_570 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_2 word692_0_569

def word692_0_571 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_570 word692_0_4

def word692_0_572 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 2)
    (Flapjack.WordLangExpHOL.const 5#64))

def word692_0_573 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_571 word692_0_572

def word692_0_574 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.var 2)

def word692_0_575 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_573 word692_0_574

def word692_0_576 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 6,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 68)
        (Flapjack.WordLangExpHOL.const 1#64)])

def word692_0_577 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_575 word692_0_576

def word692_0_578 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 92

def word692_0_579 : WordLangProgHOL (BitVec 64) :=
.call (some (([44]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 34)) (some 683) ([92, 16]) (some (92, word692_0_578, 692, 35))

def word692_0_580 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_577 word692_0_579

def word692_0_581 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_580 word692_0_4

def word692_0_582 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 44)

def word692_0_583 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_581 word692_0_582

def word692_0_584 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 1#64)

def word692_0_585 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_583 word692_0_584

def word692_0_586 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_6 word692_0_4

def word692_0_587 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 1#64)

def word692_0_588 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_586 word692_0_587

def word692_0_589 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 68)

def word692_0_590 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_588 word692_0_589

def word692_0_591 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 3#64)

def word692_0_592 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_590 word692_0_591

def word692_0_593 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 38 38 16 62))

def word692_0_594 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_592 word692_0_593

def word692_0_595 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.var 4)

def word692_0_596 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_594 word692_0_595

def word692_0_597 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 8)

def word692_0_598 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_596 word692_0_597

def word692_0_599 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 38)

def word692_0_600 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_598 word692_0_599

def word692_0_601 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def word692_0_602 : WordLangProgHOL (BitVec 64) :=
.call (some (([92]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word692_0_24, 692, 36)) (some 77) ([86, 26, 74]) (some (16, word692_0_601, 692, 37))

def word692_0_603 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_600 word692_0_602

def word692_0_604 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_603 word692_0_4

def word692_0_605 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.const 0#64)

def word692_0_606 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_604 word692_0_605

def word692_0_607 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [92]

def word692_0_608 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_606 word692_0_607

def word692_0_609 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 16 (Flapjack.WordRegImm.reg 62) word692_0_608 word692_0_24

def word692_0_610 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_567 word692_0_4

def word692_0_611 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_610 word692_0_99

def word692_0_612 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_609 word692_0_611

def word692_0_613 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_585 word692_0_612

def word692_0_614 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_613 word692_0_4

def word692_0_615 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def word692_0_616 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_614 word692_0_615

def word692_0_617 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 8,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 68)
        (Flapjack.WordLangExpHOL.const 1#64)])

def word692_0_618 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_616 word692_0_617

def word692_0_619 : WordLangProgHOL (BitVec 64) :=
.call (some (([92]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 38)) (some 683) ([16, 62]) (some (16, word692_0_601, 692, 39))

def word692_0_620 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_618 word692_0_619

def word692_0_621 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_620 word692_0_4

def word692_0_622 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 92)

def word692_0_623 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_621 word692_0_622

def word692_0_624 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_623 word692_0_587

def word692_0_625 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_584 word692_0_4

def word692_0_626 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_625 word692_0_33

def word692_0_627 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 68)

def word692_0_628 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_626 word692_0_627

def word692_0_629 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 3#64)

def word692_0_630 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_628 word692_0_629

def word692_0_631 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 86 86 62 38))

def word692_0_632 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_630 word692_0_631

def word692_0_633 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 4)

def word692_0_634 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_632 word692_0_633

def word692_0_635 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 6)

def word692_0_636 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_634 word692_0_635

def word692_0_637 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 86)

def word692_0_638 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_636 word692_0_637

def word692_0_639 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 62

def word692_0_640 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word692_0_24, 692, 40)) (some 77) ([26, 74, 50]) (some (62, word692_0_639, 692, 41))

def word692_0_641 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_638 word692_0_640

def word692_0_642 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_641 word692_0_4

def word692_0_643 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_642 word692_0_567

def word692_0_644 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [16]

def word692_0_645 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_643 word692_0_644

def word692_0_646 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 62 (Flapjack.WordRegImm.reg 38) word692_0_645 word692_0_24

def word692_0_647 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 0#64)

def word692_0_648 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_647 word692_0_4

def word692_0_649 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_648 word692_0_104

def word692_0_650 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_646 word692_0_649

def word692_0_651 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_624 word692_0_650

def word692_0_652 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_651 word692_0_4

def word692_0_653 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 42)) (some 69) ([]) (some (62, word692_0_639, 692, 43))

def word692_0_654 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_652 word692_0_653

def word692_0_655 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_654 word692_0_4

def word692_0_656 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 6)

def word692_0_657 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_655 word692_0_656

def word692_0_658 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.var 68])

def word692_0_659 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_657 word692_0_658

def word692_0_660 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 6,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 68)
        (Flapjack.WordLangExpHOL.const 1#64)])

def word692_0_661 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_659 word692_0_660

def word692_0_662 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_661 word692_0_597

def word692_0_663 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.var 68])

def word692_0_664 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_662 word692_0_663

def word692_0_665 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 8,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 68)
        (Flapjack.WordLangExpHOL.const 1#64)])

def word692_0_666 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_664 word692_0_665

def word692_0_667 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 68)

def word692_0_668 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_666 word692_0_667

def word692_0_669 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def word692_0_670 : WordLangProgHOL (BitVec 64) :=
.call (some (([98]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 44)) (some 68) ([12]) (some (12, word692_0_669, 692, 45))

def word692_0_671 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_668 word692_0_670

def word692_0_672 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_671 word692_0_4

def word692_0_673 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 68)

def word692_0_674 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_672 word692_0_673

def word692_0_675 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 58

def word692_0_676 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 46)) (some 68) ([58]) (some (58, word692_0_675, 692, 47))

def word692_0_677 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_674 word692_0_676

def word692_0_678 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_677 word692_0_4

def word692_0_679 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 68)

def word692_0_680 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_678 word692_0_679

def word692_0_681 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 34

def word692_0_682 : WordLangProgHOL (BitVec 64) :=
.call (some (([58]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 48)) (some 68) ([34]) (some (34, word692_0_681, 692, 49))

def word692_0_683 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_680 word692_0_682

def word692_0_684 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_683 word692_0_4

def word692_0_685 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82 (Flapjack.WordLangExpHOL.var 68)

def word692_0_686 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_684 word692_0_685

def word692_0_687 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 82

def word692_0_688 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 50)) (some 68) ([82]) (some (82, word692_0_687, 692, 51))

def word692_0_689 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_686 word692_0_688

def word692_0_690 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_689 word692_0_4

def word692_0_691 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 2)

def word692_0_692 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_690 word692_0_691

def word692_0_693 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 98)

def word692_0_694 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_692 word692_0_693

def word692_0_695 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 74)

def word692_0_696 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_694 word692_0_695

def word692_0_697 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.var 86)

def word692_0_698 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_696 word692_0_697

def word692_0_699 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def word692_0_700 : WordLangProgHOL (BitVec 64) :=
.call (some (([82]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 52)) (some 677) ([24, 72, 48, 96]) (some (24, word692_0_699, 692, 53))

def word692_0_701 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_698 word692_0_700

def word692_0_702 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_701 word692_0_4

def word692_0_703 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_702 word692_0_691

def word692_0_704 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 12)

def word692_0_705 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_703 word692_0_704

def word692_0_706 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 38)

def word692_0_707 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_705 word692_0_706

def word692_0_708 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.var 50)

def word692_0_709 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_707 word692_0_708

def word692_0_710 : WordLangProgHOL (BitVec 64) :=
.call (some (([82]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 54)) (some 677) ([24, 72, 48, 96]) (some (24, word692_0_699, 692, 55))

def word692_0_711 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_709 word692_0_710

def word692_0_712 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_711 word692_0_4

def word692_0_713 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_712 word692_0_691

def word692_0_714 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 58)

def word692_0_715 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_713 word692_0_714

def word692_0_716 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 26)

def word692_0_717 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_715 word692_0_716

def word692_0_718 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_717 word692_0_697

def word692_0_719 : WordLangProgHOL (BitVec 64) :=
.call (some (([82]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 56)) (some 677) ([24, 72, 48, 96]) (some (24, word692_0_699, 692, 57))

def word692_0_720 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_718 word692_0_719

def word692_0_721 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_720 word692_0_4

def word692_0_722 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_721 word692_0_691

def word692_0_723 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 34)

def word692_0_724 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_722 word692_0_723

def word692_0_725 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 62)

def word692_0_726 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_724 word692_0_725

def word692_0_727 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_726 word692_0_708

def word692_0_728 : WordLangProgHOL (BitVec 64) :=
.call (some (([82]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 58)) (some 677) ([24, 72, 48, 96]) (some (24, word692_0_699, 692, 59))

def word692_0_729 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_727 word692_0_728

def word692_0_730 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_729 word692_0_4

def word692_0_731 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_730 word692_0_691

def word692_0_732 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_731 word692_0_714

def word692_0_733 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 34)

def word692_0_734 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_732 word692_0_733

def word692_0_735 : WordLangProgHOL (BitVec 64) :=
.call (some (([82]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 60)) (some 684) ([24, 72, 48]) (some (24, word692_0_699, 692, 61))

def word692_0_736 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_734 word692_0_735

def word692_0_737 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_736 word692_0_4

def word692_0_738 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 82)

def word692_0_739 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_737 word692_0_738

def word692_0_740 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 1#64)

def word692_0_741 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_739 word692_0_740

def word692_0_742 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.const 1#64)

def word692_0_743 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_742 word692_0_4

def word692_0_744 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.const 1#64)

def word692_0_745 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_743 word692_0_744

def word692_0_746 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 2)

def word692_0_747 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_745 word692_0_746

def word692_0_748 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 98)

def word692_0_749 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_747 word692_0_748

def word692_0_750 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.var 12)

def word692_0_751 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_749 word692_0_750

def word692_0_752 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 72

def word692_0_753 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 62)) (some 684) ([72, 48, 96]) (some (72, word692_0_752, 692, 63))

def word692_0_754 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_751 word692_0_753

def word692_0_755 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_754 word692_0_4

def word692_0_756 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 16)

def word692_0_757 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_755 word692_0_756

def word692_0_758 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 48

def word692_0_759 : WordLangProgHOL (BitVec 64) :=
.call (some (([72]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 64)) (some 70) ([48]) (some (48, word692_0_758, 692, 65))

def word692_0_760 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_757 word692_0_759

def word692_0_761 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_760 word692_0_4

def word692_0_762 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 24)

def word692_0_763 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_761 word692_0_762

def word692_0_764 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_763 word692_0_744

def word692_0_765 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_740 word692_0_4

def word692_0_766 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def word692_0_767 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_765 word692_0_766

def word692_0_768 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 2)

def word692_0_769 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_767 word692_0_768

def word692_0_770 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.var 4)

def word692_0_771 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_769 word692_0_770

def word692_0_772 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 6)

def word692_0_773 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_771 word692_0_772

def word692_0_774 : WordLangProgHOL (BitVec 64) :=
.call (some (([72]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word692_0_24, 692, 66)) (some 691) ([48, 96, 20]) (some (48, word692_0_758, 692, 67))

def word692_0_775 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_773 word692_0_774

def word692_0_776 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_775 word692_0_4

def word692_0_777 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.const 0#64)

def word692_0_778 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_776 word692_0_777

def word692_0_779 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [72]

def word692_0_780 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_778 word692_0_779

def word692_0_781 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 48 (Flapjack.WordRegImm.reg 96) word692_0_780 word692_0_24

def word692_0_782 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 0#64)

def word692_0_783 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_782 word692_0_4

def word692_0_784 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def word692_0_785 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_783 word692_0_784

def word692_0_786 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_781 word692_0_785

def word692_0_787 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_764 word692_0_786

def word692_0_788 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_787 word692_0_4

def word692_0_789 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_788 word692_0_768

def word692_0_790 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_789 word692_0_770

def word692_0_791 : WordLangProgHOL (BitVec 64) :=
.call (some (([72]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word692_0_24, 692, 68)) (some 687) ([48, 96]) (some (48, word692_0_758, 692, 69))

def word692_0_792 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_790 word692_0_791

def word692_0_793 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_792 word692_0_4

def word692_0_794 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_793 word692_0_777

def word692_0_795 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_794 word692_0_779

def word692_0_796 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 72 (Flapjack.WordRegImm.reg 48) word692_0_795 word692_0_24

def word692_0_797 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_777 word692_0_4

def word692_0_798 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.const 0#64)

def word692_0_799 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_797 word692_0_798

def word692_0_800 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_796 word692_0_799

def word692_0_801 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_741 word692_0_800

def word692_0_802 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_801 word692_0_4

def word692_0_803 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 68)

def word692_0_804 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_802 word692_0_803

def word692_0_805 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 70)) (some 68) ([72]) (some (72, word692_0_752, 692, 71))

def word692_0_806 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_804 word692_0_805

def word692_0_807 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_806 word692_0_4

def word692_0_808 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 68)

def word692_0_809 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_807 word692_0_808

def word692_0_810 : WordLangProgHOL (BitVec 64) :=
.call (some (([72]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 72)) (some 68) ([48]) (some (48, word692_0_758, 692, 73))

def word692_0_811 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_809 word692_0_810

def word692_0_812 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_811 word692_0_4

def word692_0_813 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.var 68)

def word692_0_814 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_812 word692_0_813

def word692_0_815 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 96

def word692_0_816 : WordLangProgHOL (BitVec 64) :=
.call (some (([48]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 74)) (some 68) ([96]) (some (96, word692_0_815, 692, 75))

def word692_0_817 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_814 word692_0_816

def word692_0_818 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_817 word692_0_4

def word692_0_819 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 68)

def word692_0_820 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_818 word692_0_819

def word692_0_821 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def word692_0_822 : WordLangProgHOL (BitVec 64) :=
.call (some (([96]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 76)) (some 68) ([20]) (some (20, word692_0_821, 692, 77))

def word692_0_823 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_820 word692_0_822

def word692_0_824 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_823 word692_0_4

def word692_0_825 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 68)

def word692_0_826 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_824 word692_0_825

def word692_0_827 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 66

def word692_0_828 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 78)) (some 68) ([66]) (some (66, word692_0_827, 692, 79))

def word692_0_829 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_826 word692_0_828

def word692_0_830 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_829 word692_0_4

def word692_0_831 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 68)

def word692_0_832 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_830 word692_0_831

def word692_0_833 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 42

def word692_0_834 : WordLangProgHOL (BitVec 64) :=
.call (some (([66]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 80)) (some 68) ([42]) (some (42, word692_0_833, 692, 81))

def word692_0_835 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_832 word692_0_834

def word692_0_836 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_835 word692_0_4

def word692_0_837 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 90 (Flapjack.WordLangExpHOL.var 68)

def word692_0_838 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_836 word692_0_837

def word692_0_839 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 90

def word692_0_840 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 82)) (some 68) ([90]) (some (90, word692_0_839, 692, 83))

def word692_0_841 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_838 word692_0_840

def word692_0_842 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_841 word692_0_4

def word692_0_843 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 68)

def word692_0_844 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_842 word692_0_843

def word692_0_845 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def word692_0_846 : WordLangProgHOL (BitVec 64) :=
.call (some (([90]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 84)) (some 68) ([30]) (some (30, word692_0_845, 692, 85))

def word692_0_847 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_844 word692_0_846

def word692_0_848 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_847 word692_0_4

def word692_0_849 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 2)

def word692_0_850 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_848 word692_0_849

def word692_0_851 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 24)

def word692_0_852 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_850 word692_0_851

def word692_0_853 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.var 98)

def word692_0_854 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_852 word692_0_853

def word692_0_855 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def word692_0_856 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_854 word692_0_855

def word692_0_857 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 78

def word692_0_858 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 86)) (some 680) ([78, 54, 102, 10]) (some (78, word692_0_857, 692, 87))

def word692_0_859 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_856 word692_0_858

def word692_0_860 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_859 word692_0_4

def word692_0_861 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_860 word692_0_849

def word692_0_862 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 72)

def word692_0_863 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_861 word692_0_862

def word692_0_864 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.var 58)

def word692_0_865 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_863 word692_0_864

def word692_0_866 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 34)

def word692_0_867 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_865 word692_0_866

def word692_0_868 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 88)) (some 680) ([78, 54, 102, 10]) (some (78, word692_0_857, 692, 89))

def word692_0_869 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_867 word692_0_868

def word692_0_870 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_869 word692_0_4

def word692_0_871 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_870 word692_0_849

def word692_0_872 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 48)

def word692_0_873 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_871 word692_0_872

def word692_0_874 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.var 72)

def word692_0_875 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_873 word692_0_874

def word692_0_876 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 90)) (some 678) ([78, 54, 102]) (some (78, word692_0_857, 692, 91))

def word692_0_877 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_875 word692_0_876

def word692_0_878 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_877 word692_0_4

def word692_0_879 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_878 word692_0_849

def word692_0_880 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 96)

def word692_0_881 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_879 word692_0_880

def word692_0_882 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.var 48)

def word692_0_883 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_881 word692_0_882

def word692_0_884 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_883 word692_0_866

def word692_0_885 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 92)) (some 677) ([78, 54, 102, 10]) (some (78, word692_0_857, 692, 93))

def word692_0_886 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_884 word692_0_885

def word692_0_887 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_886 word692_0_4

def word692_0_888 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_887 word692_0_849

def word692_0_889 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 20)

def word692_0_890 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_888 word692_0_889

def word692_0_891 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_890 word692_0_874

def word692_0_892 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 48)

def word692_0_893 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_891 word692_0_892

def word692_0_894 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 94)) (some 677) ([78, 54, 102, 10]) (some (78, word692_0_857, 692, 95))

def word692_0_895 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_893 word692_0_894

def word692_0_896 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_895 word692_0_4

def word692_0_897 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_896 word692_0_849

def word692_0_898 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 66)

def word692_0_899 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_897 word692_0_898

def word692_0_900 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.var 86)

def word692_0_901 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_899 word692_0_900

def word692_0_902 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 50)

def word692_0_903 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_901 word692_0_902

def word692_0_904 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 96)) (some 677) ([78, 54, 102, 10]) (some (78, word692_0_857, 692, 97))

def word692_0_905 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_903 word692_0_904

def word692_0_906 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_905 word692_0_4

def word692_0_907 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_906 word692_0_849

def word692_0_908 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 42)

def word692_0_909 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_907 word692_0_908

def word692_0_910 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.var 24)

def word692_0_911 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_909 word692_0_910

def word692_0_912 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 98)) (some 678) ([78, 54, 102]) (some (78, word692_0_857, 692, 99))

def word692_0_913 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_911 word692_0_912

def word692_0_914 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_913 word692_0_4

def word692_0_915 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_914 word692_0_849

def word692_0_916 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_915 word692_0_908

def word692_0_917 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.var 42)

def word692_0_918 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_916 word692_0_917

def word692_0_919 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 66)

def word692_0_920 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_918 word692_0_919

def word692_0_921 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 100)) (some 677) ([78, 54, 102, 10]) (some (78, word692_0_857, 692, 101))

def word692_0_922 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_920 word692_0_921

def word692_0_923 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_922 word692_0_4

def word692_0_924 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_923 word692_0_849

def word692_0_925 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_924 word692_0_908

def word692_0_926 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_925 word692_0_917

def word692_0_927 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 20)

def word692_0_928 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_926 word692_0_927

def word692_0_929 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 102)) (some 680) ([78, 54, 102, 10]) (some (78, word692_0_857, 692, 103))

def word692_0_930 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_928 word692_0_929

def word692_0_931 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_930 word692_0_4

def word692_0_932 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_931 word692_0_849

def word692_0_933 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 90)

def word692_0_934 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_932 word692_0_933

def word692_0_935 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.var 96)

def word692_0_936 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_934 word692_0_935

def word692_0_937 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 2#64)

def word692_0_938 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_936 word692_0_937

def word692_0_939 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 104)) (some 682) ([78, 54, 102, 10]) (some (78, word692_0_857, 692, 105))

def word692_0_940 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_937 word692_0_939

def word692_0_941 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_938 word692_0_940

def word692_0_942 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_941 word692_0_4

def word692_0_943 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_942 word692_0_849

def word692_0_944 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_943 word692_0_908

def word692_0_945 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_944 word692_0_917

def word692_0_946 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 90)

def word692_0_947 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_945 word692_0_946

def word692_0_948 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 106)) (some 680) ([78, 54, 102, 10]) (some (78, word692_0_857, 692, 107))

def word692_0_949 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_947 word692_0_948

def word692_0_950 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_949 word692_0_4

def word692_0_951 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_950 word692_0_849

def word692_0_952 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_951 word692_0_933

def word692_0_953 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_952 word692_0_874

def word692_0_954 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 42)

def word692_0_955 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_953 word692_0_954

def word692_0_956 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 108)) (some 677) ([78, 54, 102, 10]) (some (78, word692_0_857, 692, 109))

def word692_0_957 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_955 word692_0_956

def word692_0_958 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_957 word692_0_4

def word692_0_959 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_958 word692_0_849

def word692_0_960 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_959 word692_0_862

def word692_0_961 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_960 word692_0_935

def word692_0_962 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_961 word692_0_954

def word692_0_963 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 110)) (some 680) ([78, 54, 102, 10]) (some (78, word692_0_857, 692, 111))

def word692_0_964 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_962 word692_0_963

def word692_0_965 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_964 word692_0_4

def word692_0_966 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_965 word692_0_849

def word692_0_967 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_966 word692_0_862

def word692_0_968 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_967 word692_0_910

def word692_0_969 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 72)

def word692_0_970 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_968 word692_0_969

def word692_0_971 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 112)) (some 677) ([78, 54, 102, 10]) (some (78, word692_0_857, 692, 113))

def word692_0_972 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_970 word692_0_971

def word692_0_973 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_972 word692_0_4

def word692_0_974 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_973 word692_0_849

def word692_0_975 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 98)

def word692_0_976 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_974 word692_0_975

def word692_0_977 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.var 20)

def word692_0_978 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_976 word692_0_977

def word692_0_979 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_978 word692_0_855

def word692_0_980 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 114)) (some 677) ([78, 54, 102, 10]) (some (78, word692_0_857, 692, 115))

def word692_0_981 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_979 word692_0_980

def word692_0_982 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_981 word692_0_4

def word692_0_983 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_982 word692_0_849

def word692_0_984 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_983 word692_0_862

def word692_0_985 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_984 word692_0_874

def word692_0_986 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 98)

def word692_0_987 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_985 word692_0_986

def word692_0_988 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 116)) (some 680) ([78, 54, 102, 10]) (some (78, word692_0_857, 692, 117))

def word692_0_989 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_987 word692_0_988

def word692_0_990 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_989 word692_0_4

def word692_0_991 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_990 word692_0_849

def word692_0_992 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_991 word692_0_898

def word692_0_993 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_992 word692_0_977

def word692_0_994 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_993 word692_0_919

def word692_0_995 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 118)) (some 677) ([78, 54, 102, 10]) (some (78, word692_0_857, 692, 119))

def word692_0_996 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_994 word692_0_995

def word692_0_997 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_996 word692_0_4

def word692_0_998 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 4)

def word692_0_999 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_997 word692_0_998

def word692_0_1000 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_999 word692_0_933

def word692_0_1001 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.var 68)

def word692_0_1002 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_1000 word692_0_1001

def word692_0_1003 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 120)) (some 77) ([78, 54, 102]) (some (78, word692_0_857, 692, 121))

def word692_0_1004 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_1002 word692_0_1003

def word692_0_1005 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_1004 word692_0_4

def word692_0_1006 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 68])

def word692_0_1007 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_1005 word692_0_1006

def word692_0_1008 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_1007 word692_0_862

def word692_0_1009 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_1008 word692_0_1001

def word692_0_1010 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 122)) (some 77) ([78, 54, 102]) (some (78, word692_0_857, 692, 123))

def word692_0_1011 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_1009 word692_0_1010

def word692_0_1012 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_1011 word692_0_4

def word692_0_1013 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 68)
        (Flapjack.WordLangExpHOL.const 1#64)])

def word692_0_1014 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_1012 word692_0_1013

def word692_0_1015 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_1014 word692_0_898

def word692_0_1016 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_1015 word692_0_1001

def word692_0_1017 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word692_0_24, 692, 124)) (some 77) ([78, 54, 102]) (some (78, word692_0_857, 692, 125))

def word692_0_1018 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_1016 word692_0_1017

def word692_0_1019 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_1018 word692_0_4

def word692_0_1020 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 16)

def word692_0_1021 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_1019 word692_0_1020

def word692_0_1022 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word692_0_24, 692, 126)) (some 70) ([78]) (some (78, word692_0_857, 692, 127))

def word692_0_1023 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_1021 word692_0_1022

def word692_0_1024 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_1023 word692_0_4

def word692_0_1025 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def word692_0_1026 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_1024 word692_0_1025

def word692_0_1027 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [30]

def word692_0_1028 : WordLangProgHOL (BitVec 64) :=
.seq word692_0_1026 word692_0_1027

def pass692_0 : WordLangProgHOL (BitVec 64) :=
word692_0_1028
theorem pass692_0_eq : WordSimp.compileExp (source692.2.2) = pass692_0 := by
  kernel_rfl
#print axioms pass692_0_eq
end InitECandidate.Proofs.WordStages
