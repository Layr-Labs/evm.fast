import InitECandidate.Proofs.WordStages.Source783
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Parallel783
def word783_0_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 96#64]))

def word783_0_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 188
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 96#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def word783_0_2 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_0 word783_0_1

def word783_0_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 116
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 96#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def word783_0_4 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_2 word783_0_3

def word783_0_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 258
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 96#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def word783_0_6 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_4 word783_0_5

def word783_0_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 96#64],
        Flapjack.WordLangExpHOL.const 32#64]))

def word783_0_8 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_6 word783_0_7

def word783_0_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 170
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 96#64],
        Flapjack.WordLangExpHOL.const 40#64]))

def word783_0_10 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_8 word783_0_9

def word783_0_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 240 (Flapjack.WordLangExpHOL.var 44)

def word783_0_12 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_10 word783_0_11

def word783_0_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 188)

def word783_0_14 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_12 word783_0_13

def word783_0_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 206 (Flapjack.WordLangExpHOL.var 116)

def word783_0_16 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_14 word783_0_15

def word783_0_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 134 (Flapjack.WordLangExpHOL.var 258)

def word783_0_18 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_16 word783_0_17

def word783_0_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 276 (Flapjack.WordLangExpHOL.var 26)

def word783_0_20 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_18 word783_0_19

def word783_0_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 170)

def word783_0_22 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_20 word783_0_21

def word783_0_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def word783_0_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 240

def word783_0_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([98]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
        PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word783_0_23, 783, 2)) (some 714) ([240, 62, 206, 134, 276, 16]) (some (240, word783_0_24, 783, 3))

def word783_0_26 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_22 word783_0_25

def word783_0_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def word783_0_28 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_26 word783_0_27

def word783_0_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 98)

def word783_0_30 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_28 word783_0_29

def word783_0_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 206 (Flapjack.WordLangExpHOL.const 1#64)

def word783_0_32 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_30 word783_0_31

def word783_0_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 1#64)

def word783_0_34 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_33 word783_0_27

def word783_0_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 134 (Flapjack.WordLangExpHOL.const 1#64)

def word783_0_36 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_34 word783_0_35

def word783_0_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 2)

def word783_0_38 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_36 word783_0_37

def word783_0_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 206 (Flapjack.WordLangExpHOL.var 6)

def word783_0_40 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_38 word783_0_39

def word783_0_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 62

def word783_0_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([240]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word783_0_23, 783, 4)) (some 780) ([62, 206]) (some (62, word783_0_41, 783, 5))

def word783_0_43 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_40 word783_0_42

def word783_0_44 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_43 word783_0_27

def word783_0_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 240 (Flapjack.WordLangExpHOL.const 0#64)

def word783_0_46 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_44 word783_0_45

def word783_0_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [240]

def word783_0_48 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_46 word783_0_47

def word783_0_49 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 62 (Flapjack.WordRegImm.reg 206) word783_0_48 word783_0_23

def word783_0_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 0#64)

def word783_0_51 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_50 word783_0_27

def word783_0_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 134 (Flapjack.WordLangExpHOL.const 0#64)

def word783_0_53 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_51 word783_0_52

def word783_0_54 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_49 word783_0_53

def word783_0_55 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_32 word783_0_54

def word783_0_56 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_55 word783_0_27

def word783_0_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 240
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 96#64]))

def word783_0_58 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_56 word783_0_57

def word783_0_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 96#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def word783_0_60 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_58 word783_0_59

def word783_0_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 206
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 96#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def word783_0_62 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_60 word783_0_61

def word783_0_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 134
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 96#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def word783_0_64 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_62 word783_0_63

def word783_0_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 276
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 96#64],
        Flapjack.WordLangExpHOL.const 32#64]))

def word783_0_66 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_64 word783_0_65

def word783_0_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 96#64],
        Flapjack.WordLangExpHOL.const 40#64]))

def word783_0_68 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_66 word783_0_67

def word783_0_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 88 (Flapjack.WordLangExpHOL.var 240)

def word783_0_70 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_68 word783_0_69

def word783_0_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 232 (Flapjack.WordLangExpHOL.var 62)

def word783_0_72 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_70 word783_0_71

def word783_0_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 206)

def word783_0_74 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_72 word783_0_73

def word783_0_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 198 (Flapjack.WordLangExpHOL.var 134)

def word783_0_76 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_74 word783_0_75

def word783_0_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 126 (Flapjack.WordLangExpHOL.var 276)

def word783_0_78 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_76 word783_0_77

def word783_0_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 268 (Flapjack.WordLangExpHOL.var 16)

def word783_0_80 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_78 word783_0_79

def word783_0_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 88

def word783_0_82 : WordLangProgHOL (BitVec 64) :=
.call (some (([160]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln) PUnit.unit
            Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word783_0_23, 783, 6)) (some 714) ([88, 232, 54, 198, 126, 268]) (some (88, word783_0_81, 783, 7))

def word783_0_83 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_80 word783_0_82

def word783_0_84 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_83 word783_0_27

def word783_0_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 232 (Flapjack.WordLangExpHOL.var 160)

def word783_0_86 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_84 word783_0_85

def word783_0_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 1#64)

def word783_0_88 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_86 word783_0_87

def word783_0_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 232 (Flapjack.WordLangExpHOL.const 1#64)

def word783_0_90 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_89 word783_0_27

def word783_0_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 198 (Flapjack.WordLangExpHOL.const 1#64)

def word783_0_92 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_90 word783_0_91

def word783_0_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 232 (Flapjack.WordLangExpHOL.var 2)

def word783_0_94 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_92 word783_0_93

def word783_0_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 4)

def word783_0_96 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_94 word783_0_95

def word783_0_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 232

def word783_0_98 : WordLangProgHOL (BitVec 64) :=
.call (some (([88]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word783_0_23, 783, 8)) (some 780) ([232, 54]) (some (232, word783_0_97, 783, 9))

def word783_0_99 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_96 word783_0_98

def word783_0_100 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_99 word783_0_27

def word783_0_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 88 (Flapjack.WordLangExpHOL.const 0#64)

def word783_0_102 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_100 word783_0_101

def word783_0_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [88]

def word783_0_104 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_102 word783_0_103

def word783_0_105 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 232 (Flapjack.WordRegImm.reg 54) word783_0_104 word783_0_23

def word783_0_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 232 (Flapjack.WordLangExpHOL.const 0#64)

def word783_0_107 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_106 word783_0_27

def word783_0_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 198 (Flapjack.WordLangExpHOL.const 0#64)

def word783_0_109 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_107 word783_0_108

def word783_0_110 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_105 word783_0_109

def word783_0_111 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_88 word783_0_110

def word783_0_112 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_111 word783_0_27

def word783_0_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 88 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 4))

def word783_0_114 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_112 word783_0_113

def word783_0_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 232
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 8#64]))

def word783_0_116 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_114 word783_0_115

def word783_0_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 16#64]))

def word783_0_118 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_116 word783_0_117

def word783_0_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 198
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 24#64]))

def word783_0_120 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_118 word783_0_119

def word783_0_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 126
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 32#64]))

def word783_0_122 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_120 word783_0_121

def word783_0_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 268
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 40#64]))

def word783_0_124 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_122 word783_0_123

def word783_0_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64]))

def word783_0_126 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_124 word783_0_125

def word783_0_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 180
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def word783_0_128 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_126 word783_0_127

def word783_0_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def word783_0_130 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_128 word783_0_129

def word783_0_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 250
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def word783_0_132 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_130 word783_0_131

def word783_0_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 32#64]))

def word783_0_134 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_132 word783_0_133

def word783_0_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 216
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 40#64]))

def word783_0_136 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_134 word783_0_135

def word783_0_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 144 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 6))

def word783_0_138 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_136 word783_0_137

def word783_0_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 286
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 8#64]))

def word783_0_140 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_138 word783_0_139

def word783_0_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 16#64]))

def word783_0_142 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_140 word783_0_141

def word783_0_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 156
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 24#64]))

def word783_0_144 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_142 word783_0_143

def word783_0_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 84
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 32#64]))

def word783_0_146 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_144 word783_0_145

def word783_0_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 228
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 40#64]))

def word783_0_148 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_146 word783_0_147

def word783_0_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 48#64]))

def word783_0_150 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_148 word783_0_149

def word783_0_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 194
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def word783_0_152 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_150 word783_0_151

def word783_0_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def word783_0_154 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_152 word783_0_153

def word783_0_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 264
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def word783_0_156 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_154 word783_0_155

def word783_0_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 32#64]))

def word783_0_158 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_156 word783_0_157

def word783_0_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 176
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 40#64]))

def word783_0_160 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_158 word783_0_159

def word783_0_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 246 (Flapjack.WordLangExpHOL.var 44)

def word783_0_162 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_160 word783_0_161

def word783_0_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 188)

def word783_0_164 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_162 word783_0_163

def word783_0_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 212 (Flapjack.WordLangExpHOL.var 116)

def word783_0_166 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_164 word783_0_165

def word783_0_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.var 258)

def word783_0_168 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_166 word783_0_167

def word783_0_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 282 (Flapjack.WordLangExpHOL.var 26)

def word783_0_170 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_168 word783_0_169

def word783_0_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 170)

def word783_0_172 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_170 word783_0_171

def word783_0_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 166 (Flapjack.WordLangExpHOL.const 1#64)

def word783_0_174 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_172 word783_0_173

def word783_0_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.const 0#64)

def word783_0_176 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_174 word783_0_175

def word783_0_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 236 (Flapjack.WordLangExpHOL.const 0#64)

def word783_0_178 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_176 word783_0_177

def word783_0_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 0#64)

def word783_0_180 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_178 word783_0_179

def word783_0_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 202 (Flapjack.WordLangExpHOL.const 0#64)

def word783_0_182 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_180 word783_0_181

def word783_0_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 130 (Flapjack.WordLangExpHOL.const 0#64)

def word783_0_184 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_182 word783_0_183

def word783_0_185 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_184 word783_0_183

def word783_0_186 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_185 word783_0_181

def word783_0_187 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_186 word783_0_179

def word783_0_188 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_187 word783_0_177

def word783_0_189 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_188 word783_0_175

def word783_0_190 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_189 word783_0_173

def word783_0_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 246

def word783_0_192 : WordLangProgHOL (BitVec 64) :=
.call (some (([104]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln)
            PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
              Flapjack.Spt.ln)))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word783_0_23, 783, 10)) (some 715) ([246, 68, 212, 140, 282, 22, 166, 94, 236, 58, 202, 130]) (some (246, word783_0_191, 783, 11))

def word783_0_193 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_190 word783_0_192

def word783_0_194 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_193 word783_0_27

def word783_0_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 240)

