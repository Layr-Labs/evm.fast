import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Source858
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def word858_0_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 408#64]),
        Flapjack.WordLangExpHOL.const 8#64]))

def word858_0_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.var 96,
      Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 416#64]),
            Flapjack.WordLangExpHOL.const 0#64])])

def word858_0_2 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_0 word858_0_1

def word858_0_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.var 96,
      Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 416#64]),
            Flapjack.WordLangExpHOL.const 8#64])])

def word858_0_4 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_2 word858_0_3

def word858_0_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.const 2752512#64,
      Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 416#64]),
            Flapjack.WordLangExpHOL.const 48#64])])

def word858_0_6 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_4 word858_0_5

def word858_0_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 112
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 144#64]))

def word858_0_8 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_6 word858_0_7

def word858_0_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.const 16777216#64)

def word858_0_10 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_8 word858_0_9

def word858_0_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 112)

def word858_0_12 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_10 word858_0_11

def word858_0_13 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_12 word858_0_9

def word858_0_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def word858_0_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 72

def word858_0_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word858_0_14, 858, 2)) (some 92) ([72, 42]) (some (72, word858_0_15, 858, 3))

def word858_0_17 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_13 word858_0_16

def word858_0_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def word858_0_19 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_17 word858_0_18

def word858_0_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 20)

def word858_0_21 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_19 word858_0_20

def word858_0_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 104 (Flapjack.WordLangExpHOL.var 12)

def word858_0_23 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_21 word858_0_22

def word858_0_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 1#64)

def word858_0_25 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_24 word858_0_18

def word858_0_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def word858_0_27 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_25 word858_0_26

def word858_0_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.const 80#64)

def word858_0_29 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_27 word858_0_28

def word858_0_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 72)

def word858_0_31 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_29 word858_0_30

def word858_0_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.const 4#64)

def word858_0_33 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_31 word858_0_32

def word858_0_34 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_33 word858_0_15

def word858_0_35 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 42 (Flapjack.WordRegImm.reg 104) word858_0_34 word858_0_14

def word858_0_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 0#64)

def word858_0_37 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_36 word858_0_18

def word858_0_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def word858_0_39 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_37 word858_0_38

def word858_0_40 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_35 word858_0_39

def word858_0_41 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_23 word858_0_40

def word858_0_42 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_41 word858_0_18

def word858_0_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 80)

def word858_0_44 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_42 word858_0_43

def word858_0_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 104 (Flapjack.WordLangExpHOL.var 112)

def word858_0_46 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_44 word858_0_45

def word858_0_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.const 81#64)

def word858_0_48 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_27 word858_0_47

def word858_0_49 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_48 word858_0_30

def word858_0_50 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_49 word858_0_32

def word858_0_51 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_50 word858_0_15

def word858_0_52 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 42 (Flapjack.WordRegImm.reg 104) word858_0_51 word858_0_14

def word858_0_53 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_52 word858_0_39

def word858_0_54 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_46 word858_0_53

def word858_0_55 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_54 word858_0_18

def word858_0_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 2)

def word858_0_57 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_55 word858_0_56

def word858_0_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 42

def word858_0_59 : WordLangProgHOL (BitVec 64) :=
.call (some (([72]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word858_0_14, 858, 4)) (some 352) ([42]) (some (42, word858_0_58, 858, 5))

def word858_0_60 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_57 word858_0_59

def word858_0_61 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_60 word858_0_18

def word858_0_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 104 (Flapjack.WordLangExpHOL.var 50)

def word858_0_63 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_61 word858_0_62

def word858_0_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 72)

def word858_0_65 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_63 word858_0_64

def word858_0_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 104 (Flapjack.WordLangExpHOL.const 1#64)

def word858_0_67 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_66 word858_0_18

def word858_0_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 88 (Flapjack.WordLangExpHOL.const 1#64)

def word858_0_69 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_67 word858_0_68

def word858_0_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 82#64)

def word858_0_71 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_69 word858_0_70

def word858_0_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 42)

def word858_0_73 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_71 word858_0_72

def word858_0_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 4#64)

def word858_0_75 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_73 word858_0_74

def word858_0_76 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_75 word858_0_58

def word858_0_77 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 104 (Flapjack.WordRegImm.reg 28) word858_0_76 word858_0_14

def word858_0_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 104 (Flapjack.WordLangExpHOL.const 0#64)

def word858_0_79 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_78 word858_0_18

def word858_0_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 88 (Flapjack.WordLangExpHOL.const 0#64)

def word858_0_81 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_79 word858_0_80

def word858_0_82 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_77 word858_0_81

def word858_0_83 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_65 word858_0_82

def word858_0_84 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_83 word858_0_18

def word858_0_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 104 (Flapjack.WordLangExpHOL.var 4)

def word858_0_86 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_84 word858_0_85

def word858_0_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 104

def word858_0_88 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word858_0_14, 858, 6)) (some 403) ([104]) (some (104, word858_0_87, 858, 7))

def word858_0_89 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_86 word858_0_88

def word858_0_90 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_89 word858_0_18

def word858_0_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 104
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 408#64]),
        Flapjack.WordLangExpHOL.const 48#64]))

def word858_0_92 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_90 word858_0_91

def word858_0_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
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
                  Flapjack.WordLangExpHOL.const 408#64]),
            Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def word858_0_94 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_92 word858_0_93

def word858_0_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 88
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
                  Flapjack.WordLangExpHOL.const 408#64]),
            Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def word858_0_96 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_94 word858_0_95

def word858_0_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58
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
                  Flapjack.WordLangExpHOL.const 408#64]),
            Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def word858_0_98 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_96 word858_0_97

def word858_0_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 116
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64]))

def word858_0_100 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_98 word858_0_99

