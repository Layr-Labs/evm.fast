import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Source770
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def word770_0_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 168 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 4))

def word770_0_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 8#64]))

def word770_0_2 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_0 word770_0_1

def word770_0_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 16#64]))

def word770_0_4 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_2 word770_0_3

def word770_0_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 24#64]))

def word770_0_6 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_4 word770_0_5

def word770_0_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 196
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 32#64]))

def word770_0_8 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_6 word770_0_7

def word770_0_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 40#64]))

def word770_0_10 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_8 word770_0_9

def word770_0_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 126
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64]))

def word770_0_12 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_10 word770_0_11

def word770_0_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def word770_0_14 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_12 word770_0_13

def word770_0_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 182
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def word770_0_16 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_14 word770_0_15

def word770_0_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def word770_0_18 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_16 word770_0_17

def word770_0_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 154
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 32#64]))

def word770_0_20 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_18 word770_0_19

def word770_0_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 100
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 40#64]))

def word770_0_22 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_20 word770_0_21

def word770_0_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 210
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 96#64]))

def word770_0_24 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_22 word770_0_23

def word770_0_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 96#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def word770_0_26 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_24 word770_0_25

def word770_0_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 120
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 96#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def word770_0_28 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_26 word770_0_27

def word770_0_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 96#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def word770_0_30 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_28 word770_0_29

def word770_0_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 176
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 96#64],
        Flapjack.WordLangExpHOL.const 32#64]))

def word770_0_32 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_30 word770_0_31

def word770_0_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 96#64],
        Flapjack.WordLangExpHOL.const 40#64]))

def word770_0_34 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_32 word770_0_33

def word770_0_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 190 (Flapjack.WordLangExpHOL.var 168)

def word770_0_36 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_34 word770_0_35

def word770_0_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 32)

def word770_0_38 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_36 word770_0_37

def word770_0_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 162 (Flapjack.WordLangExpHOL.var 140)

def word770_0_40 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_38 word770_0_39

def word770_0_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108 (Flapjack.WordLangExpHOL.var 86)

def word770_0_42 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_40 word770_0_41

def word770_0_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 216 (Flapjack.WordLangExpHOL.var 196)

def word770_0_44 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_42 word770_0_43

def word770_0_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 18)

def word770_0_46 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_44 word770_0_45

def word770_0_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def word770_0_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 190

def word770_0_49 : WordLangProgHOL (BitVec 64) :=
.call (some (([148, 94, 204, 26, 134, 80]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word770_0_47, 770, 2)) (some 715) ([190, 54, 162, 108, 216, 8]) (some (190, word770_0_48, 770, 3))

def word770_0_50 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_46 word770_0_49

def word770_0_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def word770_0_52 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_50 word770_0_51

def word770_0_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 116 (Flapjack.WordLangExpHOL.var 148)

def word770_0_54 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_52 word770_0_53

def word770_0_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 94)

def word770_0_56 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_54 word770_0_55

def word770_0_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 172 (Flapjack.WordLangExpHOL.var 204)

def word770_0_58 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_56 word770_0_57

def word770_0_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 26)

def word770_0_60 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_58 word770_0_59

def word770_0_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 144 (Flapjack.WordLangExpHOL.var 134)

def word770_0_62 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_60 word770_0_61

def word770_0_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 90 (Flapjack.WordLangExpHOL.var 80)

def word770_0_64 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_62 word770_0_63

def word770_0_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 200 (Flapjack.WordLangExpHOL.var 148)

def word770_0_66 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_64 word770_0_65

def word770_0_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 94)

def word770_0_68 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_66 word770_0_67

def word770_0_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 130 (Flapjack.WordLangExpHOL.var 204)

def word770_0_70 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_68 word770_0_69

def word770_0_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.var 26)

def word770_0_72 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_70 word770_0_71

def word770_0_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 186 (Flapjack.WordLangExpHOL.var 134)

def word770_0_74 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_72 word770_0_73

def word770_0_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 80)

def word770_0_76 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_74 word770_0_75

def word770_0_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 116

def word770_0_78 : WordLangProgHOL (BitVec 64) :=
.call (some (([190, 54, 162, 108, 216, 8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) PUnit.unit
            Flapjack.Spt.ln)
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word770_0_47, 770, 4)) (some 710) ([116, 62, 172, 36, 144, 90, 200, 22, 130, 76, 186, 50]) (some (116, word770_0_77, 770, 5))

def word770_0_79 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_76 word770_0_78

def word770_0_80 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_79 word770_0_51

def word770_0_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 116 (Flapjack.WordLangExpHOL.var 190)

def word770_0_82 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_80 word770_0_81

def word770_0_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 54)

def word770_0_84 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_82 word770_0_83

def word770_0_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 172 (Flapjack.WordLangExpHOL.var 162)

def word770_0_86 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_84 word770_0_85

def word770_0_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 108)

def word770_0_88 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_86 word770_0_87

def word770_0_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 144 (Flapjack.WordLangExpHOL.var 216)

def word770_0_90 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_88 word770_0_89

def word770_0_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 90 (Flapjack.WordLangExpHOL.var 8)

def word770_0_92 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_90 word770_0_91

def word770_0_93 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_92 word770_0_65

def word770_0_94 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_93 word770_0_67

def word770_0_95 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_94 word770_0_69

def word770_0_96 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_95 word770_0_71

def word770_0_97 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_96 word770_0_73

def word770_0_98 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_97 word770_0_75