def word783_0_196 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_194 word783_0_195

def word783_0_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 212 (Flapjack.WordLangExpHOL.var 62)

def word783_0_198 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_196 word783_0_197

def word783_0_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.var 206)

def word783_0_200 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_198 word783_0_199

def word783_0_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 282 (Flapjack.WordLangExpHOL.var 134)

def word783_0_202 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_200 word783_0_201

def word783_0_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 276)

def word783_0_204 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_202 word783_0_203

def word783_0_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 166 (Flapjack.WordLangExpHOL.var 16)

def word783_0_206 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_204 word783_0_205

def word783_0_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.const 1#64)

def word783_0_208 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_206 word783_0_207

def word783_0_209 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_208 word783_0_177

def word783_0_210 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_209 word783_0_179

def word783_0_211 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_210 word783_0_181

def word783_0_212 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_211 word783_0_183

def word783_0_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 272 (Flapjack.WordLangExpHOL.const 0#64)

def word783_0_214 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_212 word783_0_213

def word783_0_215 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_214 word783_0_213

def word783_0_216 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_215 word783_0_183

def word783_0_217 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_216 word783_0_181

def word783_0_218 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_217 word783_0_179

def word783_0_219 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_218 word783_0_177

def word783_0_220 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_219 word783_0_207

def word783_0_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 68

def word783_0_222 : WordLangProgHOL (BitVec 64) :=
.call (some (([246]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln)
            PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
              Flapjack.Spt.ln)))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word783_0_23, 783, 12)) (some 715) ([68, 212, 140, 282, 22, 166, 94, 236, 58, 202, 130, 272]) (some (68, word783_0_221, 783, 13))

def word783_0_223 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_220 word783_0_222

def word783_0_224 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_223 word783_0_27

def word783_0_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 212 (Flapjack.WordLangExpHOL.var 104)

def word783_0_226 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_224 word783_0_225

def word783_0_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.const 1#64)

def word783_0_228 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_226 word783_0_227

def word783_0_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 212 (Flapjack.WordLangExpHOL.const 1#64)

def word783_0_230 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_229 word783_0_27

def word783_0_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def word783_0_232 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_230 word783_0_231

def word783_0_233 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_232 word783_0_173

def word783_0_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def word783_0_235 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_233 word783_0_234

def word783_0_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 212 (Flapjack.WordLangExpHOL.const 0#64)

def word783_0_237 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_236 word783_0_27

def word783_0_238 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_237 word783_0_231

def word783_0_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 166 (Flapjack.WordLangExpHOL.const 0#64)

def word783_0_240 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_238 word783_0_239

def word783_0_241 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_240 word783_0_231

def word783_0_242 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 212 (Flapjack.WordRegImm.reg 140) word783_0_235 word783_0_241

def word783_0_243 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_228 word783_0_242

def word783_0_244 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_243 word783_0_27

def word783_0_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 236 (Flapjack.WordLangExpHOL.var 246)

def word783_0_246 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_244 word783_0_245

def word783_0_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 1#64)

def word783_0_248 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_246 word783_0_247

def word783_0_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 236 (Flapjack.WordLangExpHOL.const 1#64)

def word783_0_250 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_249 word783_0_27

def word783_0_251 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_250 word783_0_183

def word783_0_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 272 (Flapjack.WordLangExpHOL.const 1#64)

def word783_0_253 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_251 word783_0_252

def word783_0_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 130 (Flapjack.WordLangExpHOL.const 1#64)

def word783_0_255 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_253 word783_0_254

def word783_0_256 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_177 word783_0_27

def word783_0_257 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_256 word783_0_183

def word783_0_258 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_257 word783_0_213

def word783_0_259 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_258 word783_0_183

def word783_0_260 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 236 (Flapjack.WordRegImm.reg 58) word783_0_255 word783_0_259

def word783_0_261 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_248 word783_0_260

def word783_0_262 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_261 word783_0_27

def word783_0_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.var 130])

def word783_0_264 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_262 word783_0_263

def word783_0_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 212 (Flapjack.WordLangExpHOL.var 88)

def word783_0_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.var 232)

def word783_0_267 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_265 word783_0_266

def word783_0_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 282 (Flapjack.WordLangExpHOL.var 54)

def word783_0_269 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_267 word783_0_268

def word783_0_270 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 198)

def word783_0_271 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_269 word783_0_270

def word783_0_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 166 (Flapjack.WordLangExpHOL.var 126)

def word783_0_273 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_271 word783_0_272

def word783_0_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.var 268)

def word783_0_275 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_273 word783_0_274

def word783_0_276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 236 (Flapjack.WordLangExpHOL.var 144)

def word783_0_277 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_275 word783_0_276

def word783_0_278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 286)

def word783_0_279 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_277 word783_0_278

def word783_0_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 202 (Flapjack.WordLangExpHOL.var 12)

def word783_0_281 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_279 word783_0_280

def word783_0_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 130 (Flapjack.WordLangExpHOL.var 156)

def word783_0_283 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_281 word783_0_282

def word783_0_284 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 272 (Flapjack.WordLangExpHOL.var 84)

def word783_0_285 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_283 word783_0_284

def word783_0_286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 228)

def word783_0_287 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_285 word783_0_286

def word783_0_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 212

def word783_0_289 : WordLangProgHOL (BitVec 64) :=
.call (some (([68]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
              Flapjack.Spt.ln)))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word783_0_23, 783, 14)) (some 715) ([212, 140, 282, 22, 166, 94, 236, 58, 202, 130, 272, 40]) (some (212, word783_0_288, 783, 15))

def word783_0_290 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_287 word783_0_289

def word783_0_291 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_290 word783_0_27

def word783_0_292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.var 68)

def word783_0_293 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_291 word783_0_292

def word783_0_294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 282 (Flapjack.WordLangExpHOL.const 1#64)

def word783_0_295 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_293 word783_0_294

def word783_0_296 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_227 word783_0_27

def word783_0_297 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_296 word783_0_234

def word783_0_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.var 36)

def word783_0_299 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_297 word783_0_298

def word783_0_300 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 282 (Flapjack.WordLangExpHOL.var 180)

def word783_0_301 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_299 word783_0_300

def word783_0_302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 108)

def word783_0_303 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_301 word783_0_302

def word783_0_304 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 166 (Flapjack.WordLangExpHOL.var 250)

def word783_0_305 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_303 word783_0_304

def word783_0_306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.var 72)

def word783_0_307 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_305 word783_0_306

def word783_0_308 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 236 (Flapjack.WordLangExpHOL.var 216)

def word783_0_309 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_307 word783_0_308

def word783_0_310 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 50)

def word783_0_311 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_309 word783_0_310

def word783_0_312 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 202 (Flapjack.WordLangExpHOL.var 194)

def word783_0_313 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_311 word783_0_312

def word783_0_314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 130 (Flapjack.WordLangExpHOL.var 122)

def word783_0_315 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_313 word783_0_314

def word783_0_316 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 272 (Flapjack.WordLangExpHOL.var 264)

def word783_0_317 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_315 word783_0_316

def word783_0_318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 32)

def word783_0_319 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_317 word783_0_318

def word783_0_320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 184 (Flapjack.WordLangExpHOL.var 176)

def word783_0_321 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_319 word783_0_320

def word783_0_322 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 140

def word783_0_323 : WordLangProgHOL (BitVec 64) :=
.call (some (([212]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word783_0_23, 783, 16)) (some 715) ([140, 282, 22, 166, 94, 236, 58, 202, 130, 272, 40, 184]) (some (140, word783_0_322, 783, 17))

def word783_0_324 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_321 word783_0_323

def word783_0_325 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_324 word783_0_27

def word783_0_326 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 282 (Flapjack.WordLangExpHOL.var 212)

def word783_0_327 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_325 word783_0_326

def word783_0_328 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_327 word783_0_234

def word783_0_329 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_294 word783_0_27

def word783_0_330 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_329 word783_0_173

def word783_0_331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 282 (Flapjack.WordLangExpHOL.var 2)

def word783_0_332 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_330 word783_0_331

def word783_0_333 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 4)

def word783_0_334 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_332 word783_0_333

def word783_0_335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 282

def word783_0_336 : WordLangProgHOL (BitVec 64) :=
.call (some (([140]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word783_0_23, 783, 18)) (some 782) ([282, 22]) (some (282, word783_0_335, 783, 19))

def word783_0_337 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_334 word783_0_336

def word783_0_338 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_337 word783_0_27

def word783_0_339 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.const 0#64)

def word783_0_340 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_338 word783_0_339

def word783_0_341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [140]

def word783_0_342 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_340 word783_0_341

def word783_0_343 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 282 (Flapjack.WordRegImm.reg 22) word783_0_342 word783_0_23

def word783_0_344 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 282 (Flapjack.WordLangExpHOL.const 0#64)

def word783_0_345 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_344 word783_0_27

def word783_0_346 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_345 word783_0_239

def word783_0_347 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_343 word783_0_346

def word783_0_348 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_328 word783_0_347

def word783_0_349 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_348 word783_0_27

def word783_0_350 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_349 word783_0_331

def word783_0_351 : WordLangProgHOL (BitVec 64) :=
.call (some (([140]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word783_0_23, 783, 20)) (some 778) ([282]) (some (282, word783_0_335, 783, 21))

def word783_0_352 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_350 word783_0_351

def word783_0_353 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_352 word783_0_27

def word783_0_354 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_353 word783_0_339

def word783_0_355 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_354 word783_0_341

def word783_0_356 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 140 (Flapjack.WordRegImm.reg 282) word783_0_355 word783_0_23

def word783_0_357 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_339 word783_0_27

def word783_0_358 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_357 word783_0_231

def word783_0_359 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_356 word783_0_358

def word783_0_360 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_295 word783_0_359

def word783_0_361 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_360 word783_0_27

def word783_0_362 : WordLangProgHOL (BitVec 64) :=
.call (some (([212]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word783_0_23, 783, 22)) (some 777) ([]) (some (140, word783_0_322, 783, 23))

def word783_0_363 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_361 word783_0_362

def word783_0_364 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_363 word783_0_27

def word783_0_365 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 212
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 584#64]))

def word783_0_366 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_364 word783_0_365

def word783_0_367 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.var 88)

def word783_0_368 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_366 word783_0_367

def word783_0_369 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 282 (Flapjack.WordLangExpHOL.var 232)

def word783_0_370 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_368 word783_0_369

def word783_0_371 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 54)

def word783_0_372 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_370 word783_0_371

def word783_0_373 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 166 (Flapjack.WordLangExpHOL.var 198)

def word783_0_374 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_372 word783_0_373

def word783_0_375 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.var 126)

def word783_0_376 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_374 word783_0_375

def word783_0_377 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 236 (Flapjack.WordLangExpHOL.var 268)

def word783_0_378 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_376 word783_0_377

def word783_0_379 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 140)