def word858_0_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.var 116)

def word858_0_102 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_100 word858_0_101

def word858_0_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 0#64)

def word858_0_104 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_102 word858_0_103

def word858_0_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.const 1#64)

def word858_0_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.const 0#64)

def word858_0_107 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 76 (Flapjack.WordRegImm.reg 46) word858_0_105 word858_0_106

def word858_0_108 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_104 word858_0_107

def word858_0_109 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_108 word858_0_18

def word858_0_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 116)

def word858_0_111 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_109 word858_0_110

def word858_0_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.const 1#64)

def word858_0_113 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_111 word858_0_112

def word858_0_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 1#64)

def word858_0_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 0#64)

def word858_0_116 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 32 (Flapjack.WordRegImm.reg 92) word858_0_114 word858_0_115

def word858_0_117 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_113 word858_0_116

def word858_0_118 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_117 word858_0_18

def word858_0_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 124 (Flapjack.WordLangExpHOL.const 0#64)

def word858_0_120 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_118 word858_0_119

def word858_0_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or [Flapjack.WordLangExpHOL.var 76, Flapjack.WordLangExpHOL.var 32])

def word858_0_122 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_120 word858_0_121

def word858_0_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 124 (Flapjack.WordLangExpHOL.const 1#64)

def word858_0_124 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_123 word858_0_18

def word858_0_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.const 1#64)

def word858_0_126 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_124 word858_0_125

def word858_0_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64]))

def word858_0_128 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_126 word858_0_127

def word858_0_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def word858_0_130 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_128 word858_0_129

def word858_0_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def word858_0_132 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_130 word858_0_131

def word858_0_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def word858_0_134 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_132 word858_0_133

def word858_0_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.var 16)

def word858_0_136 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_134 word858_0_135

def word858_0_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 76)

def word858_0_138 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_136 word858_0_137

def word858_0_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 124 (Flapjack.WordLangExpHOL.var 46)

def word858_0_140 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_138 word858_0_139

def word858_0_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 108)

def word858_0_142 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_140 word858_0_141

def word858_0_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 104)

def word858_0_144 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_142 word858_0_143

def word858_0_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 28)

def word858_0_146 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_144 word858_0_145

def word858_0_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.var 88)

def word858_0_148 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_146 word858_0_147

def word858_0_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 58)

def word858_0_150 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_148 word858_0_149

def word858_0_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 92

def word858_0_152 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word858_0_14, 858, 8)) (some 106) ([92, 62, 124, 6, 66, 36, 98, 22]) (some (92, word858_0_151, 858, 9))

def word858_0_153 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_150 word858_0_152

def word858_0_154 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_153 word858_0_18

def word858_0_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 32)

def word858_0_156 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_154 word858_0_155

def word858_0_157 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_156 word858_0_119

def word858_0_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 1#64)

def word858_0_159 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_158 word858_0_18

def word858_0_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def word858_0_161 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_159 word858_0_160

def word858_0_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.const 83#64)

def word858_0_163 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_161 word858_0_162

def word858_0_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 92)

def word858_0_165 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_163 word858_0_164

def word858_0_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.const 4#64)

def word858_0_167 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_165 word858_0_166

def word858_0_168 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_167 word858_0_151

def word858_0_169 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 62 (Flapjack.WordRegImm.reg 124) word858_0_168 word858_0_14

def word858_0_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 0#64)

def word858_0_171 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_170 word858_0_18

def word858_0_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def word858_0_173 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_171 word858_0_172

def word858_0_174 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_169 word858_0_173

def word858_0_175 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_157 word858_0_174

def word858_0_176 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_175 word858_0_18

def word858_0_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 120 (Flapjack.WordLangExpHOL.var 16)

def word858_0_178 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_176 word858_0_177

def word858_0_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 76)

def word858_0_180 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_178 word858_0_179

def word858_0_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 46)

def word858_0_182 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_180 word858_0_181

def word858_0_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 108)

def word858_0_184 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_182 word858_0_183

def word858_0_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 100 (Flapjack.WordLangExpHOL.var 16)

def word858_0_186 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_184 word858_0_185

def word858_0_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 76)

def word858_0_188 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_186 word858_0_187

def word858_0_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 84 (Flapjack.WordLangExpHOL.var 46)

def word858_0_190 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_188 word858_0_189

def word858_0_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 108)

def word858_0_192 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_190 word858_0_191

def word858_0_193 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_119 word858_0_18

def word858_0_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.const 0#64)

def word858_0_195 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_193 word858_0_194

def word858_0_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 112#64]))

def word858_0_197 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_195 word858_0_196

def word858_0_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 112#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def word858_0_199 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_197 word858_0_198

def word858_0_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 112#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def word858_0_201 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_199 word858_0_200

def word858_0_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 112#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def word858_0_203 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_201 word858_0_202

def word858_0_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 80#64]))

def word858_0_205 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_203 word858_0_204

def word858_0_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 80#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def word858_0_207 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_205 word858_0_206

def word858_0_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 80#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def word858_0_209 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_207 word858_0_208

def word858_0_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 124
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 80#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def word858_0_211 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_209 word858_0_210

def word858_0_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 16)

def word858_0_213 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_211 word858_0_212

def word858_0_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 76)

def word858_0_215 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_213 word858_0_214

def word858_0_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.var 46)

def word858_0_217 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_215 word858_0_216

def word858_0_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 108)

def word858_0_219 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_217 word858_0_218

def word858_0_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82 (Flapjack.WordLangExpHOL.var 32)

def word858_0_221 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_219 word858_0_220

def word858_0_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 92)

def word858_0_223 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_221 word858_0_222

def word858_0_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 114 (Flapjack.WordLangExpHOL.var 62)