def word770_0_99 : WordLangProgHOL (BitVec 64) :=
.call (some (([148, 94, 204, 26, 134, 80]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word770_0_47, 770, 6)) (some 710) ([116, 62, 172, 36, 144, 90, 200, 22, 130, 76, 186, 50]) (some (116, word770_0_77, 770, 7))

def word770_0_100 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_98 word770_0_99

def word770_0_101 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_100 word770_0_51

def word770_0_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 200 (Flapjack.WordLangExpHOL.var 126)

def word770_0_103 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_101 word770_0_102

def word770_0_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 72)

def word770_0_105 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_103 word770_0_104

def word770_0_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 130 (Flapjack.WordLangExpHOL.var 182)

def word770_0_107 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_105 word770_0_106

def word770_0_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.var 46)

def word770_0_109 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_107 word770_0_108

def word770_0_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 186 (Flapjack.WordLangExpHOL.var 154)

def word770_0_111 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_109 word770_0_110

def word770_0_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 100)

def word770_0_113 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_111 word770_0_112

def word770_0_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 158 (Flapjack.WordLangExpHOL.var 210)

def word770_0_115 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_113 word770_0_114

def word770_0_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 104 (Flapjack.WordLangExpHOL.var 12)

def word770_0_117 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_115 word770_0_116

def word770_0_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 214 (Flapjack.WordLangExpHOL.var 120)

def word770_0_119 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_117 word770_0_118

def word770_0_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 66)

def word770_0_121 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_119 word770_0_120

def word770_0_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 124 (Flapjack.WordLangExpHOL.var 176)

def word770_0_123 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_121 word770_0_122

def word770_0_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 40)

def word770_0_125 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_123 word770_0_124

def word770_0_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 200

def word770_0_127 : WordLangProgHOL (BitVec 64) :=
.call (some (([116, 62, 172, 36, 144, 90]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) PUnit.unit
            Flapjack.Spt.ln)
          (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word770_0_47, 770, 8)) (some 714) ([200, 22, 130, 76, 186, 50, 158, 104, 214, 16, 124, 70]) (some (200, word770_0_126, 770, 9))

def word770_0_128 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_125 word770_0_127

def word770_0_129 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_128 word770_0_51

def word770_0_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 158 (Flapjack.WordLangExpHOL.var 168)

def word770_0_131 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_129 word770_0_130

def word770_0_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 104 (Flapjack.WordLangExpHOL.var 32)

def word770_0_133 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_131 word770_0_132

def word770_0_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 214 (Flapjack.WordLangExpHOL.var 140)

def word770_0_135 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_133 word770_0_134

def word770_0_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 86)

def word770_0_137 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_135 word770_0_136

def word770_0_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 124 (Flapjack.WordLangExpHOL.var 196)

def word770_0_139 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_137 word770_0_138

def word770_0_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 18)

def word770_0_141 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_139 word770_0_140

def word770_0_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 180 (Flapjack.WordLangExpHOL.var 126)

def word770_0_143 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_141 word770_0_142

def word770_0_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 72)

def word770_0_145 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_143 word770_0_144

def word770_0_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 152 (Flapjack.WordLangExpHOL.var 182)

def word770_0_147 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_145 word770_0_146

def word770_0_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.var 46)

def word770_0_149 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_147 word770_0_148

def word770_0_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 208 (Flapjack.WordLangExpHOL.var 154)

def word770_0_151 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_149 word770_0_150

def word770_0_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 100)

def word770_0_153 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_151 word770_0_152

def word770_0_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 158

def word770_0_155 : WordLangProgHOL (BitVec 64) :=
.call (some (([200, 22, 130, 76, 186, 50]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word770_0_47, 770, 10)) (some 714) ([158, 104, 214, 16, 124, 70, 180, 44, 152, 98, 208, 30]) (some (158, word770_0_154, 770, 11))

def word770_0_156 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_153 word770_0_155

def word770_0_157 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_156 word770_0_51

def word770_0_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 158 (Flapjack.WordLangExpHOL.var 200)

def word770_0_159 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_157 word770_0_158

def word770_0_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 104 (Flapjack.WordLangExpHOL.var 22)

def word770_0_161 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_159 word770_0_160

def word770_0_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 214 (Flapjack.WordLangExpHOL.var 130)

def word770_0_163 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_161 word770_0_162

def word770_0_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 76)

def word770_0_165 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_163 word770_0_164

def word770_0_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 124 (Flapjack.WordLangExpHOL.var 186)

def word770_0_167 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_165 word770_0_166

def word770_0_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 50)

def word770_0_169 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_167 word770_0_168

def word770_0_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 180 (Flapjack.WordLangExpHOL.var 116)

def word770_0_171 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_169 word770_0_170

def word770_0_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 62)

def word770_0_173 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_171 word770_0_172

def word770_0_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 152 (Flapjack.WordLangExpHOL.var 172)

def word770_0_175 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_173 word770_0_174

def word770_0_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.var 36)

def word770_0_177 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_175 word770_0_176

def word770_0_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 208 (Flapjack.WordLangExpHOL.var 144)

def word770_0_179 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_177 word770_0_178

def word770_0_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 90)

def word770_0_181 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_179 word770_0_180

def word770_0_182 : WordLangProgHOL (BitVec 64) :=
.call (some (([200, 22, 130, 76, 186, 50]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word770_0_47, 770, 12)) (some 714) ([158, 104, 214, 16, 124, 70, 180, 44, 152, 98, 208, 30]) (some (158, word770_0_154, 770, 13))

def word770_0_183 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_181 word770_0_182

def word770_0_184 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_183 word770_0_51

def word770_0_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 180 (Flapjack.WordLangExpHOL.var 200)

def word770_0_186 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_184 word770_0_185

def word770_0_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 22)

def word770_0_188 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_186 word770_0_187

def word770_0_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 152 (Flapjack.WordLangExpHOL.var 130)

def word770_0_190 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_188 word770_0_189