def word783_0_380 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_378 word783_0_379

def word783_0_381 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 212) 58

def word783_0_382 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_380 word783_0_381

def word783_0_383 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 282)

def word783_0_384 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_382 word783_0_383

def word783_0_385 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 212, Flapjack.WordLangExpHOL.const 8#64])
  58

def word783_0_386 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_384 word783_0_385

def word783_0_387 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 22)

def word783_0_388 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_386 word783_0_387

def word783_0_389 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 212, Flapjack.WordLangExpHOL.const 16#64])
  58

def word783_0_390 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_388 word783_0_389

def word783_0_391 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 166)

def word783_0_392 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_390 word783_0_391

def word783_0_393 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 212, Flapjack.WordLangExpHOL.const 24#64])
  58

def word783_0_394 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_392 word783_0_393

def word783_0_395 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 94)

def word783_0_396 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_394 word783_0_395

def word783_0_397 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 212, Flapjack.WordLangExpHOL.const 32#64])
  58

def word783_0_398 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_396 word783_0_397

def word783_0_399 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 236)

def word783_0_400 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_398 word783_0_399

def word783_0_401 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 212, Flapjack.WordLangExpHOL.const 40#64])
  58

def word783_0_402 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_400 word783_0_401

def word783_0_403 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 212
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 584#64]),
      Flapjack.WordLangExpHOL.const 48#64])

def word783_0_404 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_402 word783_0_403

def word783_0_405 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_404 word783_0_298

def word783_0_406 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_405 word783_0_300

def word783_0_407 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_406 word783_0_302

def word783_0_408 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_407 word783_0_304

def word783_0_409 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_408 word783_0_306

def word783_0_410 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_409 word783_0_308

def word783_0_411 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_410 word783_0_379

def word783_0_412 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_411 word783_0_381

def word783_0_413 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_412 word783_0_383

def word783_0_414 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_413 word783_0_385

def word783_0_415 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_414 word783_0_387

def word783_0_416 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_415 word783_0_389

def word783_0_417 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_416 word783_0_391

def word783_0_418 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_417 word783_0_393

def word783_0_419 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_418 word783_0_395

def word783_0_420 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_419 word783_0_397

def word783_0_421 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_420 word783_0_399

def word783_0_422 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_421 word783_0_401

def word783_0_423 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 212
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 592#64]))

def word783_0_424 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_422 word783_0_423

def word783_0_425 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.var 144)

def word783_0_426 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_424 word783_0_425

def word783_0_427 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 282 (Flapjack.WordLangExpHOL.var 286)

def word783_0_428 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_426 word783_0_427

def word783_0_429 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 12)

def word783_0_430 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_428 word783_0_429

def word783_0_431 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 166 (Flapjack.WordLangExpHOL.var 156)

def word783_0_432 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_430 word783_0_431

def word783_0_433 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.var 84)

def word783_0_434 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_432 word783_0_433

def word783_0_435 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 236 (Flapjack.WordLangExpHOL.var 228)

def word783_0_436 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_434 word783_0_435

def word783_0_437 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_436 word783_0_379

def word783_0_438 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_437 word783_0_381

def word783_0_439 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_438 word783_0_383

def word783_0_440 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_439 word783_0_385

def word783_0_441 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_440 word783_0_387

def word783_0_442 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_441 word783_0_389

def word783_0_443 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_442 word783_0_391

def word783_0_444 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_443 word783_0_393

def word783_0_445 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_444 word783_0_395

def word783_0_446 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_445 word783_0_397

def word783_0_447 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_446 word783_0_399

def word783_0_448 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_447 word783_0_401

def word783_0_449 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 212
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 592#64]),
      Flapjack.WordLangExpHOL.const 48#64])

def word783_0_450 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_448 word783_0_449

def word783_0_451 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.var 50)

def word783_0_452 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_450 word783_0_451

def word783_0_453 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 282 (Flapjack.WordLangExpHOL.var 194)

def word783_0_454 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_452 word783_0_453

def word783_0_455 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 122)

def word783_0_456 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_454 word783_0_455

def word783_0_457 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 166 (Flapjack.WordLangExpHOL.var 264)

def word783_0_458 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_456 word783_0_457

def word783_0_459 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.var 32)

def word783_0_460 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_458 word783_0_459

def word783_0_461 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 236 (Flapjack.WordLangExpHOL.var 176)

def word783_0_462 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_460 word783_0_461

def word783_0_463 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_462 word783_0_379

def word783_0_464 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_463 word783_0_381

def word783_0_465 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_464 word783_0_383

def word783_0_466 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_465 word783_0_385

def word783_0_467 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_466 word783_0_387

def word783_0_468 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_467 word783_0_389

def word783_0_469 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_468 word783_0_391

def word783_0_470 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_469 word783_0_393

def word783_0_471 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_470 word783_0_395

def word783_0_472 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_471 word783_0_397

def word783_0_473 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_472 word783_0_399

def word783_0_474 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_473 word783_0_401

def word783_0_475 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 212
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 600#64]))

def word783_0_476 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_474 word783_0_475

def word783_0_477 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_476 word783_0_339

def word783_0_478 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 282
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 600#64]))

def word783_0_479 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_477 word783_0_478

def word783_0_480 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 192#64)

def word783_0_481 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_479 word783_0_480

def word783_0_482 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_481 word783_0_480

def word783_0_483 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_482 word783_0_339

def word783_0_484 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.ffi
  (Flapjack.Basis.Pure.MlString.MlString.implode [98#8, 108#8, 115#8, 95#8, 103#8, 49#8, 95#8, 97#8, 100#8, 100#8]) 212
  140 282 22 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)

def word783_0_485 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_483 word783_0_484

def word783_0_486 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 212 (Flapjack.WordLangExpHOL.var 2)

def word783_0_487 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_485 word783_0_486

def word783_0_488 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.load
      (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
        [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
            [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
              Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
          Flapjack.WordLangExpHOL.const 584#64])))

def word783_0_489 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_487 word783_0_488

def word783_0_490 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 282
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 584#64]),
        Flapjack.WordLangExpHOL.const 8#64]))

def word783_0_491 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_489 word783_0_490

def word783_0_492 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 584#64]),
        Flapjack.WordLangExpHOL.const 16#64]))

def word783_0_493 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_491 word783_0_492

def word783_0_494 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 166
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 584#64]),
        Flapjack.WordLangExpHOL.const 24#64]))

def word783_0_495 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_493 word783_0_494

def word783_0_496 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 584#64]),
        Flapjack.WordLangExpHOL.const 32#64]))

def word783_0_497 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_495 word783_0_496

def word783_0_498 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 236
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 584#64]),
        Flapjack.WordLangExpHOL.const 40#64]))

def word783_0_499 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_497 word783_0_498

def word783_0_500 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_499 word783_0_379

def word783_0_501 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_500 word783_0_381

def word783_0_502 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_501 word783_0_383

def word783_0_503 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_502 word783_0_385

def word783_0_504 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_503 word783_0_387

def word783_0_505 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_504 word783_0_389

def word783_0_506 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_505 word783_0_391

def word783_0_507 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_506 word783_0_393

def word783_0_508 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_507 word783_0_395

def word783_0_509 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_508 word783_0_397

def word783_0_510 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_509 word783_0_399

def word783_0_511 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_510 word783_0_401

def word783_0_512 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 212
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64])

def word783_0_513 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_511 word783_0_512

def word783_0_514 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 584#64]),
        Flapjack.WordLangExpHOL.const 48#64]))

def word783_0_515 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_513 word783_0_514

def word783_0_516 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 282
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 584#64]),
            Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def word783_0_517 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_515 word783_0_516

def word783_0_518 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 584#64]),
            Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def word783_0_519 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_517 word783_0_518

def word783_0_520 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 166
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 584#64]),
            Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def word783_0_521 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_519 word783_0_520

def word783_0_522 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 584#64]),
            Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 32#64]))

def word783_0_523 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_521 word783_0_522

def word783_0_524 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 236
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 584#64]),
            Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 40#64]))

def word783_0_525 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_523 word783_0_524

def word783_0_526 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_525 word783_0_379

def word783_0_527 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_526 word783_0_381

def word783_0_528 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_527 word783_0_383

def word783_0_529 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_528 word783_0_385

def word783_0_530 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_529 word783_0_387

def word783_0_531 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_530 word783_0_389

def word783_0_532 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_531 word783_0_391

def word783_0_533 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_532 word783_0_393

def word783_0_534 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_533 word783_0_395

def word783_0_535 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_534 word783_0_397

def word783_0_536 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_535 word783_0_399

def word783_0_537 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_536 word783_0_401

def word783_0_538 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 212
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 96#64])

def word783_0_539 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_537 word783_0_538

def word783_0_540 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_539 word783_0_227

def word783_0_541 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_540 word783_0_344

def word783_0_542 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_541 word783_0_231

def word783_0_543 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_542 word783_0_239

def word783_0_544 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_543 word783_0_175

def word783_0_545 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_544 word783_0_177

def word783_0_546 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_545 word783_0_247

def word783_0_547 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_546 word783_0_381

def word783_0_548 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_547 word783_0_179

def word783_0_549 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_548 word783_0_385

def word783_0_550 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_549 word783_0_179

def word783_0_551 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_550 word783_0_389

def word783_0_552 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_551 word783_0_179

def word783_0_553 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_552 word783_0_393

def word783_0_554 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_553 word783_0_179

def word783_0_555 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_554 word783_0_397

def word783_0_556 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_555 word783_0_179

def word783_0_557 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_556 word783_0_401

def word783_0_558 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_557 word783_0_236

def word783_0_559 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [212]

def word783_0_560 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_558 word783_0_559

def word783_0_561 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 40 (Flapjack.WordRegImm.imm 0#64) word783_0_560 word783_0_23

def word783_0_562 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_561 word783_0_23

def word783_0_563 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_264 word783_0_562

def word783_0_564 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_563 word783_0_27

def word783_0_565 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.var 50)

def word783_0_566 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_564 word783_0_565

def word783_0_567 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 236 (Flapjack.WordLangExpHOL.var 194)

def word783_0_568 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_566 word783_0_567

def word783_0_569 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 122)

def word783_0_570 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_568 word783_0_569

def word783_0_571 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 202 (Flapjack.WordLangExpHOL.var 264)

def word783_0_572 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_570 word783_0_571

def word783_0_573 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 130 (Flapjack.WordLangExpHOL.var 32)

def word783_0_574 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_572 word783_0_573

def word783_0_575 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 272 (Flapjack.WordLangExpHOL.var 176)

def word783_0_576 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_574 word783_0_575

def word783_0_577 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 44)