def word858_0_225 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_223 word858_0_224

def word858_0_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 124)

def word858_0_227 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_225 word858_0_226

def word858_0_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 66

def word858_0_229 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word858_0_14, 858, 10)) (some 106) ([66, 36, 98, 22, 82, 52, 114, 14]) (some (66, word858_0_228, 858, 11))

def word858_0_230 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_227 word858_0_229

def word858_0_231 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_230 word858_0_18

def word858_0_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 6)

def word858_0_233 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_231 word858_0_232

def word858_0_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.const 0#64)

def word858_0_235 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_233 word858_0_234

def word858_0_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 1#64)

def word858_0_237 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_236 word858_0_18

def word858_0_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def word858_0_239 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_237 word858_0_238

def word858_0_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.const 84#64)

def word858_0_241 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_239 word858_0_240

def word858_0_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 66)

def word858_0_243 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_241 word858_0_242

def word858_0_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.const 4#64)

def word858_0_245 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_243 word858_0_244

def word858_0_246 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_245 word858_0_228

def word858_0_247 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 36 (Flapjack.WordRegImm.reg 98) word858_0_246 word858_0_14

def word858_0_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 0#64)

def word858_0_249 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_248 word858_0_18

def word858_0_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def word858_0_251 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_249 word858_0_250

def word858_0_252 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_247 word858_0_251

def word858_0_253 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_235 word858_0_252

def word858_0_254 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_253 word858_0_18

def word858_0_255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 16)

def word858_0_256 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_254 word858_0_255

def word858_0_257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.var 76)

def word858_0_258 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_256 word858_0_257

def word858_0_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 46)

def word858_0_260 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_258 word858_0_259

def word858_0_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82 (Flapjack.WordLangExpHOL.var 108)

def word858_0_262 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_260 word858_0_261

def word858_0_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 104)

def word858_0_264 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_262 word858_0_263

def word858_0_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 114 (Flapjack.WordLangExpHOL.var 28)

def word858_0_266 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_264 word858_0_265

def word858_0_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 88)

def word858_0_268 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_266 word858_0_267

def word858_0_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 58)

def word858_0_270 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_268 word858_0_269

def word858_0_271 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 36

def word858_0_272 : WordLangProgHOL (BitVec 64) :=
.call (some (([66]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word858_0_14, 858, 12)) (some 106) ([36, 98, 22, 82, 52, 114, 14, 74]) (some (36, word858_0_271, 858, 13))

def word858_0_273 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_270 word858_0_272

def word858_0_274 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_273 word858_0_18

def word858_0_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.var 66)

def word858_0_276 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_274 word858_0_275

def word858_0_277 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_276 word858_0_250

def word858_0_278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.const 1#64)

def word858_0_279 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_278 word858_0_18

def word858_0_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82 (Flapjack.WordLangExpHOL.const 1#64)

def word858_0_281 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_279 word858_0_280

def word858_0_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 85#64)

def word858_0_283 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_281 word858_0_282

def word858_0_284 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 36)

def word858_0_285 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_283 word858_0_284

def word858_0_286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 4#64)

def word858_0_287 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_285 word858_0_286

def word858_0_288 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_287 word858_0_271

def word858_0_289 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 98 (Flapjack.WordRegImm.reg 22) word858_0_288 word858_0_14

def word858_0_290 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_234 word858_0_18

def word858_0_291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82 (Flapjack.WordLangExpHOL.const 0#64)

def word858_0_292 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_290 word858_0_291

def word858_0_293 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_289 word858_0_292

def word858_0_294 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_277 word858_0_293

def word858_0_295 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_294 word858_0_18

def word858_0_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 16)

def word858_0_297 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_295 word858_0_296

def word858_0_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 114 (Flapjack.WordLangExpHOL.var 76)

def word858_0_299 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_297 word858_0_298

def word858_0_300 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 46)

def word858_0_301 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_299 word858_0_300

def word858_0_302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 108)

def word858_0_303 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_301 word858_0_302

def word858_0_304 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 104)

def word858_0_305 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_303 word858_0_304

def word858_0_306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 106 (Flapjack.WordLangExpHOL.var 28)

def word858_0_307 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_305 word858_0_306

def word858_0_308 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 88)

def word858_0_309 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_307 word858_0_308

def word858_0_310 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 90 (Flapjack.WordLangExpHOL.var 58)

def word858_0_311 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_309 word858_0_310

def word858_0_312 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 52

def word858_0_313 : WordLangProgHOL (BitVec 64) :=
.call (some (([36, 98, 22, 82]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word858_0_14, 858, 14)) (some 117) ([52, 114, 14, 74, 44, 106, 30, 90]) (some (52, word858_0_312, 858, 15))

def word858_0_314 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_311 word858_0_313

def word858_0_315 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_314 word858_0_18

def word858_0_316 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 114 (Flapjack.WordLangExpHOL.var 32)

def word858_0_317 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_315 word858_0_316

def word858_0_318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 92)

def word858_0_319 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_317 word858_0_318

def word858_0_320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 62)

def word858_0_321 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_319 word858_0_320

def word858_0_322 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 124)

def word858_0_323 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_321 word858_0_322

def word858_0_324 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 106 (Flapjack.WordLangExpHOL.var 36)

def word858_0_325 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_323 word858_0_324

def word858_0_326 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 98)

def word858_0_327 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_325 word858_0_326

def word858_0_328 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 90 (Flapjack.WordLangExpHOL.var 22)

def word858_0_329 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_327 word858_0_328

def word858_0_330 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 82)

def word858_0_331 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_329 word858_0_330

def word858_0_332 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 114