def word770_0_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.var 76)

def word770_0_192 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_190 word770_0_191

def word770_0_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 208 (Flapjack.WordLangExpHOL.var 186)

def word770_0_194 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_192 word770_0_193

def word770_0_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 50)

def word770_0_196 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_194 word770_0_195

def word770_0_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 138 (Flapjack.WordLangExpHOL.var 200)

def word770_0_198 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_196 word770_0_197

def word770_0_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 84 (Flapjack.WordLangExpHOL.var 22)

def word770_0_200 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_198 word770_0_199

def word770_0_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 194 (Flapjack.WordLangExpHOL.var 130)

def word770_0_202 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_200 word770_0_201

def word770_0_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 76)

def word770_0_204 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_202 word770_0_203

def word770_0_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 166 (Flapjack.WordLangExpHOL.var 186)

def word770_0_206 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_204 word770_0_205

def word770_0_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 112 (Flapjack.WordLangExpHOL.var 50)

def word770_0_208 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_206 word770_0_207

def word770_0_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 180

def word770_0_210 : WordLangProgHOL (BitVec 64) :=
.call (some (([158, 104, 214, 16, 124, 70]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word770_0_47, 770, 14)) (some 710) ([180, 44, 152, 98, 208, 30, 138, 84, 194, 58, 166, 112]) (some (180, word770_0_209, 770, 15))

def word770_0_211 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_208 word770_0_210

def word770_0_212 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_211 word770_0_51

def word770_0_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 180 (Flapjack.WordLangExpHOL.var 158)

def word770_0_214 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_212 word770_0_213

def word770_0_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 104)

def word770_0_216 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_214 word770_0_215

def word770_0_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 152 (Flapjack.WordLangExpHOL.var 214)

def word770_0_218 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_216 word770_0_217

def word770_0_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.var 16)

def word770_0_220 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_218 word770_0_219

def word770_0_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 208 (Flapjack.WordLangExpHOL.var 124)

def word770_0_222 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_220 word770_0_221

def word770_0_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 70)

def word770_0_224 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_222 word770_0_223

def word770_0_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 138 (Flapjack.WordLangExpHOL.var 158)

def word770_0_226 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_224 word770_0_225

def word770_0_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 84 (Flapjack.WordLangExpHOL.var 104)

def word770_0_228 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_226 word770_0_227

def word770_0_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 194 (Flapjack.WordLangExpHOL.var 214)

def word770_0_230 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_228 word770_0_229

def word770_0_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 16)

def word770_0_232 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_230 word770_0_231

def word770_0_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 166 (Flapjack.WordLangExpHOL.var 124)

def word770_0_234 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_232 word770_0_233

def word770_0_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 112 (Flapjack.WordLangExpHOL.var 70)

def word770_0_236 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_234 word770_0_235

def word770_0_237 : WordLangProgHOL (BitVec 64) :=
.call (some (([158, 104, 214, 16, 124, 70]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word770_0_47, 770, 16)) (some 710) ([180, 44, 152, 98, 208, 30, 138, 84, 194, 58, 166, 112]) (some (180, word770_0_209, 770, 17))

def word770_0_238 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_236 word770_0_237

def word770_0_239 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_238 word770_0_51

def word770_0_240 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_239 word770_0_225

def word770_0_241 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_240 word770_0_227

def word770_0_242 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_241 word770_0_229

def word770_0_243 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_242 word770_0_231

def word770_0_244 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_243 word770_0_233

def word770_0_245 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_244 word770_0_235

def word770_0_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 220 (Flapjack.WordLangExpHOL.var 158)

def word770_0_247 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_245 word770_0_246

def word770_0_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 104)

def word770_0_249 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_247 word770_0_248

def word770_0_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 114 (Flapjack.WordLangExpHOL.var 214)

def word770_0_251 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_249 word770_0_250

def word770_0_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 16)

def word770_0_253 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_251 word770_0_252

def word770_0_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 170 (Flapjack.WordLangExpHOL.var 124)

def word770_0_255 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_253 word770_0_254

def word770_0_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 70)

def word770_0_257 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_255 word770_0_256

def word770_0_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 138

def word770_0_259 : WordLangProgHOL (BitVec 64) :=
.call (some (([180, 44, 152, 98, 208, 30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word770_0_47, 770, 18)) (some 710) ([138, 84, 194, 58, 166, 112, 220, 6, 114, 60, 170, 34]) (some (138, word770_0_258, 770, 19))

def word770_0_260 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_257 word770_0_259

def word770_0_261 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_260 word770_0_51

def word770_0_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 220 (Flapjack.WordLangExpHOL.var 148)

def word770_0_263 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_261 word770_0_262

def word770_0_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 94)

def word770_0_265 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_263 word770_0_264

def word770_0_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 114 (Flapjack.WordLangExpHOL.var 204)

def word770_0_267 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_265 word770_0_266

def word770_0_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 26)

def word770_0_269 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_267 word770_0_268

def word770_0_270 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 170 (Flapjack.WordLangExpHOL.var 134)

def word770_0_271 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_269 word770_0_270

def word770_0_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 80)

def word770_0_273 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_271 word770_0_272

def word770_0_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 220

def word770_0_275 : WordLangProgHOL (BitVec 64) :=
.call (some (([138, 84, 194, 58, 166, 112]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word770_0_47, 770, 20)) (some 715) ([220, 6, 114, 60, 170, 34]) (some (220, word770_0_274, 770, 21))

def word770_0_276 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_273 word770_0_275

def word770_0_277 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_276 word770_0_51

def word770_0_278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 220 (Flapjack.WordLangExpHOL.var 138)

def word770_0_279 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_277 word770_0_278

def word770_0_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 84)