def word783_0_578 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_576 word783_0_577

def word783_0_579 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 184 (Flapjack.WordLangExpHOL.var 188)

def word783_0_580 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_578 word783_0_579

def word783_0_581 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 112 (Flapjack.WordLangExpHOL.var 116)

def word783_0_582 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_580 word783_0_581

def word783_0_583 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 254 (Flapjack.WordLangExpHOL.var 258)

def word783_0_584 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_582 word783_0_583

def word783_0_585 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.var 26)

def word783_0_586 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_584 word783_0_585

def word783_0_587 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 220 (Flapjack.WordLangExpHOL.var 170)

def word783_0_588 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_586 word783_0_587

def word783_0_589 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 94

def word783_0_590 : WordLangProgHOL (BitVec 64) :=
.call (some (([68, 212, 140, 282, 22, 166]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
              Flapjack.Spt.ln)))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word783_0_23, 783, 24)) (some 724) ([94, 236, 58, 202, 130, 272, 40, 184, 112, 254, 76, 220]) (some (94, word783_0_589, 783, 25))

def word783_0_591 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_588 word783_0_590

def word783_0_592 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_591 word783_0_27

def word783_0_593 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 36)

def word783_0_594 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_592 word783_0_593

def word783_0_595 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 184 (Flapjack.WordLangExpHOL.var 180)

def word783_0_596 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_594 word783_0_595

def word783_0_597 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 112 (Flapjack.WordLangExpHOL.var 108)

def word783_0_598 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_596 word783_0_597

def word783_0_599 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 254 (Flapjack.WordLangExpHOL.var 250)

def word783_0_600 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_598 word783_0_599

def word783_0_601 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.var 72)

def word783_0_602 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_600 word783_0_601

def word783_0_603 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 220 (Flapjack.WordLangExpHOL.var 216)

def word783_0_604 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_602 word783_0_603

def word783_0_605 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 148 (Flapjack.WordLangExpHOL.var 240)

def word783_0_606 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_604 word783_0_605

def word783_0_607 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 290 (Flapjack.WordLangExpHOL.var 62)

def word783_0_608 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_606 word783_0_607

def word783_0_609 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 206)

def word783_0_610 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_608 word783_0_609

def word783_0_611 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 154 (Flapjack.WordLangExpHOL.var 134)

def word783_0_612 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_610 word783_0_611

def word783_0_613 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82 (Flapjack.WordLangExpHOL.var 276)

def word783_0_614 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_612 word783_0_613

def word783_0_615 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 226 (Flapjack.WordLangExpHOL.var 16)

def word783_0_616 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_614 word783_0_615

def word783_0_617 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def word783_0_618 : WordLangProgHOL (BitVec 64) :=
.call (some (([94, 236, 58, 202, 130, 272]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word783_0_23, 783, 26)) (some 724) ([40, 184, 112, 254, 76, 220, 148, 290, 10, 154, 82, 226]) (some (40, word783_0_617, 783, 27))

def word783_0_619 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_616 word783_0_618

def word783_0_620 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_619 word783_0_27

def word783_0_621 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 148 (Flapjack.WordLangExpHOL.var 144)

def word783_0_622 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_620 word783_0_621

def word783_0_623 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 290 (Flapjack.WordLangExpHOL.var 286)

def word783_0_624 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_622 word783_0_623

def word783_0_625 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def word783_0_626 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_624 word783_0_625

def word783_0_627 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 154 (Flapjack.WordLangExpHOL.var 156)

def word783_0_628 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_626 word783_0_627

def word783_0_629 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82 (Flapjack.WordLangExpHOL.var 84)

def word783_0_630 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_628 word783_0_629

def word783_0_631 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 226 (Flapjack.WordLangExpHOL.var 228)

def word783_0_632 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_630 word783_0_631

def word783_0_633 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 44)

def word783_0_634 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_632 word783_0_633

def word783_0_635 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 192 (Flapjack.WordLangExpHOL.var 188)

def word783_0_636 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_634 word783_0_635

def word783_0_637 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 120 (Flapjack.WordLangExpHOL.var 116)

def word783_0_638 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_636 word783_0_637

def word783_0_639 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 262 (Flapjack.WordLangExpHOL.var 258)

def word783_0_640 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_638 word783_0_639

def word783_0_641 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 26)

def word783_0_642 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_640 word783_0_641

def word783_0_643 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 174 (Flapjack.WordLangExpHOL.var 170)

def word783_0_644 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_642 word783_0_643

def word783_0_645 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 148

def word783_0_646 : WordLangProgHOL (BitVec 64) :=
.call (some (([40, 184, 112, 254, 76, 220]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word783_0_23, 783, 28)) (some 724) ([148, 290, 10, 154, 82, 226, 48, 192, 120, 262, 30, 174]) (some (148, word783_0_645, 783, 29))

def word783_0_647 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_644 word783_0_646

def word783_0_648 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_647 word783_0_27

def word783_0_649 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 88)

def word783_0_650 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_648 word783_0_649

def word783_0_651 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 192 (Flapjack.WordLangExpHOL.var 232)

def word783_0_652 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_650 word783_0_651

def word783_0_653 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 120 (Flapjack.WordLangExpHOL.var 54)

def word783_0_654 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_652 word783_0_653

def word783_0_655 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 262 (Flapjack.WordLangExpHOL.var 198)

def word783_0_656 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_654 word783_0_655

def word783_0_657 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 126)

def word783_0_658 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_656 word783_0_657

def word783_0_659 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 174 (Flapjack.WordLangExpHOL.var 268)

def word783_0_660 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_658 word783_0_659

def word783_0_661 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.var 240)

def word783_0_662 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_660 word783_0_661

def word783_0_663 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 244 (Flapjack.WordLangExpHOL.var 62)

def word783_0_664 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_662 word783_0_663

def word783_0_665 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 206)

def word783_0_666 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_664 word783_0_665

def word783_0_667 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 210 (Flapjack.WordLangExpHOL.var 134)

def word783_0_668 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_666 word783_0_667

def word783_0_669 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 138 (Flapjack.WordLangExpHOL.var 276)

def word783_0_670 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_668 word783_0_669

def word783_0_671 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 280 (Flapjack.WordLangExpHOL.var 16)

def word783_0_672 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_670 word783_0_671

def word783_0_673 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 48

def word783_0_674 : WordLangProgHOL (BitVec 64) :=
.call (some (([148, 290, 10, 154, 82, 226]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word783_0_23, 783, 30)) (some 724) ([48, 192, 120, 262, 30, 174, 102, 244, 66, 210, 138, 280]) (some (48, word783_0_673, 783, 31))

def word783_0_675 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_672 word783_0_674

def word783_0_676 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_675 word783_0_27

def word783_0_677 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 192 (Flapjack.WordLangExpHOL.var 40)

def word783_0_678 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_676 word783_0_677

def word783_0_679 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 120 (Flapjack.WordLangExpHOL.var 184)

def word783_0_680 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_678 word783_0_679

def word783_0_681 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 262 (Flapjack.WordLangExpHOL.var 112)

def word783_0_682 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_680 word783_0_681

def word783_0_683 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 254)

def word783_0_684 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_682 word783_0_683

def word783_0_685 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 174 (Flapjack.WordLangExpHOL.var 76)

def word783_0_686 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_684 word783_0_685

def word783_0_687 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.var 220)

def word783_0_688 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_686 word783_0_687

def word783_0_689 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 244 (Flapjack.WordLangExpHOL.var 148)

def word783_0_690 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_688 word783_0_689

def word783_0_691 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 290)

def word783_0_692 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_690 word783_0_691

def word783_0_693 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 210 (Flapjack.WordLangExpHOL.var 10)

def word783_0_694 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_692 word783_0_693

def word783_0_695 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 138 (Flapjack.WordLangExpHOL.var 154)

def word783_0_696 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_694 word783_0_695

def word783_0_697 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 280 (Flapjack.WordLangExpHOL.var 82)

def word783_0_698 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_696 word783_0_697

def word783_0_699 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 226)

def word783_0_700 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_698 word783_0_699

def word783_0_701 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 192