def word858_0_333 : WordLangProgHOL (BitVec 64) :=
.call (some (([52]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word858_0_14, 858, 16)) (some 106) ([114, 14, 74, 44, 106, 30, 90, 60]) (some (114, word858_0_332, 858, 17))

def word858_0_334 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_331 word858_0_333

def word858_0_335 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_334 word858_0_18

def word858_0_336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 114 (Flapjack.WordLangExpHOL.var 36)

def word858_0_337 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_335 word858_0_336

def word858_0_338 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 98)

def word858_0_339 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_337 word858_0_338

def word858_0_340 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 22)

def word858_0_341 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_339 word858_0_340

def word858_0_342 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 82)

def word858_0_343 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_341 word858_0_342

def word858_0_344 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 52)

def word858_0_345 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_343 word858_0_344

def word858_0_346 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 90 (Flapjack.WordLangExpHOL.const 0#64)

def word858_0_347 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_345 word858_0_346

def word858_0_348 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 1#64)

def word858_0_349 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_348 word858_0_18

def word858_0_350 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.const 1#64)

def word858_0_351 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_349 word858_0_350

def word858_0_352 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_351 word858_0_316

def word858_0_353 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_352 word858_0_318

def word858_0_354 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_353 word858_0_320

def word858_0_355 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_354 word858_0_322

def word858_0_356 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def word858_0_357 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_356 word858_0_18

def word858_0_358 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.const 0#64)

def word858_0_359 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_357 word858_0_358

def word858_0_360 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.reg 90) word858_0_355 word858_0_359

def word858_0_361 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_347 word858_0_360

def word858_0_362 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_361 word858_0_18

def word858_0_363 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 106 (Flapjack.WordLangExpHOL.var 114)

def word858_0_364 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_362 word858_0_363

def word858_0_365 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 14)

def word858_0_366 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_364 word858_0_365

def word858_0_367 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 90 (Flapjack.WordLangExpHOL.var 74)

def word858_0_368 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_366 word858_0_367

def word858_0_369 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 44)

def word858_0_370 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_368 word858_0_369

def word858_0_371 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122 (Flapjack.WordLangExpHOL.var 104)

def word858_0_372 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_370 word858_0_371

def word858_0_373 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 28)

def word858_0_374 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_372 word858_0_373

def word858_0_375 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 88)

def word858_0_376 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_374 word858_0_375

def word858_0_377 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 58)

def word858_0_378 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_376 word858_0_377

def word858_0_379 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 106

def word858_0_380 : WordLangProgHOL (BitVec 64) :=
.call (some (([120, 8, 68, 38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word858_0_14, 858, 18)) (some 116) ([106, 30, 90, 60, 122, 10, 70, 40]) (some (106, word858_0_379, 858, 19))

def word858_0_381 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_378 word858_0_380

def word858_0_382 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_381 word858_0_18

def word858_0_383 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_382 word858_0_185

def word858_0_384 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_383 word858_0_187

def word858_0_385 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_384 word858_0_189

def word858_0_386 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_385 word858_0_191

def word858_0_387 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 124 (Flapjack.WordRegImm.reg 6) word858_0_192 word858_0_386

def word858_0_388 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_122 word858_0_387

def word858_0_389 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_388 word858_0_18

def word858_0_390 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.var 112)

def word858_0_391 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_389 word858_0_390

def word858_0_392 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 100)

def word858_0_393 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_391 word858_0_392

def word858_0_394 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 124 (Flapjack.WordLangExpHOL.var 24)

def word858_0_395 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_393 word858_0_394

def word858_0_396 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 84)

def word858_0_397 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_395 word858_0_396

def word858_0_398 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 54)

def word858_0_399 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_397 word858_0_398

def word858_0_400 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 76, 46, 108, 32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word858_0_14, 858, 20)) (some 853) ([92, 62, 124, 6, 66]) (some (92, word858_0_151, 858, 21))

def word858_0_401 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_399 word858_0_400

def word858_0_402 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_401 word858_0_18

def word858_0_403 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_402 word858_0_135

def word858_0_404 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_403 word858_0_137

def word858_0_405 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_404 word858_0_139

def word858_0_406 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_405 word858_0_141

def word858_0_407 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 32)

def word858_0_408 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_406 word858_0_407

def word858_0_409 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.var 116)

def word858_0_410 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_408 word858_0_409

def word858_0_411 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 3#64)

def word858_0_412 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_410 word858_0_411

def word858_0_413 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 264#64]))

def word858_0_414 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_281 word858_0_413

def word858_0_415 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 36)

def word858_0_416 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_414 word858_0_415

def word858_0_417 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_416 word858_0_291

def word858_0_418 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_238 word858_0_18

def word858_0_419 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 1#64)

def word858_0_420 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_418 word858_0_419

def word858_0_421 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.const 86#64)

def word858_0_422 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_420 word858_0_421

def word858_0_423 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 98)

def word858_0_424 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_422 word858_0_423

def word858_0_425 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.const 4#64)

def word858_0_426 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_424 word858_0_425

def word858_0_427 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 98

def word858_0_428 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_426 word858_0_427

def word858_0_429 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 22 (Flapjack.WordRegImm.reg 82) word858_0_428 word858_0_14

def word858_0_430 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_250 word858_0_18

def word858_0_431 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 0#64)

def word858_0_432 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_430 word858_0_431

def word858_0_433 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_429 word858_0_432

def word858_0_434 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_417 word858_0_433

def word858_0_435 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_434 word858_0_18

def word858_0_436 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 6#64)

def word858_0_437 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_435 word858_0_436

def word858_0_438 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82 (Flapjack.WordLangExpHOL.var 36)

def word858_0_439 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_437 word858_0_438

def word858_0_440 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.const 87#64)