def word770_0_281 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_279 word770_0_280

def word770_0_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 114 (Flapjack.WordLangExpHOL.var 194)

def word770_0_283 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_281 word770_0_282

def word770_0_284 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 58)

def word770_0_285 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_283 word770_0_284

def word770_0_286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 170 (Flapjack.WordLangExpHOL.var 166)

def word770_0_287 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_285 word770_0_286

def word770_0_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 112)

def word770_0_289 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_287 word770_0_288

def word770_0_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142 (Flapjack.WordLangExpHOL.var 180)

def word770_0_291 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_289 word770_0_290

def word770_0_292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 88 (Flapjack.WordLangExpHOL.var 44)

def word770_0_293 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_291 word770_0_292

def word770_0_294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 198 (Flapjack.WordLangExpHOL.var 152)

def word770_0_295 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_293 word770_0_294

def word770_0_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 98)

def word770_0_297 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_295 word770_0_296

def word770_0_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 128 (Flapjack.WordLangExpHOL.var 208)

def word770_0_299 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_297 word770_0_298

def word770_0_300 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 30)

def word770_0_301 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_299 word770_0_300

def word770_0_302 : WordLangProgHOL (BitVec 64) :=
.call (some (([138, 84, 194, 58, 166, 112]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word770_0_47, 770, 22)) (some 711) ([220, 6, 114, 60, 170, 34, 142, 88, 198, 20, 128, 74]) (some (220, word770_0_274, 770, 23))

def word770_0_303 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_301 word770_0_302

def word770_0_304 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_303 word770_0_51

def word770_0_305 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142 (Flapjack.WordLangExpHOL.var 116)

def word770_0_306 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_304 word770_0_305

def word770_0_307 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 88 (Flapjack.WordLangExpHOL.var 62)

def word770_0_308 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_306 word770_0_307

def word770_0_309 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 198 (Flapjack.WordLangExpHOL.var 172)

def word770_0_310 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_308 word770_0_309

def word770_0_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 36)

def word770_0_312 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_310 word770_0_311

def word770_0_313 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 128 (Flapjack.WordLangExpHOL.var 144)

def word770_0_314 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_312 word770_0_313

def word770_0_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 90)

def word770_0_316 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_314 word770_0_315

def word770_0_317 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 142

def word770_0_318 : WordLangProgHOL (BitVec 64) :=
.call (some (([220, 6, 114, 60, 170, 34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word770_0_47, 770, 24)) (some 715) ([142, 88, 198, 20, 128, 74]) (some (142, word770_0_317, 770, 25))

def word770_0_319 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_316 word770_0_318

def word770_0_320 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_319 word770_0_51

def word770_0_321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 184 (Flapjack.WordLangExpHOL.var 138)

def word770_0_322 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_320 word770_0_321

def word770_0_323 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 84)

def word770_0_324 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_322 word770_0_323

def word770_0_325 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 156 (Flapjack.WordLangExpHOL.var 194)

def word770_0_326 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_324 word770_0_325

def word770_0_327 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.var 58)

def word770_0_328 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_326 word770_0_327

def word770_0_329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 212 (Flapjack.WordLangExpHOL.var 166)

def word770_0_330 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_328 word770_0_329

def word770_0_331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 112)

def word770_0_332 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_330 word770_0_331

def word770_0_333 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122 (Flapjack.WordLangExpHOL.var 116)

def word770_0_334 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_332 word770_0_333

def word770_0_335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 62)

def word770_0_336 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_334 word770_0_335

def word770_0_337 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 178 (Flapjack.WordLangExpHOL.var 172)

def word770_0_338 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_336 word770_0_337

def word770_0_339 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 36)

def word770_0_340 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_338 word770_0_339

def word770_0_341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 150 (Flapjack.WordLangExpHOL.var 144)

def word770_0_342 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_340 word770_0_341

def word770_0_343 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.var 90)

def word770_0_344 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_342 word770_0_343

def word770_0_345 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 184

def word770_0_346 : WordLangProgHOL (BitVec 64) :=
.call (some (([142, 88, 198, 20, 128, 74]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word770_0_47, 770, 26)) (some 714) ([184, 48, 156, 102, 212, 14, 122, 68, 178, 42, 150, 96]) (some (184, word770_0_345, 770, 27))

def word770_0_347 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_344 word770_0_346

def word770_0_348 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_347 word770_0_51

def word770_0_349 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 184 (Flapjack.WordLangExpHOL.var 142)

def word770_0_350 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_348 word770_0_349

def word770_0_351 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 88)

def word770_0_352 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_350 word770_0_351

def word770_0_353 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 156 (Flapjack.WordLangExpHOL.var 198)

def word770_0_354 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_352 word770_0_353

def word770_0_355 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.var 20)

def word770_0_356 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_354 word770_0_355

def word770_0_357 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 212 (Flapjack.WordLangExpHOL.var 128)

def word770_0_358 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_356 word770_0_357

def word770_0_359 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 74)

def word770_0_360 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_358 word770_0_359

def word770_0_361 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122 (Flapjack.WordLangExpHOL.var 142)

def word770_0_362 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_360 word770_0_361

def word770_0_363 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 88)

def word770_0_364 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_362 word770_0_363

def word770_0_365 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 178 (Flapjack.WordLangExpHOL.var 198)

def word770_0_366 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_364 word770_0_365

def word770_0_367 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 20)

def word770_0_368 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_366 word770_0_367

def word770_0_369 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 150 (Flapjack.WordLangExpHOL.var 128)

def word770_0_370 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_368 word770_0_369

def word770_0_371 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.var 74)

def word770_0_372 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_370 word770_0_371