def word783_0_702 : WordLangProgHOL (BitVec 64) :=
.call (some (([48]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word783_0_23, 783, 32)) (some 715) ([192, 120, 262, 30, 174, 102, 244, 66, 210, 138, 280, 20]) (some (192, word783_0_701, 783, 33))

def word783_0_703 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_700 word783_0_702

def word783_0_704 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_703 word783_0_27

def word783_0_705 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 120 (Flapjack.WordLangExpHOL.var 48)

def word783_0_706 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_704 word783_0_705

def word783_0_707 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 262 (Flapjack.WordLangExpHOL.const 1#64)

def word783_0_708 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_706 word783_0_707

def word783_0_709 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 120 (Flapjack.WordLangExpHOL.const 1#64)

def word783_0_710 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_709 word783_0_27

def word783_0_711 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 1#64)

def word783_0_712 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_710 word783_0_711

def word783_0_713 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 120 (Flapjack.WordLangExpHOL.var 68)

def word783_0_714 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_712 word783_0_713

def word783_0_715 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 262 (Flapjack.WordLangExpHOL.var 212)

def word783_0_716 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_714 word783_0_715

def word783_0_717 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 140)

def word783_0_718 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_716 word783_0_717

def word783_0_719 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 174 (Flapjack.WordLangExpHOL.var 282)

def word783_0_720 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_718 word783_0_719

def word783_0_721 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.var 22)

def word783_0_722 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_720 word783_0_721

def word783_0_723 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 244 (Flapjack.WordLangExpHOL.var 166)

def word783_0_724 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_722 word783_0_723

def word783_0_725 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 94)

def word783_0_726 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_724 word783_0_725

def word783_0_727 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 210 (Flapjack.WordLangExpHOL.var 236)

def word783_0_728 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_726 word783_0_727

def word783_0_729 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 138 (Flapjack.WordLangExpHOL.var 58)

def word783_0_730 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_728 word783_0_729

def word783_0_731 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 280 (Flapjack.WordLangExpHOL.var 202)

def word783_0_732 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_730 word783_0_731

def word783_0_733 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 130)

def word783_0_734 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_732 word783_0_733

def word783_0_735 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164 (Flapjack.WordLangExpHOL.var 272)

def word783_0_736 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_734 word783_0_735

def word783_0_737 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 120

def word783_0_738 : WordLangProgHOL (BitVec 64) :=
.call (some (([192]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word783_0_23, 783, 34)) (some 715) ([120, 262, 30, 174, 102, 244, 66, 210, 138, 280, 20, 164]) (some (120, word783_0_737, 783, 35))

def word783_0_739 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_736 word783_0_738

def word783_0_740 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_739 word783_0_27

def word783_0_741 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 262 (Flapjack.WordLangExpHOL.var 192)

def word783_0_742 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_740 word783_0_741

def word783_0_743 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_742 word783_0_711

def word783_0_744 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_707 word783_0_27

def word783_0_745 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 174 (Flapjack.WordLangExpHOL.const 1#64)

def word783_0_746 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_744 word783_0_745

def word783_0_747 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 262 (Flapjack.WordLangExpHOL.var 2)

def word783_0_748 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_746 word783_0_747

def word783_0_749 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 4)

def word783_0_750 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_748 word783_0_749

def word783_0_751 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 262

def word783_0_752 : WordLangProgHOL (BitVec 64) :=
.call (some (([120]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word783_0_23, 783, 36)) (some 782) ([262, 30]) (some (262, word783_0_751, 783, 37))

def word783_0_753 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_750 word783_0_752

def word783_0_754 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_753 word783_0_27

def word783_0_755 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 120 (Flapjack.WordLangExpHOL.const 0#64)

def word783_0_756 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_754 word783_0_755

def word783_0_757 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [120]

def word783_0_758 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_756 word783_0_757

def word783_0_759 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 262 (Flapjack.WordRegImm.reg 30) word783_0_758 word783_0_23

def word783_0_760 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 262 (Flapjack.WordLangExpHOL.const 0#64)

def word783_0_761 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_760 word783_0_27

def word783_0_762 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 174 (Flapjack.WordLangExpHOL.const 0#64)

def word783_0_763 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_761 word783_0_762

def word783_0_764 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_759 word783_0_763

def word783_0_765 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_743 word783_0_764

def word783_0_766 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_765 word783_0_27

def word783_0_767 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_766 word783_0_747

def word783_0_768 : WordLangProgHOL (BitVec 64) :=
.call (some (([120]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word783_0_23, 783, 38)) (some 778) ([262]) (some (262, word783_0_751, 783, 39))

def word783_0_769 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_767 word783_0_768

def word783_0_770 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_769 word783_0_27

def word783_0_771 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_770 word783_0_755

def word783_0_772 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_771 word783_0_757

def word783_0_773 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 120 (Flapjack.WordRegImm.reg 262) word783_0_772 word783_0_23

def word783_0_774 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_755 word783_0_27

def word783_0_775 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def word783_0_776 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_774 word783_0_775

def word783_0_777 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_773 word783_0_776

def word783_0_778 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_708 word783_0_777

def word783_0_779 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_778 word783_0_27

def word783_0_780 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 244 (Flapjack.WordLangExpHOL.var 68)

def word783_0_781 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_779 word783_0_780

def word783_0_782 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 212)

def word783_0_783 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_781 word783_0_782

def word783_0_784 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 210 (Flapjack.WordLangExpHOL.var 140)

def word783_0_785 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_783 word783_0_784

def word783_0_786 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 138 (Flapjack.WordLangExpHOL.var 282)

def word783_0_787 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_785 word783_0_786

def word783_0_788 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 280 (Flapjack.WordLangExpHOL.var 22)

def word783_0_789 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_787 word783_0_788

def word783_0_790 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 166)

def word783_0_791 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_789 word783_0_790

def word783_0_792 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164 (Flapjack.WordLangExpHOL.var 94)

def word783_0_793 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_791 word783_0_792

def word783_0_794 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.var 236)

def word783_0_795 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_793 word783_0_794

def word783_0_796 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 234 (Flapjack.WordLangExpHOL.var 58)

def word783_0_797 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_795 word783_0_796

def word783_0_798 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 202)

def word783_0_799 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_797 word783_0_798

def word783_0_800 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 200 (Flapjack.WordLangExpHOL.var 130)

def word783_0_801 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_799 word783_0_800

def word783_0_802 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 128 (Flapjack.WordLangExpHOL.var 272)

def word783_0_803 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_801 word783_0_802

def word783_0_804 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 244

def word783_0_805 : WordLangProgHOL (BitVec 64) :=
.call (some (([192, 120, 262, 30, 174, 102]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word783_0_23, 783, 40)) (some 720) ([244, 66, 210, 138, 280, 20, 164, 92, 234, 56, 200, 128]) (some (244, word783_0_804, 783, 41))

def word783_0_806 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_803 word783_0_805

def word783_0_807 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_806 word783_0_27

def word783_0_808 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164 (Flapjack.WordLangExpHOL.var 40)

def word783_0_809 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_807 word783_0_808

def word783_0_810 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.var 184)

def word783_0_811 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_809 word783_0_810

def word783_0_812 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 234 (Flapjack.WordLangExpHOL.var 112)

def word783_0_813 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_811 word783_0_812

def word783_0_814 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 254)

def word783_0_815 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_813 word783_0_814

def word783_0_816 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 200 (Flapjack.WordLangExpHOL.var 76)

def word783_0_817 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_815 word783_0_816

def word783_0_818 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 128 (Flapjack.WordLangExpHOL.var 220)

def word783_0_819 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_817 word783_0_818

def word783_0_820 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 270 (Flapjack.WordLangExpHOL.var 148)

def word783_0_821 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_819 word783_0_820

def word783_0_822 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 290)

def word783_0_823 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_821 word783_0_822

def word783_0_824 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 182 (Flapjack.WordLangExpHOL.var 10)

def word783_0_825 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_823 word783_0_824

def word783_0_826 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 110 (Flapjack.WordLangExpHOL.var 154)

def word783_0_827 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_825 word783_0_826

def word783_0_828 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 252 (Flapjack.WordLangExpHOL.var 82)

def word783_0_829 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_827 word783_0_828

def word783_0_830 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 226)

def word783_0_831 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_829 word783_0_830

def word783_0_832 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 164

def word783_0_833 : WordLangProgHOL (BitVec 64) :=
.call (some (([244, 66, 210, 138, 280, 20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word783_0_23, 783, 42)) (some 720) ([164, 92, 234, 56, 200, 128, 270, 38, 182, 110, 252, 74]) (some (164, word783_0_832, 783, 43))

def word783_0_834 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_831 word783_0_833

def word783_0_835 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_834 word783_0_27

def word783_0_836 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 270 (Flapjack.WordLangExpHOL.var 244)

def word783_0_837 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_835 word783_0_836

def word783_0_838 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 66)

def word783_0_839 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_837 word783_0_838

def word783_0_840 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 182 (Flapjack.WordLangExpHOL.var 210)

def word783_0_841 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_839 word783_0_840

def word783_0_842 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 110 (Flapjack.WordLangExpHOL.var 138)

def word783_0_843 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_841 word783_0_842

def word783_0_844 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 252 (Flapjack.WordLangExpHOL.var 280)

def word783_0_845 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_843 word783_0_844

def word783_0_846 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 20)

def word783_0_847 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_845 word783_0_846

def word783_0_848 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 270

def word783_0_849 : WordLangProgHOL (BitVec 64) :=
.call (some (([164, 92, 234, 56, 200, 128]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
            PUnit.unit Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word783_0_23, 783, 44)) (some 725) ([270, 38, 182, 110, 252, 74]) (some (270, word783_0_848, 783, 45))

def word783_0_850 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_847 word783_0_849

def word783_0_851 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_850 word783_0_27

def word783_0_852 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 218 (Flapjack.WordLangExpHOL.var 164)

def word783_0_853 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_851 word783_0_852

def word783_0_854 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 146 (Flapjack.WordLangExpHOL.var 92)

def word783_0_855 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_853 word783_0_854

def word783_0_856 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 288 (Flapjack.WordLangExpHOL.var 234)

def word783_0_857 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_855 word783_0_856

def word783_0_858 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 56)

def word783_0_859 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_857 word783_0_858