def word858_0_441 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_420 word858_0_440

def word858_0_442 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_441 word858_0_423

def word858_0_443 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_442 word858_0_425

def word858_0_444 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_443 word858_0_427

def word858_0_445 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 22 (Flapjack.WordRegImm.reg 82) word858_0_444 word858_0_14

def word858_0_446 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_445 word858_0_432

def word858_0_447 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_439 word858_0_446

def word858_0_448 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_447 word858_0_18

def word858_0_449 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_448 word858_0_234

def word858_0_450 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_449 word858_0_18

def word858_0_451 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82 (Flapjack.WordLangExpHOL.var 98)

def word858_0_452 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 36)

def word858_0_453 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_451 word858_0_452

def word858_0_454 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_280 word858_0_18

def word858_0_455 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 114 (Flapjack.WordLangExpHOL.const 1#64)

def word858_0_456 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_454 word858_0_455

def word858_0_457 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 256#64]),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 98)
        (Flapjack.WordLangExpHOL.const 5#64)])

def word858_0_458 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_456 word858_0_457

def word858_0_459 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 22 (Flapjack.WordLangAddr.addr 22 0#64))

def word858_0_460 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_458 word858_0_459

def word858_0_461 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 22)

def word858_0_462 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_460 word858_0_461

def word858_0_463 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_462 word858_0_455

def word858_0_464 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_419 word858_0_18

def word858_0_465 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def word858_0_466 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_464 word858_0_465

def word858_0_467 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 88#64)

def word858_0_468 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_466 word858_0_467

def word858_0_469 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 22)

def word858_0_470 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_468 word858_0_469

def word858_0_471 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 4#64)

def word858_0_472 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_470 word858_0_471

def word858_0_473 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def word858_0_474 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_472 word858_0_473

def word858_0_475 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 52 (Flapjack.WordRegImm.reg 114) word858_0_474 word858_0_14

def word858_0_476 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_431 word858_0_18

def word858_0_477 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def word858_0_478 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_476 word858_0_477

def word858_0_479 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_475 word858_0_478

def word858_0_480 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_463 word858_0_479

def word858_0_481 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_480 word858_0_18

def word858_0_482 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 98, Flapjack.WordLangExpHOL.const 1#64])

def word858_0_483 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_481 word858_0_482

def word858_0_484 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.var 22)

def word858_0_485 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_483 word858_0_484

def word858_0_486 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def word858_0_487 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_485 word858_0_486

def word858_0_488 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_291 word858_0_18

def word858_0_489 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 114 (Flapjack.WordLangExpHOL.const 0#64)

def word858_0_490 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_488 word858_0_489

def word858_0_491 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def word858_0_492 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_490 word858_0_491

def word858_0_493 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 82 (Flapjack.WordRegImm.reg 52) word858_0_487 word858_0_492

def word858_0_494 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_453 word858_0_493

def word858_0_495 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_494 word858_0_18

def word858_0_496 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))))
  PUnit.unit Flapjack.Spt.ln) word858_0_495 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln)

def word858_0_497 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_450 word858_0_496

def word858_0_498 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_497 word858_0_18

def word858_0_499 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 408#64]),
        Flapjack.WordLangExpHOL.const 96#64]))

def word858_0_500 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_498 word858_0_499

def word858_0_501 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def word858_0_502 : WordLangProgHOL (BitVec 64) :=
.call (some (([22, 82, 52, 114]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word858_0_14, 858, 22)) (some 276) ([14]) (some (14, word858_0_501, 858, 23))

def word858_0_503 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_500 word858_0_502

def word858_0_504 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_503 word858_0_18

def word858_0_505 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 224#64]))

def word858_0_506 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_504 word858_0_505

def word858_0_507 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 224#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def word858_0_508 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_506 word858_0_507

def word858_0_509 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 224#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def word858_0_510 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_508 word858_0_509

def word858_0_511 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 106
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 224#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def word858_0_512 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_510 word858_0_511

def word858_0_513 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 90 (Flapjack.WordLangExpHOL.var 14)

def word858_0_514 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_512 word858_0_513

def word858_0_515 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 74)

def word858_0_516 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_514 word858_0_515

def word858_0_517 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122 (Flapjack.WordLangExpHOL.var 44)

def word858_0_518 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_516 word858_0_517

def word858_0_519 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 106)

def word858_0_520 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_518 word858_0_519

def word858_0_521 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 22)

def word858_0_522 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_520 word858_0_521

def word858_0_523 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 82)

def word858_0_524 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_522 word858_0_523

def word858_0_525 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.var 52)

def word858_0_526 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_524 word858_0_525

def word858_0_527 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 114)

def word858_0_528 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_526 word858_0_527

def word858_0_529 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 90

def word858_0_530 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word858_0_14, 858, 24)) (some 106) ([90, 60, 122, 10, 70, 40, 102, 26]) (some (90, word858_0_529, 858, 25))

def word858_0_531 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_528 word858_0_530

def word858_0_532 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_531 word858_0_18

def word858_0_533 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 30)

def word858_0_534 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_532 word858_0_533

def word858_0_535 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122 (Flapjack.WordLangExpHOL.const 0#64)

def word858_0_536 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_534 word858_0_535

def word858_0_537 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_350 word858_0_18

def word858_0_538 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def word858_0_539 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_537 word858_0_538

def word858_0_540 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 90 (Flapjack.WordLangExpHOL.const 89#64)

def word858_0_541 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_539 word858_0_540

def word858_0_542 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 90)

def word858_0_543 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_541 word858_0_542

def word858_0_544 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 90 (Flapjack.WordLangExpHOL.const 4#64)

def word858_0_545 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_543 word858_0_544

def word858_0_546 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_545 word858_0_529

def word858_0_547 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 60 (Flapjack.WordRegImm.reg 122) word858_0_546 word858_0_14

def word858_0_548 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_358 word858_0_18

def word858_0_549 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def word858_0_550 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_548 word858_0_549

def word858_0_551 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_547 word858_0_550

def word858_0_552 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_536 word858_0_551

def word858_0_553 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_552 word858_0_18

def word858_0_554 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 72)

def word858_0_555 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_553 word858_0_554

def word858_0_556 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.var 14)