def word770_0_373 : WordLangProgHOL (BitVec 64) :=
.call (some (([142, 88, 198, 20, 128, 74]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word770_0_47, 770, 28)) (some 710) ([184, 48, 156, 102, 212, 14, 122, 68, 178, 42, 150, 96]) (some (184, word770_0_345, 770, 29))

def word770_0_374 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_372 word770_0_373

def word770_0_375 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_374 word770_0_51

def word770_0_376 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122 (Flapjack.WordLangExpHOL.var 158)

def word770_0_377 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_375 word770_0_376

def word770_0_378 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 104)

def word770_0_379 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_377 word770_0_378

def word770_0_380 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 178 (Flapjack.WordLangExpHOL.var 214)

def word770_0_381 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_379 word770_0_380

def word770_0_382 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 16)

def word770_0_383 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_381 word770_0_382

def word770_0_384 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 150 (Flapjack.WordLangExpHOL.var 124)

def word770_0_385 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_383 word770_0_384

def word770_0_386 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.var 70)

def word770_0_387 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_385 word770_0_386

def word770_0_388 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 206 (Flapjack.WordLangExpHOL.var 138)

def word770_0_389 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_387 word770_0_388

def word770_0_390 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 84)

def word770_0_391 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_389 word770_0_390

def word770_0_392 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 136 (Flapjack.WordLangExpHOL.var 194)

def word770_0_393 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_391 word770_0_392

def word770_0_394 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82 (Flapjack.WordLangExpHOL.var 58)

def word770_0_395 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_393 word770_0_394

def word770_0_396 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 192 (Flapjack.WordLangExpHOL.var 166)

def word770_0_397 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_395 word770_0_396

def word770_0_398 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 112)

def word770_0_399 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_397 word770_0_398

def word770_0_400 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 122

def word770_0_401 : WordLangProgHOL (BitVec 64) :=
.call (some (([184, 48, 156, 102, 212, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word770_0_47, 770, 30)) (some 711) ([122, 68, 178, 42, 150, 96, 206, 28, 136, 82, 192, 56]) (some (122, word770_0_400, 770, 31))

def word770_0_402 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_399 word770_0_401

def word770_0_403 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_402 word770_0_51

def word770_0_404 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122 (Flapjack.WordLangExpHOL.var 148)

def word770_0_405 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_403 word770_0_404

def word770_0_406 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 94)

def word770_0_407 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_405 word770_0_406

def word770_0_408 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 178 (Flapjack.WordLangExpHOL.var 204)

def word770_0_409 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_407 word770_0_408

def word770_0_410 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 26)

def word770_0_411 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_409 word770_0_410

def word770_0_412 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 150 (Flapjack.WordLangExpHOL.var 134)

def word770_0_413 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_411 word770_0_412

def word770_0_414 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.var 80)

def word770_0_415 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_413 word770_0_414

def word770_0_416 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 206 (Flapjack.WordLangExpHOL.var 184)

def word770_0_417 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_415 word770_0_416

def word770_0_418 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 48)

def word770_0_419 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_417 word770_0_418

def word770_0_420 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 136 (Flapjack.WordLangExpHOL.var 156)

def word770_0_421 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_419 word770_0_420

def word770_0_422 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82 (Flapjack.WordLangExpHOL.var 102)

def word770_0_423 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_421 word770_0_422

def word770_0_424 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 192 (Flapjack.WordLangExpHOL.var 212)

def word770_0_425 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_423 word770_0_424

def word770_0_426 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 14)

def word770_0_427 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_425 word770_0_426

def word770_0_428 : WordLangProgHOL (BitVec 64) :=
.call (some (([184, 48, 156, 102, 212, 14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word770_0_47, 770, 32)) (some 714) ([122, 68, 178, 42, 150, 96, 206, 28, 136, 82, 192, 56]) (some (122, word770_0_400, 770, 33))

def word770_0_429 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_427 word770_0_428

def word770_0_430 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_429 word770_0_51

def word770_0_431 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 206 (Flapjack.WordLangExpHOL.var 126)

def word770_0_432 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_430 word770_0_431

def word770_0_433 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 72)

def word770_0_434 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_432 word770_0_433

def word770_0_435 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 136 (Flapjack.WordLangExpHOL.var 182)

def word770_0_436 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_434 word770_0_435

def word770_0_437 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82 (Flapjack.WordLangExpHOL.var 46)

def word770_0_438 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_436 word770_0_437

def word770_0_439 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 192 (Flapjack.WordLangExpHOL.var 154)

def word770_0_440 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_438 word770_0_439

def word770_0_441 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 100)

def word770_0_442 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_440 word770_0_441

def word770_0_443 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 206

def word770_0_444 : WordLangProgHOL (BitVec 64) :=
.call (some (([122, 68, 178, 42, 150, 96]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word770_0_47, 770, 34)) (some 715) ([206, 28, 136, 82, 192, 56]) (some (206, word770_0_443, 770, 35))

def word770_0_445 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_442 word770_0_444

def word770_0_446 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_445 word770_0_51

def word770_0_447 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 206 (Flapjack.WordLangExpHOL.var 122)

def word770_0_448 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_446 word770_0_447

def word770_0_449 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 68)

def word770_0_450 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_448 word770_0_449

def word770_0_451 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 136 (Flapjack.WordLangExpHOL.var 178)

def word770_0_452 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_450 word770_0_451

def word770_0_453 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82 (Flapjack.WordLangExpHOL.var 42)

def word770_0_454 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_452 word770_0_453

def word770_0_455 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 192 (Flapjack.WordLangExpHOL.var 150)

def word770_0_456 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_454 word770_0_455

def word770_0_457 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 96)

def word770_0_458 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_456 word770_0_457