def word783_0_860 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 158 (Flapjack.WordLangExpHOL.var 200)

def word783_0_861 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_859 word783_0_860

def word783_0_862 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.var 128)

def word783_0_863 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_861 word783_0_862

def word783_0_864 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 230 (Flapjack.WordLangExpHOL.var 148)

def word783_0_865 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_863 word783_0_864

def word783_0_866 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 290)

def word783_0_867 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_865 word783_0_866

def word783_0_868 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 196 (Flapjack.WordLangExpHOL.var 10)

def word783_0_869 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_867 word783_0_868

def word783_0_870 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 124 (Flapjack.WordLangExpHOL.var 154)

def word783_0_871 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_869 word783_0_870

def word783_0_872 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 266 (Flapjack.WordLangExpHOL.var 82)

def word783_0_873 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_871 word783_0_872

def word783_0_874 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 226)

def word783_0_875 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_873 word783_0_874

def word783_0_876 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 218

def word783_0_877 : WordLangProgHOL (BitVec 64) :=
.call (some (([270, 38, 182, 110, 252, 74]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word783_0_23, 783, 46)) (some 724) ([218, 146, 288, 14, 158, 86, 230, 52, 196, 124, 266, 34]) (some (218, word783_0_876, 783, 47))

def word783_0_878 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_875 word783_0_877

def word783_0_879 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_878 word783_0_27

def word783_0_880 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 230 (Flapjack.WordLangExpHOL.var 244)

def word783_0_881 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_879 word783_0_880

def word783_0_882 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 66)

def word783_0_883 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_881 word783_0_882

def word783_0_884 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 196 (Flapjack.WordLangExpHOL.var 210)

def word783_0_885 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_883 word783_0_884

def word783_0_886 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 124 (Flapjack.WordLangExpHOL.var 138)

def word783_0_887 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_885 word783_0_886

def word783_0_888 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 266 (Flapjack.WordLangExpHOL.var 280)

def word783_0_889 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_887 word783_0_888

def word783_0_890 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 20)

def word783_0_891 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_889 word783_0_890

def word783_0_892 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 178 (Flapjack.WordLangExpHOL.var 164)

def word783_0_893 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_891 word783_0_892

def word783_0_894 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 106 (Flapjack.WordLangExpHOL.var 92)

def word783_0_895 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_893 word783_0_894

def word783_0_896 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 248 (Flapjack.WordLangExpHOL.var 234)

def word783_0_897 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_895 word783_0_896

def word783_0_898 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 56)

def word783_0_899 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_897 word783_0_898

def word783_0_900 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 214 (Flapjack.WordLangExpHOL.var 200)

def word783_0_901 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_899 word783_0_900

def word783_0_902 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142 (Flapjack.WordLangExpHOL.var 128)

def word783_0_903 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_901 word783_0_902

def word783_0_904 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 230

def word783_0_905 : WordLangProgHOL (BitVec 64) :=
.call (some (([218, 146, 288, 14, 158, 86]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            PUnit.unit Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word783_0_23, 783, 48)) (some 724) ([230, 52, 196, 124, 266, 34, 178, 106, 248, 70, 214, 142]) (some (230, word783_0_904, 783, 49))

def word783_0_906 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_903 word783_0_905

def word783_0_907 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_906 word783_0_27

def word783_0_908 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 178 (Flapjack.WordLangExpHOL.var 44)

def word783_0_909 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_907 word783_0_908

def word783_0_910 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 106 (Flapjack.WordLangExpHOL.var 188)

def word783_0_911 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_909 word783_0_910

def word783_0_912 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 248 (Flapjack.WordLangExpHOL.var 116)

def word783_0_913 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_911 word783_0_912

def word783_0_914 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 258)

def word783_0_915 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_913 word783_0_914

def word783_0_916 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 214 (Flapjack.WordLangExpHOL.var 26)

def word783_0_917 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_915 word783_0_916

def word783_0_918 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142 (Flapjack.WordLangExpHOL.var 170)

def word783_0_919 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_917 word783_0_918

def word783_0_920 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 284 (Flapjack.WordLangExpHOL.var 240)

def word783_0_921 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_919 word783_0_920

def word783_0_922 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 62)

def word783_0_923 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_921 word783_0_922

def word783_0_924 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 168 (Flapjack.WordLangExpHOL.var 206)

def word783_0_925 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_923 word783_0_924

def word783_0_926 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.var 134)

def word783_0_927 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_925 word783_0_926

def word783_0_928 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 238 (Flapjack.WordLangExpHOL.var 276)

def word783_0_929 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_927 word783_0_928

def word783_0_930 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 16)

def word783_0_931 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_929 word783_0_930

def word783_0_932 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 178

def word783_0_933 : WordLangProgHOL (BitVec 64) :=
.call (some (([230, 52, 196, 124, 266, 34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln) PUnit.unit
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word783_0_23, 783, 50)) (some 724) ([178, 106, 248, 70, 214, 142, 284, 24, 168, 96, 238, 60]) (some (178, word783_0_932, 783, 51))

def word783_0_934 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_931 word783_0_933

def word783_0_935 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_934 word783_0_27

def word783_0_936 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 284 (Flapjack.WordLangExpHOL.var 192)

def word783_0_937 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_935 word783_0_936

def word783_0_938 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 120)

def word783_0_939 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_937 word783_0_938

def word783_0_940 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 168 (Flapjack.WordLangExpHOL.var 262)

def word783_0_941 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_939 word783_0_940

def word783_0_942 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.var 30)

def word783_0_943 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_941 word783_0_942

def word783_0_944 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 238 (Flapjack.WordLangExpHOL.var 174)

def word783_0_945 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_943 word783_0_944

def word783_0_946 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 102)

def word783_0_947 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_945 word783_0_946

def word783_0_948 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 284

def word783_0_949 : WordLangProgHOL (BitVec 64) :=
.call (some (([178, 106, 248, 70, 214, 142]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
            PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word783_0_23, 783, 52)) (some 725) ([284, 24, 168, 96, 238, 60]) (some (284, word783_0_948, 783, 53))

def word783_0_950 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_947 word783_0_949

def word783_0_951 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_950 word783_0_27

def word783_0_952 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 284 (Flapjack.WordLangExpHOL.var 178)

def word783_0_953 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_951 word783_0_952

def word783_0_954 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 106)

def word783_0_955 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_953 word783_0_954

def word783_0_956 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 168 (Flapjack.WordLangExpHOL.var 248)

def word783_0_957 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_955 word783_0_956

def word783_0_958 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.var 70)

def word783_0_959 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_957 word783_0_958

def word783_0_960 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 238 (Flapjack.WordLangExpHOL.var 214)

def word783_0_961 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_959 word783_0_960

def word783_0_962 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 142)

def word783_0_963 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_961 word783_0_962

def word783_0_964 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 204 (Flapjack.WordLangExpHOL.var 230)

def word783_0_965 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_963 word783_0_964

def word783_0_966 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 132 (Flapjack.WordLangExpHOL.var 52)

def word783_0_967 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_965 word783_0_966

def word783_0_968 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 274 (Flapjack.WordLangExpHOL.var 196)

def word783_0_969 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_967 word783_0_968

def word783_0_970 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 124)

def word783_0_971 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_969 word783_0_970

def word783_0_972 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 186 (Flapjack.WordLangExpHOL.var 266)

def word783_0_973 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_971 word783_0_972

def word783_0_974 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 114 (Flapjack.WordLangExpHOL.var 34)

def word783_0_975 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_973 word783_0_974

def word783_0_976 : WordLangProgHOL (BitVec 64) :=
.call (some (([178, 106, 248, 70, 214, 142]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
            PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word783_0_23, 783, 54)) (some 724) ([284, 24, 168, 96, 238, 60, 204, 132, 274, 42, 186, 114]) (some (284, word783_0_948, 783, 55))

def word783_0_977 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_975 word783_0_976

def word783_0_978 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_977 word783_0_27

def word783_0_979 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_978 word783_0_952

def word783_0_980 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_979 word783_0_954

def word783_0_981 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_980 word783_0_956

def word783_0_982 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_981 word783_0_958

def word783_0_983 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_982 word783_0_960

def word783_0_984 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_983 word783_0_962

def word783_0_985 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 204 (Flapjack.WordLangExpHOL.var 218)

def word783_0_986 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_984 word783_0_985

def word783_0_987 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 132 (Flapjack.WordLangExpHOL.var 146)

def word783_0_988 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_986 word783_0_987

def word783_0_989 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 274 (Flapjack.WordLangExpHOL.var 288)

def word783_0_990 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_988 word783_0_989

def word783_0_991 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 14)

def word783_0_992 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_990 word783_0_991

def word783_0_993 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 186 (Flapjack.WordLangExpHOL.var 158)

def word783_0_994 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_992 word783_0_993

def word783_0_995 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 114 (Flapjack.WordLangExpHOL.var 86)

def word783_0_996 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_994 word783_0_995

def word783_0_997 : WordLangProgHOL (BitVec 64) :=
.call (some (([178, 106, 248, 70, 214, 142]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
            PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word783_0_23, 783, 56)) (some 720) ([284, 24, 168, 96, 238, 60, 204, 132, 274, 42, 186, 114]) (some (284, word783_0_948, 783, 57))

def word783_0_998 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_996 word783_0_997

def word783_0_999 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_998 word783_0_27

def word783_0_1000 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 204 (Flapjack.WordLangExpHOL.var 270)

def word783_0_1001 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_999 word783_0_1000

def word783_0_1002 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 132 (Flapjack.WordLangExpHOL.var 38)

def word783_0_1003 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1001 word783_0_1002

def word783_0_1004 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 274 (Flapjack.WordLangExpHOL.var 182)

def word783_0_1005 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1003 word783_0_1004

def word783_0_1006 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 110)

def word783_0_1007 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1005 word783_0_1006

def word783_0_1008 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 186 (Flapjack.WordLangExpHOL.var 252)

def word783_0_1009 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1007 word783_0_1008

def word783_0_1010 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 114 (Flapjack.WordLangExpHOL.var 74)

def word783_0_1011 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1009 word783_0_1010