def word858_0_557 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_555 word858_0_556

def word858_0_558 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 74)

def word858_0_559 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_557 word858_0_558

def word858_0_560 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.var 44)

def word858_0_561 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_559 word858_0_560

def word858_0_562 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 106)

def word858_0_563 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_561 word858_0_562

def word858_0_564 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def word858_0_565 : WordLangProgHOL (BitVec 64) :=
.call (some (([90, 60, 122, 10, 70]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln) PUnit.unit
          Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word858_0_14, 858, 26)) (some 853) ([40, 102, 26, 86, 56]) (some (40, word858_0_564, 858, 27))

def word858_0_566 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_563 word858_0_565

def word858_0_567 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_566 word858_0_18

def word858_0_568 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.var 90)

def word858_0_569 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_567 word858_0_568

def word858_0_570 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def word858_0_571 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_569 word858_0_570

def word858_0_572 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.const 1#64)

def word858_0_573 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_572 word858_0_18

def word858_0_574 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.const 1#64)

def word858_0_575 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_573 word858_0_574

def word858_0_576 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_575 word858_0_112

def word858_0_577 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.const 0#64)

def word858_0_578 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_577 word858_0_18

def word858_0_579 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.const 0#64)

def word858_0_580 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_578 word858_0_579

def word858_0_581 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 102 (Flapjack.WordRegImm.reg 26) word858_0_576 word858_0_580

def word858_0_582 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_571 word858_0_581

def word858_0_583 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_582 word858_0_18

def word858_0_584 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 118 (Flapjack.WordLangExpHOL.var 62)

def word858_0_585 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_583 word858_0_584

def word858_0_586 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 124)

def word858_0_587 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_585 word858_0_586

def word858_0_588 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 6)

def word858_0_589 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_587 word858_0_588

def word858_0_590 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 66)

def word858_0_591 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_589 word858_0_590

def word858_0_592 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 110 (Flapjack.WordLangExpHOL.var 60)

def word858_0_593 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_591 word858_0_592

def word858_0_594 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 122)

def word858_0_595 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_593 word858_0_594

def word858_0_596 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.var 10)

def word858_0_597 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_595 word858_0_596

def word858_0_598 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 70)

def word858_0_599 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_597 word858_0_598

def word858_0_600 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 118

def word858_0_601 : WordLangProgHOL (BitVec 64) :=
.call (some (([40, 102, 26, 86, 56]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln) PUnit.unit
          Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word858_0_14, 858, 28)) (some 115) ([118, 18, 78, 48, 110, 34, 94, 64]) (some (118, word858_0_600, 858, 29))

def word858_0_602 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_599 word858_0_601

def word858_0_603 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_602 word858_0_18

def word858_0_604 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 56)

def word858_0_605 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_603 word858_0_604

def word858_0_606 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.const 0#64)

def word858_0_607 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_605 word858_0_606

def word858_0_608 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def word858_0_609 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_608 word858_0_18

def word858_0_610 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 1#64)

def word858_0_611 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_609 word858_0_610

def word858_0_612 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_611 word858_0_112

def word858_0_613 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def word858_0_614 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_613 word858_0_18

def word858_0_615 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 0#64)

def word858_0_616 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_614 word858_0_615

def word858_0_617 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.reg 78) word858_0_612 word858_0_616

def word858_0_618 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_607 word858_0_617

def word858_0_619 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_618 word858_0_18

def word858_0_620 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 40)

def word858_0_621 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_619 word858_0_620

def word858_0_622 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 124 (Flapjack.WordLangExpHOL.var 102)

def word858_0_623 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_621 word858_0_622

def word858_0_624 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 26)

def word858_0_625 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_623 word858_0_624

def word858_0_626 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 86)

def word858_0_627 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_625 word858_0_626

def word858_0_628 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 98 (Flapjack.WordRegImm.reg 22) word858_0_627 word858_0_292

def word858_0_629 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_412 word858_0_628

def word858_0_630 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_629 word858_0_18

def word858_0_631 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_630 word858_0_409

def word858_0_632 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_631 word858_0_471

def word858_0_633 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 280#64]))

def word858_0_634 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_281 word858_0_633

def word858_0_635 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_634 word858_0_250

def word858_0_636 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 90#64)

def word858_0_637 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_281 word858_0_636

def word858_0_638 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_637 word858_0_284

def word858_0_639 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_638 word858_0_286

def word858_0_640 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_639 word858_0_271

def word858_0_641 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 98 (Flapjack.WordRegImm.reg 22) word858_0_640 word858_0_14

def word858_0_642 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_641 word858_0_292

def word858_0_643 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_635 word858_0_642

def word858_0_644 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_643 word858_0_18

def word858_0_645 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 98 (Flapjack.WordRegImm.reg 22) word858_0_644 word858_0_292

def word858_0_646 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_632 word858_0_645

def word858_0_647 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_646 word858_0_18

def word858_0_648 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 16#64]))

def word858_0_649 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_647 word858_0_648

def word858_0_650 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 16#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def word858_0_651 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_649 word858_0_650

def word858_0_652 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 16#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def word858_0_653 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_651 word858_0_652

def word858_0_654 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 16#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def word858_0_655 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_653 word858_0_654