def word770_0_459 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164 (Flapjack.WordLangExpHOL.var 220)

def word770_0_460 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_458 word770_0_459

def word770_0_461 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 110 (Flapjack.WordLangExpHOL.var 6)

def word770_0_462 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_460 word770_0_461

def word770_0_463 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 218 (Flapjack.WordLangExpHOL.var 114)

def word770_0_464 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_462 word770_0_463

def word770_0_465 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 60)

def word770_0_466 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_464 word770_0_465

def word770_0_467 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 118 (Flapjack.WordLangExpHOL.var 170)

def word770_0_468 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_466 word770_0_467

def word770_0_469 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 34)

def word770_0_470 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_468 word770_0_469

def word770_0_471 : WordLangProgHOL (BitVec 64) :=
.call (some (([122, 68, 178, 42, 150, 96]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word770_0_47, 770, 36)) (some 714) ([206, 28, 136, 82, 192, 56, 164, 110, 218, 10, 118, 64]) (some (206, word770_0_443, 770, 37))

def word770_0_472 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_470 word770_0_471

def word770_0_473 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_472 word770_0_51

def word770_0_474 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_473 word770_0_447

def word770_0_475 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_474 word770_0_449

def word770_0_476 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_475 word770_0_451

def word770_0_477 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_476 word770_0_453

def word770_0_478 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_477 word770_0_455

def word770_0_479 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_478 word770_0_457

def word770_0_480 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164 (Flapjack.WordLangExpHOL.var 122)

def word770_0_481 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_479 word770_0_480

def word770_0_482 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 110 (Flapjack.WordLangExpHOL.var 68)

def word770_0_483 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_481 word770_0_482

def word770_0_484 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 218 (Flapjack.WordLangExpHOL.var 178)

def word770_0_485 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_483 word770_0_484

def word770_0_486 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 42)

def word770_0_487 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_485 word770_0_486

def word770_0_488 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 118 (Flapjack.WordLangExpHOL.var 150)

def word770_0_489 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_487 word770_0_488

def word770_0_490 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 96)

def word770_0_491 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_489 word770_0_490

def word770_0_492 : WordLangProgHOL (BitVec 64) :=
.call (some (([122, 68, 178, 42, 150, 96]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word770_0_47, 770, 38)) (some 710) ([206, 28, 136, 82, 192, 56, 164, 110, 218, 10, 118, 64]) (some (206, word770_0_443, 770, 39))

def word770_0_493 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_491 word770_0_492

def word770_0_494 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_493 word770_0_51

def word770_0_495 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_494 word770_0_447

def word770_0_496 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_495 word770_0_449

def word770_0_497 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_496 word770_0_451

def word770_0_498 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_497 word770_0_453

def word770_0_499 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_498 word770_0_455

def word770_0_500 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_499 word770_0_457

def word770_0_501 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_500 word770_0_480

def word770_0_502 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_501 word770_0_482

def word770_0_503 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_502 word770_0_484

def word770_0_504 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_503 word770_0_486

def word770_0_505 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_504 word770_0_488

def word770_0_506 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_505 word770_0_490

def word770_0_507 : WordLangProgHOL (BitVec 64) :=
.call (some (([122, 68, 178, 42, 150, 96]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word770_0_47, 770, 40)) (some 710) ([206, 28, 136, 82, 192, 56, 164, 110, 218, 10, 118, 64]) (some (206, word770_0_443, 770, 41))

def word770_0_508 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_506 word770_0_507

def word770_0_509 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_508 word770_0_51

def word770_0_510 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_509 word770_0_447

def word770_0_511 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_510 word770_0_449

def word770_0_512 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_511 word770_0_451

def word770_0_513 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_512 word770_0_453

def word770_0_514 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_513 word770_0_455

def word770_0_515 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_514 word770_0_457

def word770_0_516 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_515 word770_0_480

def word770_0_517 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_516 word770_0_482

def word770_0_518 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_517 word770_0_484

def word770_0_519 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_518 word770_0_486

def word770_0_520 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_519 word770_0_488

def word770_0_521 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_520 word770_0_490

def word770_0_522 : WordLangProgHOL (BitVec 64) :=
.call (some (([122, 68, 178, 42, 150, 96]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word770_0_47, 770, 42)) (some 710) ([206, 28, 136, 82, 192, 56, 164, 110, 218, 10, 118, 64]) (some (206, word770_0_443, 770, 43))

def word770_0_523 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_521 word770_0_522

def word770_0_524 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_523 word770_0_51

def word770_0_525 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164 (Flapjack.WordLangExpHOL.var 184)

def word770_0_526 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_524 word770_0_525

def word770_0_527 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 110 (Flapjack.WordLangExpHOL.var 48)

def word770_0_528 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_526 word770_0_527

def word770_0_529 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 218 (Flapjack.WordLangExpHOL.var 156)

def word770_0_530 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_528 word770_0_529

def word770_0_531 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 102)

def word770_0_532 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_530 word770_0_531

def word770_0_533 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 118 (Flapjack.WordLangExpHOL.var 212)

def word770_0_534 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_532 word770_0_533

def word770_0_535 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 14)

def word770_0_536 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_534 word770_0_535

def word770_0_537 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 174 (Flapjack.WordLangExpHOL.var 122)

def word770_0_538 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_536 word770_0_537

def word770_0_539 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 68)

def word770_0_540 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_538 word770_0_539

def word770_0_541 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 146 (Flapjack.WordLangExpHOL.var 178)

def word770_0_542 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_540 word770_0_541

def word770_0_543 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.var 42)

def word770_0_544 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_542 word770_0_543

def word770_0_545 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 202 (Flapjack.WordLangExpHOL.var 150)