def word783_0_1012 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 256 (Flapjack.WordLangExpHOL.var 270)

def word783_0_1013 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1011 word783_0_1012

def word783_0_1014 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 38)

def word783_0_1015 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1013 word783_0_1014

def word783_0_1016 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 222 (Flapjack.WordLangExpHOL.var 182)

def word783_0_1017 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1015 word783_0_1016

def word783_0_1018 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 150 (Flapjack.WordLangExpHOL.var 110)

def word783_0_1019 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1017 word783_0_1018

def word783_0_1020 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 292 (Flapjack.WordLangExpHOL.var 252)

def word783_0_1021 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1019 word783_0_1020

def word783_0_1022 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 74)

def word783_0_1023 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1021 word783_0_1022

def word783_0_1024 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 204

def word783_0_1025 : WordLangProgHOL (BitVec 64) :=
.call (some (([284, 24, 168, 96, 238, 60]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
            PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word783_0_23, 783, 58)) (some 719) ([204, 132, 274, 42, 186, 114, 256, 78, 222, 150, 292, 8]) (some (204, word783_0_1024, 783, 59))

def word783_0_1026 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1023 word783_0_1025

def word783_0_1027 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1026 word783_0_27

def word783_0_1028 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 204 (Flapjack.WordLangExpHOL.var 178)

def word783_0_1029 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1027 word783_0_1028

def word783_0_1030 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 132 (Flapjack.WordLangExpHOL.var 106)

def word783_0_1031 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1029 word783_0_1030

def word783_0_1032 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 274 (Flapjack.WordLangExpHOL.var 248)

def word783_0_1033 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1031 word783_0_1032

def word783_0_1034 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 70)

def word783_0_1035 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1033 word783_0_1034

def word783_0_1036 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 186 (Flapjack.WordLangExpHOL.var 214)

def word783_0_1037 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1035 word783_0_1036

def word783_0_1038 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 114 (Flapjack.WordLangExpHOL.var 142)

def word783_0_1039 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1037 word783_0_1038

def word783_0_1040 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 256 (Flapjack.WordLangExpHOL.var 284)

def word783_0_1041 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1039 word783_0_1040

def word783_0_1042 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 24)

def word783_0_1043 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1041 word783_0_1042

def word783_0_1044 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 222 (Flapjack.WordLangExpHOL.var 168)

def word783_0_1045 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1043 word783_0_1044

def word783_0_1046 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 150 (Flapjack.WordLangExpHOL.var 96)

def word783_0_1047 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1045 word783_0_1046

def word783_0_1048 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 292 (Flapjack.WordLangExpHOL.var 238)

def word783_0_1049 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1047 word783_0_1048

def word783_0_1050 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 60)

def word783_0_1051 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1049 word783_0_1050

def word783_0_1052 : WordLangProgHOL (BitVec 64) :=
.call (some (([178, 106, 248, 70, 214, 142]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
            PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word783_0_23, 783, 60)) (some 720) ([204, 132, 274, 42, 186, 114, 256, 78, 222, 150, 292, 8]) (some (204, word783_0_1024, 783, 61))

def word783_0_1053 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1051 word783_0_1052

def word783_0_1054 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1053 word783_0_27

def word783_0_1055 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 256 (Flapjack.WordLangExpHOL.var 244)

def word783_0_1056 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1054 word783_0_1055

def word783_0_1057 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 66)

def word783_0_1058 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1056 word783_0_1057

def word783_0_1059 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 222 (Flapjack.WordLangExpHOL.var 210)

def word783_0_1060 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1058 word783_0_1059

def word783_0_1061 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 150 (Flapjack.WordLangExpHOL.var 138)

def word783_0_1062 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1060 word783_0_1061

def word783_0_1063 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 292 (Flapjack.WordLangExpHOL.var 280)

def word783_0_1064 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1062 word783_0_1063

def word783_0_1065 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 20)

def word783_0_1066 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1064 word783_0_1065

def word783_0_1067 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 152 (Flapjack.WordLangExpHOL.var 178)

def word783_0_1068 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1066 word783_0_1067

def word783_0_1069 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.var 106)

def word783_0_1070 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1068 word783_0_1069

def word783_0_1071 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 224 (Flapjack.WordLangExpHOL.var 248)

def word783_0_1072 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1070 word783_0_1071

def word783_0_1073 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 70)

def word783_0_1074 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1072 word783_0_1073

def word783_0_1075 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 190 (Flapjack.WordLangExpHOL.var 214)

def word783_0_1076 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1074 word783_0_1075

def word783_0_1077 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 118 (Flapjack.WordLangExpHOL.var 142)

def word783_0_1078 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1076 word783_0_1077

def word783_0_1079 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 256

def word783_0_1080 : WordLangProgHOL (BitVec 64) :=
.call (some (([204, 132, 274, 42, 186, 114]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word783_0_23, 783, 62)) (some 724) ([256, 78, 222, 150, 292, 8, 152, 80, 224, 46, 190, 118]) (some (256, word783_0_1079, 783, 63))

def word783_0_1081 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1078 word783_0_1080

def word783_0_1082 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1081 word783_0_27

def word783_0_1083 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 152 (Flapjack.WordLangExpHOL.var 270)

def word783_0_1084 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1082 word783_0_1083

def word783_0_1085 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.var 38)

def word783_0_1086 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1084 word783_0_1085

def word783_0_1087 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 224 (Flapjack.WordLangExpHOL.var 182)

def word783_0_1088 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1086 word783_0_1087

def word783_0_1089 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 110)

def word783_0_1090 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1088 word783_0_1089

def word783_0_1091 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 190 (Flapjack.WordLangExpHOL.var 252)

def word783_0_1092 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1090 word783_0_1091

def word783_0_1093 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 118 (Flapjack.WordLangExpHOL.var 74)

def word783_0_1094 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1092 word783_0_1093

def word783_0_1095 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 260 (Flapjack.WordLangExpHOL.var 178)

def word783_0_1096 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1094 word783_0_1095

def word783_0_1097 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 106)

def word783_0_1098 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1096 word783_0_1097

def word783_0_1099 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 172 (Flapjack.WordLangExpHOL.var 248)

def word783_0_1100 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1098 word783_0_1099

def word783_0_1101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 100 (Flapjack.WordLangExpHOL.var 70)

def word783_0_1102 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1100 word783_0_1101

def word783_0_1103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 242 (Flapjack.WordLangExpHOL.var 214)

def word783_0_1104 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1102 word783_0_1103

def word783_0_1105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 142)

def word783_0_1106 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1104 word783_0_1105

def word783_0_1107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 152

def word783_0_1108 : WordLangProgHOL (BitVec 64) :=
.call (some (([256, 78, 222, 150, 292, 8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word783_0_23, 783, 64)) (some 720) ([152, 80, 224, 46, 190, 118, 260, 28, 172, 100, 242, 64]) (some (152, word783_0_1107, 783, 65))

def word783_0_1109 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1106 word783_0_1108

def word783_0_1110 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1109 word783_0_27

def word783_0_1111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 152 (Flapjack.WordLangExpHOL.var 192)

def word783_0_1112 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1110 word783_0_1111

def word783_0_1113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.var 120)

def word783_0_1114 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1112 word783_0_1113

def word783_0_1115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 224 (Flapjack.WordLangExpHOL.var 262)

def word783_0_1116 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1114 word783_0_1115

def word783_0_1117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 30)

def word783_0_1118 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1116 word783_0_1117

def word783_0_1119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 190 (Flapjack.WordLangExpHOL.var 174)

def word783_0_1120 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1118 word783_0_1119

def word783_0_1121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 118 (Flapjack.WordLangExpHOL.var 102)

def word783_0_1122 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1120 word783_0_1121

def word783_0_1123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 260 (Flapjack.WordLangExpHOL.var 256)

def word783_0_1124 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1122 word783_0_1123

def word783_0_1125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 78)

def word783_0_1126 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1124 word783_0_1125

def word783_0_1127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 172 (Flapjack.WordLangExpHOL.var 222)

def word783_0_1128 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1126 word783_0_1127

def word783_0_1129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 100 (Flapjack.WordLangExpHOL.var 150)

def word783_0_1130 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1128 word783_0_1129

def word783_0_1131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 242 (Flapjack.WordLangExpHOL.var 292)

def word783_0_1132 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1130 word783_0_1131

def word783_0_1133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 8)

def word783_0_1134 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1132 word783_0_1133

def word783_0_1135 : WordLangProgHOL (BitVec 64) :=
.call (some (([256, 78, 222, 150, 292, 8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word783_0_23, 783, 66)) (some 724) ([152, 80, 224, 46, 190, 118, 260, 28, 172, 100, 242, 64]) (some (152, word783_0_1107, 783, 67))

def word783_0_1136 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1134 word783_0_1135

def word783_0_1137 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1136 word783_0_27

def word783_0_1138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 152 (Flapjack.WordLangExpHOL.var 218)

def word783_0_1139 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1137 word783_0_1138

def word783_0_1140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.var 146)

def word783_0_1141 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1139 word783_0_1140

def word783_0_1142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 224 (Flapjack.WordLangExpHOL.var 288)

def word783_0_1143 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1141 word783_0_1142

def word783_0_1144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 14)

def word783_0_1145 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1143 word783_0_1144

def word783_0_1146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 190 (Flapjack.WordLangExpHOL.var 158)

def word783_0_1147 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1145 word783_0_1146

def word783_0_1148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 118 (Flapjack.WordLangExpHOL.var 86)

def word783_0_1149 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1147 word783_0_1148

def word783_0_1150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 260 (Flapjack.WordLangExpHOL.var 94)

def word783_0_1151 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1149 word783_0_1150

def word783_0_1152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 236)

def word783_0_1153 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1151 word783_0_1152

def word783_0_1154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 172 (Flapjack.WordLangExpHOL.var 58)

def word783_0_1155 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1153 word783_0_1154

def word783_0_1156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 100 (Flapjack.WordLangExpHOL.var 202)

def word783_0_1157 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1155 word783_0_1156

def word783_0_1158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 242 (Flapjack.WordLangExpHOL.var 130)

def word783_0_1159 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1157 word783_0_1158