def word858_0_656 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_655 word858_0_336

def word858_0_657 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_656 word858_0_338

def word858_0_658 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_657 word858_0_340

def word858_0_659 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_658 word858_0_342

def word858_0_660 : WordLangProgHOL (BitVec 64) :=
.call (some (([52]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln) PUnit.unit
          Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word858_0_14, 858, 30)) (some 101) ([114, 14, 74, 44]) (some (114, word858_0_332, 858, 31))

def word858_0_661 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_659 word858_0_660

def word858_0_662 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_661 word858_0_18

def word858_0_663 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 114
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 42, Flapjack.WordLangExpHOL.const 0#64]))

def word858_0_664 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_662 word858_0_663

def word858_0_665 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 52)

def word858_0_666 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_664 word858_0_665

def word858_0_667 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 0#64)

def word858_0_668 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_666 word858_0_667

def word858_0_669 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.const 1#64)

def word858_0_670 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_669 word858_0_18

def word858_0_671 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 106 (Flapjack.WordLangExpHOL.const 1#64)

def word858_0_672 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_670 word858_0_671

def word858_0_673 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 92#64)

def word858_0_674 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_672 word858_0_673

def word858_0_675 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 14)

def word858_0_676 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_674 word858_0_675

def word858_0_677 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 4#64)

def word858_0_678 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_676 word858_0_677

def word858_0_679 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_678 word858_0_501

def word858_0_680 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 74 (Flapjack.WordRegImm.reg 44) word858_0_679 word858_0_14

def word858_0_681 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.const 0#64)

def word858_0_682 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_681 word858_0_18

def word858_0_683 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 106 (Flapjack.WordLangExpHOL.const 0#64)

def word858_0_684 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_682 word858_0_683

def word858_0_685 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_680 word858_0_684

def word858_0_686 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_668 word858_0_685

def word858_0_687 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_686 word858_0_18

def word858_0_688 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 36)

def word858_0_689 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_687 word858_0_688

def word858_0_690 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 114)

def word858_0_691 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_689 word858_0_690

def word858_0_692 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 91#64)

def word858_0_693 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_672 word858_0_692

def word858_0_694 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_693 word858_0_675

def word858_0_695 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_694 word858_0_677

def word858_0_696 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_695 word858_0_501

def word858_0_697 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 74 (Flapjack.WordRegImm.reg 44) word858_0_696 word858_0_14

def word858_0_698 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_697 word858_0_684

def word858_0_699 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_691 word858_0_698

def word858_0_700 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_699 word858_0_18

def word858_0_701 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 114)

def word858_0_702 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_700 word858_0_701

def word858_0_703 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 36)

def word858_0_704 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_702 word858_0_703

def word858_0_705 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 74 (Flapjack.WordRegImm.reg 44) word858_0_679 word858_0_14

def word858_0_706 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_705 word858_0_684

def word858_0_707 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_704 word858_0_706

def word858_0_708 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_707 word858_0_18

def word858_0_709 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 92)

def word858_0_710 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_708 word858_0_709

def word858_0_711 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_710 word858_0_667

def word858_0_712 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 93#64)

def word858_0_713 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_672 word858_0_712

def word858_0_714 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_713 word858_0_675

def word858_0_715 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_714 word858_0_677

def word858_0_716 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_715 word858_0_501

def word858_0_717 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 74 (Flapjack.WordRegImm.reg 44) word858_0_716 word858_0_14

def word858_0_718 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_717 word858_0_684

def word858_0_719 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_711 word858_0_718

def word858_0_720 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_719 word858_0_18

def word858_0_721 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 90 (Flapjack.WordLangExpHOL.var 62)

def word858_0_722 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_720 word858_0_721

def word858_0_723 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 124)

def word858_0_724 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_722 word858_0_723

def word858_0_725 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122 (Flapjack.WordLangExpHOL.var 6)

def word858_0_726 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_724 word858_0_725

def word858_0_727 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 66)

def word858_0_728 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_726 word858_0_727

def word858_0_729 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 160#64]))

def word858_0_730 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_728 word858_0_729

def word858_0_731 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 160#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def word858_0_732 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_730 word858_0_731

def word858_0_733 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 160#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def word858_0_734 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_732 word858_0_733

def word858_0_735 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 160#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def word858_0_736 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_734 word858_0_735

def word858_0_737 : WordLangProgHOL (BitVec 64) :=
.call (some (([14, 74, 44, 106, 30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln) PUnit.unit
          Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word858_0_14, 858, 32)) (some 115) ([90, 60, 122, 10, 70, 40, 102, 26]) (some (90, word858_0_529, 858, 33))

def word858_0_738 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_736 word858_0_737

def word858_0_739 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_738 word858_0_18

def word858_0_740 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_739 word858_0_533

def word858_0_741 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_740 word858_0_535

def word858_0_742 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 90 (Flapjack.WordLangExpHOL.const 93#64)

def word858_0_743 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_539 word858_0_742

def word858_0_744 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_743 word858_0_542

def word858_0_745 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_744 word858_0_544

def word858_0_746 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_745 word858_0_529

def word858_0_747 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 60 (Flapjack.WordRegImm.reg 122) word858_0_746 word858_0_14

def word858_0_748 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_747 word858_0_550

def word858_0_749 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_741 word858_0_748

def word858_0_750 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_749 word858_0_18

def word858_0_751 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 42, Flapjack.WordLangExpHOL.const 8#64]))

def word858_0_752 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_750 word858_0_751

def word858_0_753 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 42, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def word858_0_754 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_752 word858_0_753

def word858_0_755 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 42, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def word858_0_756 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_754 word858_0_755

def word858_0_757 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 42, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def word858_0_758 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_756 word858_0_757

def word858_0_759 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 14)

def word858_0_760 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_758 word858_0_759

def word858_0_761 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.var 74)