def word770_0_546 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_544 word770_0_545

def word770_0_547 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 96)

def word770_0_548 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_546 word770_0_547

def word770_0_549 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 164

def word770_0_550 : WordLangProgHOL (BitVec 64) :=
.call (some (([206, 28, 136, 82, 192, 56]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word770_0_47, 770, 44)) (some 711) ([164, 110, 218, 10, 118, 64, 174, 38, 146, 92, 202, 24]) (some (164, word770_0_549, 770, 45))

def word770_0_551 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_548 word770_0_550

def word770_0_552 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_551 word770_0_51

def word770_0_553 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 174 (Flapjack.WordLangExpHOL.var 116)

def word770_0_554 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_552 word770_0_553

def word770_0_555 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 62)

def word770_0_556 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_554 word770_0_555

def word770_0_557 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 146 (Flapjack.WordLangExpHOL.var 172)

def word770_0_558 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_556 word770_0_557

def word770_0_559 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.var 36)

def word770_0_560 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_558 word770_0_559

def word770_0_561 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 202 (Flapjack.WordLangExpHOL.var 144)

def word770_0_562 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_560 word770_0_561

def word770_0_563 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 90)

def word770_0_564 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_562 word770_0_563

def word770_0_565 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 132 (Flapjack.WordLangExpHOL.var 220)

def word770_0_566 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_564 word770_0_565

def word770_0_567 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 6)

def word770_0_568 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_566 word770_0_567

def word770_0_569 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 188 (Flapjack.WordLangExpHOL.var 114)

def word770_0_570 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_568 word770_0_569

def word770_0_571 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 60)

def word770_0_572 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_570 word770_0_571

def word770_0_573 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 160 (Flapjack.WordLangExpHOL.var 170)

def word770_0_574 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_572 word770_0_573

def word770_0_575 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 106 (Flapjack.WordLangExpHOL.var 34)

def word770_0_576 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_574 word770_0_575

def word770_0_577 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 174

def word770_0_578 : WordLangProgHOL (BitVec 64) :=
.call (some (([164, 110, 218, 10, 118, 64]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word770_0_47, 770, 46)) (some 714) ([174, 38, 146, 92, 202, 24, 132, 78, 188, 52, 160, 106]) (some (174, word770_0_577, 770, 47))

def word770_0_579 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_576 word770_0_578

def word770_0_580 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_579 word770_0_51

def word770_0_581 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 174 (Flapjack.WordLangExpHOL.var 164)

def word770_0_582 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_580 word770_0_581

def word770_0_583 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 110)

def word770_0_584 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_582 word770_0_583

def word770_0_585 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 146 (Flapjack.WordLangExpHOL.var 218)

def word770_0_586 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_584 word770_0_585

def word770_0_587 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.var 10)

def word770_0_588 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_586 word770_0_587

def word770_0_589 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 202 (Flapjack.WordLangExpHOL.var 118)

def word770_0_590 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_588 word770_0_589

def word770_0_591 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 64)

def word770_0_592 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_590 word770_0_591

def word770_0_593 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 132 (Flapjack.WordLangExpHOL.var 164)

def word770_0_594 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_592 word770_0_593

def word770_0_595 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 110)

def word770_0_596 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_594 word770_0_595

def word770_0_597 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 188 (Flapjack.WordLangExpHOL.var 218)

def word770_0_598 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_596 word770_0_597

def word770_0_599 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 10)

def word770_0_600 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_598 word770_0_599

def word770_0_601 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 160 (Flapjack.WordLangExpHOL.var 118)

def word770_0_602 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_600 word770_0_601

def word770_0_603 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 106 (Flapjack.WordLangExpHOL.var 64)

def word770_0_604 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_602 word770_0_603

def word770_0_605 : WordLangProgHOL (BitVec 64) :=
.call (some (([164, 110, 218, 10, 118, 64]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word770_0_47, 770, 48)) (some 710) ([174, 38, 146, 92, 202, 24, 132, 78, 188, 52, 160, 106]) (some (174, word770_0_577, 770, 49))

def word770_0_606 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_604 word770_0_605

def word770_0_607 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_606 word770_0_51

def word770_0_608 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_607 word770_0_581

def word770_0_609 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_608 word770_0_583

def word770_0_610 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_609 word770_0_585

def word770_0_611 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_610 word770_0_587

def word770_0_612 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_611 word770_0_589

def word770_0_613 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_612 word770_0_591

def word770_0_614 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_613 word770_0_593

def word770_0_615 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_614 word770_0_595

def word770_0_616 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_615 word770_0_597

def word770_0_617 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_616 word770_0_599

def word770_0_618 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_617 word770_0_601

def word770_0_619 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_618 word770_0_603

def word770_0_620 : WordLangProgHOL (BitVec 64) :=
.call (some (([164, 110, 218, 10, 118, 64]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word770_0_47, 770, 50)) (some 710) ([174, 38, 146, 92, 202, 24, 132, 78, 188, 52, 160, 106]) (some (174, word770_0_577, 770, 51))

def word770_0_621 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_619 word770_0_620

def word770_0_622 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_621 word770_0_51

def word770_0_623 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_622 word770_0_581

def word770_0_624 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_623 word770_0_583

def word770_0_625 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_624 word770_0_585

def word770_0_626 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_625 word770_0_587

def word770_0_627 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_626 word770_0_589

def word770_0_628 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_627 word770_0_591

def word770_0_629 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_628 word770_0_593

def word770_0_630 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_629 word770_0_595

def word770_0_631 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_630 word770_0_597

def word770_0_632 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_631 word770_0_599

def word770_0_633 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_632 word770_0_601

def word770_0_634 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_633 word770_0_603

def word770_0_635 : WordLangProgHOL (BitVec 64) :=
.call (some (([164, 110, 218, 10, 118, 64]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word770_0_47, 770, 52)) (some 710) ([174, 38, 146, 92, 202, 24, 132, 78, 188, 52, 160, 106]) (some (174, word770_0_577, 770, 53))

def word770_0_636 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_634 word770_0_635

def word770_0_637 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_636 word770_0_51

def word770_0_638 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 174 (Flapjack.WordLangExpHOL.var 2)

def word770_0_639 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_637 word770_0_638

def word770_0_640 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 142)

def word770_0_641 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_639 word770_0_640

def word770_0_642 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 146 (Flapjack.WordLangExpHOL.var 88)

def word770_0_643 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_641 word770_0_642

def word770_0_644 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.var 198)

def word770_0_645 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_643 word770_0_644

def word770_0_646 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 202 (Flapjack.WordLangExpHOL.var 20)

def word770_0_647 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_645 word770_0_646

def word770_0_648 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 128)