def word783_0_1160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 272)

def word783_0_1161 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1159 word783_0_1160

def word783_0_1162 : WordLangProgHOL (BitVec 64) :=
.call (some (([284, 24, 168, 96, 238, 60]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word783_0_23, 783, 68)) (some 724) ([152, 80, 224, 46, 190, 118, 260, 28, 172, 100, 242, 64]) (some (152, word783_0_1107, 783, 69))

def word783_0_1163 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1161 word783_0_1162

def word783_0_1164 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1163 word783_0_27

def word783_0_1165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 152 (Flapjack.WordLangExpHOL.var 256)

def word783_0_1166 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1164 word783_0_1165

def word783_0_1167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.var 78)

def word783_0_1168 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1166 word783_0_1167

def word783_0_1169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 224 (Flapjack.WordLangExpHOL.var 222)

def word783_0_1170 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1168 word783_0_1169

def word783_0_1171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 150)

def word783_0_1172 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1170 word783_0_1171

def word783_0_1173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 190 (Flapjack.WordLangExpHOL.var 292)

def word783_0_1174 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1172 word783_0_1173

def word783_0_1175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 118 (Flapjack.WordLangExpHOL.var 8)

def word783_0_1176 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1174 word783_0_1175

def word783_0_1177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 260 (Flapjack.WordLangExpHOL.var 284)

def word783_0_1178 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1176 word783_0_1177

def word783_0_1179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 24)

def word783_0_1180 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1178 word783_0_1179

def word783_0_1181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 172 (Flapjack.WordLangExpHOL.var 168)

def word783_0_1182 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1180 word783_0_1181

def word783_0_1183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 100 (Flapjack.WordLangExpHOL.var 96)

def word783_0_1184 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1182 word783_0_1183

def word783_0_1185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 242 (Flapjack.WordLangExpHOL.var 238)

def word783_0_1186 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1184 word783_0_1185

def word783_0_1187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 60)

def word783_0_1188 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1186 word783_0_1187

def word783_0_1189 : WordLangProgHOL (BitVec 64) :=
.call (some (([256, 78, 222, 150, 292, 8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word783_0_23, 783, 70)) (some 720) ([152, 80, 224, 46, 190, 118, 260, 28, 172, 100, 242, 64]) (some (152, word783_0_1107, 783, 71))

def word783_0_1190 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1188 word783_0_1189

def word783_0_1191 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1190 word783_0_27

def word783_0_1192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 260 (Flapjack.WordLangExpHOL.var 218)

def word783_0_1193 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1191 word783_0_1192

def word783_0_1194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 146)

def word783_0_1195 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1193 word783_0_1194

def word783_0_1196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 172 (Flapjack.WordLangExpHOL.var 288)

def word783_0_1197 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1195 word783_0_1196

def word783_0_1198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 100 (Flapjack.WordLangExpHOL.var 14)

def word783_0_1199 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1197 word783_0_1198

def word783_0_1200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 242 (Flapjack.WordLangExpHOL.var 158)

def word783_0_1201 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1199 word783_0_1200

def word783_0_1202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 86)

def word783_0_1203 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1201 word783_0_1202

def word783_0_1204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 208 (Flapjack.WordLangExpHOL.var 230)

def word783_0_1205 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1203 word783_0_1204

def word783_0_1206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 136 (Flapjack.WordLangExpHOL.var 52)

def word783_0_1207 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1205 word783_0_1206

def word783_0_1208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 278 (Flapjack.WordLangExpHOL.var 196)

def word783_0_1209 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1207 word783_0_1208

def word783_0_1210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 124)

def word783_0_1211 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1209 word783_0_1210

def word783_0_1212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 162 (Flapjack.WordLangExpHOL.var 266)

def word783_0_1213 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1211 word783_0_1212

def word783_0_1214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 90 (Flapjack.WordLangExpHOL.var 34)

def word783_0_1215 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1213 word783_0_1214

def word783_0_1216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 260

def word783_0_1217 : WordLangProgHOL (BitVec 64) :=
.call (some (([152, 80, 224, 46, 190, 118]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word783_0_23, 783, 72)) (some 724) ([260, 28, 172, 100, 242, 64, 208, 136, 278, 18, 162, 90]) (some (260, word783_0_1216, 783, 73))

def word783_0_1218 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1215 word783_0_1217

def word783_0_1219 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1218 word783_0_27

def word783_0_1220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 260 (Flapjack.WordLangExpHOL.var 2)

def word783_0_1221 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1219 word783_0_1220

def word783_0_1222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 204)

def word783_0_1223 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1221 word783_0_1222

def word783_0_1224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 172 (Flapjack.WordLangExpHOL.var 132)

def word783_0_1225 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1223 word783_0_1224

def word783_0_1226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 100 (Flapjack.WordLangExpHOL.var 274)

def word783_0_1227 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1225 word783_0_1226

def word783_0_1228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 242 (Flapjack.WordLangExpHOL.var 42)

def word783_0_1229 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1227 word783_0_1228

def word783_0_1230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 186)

def word783_0_1231 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1229 word783_0_1230

def word783_0_1232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 208 (Flapjack.WordLangExpHOL.var 114)

def word783_0_1233 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1231 word783_0_1232

def word783_0_1234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 136 (Flapjack.WordLangExpHOL.var 28)

def word783_0_1235 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1233 word783_0_1234

def word783_0_1236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 260) 136

def word783_0_1237 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1235 word783_0_1236

def word783_0_1238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 136 (Flapjack.WordLangExpHOL.var 172)

def word783_0_1239 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1237 word783_0_1238

def word783_0_1240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 260, Flapjack.WordLangExpHOL.const 8#64])
  136

def word783_0_1241 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1239 word783_0_1240

def word783_0_1242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 136 (Flapjack.WordLangExpHOL.var 100)

def word783_0_1243 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1241 word783_0_1242

def word783_0_1244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 260, Flapjack.WordLangExpHOL.const 16#64])
  136

def word783_0_1245 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1243 word783_0_1244

def word783_0_1246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 136 (Flapjack.WordLangExpHOL.var 242)

def word783_0_1247 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1245 word783_0_1246

def word783_0_1248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 260, Flapjack.WordLangExpHOL.const 24#64])
  136

def word783_0_1249 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1247 word783_0_1248

def word783_0_1250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 136 (Flapjack.WordLangExpHOL.var 64)

def word783_0_1251 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1249 word783_0_1250

def word783_0_1252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 260, Flapjack.WordLangExpHOL.const 32#64])
  136

def word783_0_1253 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1251 word783_0_1252

def word783_0_1254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 136 (Flapjack.WordLangExpHOL.var 208)

def word783_0_1255 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1253 word783_0_1254

def word783_0_1256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 260, Flapjack.WordLangExpHOL.const 40#64])
  136

def word783_0_1257 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1255 word783_0_1256

def word783_0_1258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 260
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64])

def word783_0_1259 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1257 word783_0_1258

def word783_0_1260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 256)

def word783_0_1261 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1259 word783_0_1260

def word783_0_1262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 172 (Flapjack.WordLangExpHOL.var 78)

def word783_0_1263 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1261 word783_0_1262

def word783_0_1264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 100 (Flapjack.WordLangExpHOL.var 222)

def word783_0_1265 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1263 word783_0_1264

def word783_0_1266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 242 (Flapjack.WordLangExpHOL.var 150)

def word783_0_1267 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1265 word783_0_1266

def word783_0_1268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 292)

def word783_0_1269 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1267 word783_0_1268

def word783_0_1270 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 208 (Flapjack.WordLangExpHOL.var 8)

def word783_0_1271 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1269 word783_0_1270

def word783_0_1272 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1271 word783_0_1234

def word783_0_1273 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1272 word783_0_1236

def word783_0_1274 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1273 word783_0_1238

def word783_0_1275 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1274 word783_0_1240

def word783_0_1276 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1275 word783_0_1242

def word783_0_1277 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1276 word783_0_1244

def word783_0_1278 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1277 word783_0_1246

def word783_0_1279 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1278 word783_0_1248

def word783_0_1280 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1279 word783_0_1250

def word783_0_1281 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1280 word783_0_1252

def word783_0_1282 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1281 word783_0_1254

def word783_0_1283 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1282 word783_0_1256

def word783_0_1284 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 260
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 96#64])

def word783_0_1285 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1283 word783_0_1284

def word783_0_1286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 152)

def word783_0_1287 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1285 word783_0_1286

def word783_0_1288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 172 (Flapjack.WordLangExpHOL.var 80)

def word783_0_1289 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1287 word783_0_1288

def word783_0_1290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 100 (Flapjack.WordLangExpHOL.var 224)

def word783_0_1291 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1289 word783_0_1290

def word783_0_1292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 242 (Flapjack.WordLangExpHOL.var 46)

def word783_0_1293 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1291 word783_0_1292

def word783_0_1294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 190)

def word783_0_1295 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1293 word783_0_1294

def word783_0_1296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 208 (Flapjack.WordLangExpHOL.var 118)

def word783_0_1297 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1295 word783_0_1296

def word783_0_1298 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1297 word783_0_1234

def word783_0_1299 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1298 word783_0_1236

def word783_0_1300 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1299 word783_0_1238

def word783_0_1301 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1300 word783_0_1240

def word783_0_1302 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1301 word783_0_1242

def word783_0_1303 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1302 word783_0_1244

def word783_0_1304 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1303 word783_0_1246

def word783_0_1305 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1304 word783_0_1248

def word783_0_1306 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1305 word783_0_1250

def word783_0_1307 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1306 word783_0_1252

def word783_0_1308 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1307 word783_0_1254

def word783_0_1309 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1308 word783_0_1256

def word783_0_1310 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 260 (Flapjack.WordLangExpHOL.const 0#64)

def word783_0_1311 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1309 word783_0_1310

def word783_0_1312 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [260]

def word783_0_1313 : WordLangProgHOL (BitVec 64) :=
.seq word783_0_1311 word783_0_1312

def pass783_0 : WordLangProgHOL (BitVec 64) :=
word783_0_1313
end InitECandidate.Proofs.WordStages.Parallel783