def word858_0_762 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_760 word858_0_761

def word858_0_763 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 44)

def word858_0_764 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_762 word858_0_763

def word858_0_765 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.var 106)

def word858_0_766 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_764 word858_0_765

def word858_0_767 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 60

def word858_0_768 : WordLangProgHOL (BitVec 64) :=
.call (some (([90]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln) PUnit.unit
          Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word858_0_14, 858, 34)) (some 106) ([60, 122, 10, 70, 40, 102, 26, 86]) (some (60, word858_0_767, 858, 35))

def word858_0_769 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_766 word858_0_768

def word858_0_770 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_769 word858_0_18

def word858_0_771 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122 (Flapjack.WordLangExpHOL.var 90)

def word858_0_772 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_770 word858_0_771

def word858_0_773 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_772 word858_0_549

def word858_0_774 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122 (Flapjack.WordLangExpHOL.const 1#64)

def word858_0_775 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_774 word858_0_18

def word858_0_776 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 1#64)

def word858_0_777 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_775 word858_0_776

def word858_0_778 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.const 93#64)

def word858_0_779 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_777 word858_0_778

def word858_0_780 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 60)

def word858_0_781 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_779 word858_0_780

def word858_0_782 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.const 4#64)

def word858_0_783 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_781 word858_0_782

def word858_0_784 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_783 word858_0_767

def word858_0_785 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 122 (Flapjack.WordRegImm.reg 10) word858_0_784 word858_0_14

def word858_0_786 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_535 word858_0_18

def word858_0_787 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 0#64)

def word858_0_788 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_786 word858_0_787

def word858_0_789 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_785 word858_0_788

def word858_0_790 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_773 word858_0_789

def word858_0_791 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_790 word858_0_18

def word858_0_792 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 42, Flapjack.WordLangExpHOL.const 48#64]))

def word858_0_793 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_791 word858_0_792

def word858_0_794 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 4)

def word858_0_795 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_793 word858_0_794

def word858_0_796 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def word858_0_797 : WordLangProgHOL (BitVec 64) :=
.call (some (([60, 122]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln) PUnit.unit
          Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word858_0_14, 858, 36)) (some 404) ([10, 70]) (some (10, word858_0_796, 858, 37))

def word858_0_798 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_795 word858_0_797

def word858_0_799 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_798 word858_0_18

def word858_0_800 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 42, Flapjack.WordLangExpHOL.const 48#64]))

def word858_0_801 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_799 word858_0_800

def word858_0_802 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 136#64]))

def word858_0_803 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_801 word858_0_802

def word858_0_804 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.const 32#64)

def word858_0_805 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_803 word858_0_804

def word858_0_806 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_805 word858_0_804

def word858_0_807 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 70

def word858_0_808 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln) PUnit.unit
          Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word858_0_14, 858, 38)) (some 79) ([70, 40, 102]) (some (70, word858_0_807, 858, 39))

def word858_0_809 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_806 word858_0_808

def word858_0_810 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_809 word858_0_18

def word858_0_811 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 10)

def word858_0_812 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_810 word858_0_811

def word858_0_813 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_812 word858_0_577

def word858_0_814 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 1#64)

def word858_0_815 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_814 word858_0_18

def word858_0_816 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def word858_0_817 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_815 word858_0_816

def word858_0_818 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 60)

def word858_0_819 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_817 word858_0_818

def word858_0_820 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.var 122)

def word858_0_821 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_819 word858_0_820

def word858_0_822 : WordLangProgHOL (BitVec 64) :=
.call (some (([70]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln) PUnit.unit
          Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word858_0_14, 858, 40)) (some 464) ([40, 102]) (some (40, word858_0_564, 858, 41))

def word858_0_823 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_821 word858_0_822

def word858_0_824 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_823 word858_0_18

def word858_0_825 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.var 70)

def word858_0_826 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_824 word858_0_825

def word858_0_827 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_826 word858_0_570

def word858_0_828 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 94#64)

def word858_0_829 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_575 word858_0_828

def word858_0_830 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 40)

def word858_0_831 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_829 word858_0_830

def word858_0_832 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 4#64)

def word858_0_833 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_831 word858_0_832

def word858_0_834 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_833 word858_0_564

def word858_0_835 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 102 (Flapjack.WordRegImm.reg 26) word858_0_834 word858_0_14

def word858_0_836 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_835 word858_0_580

def word858_0_837 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_827 word858_0_836

def word858_0_838 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_837 word858_0_18

def word858_0_839 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 0#64)

def word858_0_840 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_839 word858_0_18

def word858_0_841 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_840 word858_0_570

def word858_0_842 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 40 (Flapjack.WordRegImm.reg 102) word858_0_838 word858_0_841

def word858_0_843 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_813 word858_0_842

def word858_0_844 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_843 word858_0_18

def word858_0_845 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 120)

def word858_0_846 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_844 word858_0_845

def word858_0_847 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 8)

def word858_0_848 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_846 word858_0_847

def word858_0_849 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.var 68)

def word858_0_850 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_848 word858_0_849

def word858_0_851 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 38)

def word858_0_852 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_850 word858_0_851

def word858_0_853 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [70, 40, 102, 26]

def word858_0_854 : WordLangProgHOL (BitVec 64) :=
.seq word858_0_852 word858_0_853

def pass858_0 : WordLangProgHOL (BitVec 64) :=
word858_0_854
theorem pass858_0_eq : WordSimp.compileExp (source858.2.2) = pass858_0 := by
  kernel_rfl
#print axioms pass858_0_eq
end InitECandidate.Proofs.WordStages