def word770_0_649 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_647 word770_0_648

def word770_0_650 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 132 (Flapjack.WordLangExpHOL.var 74)

def word770_0_651 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_649 word770_0_650

def word770_0_652 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 38)

def word770_0_653 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_651 word770_0_652

def word770_0_654 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 174) 78

def word770_0_655 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_653 word770_0_654

def word770_0_656 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 146)

def word770_0_657 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_655 word770_0_656

def word770_0_658 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 174, Flapjack.WordLangExpHOL.const 8#64])
  78

def word770_0_659 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_657 word770_0_658

def word770_0_660 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 92)

def word770_0_661 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_659 word770_0_660

def word770_0_662 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 174, Flapjack.WordLangExpHOL.const 16#64])
  78

def word770_0_663 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_661 word770_0_662

def word770_0_664 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 202)

def word770_0_665 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_663 word770_0_664

def word770_0_666 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 174, Flapjack.WordLangExpHOL.const 24#64])
  78

def word770_0_667 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_665 word770_0_666

def word770_0_668 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 24)

def word770_0_669 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_667 word770_0_668

def word770_0_670 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 174, Flapjack.WordLangExpHOL.const 32#64])
  78

def word770_0_671 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_669 word770_0_670

def word770_0_672 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 132)

def word770_0_673 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_671 word770_0_672

def word770_0_674 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 174, Flapjack.WordLangExpHOL.const 40#64])
  78

def word770_0_675 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_673 word770_0_674

def word770_0_676 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 174
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64])

def word770_0_677 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_675 word770_0_676

def word770_0_678 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 206)

def word770_0_679 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_677 word770_0_678

def word770_0_680 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 146 (Flapjack.WordLangExpHOL.var 28)

def word770_0_681 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_679 word770_0_680

def word770_0_682 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.var 136)

def word770_0_683 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_681 word770_0_682

def word770_0_684 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 202 (Flapjack.WordLangExpHOL.var 82)

def word770_0_685 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_683 word770_0_684

def word770_0_686 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 192)

def word770_0_687 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_685 word770_0_686

def word770_0_688 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 132 (Flapjack.WordLangExpHOL.var 56)

def word770_0_689 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_687 word770_0_688

def word770_0_690 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_689 word770_0_652

def word770_0_691 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_690 word770_0_654

def word770_0_692 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_691 word770_0_656

def word770_0_693 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_692 word770_0_658

def word770_0_694 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_693 word770_0_660

def word770_0_695 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_694 word770_0_662

def word770_0_696 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_695 word770_0_664

def word770_0_697 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_696 word770_0_666

def word770_0_698 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_697 word770_0_668

def word770_0_699 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_698 word770_0_670

def word770_0_700 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_699 word770_0_672

def word770_0_701 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_700 word770_0_674

def word770_0_702 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 174
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 96#64])

def word770_0_703 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_701 word770_0_702

def word770_0_704 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 164)

def word770_0_705 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_703 word770_0_704

def word770_0_706 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 146 (Flapjack.WordLangExpHOL.var 110)

def word770_0_707 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_705 word770_0_706

def word770_0_708 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.var 218)

def word770_0_709 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_707 word770_0_708

def word770_0_710 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 202 (Flapjack.WordLangExpHOL.var 10)

def word770_0_711 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_709 word770_0_710

def word770_0_712 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 118)

def word770_0_713 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_711 word770_0_712

def word770_0_714 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 132 (Flapjack.WordLangExpHOL.var 64)

def word770_0_715 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_713 word770_0_714

def word770_0_716 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_715 word770_0_652

def word770_0_717 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_716 word770_0_654

def word770_0_718 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_717 word770_0_656

def word770_0_719 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_718 word770_0_658

def word770_0_720 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_719 word770_0_660

def word770_0_721 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_720 word770_0_662

def word770_0_722 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_721 word770_0_664

def word770_0_723 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_722 word770_0_666

def word770_0_724 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_723 word770_0_668

def word770_0_725 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_724 word770_0_670

def word770_0_726 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_725 word770_0_672

def word770_0_727 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_726 word770_0_674

def word770_0_728 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 174 (Flapjack.WordLangExpHOL.const 0#64)

def word770_0_729 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_727 word770_0_728

def word770_0_730 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [174]

def word770_0_731 : WordLangProgHOL (BitVec 64) :=
.seq word770_0_729 word770_0_730

def pass770_0 : WordLangProgHOL (BitVec 64) :=
word770_0_731
theorem pass770_0_eq : WordSimp.compileExp (source770.2.2) = pass770_0 := by
  kernel_rfl
#print axioms pass770_0_eq
end InitECandidate.Proofs.WordStages
