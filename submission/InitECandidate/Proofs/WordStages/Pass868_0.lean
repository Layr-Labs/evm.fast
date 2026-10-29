import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Source868
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def word868_0_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64]))

def word868_0_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 42, Flapjack.WordLangExpHOL.const 40#64]))

def word868_0_2 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_0 word868_0_1

def word868_0_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 88#64)

def word868_0_4 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_2 word868_0_3

def word868_0_5 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_4 word868_0_3

def word868_0_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def word868_0_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def word868_0_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([36]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word868_0_6, 868, 2)) (some 68) ([24]) (some (24, word868_0_7, 868, 3))

def word868_0_9 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_5 word868_0_8

def word868_0_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def word868_0_11 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_9 word868_0_10

def word868_0_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 416#64])

def word868_0_13 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_11 word868_0_12

def word868_0_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 36)

def word868_0_15 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_13 word868_0_14

def word868_0_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 50)

def word868_0_17 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_15 word868_0_16

def word868_0_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 24) 8

def word868_0_19 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_17 word868_0_18

def word868_0_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 416#64]))

def word868_0_21 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_19 word868_0_20

def word868_0_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 88#64)

def word868_0_23 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_21 word868_0_22

def word868_0_24 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_23 word868_0_22

def word868_0_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([36]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word868_0_6, 868, 4)) (some 78) ([24, 50]) (some (24, word868_0_7, 868, 5))

def word868_0_26 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_24 word868_0_25

def word868_0_27 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_26 word868_0_10

def word868_0_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 12)
        (Flapjack.WordLangExpHOL.const 4#64),
      Flapjack.WordLangExpHOL.const 16#64])

def word868_0_29 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_27 word868_0_28

def word868_0_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([36]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word868_0_6, 868, 6)) (some 68) ([24]) (some (24, word868_0_7, 868, 7))

def word868_0_31 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_29 word868_0_30

def word868_0_32 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_31 word868_0_10

def word868_0_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 416#64]),
      Flapjack.WordLangExpHOL.const 24#64])

def word868_0_34 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_32 word868_0_33

def word868_0_35 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_34 word868_0_14

def word868_0_36 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_35 word868_0_16

def word868_0_37 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_36 word868_0_18

def word868_0_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 12)
        (Flapjack.WordLangExpHOL.const 4#64),
      Flapjack.WordLangExpHOL.const 16#64])

def word868_0_39 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_37 word868_0_38

def word868_0_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 50

def word868_0_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word868_0_6, 868, 8)) (some 68) ([50]) (some (50, word868_0_40, 868, 9))

def word868_0_42 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_39 word868_0_41

def word868_0_43 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_42 word868_0_10

def word868_0_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 416#64]),
      Flapjack.WordLangExpHOL.const 32#64])

def word868_0_45 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_43 word868_0_44

def word868_0_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 24)

def word868_0_47 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_45 word868_0_46

def word868_0_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 8)

def word868_0_49 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_47 word868_0_48

def word868_0_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 50) 32

def word868_0_51 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_49 word868_0_50

def word868_0_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8#64)

def word868_0_53 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_51 word868_0_52

def word868_0_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 16#64)

def word868_0_55 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_53 word868_0_54

def word868_0_56 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_55 word868_0_54

def word868_0_57 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_56 word868_0_52

def word868_0_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def word868_0_59 : WordLangProgHOL (BitVec 64) :=
.call (some (([50]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word868_0_6, 868, 10)) (some 435) ([8, 32]) (some (8, word868_0_58, 868, 11))

def word868_0_60 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_57 word868_0_59

def word868_0_61 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_60 word868_0_10

def word868_0_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 416#64]),
      Flapjack.WordLangExpHOL.const 40#64])

def word868_0_63 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_61 word868_0_62

def word868_0_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 50)

def word868_0_65 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_63 word868_0_64

def word868_0_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 32)

def word868_0_67 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_65 word868_0_66

def word868_0_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 8) 20

def word868_0_69 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_67 word868_0_68

def word868_0_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 128#64)

def word868_0_71 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_69 word868_0_70

def word868_0_72 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_71 word868_0_70

def word868_0_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def word868_0_74 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word868_0_6, 868, 12)) (some 68) ([32]) (some (32, word868_0_73, 868, 13))

def word868_0_75 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_72 word868_0_74

def word868_0_76 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_75 word868_0_10

def word868_0_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 416#64]),
      Flapjack.WordLangExpHOL.const 56#64])

def word868_0_78 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_76 word868_0_77

def word868_0_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 8)

def word868_0_80 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_78 word868_0_79

def word868_0_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 20)

def word868_0_82 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_80 word868_0_81

def word868_0_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 32) 46

def word868_0_84 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_82 word868_0_83

def word868_0_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 8#64)

def word868_0_86 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_84 word868_0_85

def word868_0_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 16#64)

def word868_0_88 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_86 word868_0_87

def word868_0_89 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_88 word868_0_87

def word868_0_90 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_89 word868_0_85

def word868_0_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def word868_0_92 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word868_0_6, 868, 14)) (some 435) ([20, 46]) (some (20, word868_0_91, 868, 15))

def word868_0_93 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_90 word868_0_92

def word868_0_94 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_93 word868_0_10

def word868_0_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 416#64]),
      Flapjack.WordLangExpHOL.const 72#64])

def word868_0_96 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_94 word868_0_95

def word868_0_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 32)

def word868_0_98 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_96 word868_0_97

def word868_0_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 46)

def word868_0_100 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_98 word868_0_99

def word868_0_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 20) 16

def word868_0_102 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_100 word868_0_101

def word868_0_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 416#64]),
      Flapjack.WordLangExpHOL.const 80#64])

def word868_0_104 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_102 word868_0_103

def word868_0_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 12)

def word868_0_106 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_104 word868_0_105

def word868_0_107 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_106 word868_0_99

def word868_0_108 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_107 word868_0_101

def word868_0_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 46

def word868_0_110 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word868_0_6, 868, 16)) (some 438) ([]) (some (46, word868_0_109, 868, 17))

def word868_0_111 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_108 word868_0_110

def word868_0_112 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_111 word868_0_10

def word868_0_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 464#64]))

def word868_0_114 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_112 word868_0_113

def word868_0_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 24#64]))

def word868_0_116 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_114 word868_0_115

def word868_0_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 32#64)

def word868_0_118 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_116 word868_0_117

def word868_0_119 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_118 word868_0_117

def word868_0_120 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word868_0_6, 868, 18)) (some 860) ([46, 16, 40]) (some (46, word868_0_109, 868, 19))

def word868_0_121 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_119 word868_0_120

def word868_0_122 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_121 word868_0_10

def word868_0_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 432#64]))

def word868_0_124 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_122 word868_0_123

def word868_0_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def word868_0_126 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_124 word868_0_125

def word868_0_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 448#64]))

def word868_0_128 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_126 word868_0_127

def word868_0_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def word868_0_130 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_129 word868_0_10

def word868_0_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def word868_0_132 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_130 word868_0_131

def word868_0_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 440#64]),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 448#64]),
            Flapjack.WordLangExpHOL.const 1#64])
        (Flapjack.WordLangExpHOL.const 5#64)])

def word868_0_134 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_132 word868_0_133

def word868_0_135 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_125 word868_0_10

def word868_0_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def word868_0_137 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_135 word868_0_136

def word868_0_138 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 16 (Flapjack.WordRegImm.reg 40) word868_0_134 word868_0_137

def word868_0_139 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_128 word868_0_138

def word868_0_140 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_139 word868_0_10

def word868_0_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 472#64]))

def word868_0_142 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_140 word868_0_141

def word868_0_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 20)

def word868_0_144 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_142 word868_0_143

def word868_0_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 32#64)

def word868_0_146 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_144 word868_0_145

def word868_0_147 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_146 word868_0_145

def word868_0_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def word868_0_149 : WordLangProgHOL (BitVec 64) :=
.call (some (([46]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word868_0_6, 868, 20)) (some 860) ([16, 40, 28]) (some (16, word868_0_148, 868, 21))

def word868_0_150 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_147 word868_0_149

def word868_0_151 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_150 word868_0_10

def word868_0_152 : WordLangProgHOL (BitVec 64) :=
.call (some (([46]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word868_0_6, 868, 22)) (some 387) ([]) (some (16, word868_0_148, 868, 23))

def word868_0_153 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_151 word868_0_152

def word868_0_154 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_153 word868_0_10

def word868_0_155 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_154 word868_0_129

def word868_0_156 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_155 word868_0_129

def word868_0_157 : WordLangProgHOL (BitVec 64) :=
.call (some (([46]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word868_0_6, 868, 24)) (some 434) ([16]) (some (16, word868_0_148, 868, 25))

def word868_0_158 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_156 word868_0_157

def word868_0_159 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_158 word868_0_10

def word868_0_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 42, Flapjack.WordLangExpHOL.const 32#64]))

def word868_0_161 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_159 word868_0_160

def word868_0_162 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_161 word868_0_125

def word868_0_163 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_162 word868_0_10

def word868_0_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 16)

def word868_0_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 12)

def word868_0_166 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_164 word868_0_165

def word868_0_167 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_131 word868_0_10

def word868_0_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def word868_0_169 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_167 word868_0_168

def word868_0_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 46,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 16)
          (Flapjack.WordLangExpHOL.const 4#64)]))

def word868_0_171 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_169 word868_0_170

def word868_0_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 46,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 16)
          (Flapjack.WordLangExpHOL.const 4#64),
        Flapjack.WordLangExpHOL.const 8#64]))

def word868_0_173 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_171 word868_0_172

def word868_0_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def word868_0_175 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word868_0_6, 868, 26)) (some 346) ([28, 54]) (some (28, word868_0_174, 868, 27))

def word868_0_176 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_173 word868_0_175

def word868_0_177 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_176 word868_0_10

def word868_0_178 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 40)

def word868_0_179 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_177 word868_0_178

def word868_0_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 16)

def word868_0_181 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_179 word868_0_180

def word868_0_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 54

def word868_0_183 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word868_0_6, 868, 28)) (some 863) ([54, 6]) (some (54, word868_0_182, 868, 29))

def word868_0_184 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_181 word868_0_183

def word868_0_185 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_184 word868_0_10

def word868_0_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 1#64])

def word868_0_187 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_185 word868_0_186

def word868_0_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 28)

def word868_0_189 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_187 word868_0_188

def word868_0_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def word868_0_191 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_189 word868_0_190

def word868_0_192 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_136 word868_0_10

def word868_0_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def word868_0_194 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_192 word868_0_193

def word868_0_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def word868_0_196 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_194 word868_0_195

def word868_0_197 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 28 (Flapjack.WordRegImm.reg 54) word868_0_191 word868_0_196

def word868_0_198 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_166 word868_0_197

def word868_0_199 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_198 word868_0_10

def word868_0_200 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln) word868_0_199 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln)

def word868_0_201 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_163 word868_0_200

def word868_0_202 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_201 word868_0_10

def word868_0_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 224#64])

def word868_0_204 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_202 word868_0_203

def word868_0_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 12, Flapjack.WordLangExpHOL.const 1#64])

def word868_0_206 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_204 word868_0_205

def word868_0_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 28)

def word868_0_208 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_206 word868_0_207

def word868_0_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 40) 54

def word868_0_210 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_208 word868_0_209

def word868_0_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 42)

def word868_0_212 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_210 word868_0_211

def word868_0_213 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word868_0_6, 868, 30)) (some 865) ([28]) (some (28, word868_0_174, 868, 31))

def word868_0_214 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_212 word868_0_213

def word868_0_215 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_214 word868_0_10

def word868_0_216 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word868_0_6, 868, 32)) (some 867) ([]) (some (28, word868_0_174, 868, 33))

def word868_0_217 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_215 word868_0_216

def word868_0_218 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_217 word868_0_10

def word868_0_219 : WordLangProgHOL (BitVec 64) :=
.call (some (([40, 28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word868_0_6, 868, 34)) (some 460) ([]) (some (54, word868_0_182, 868, 35))

def word868_0_220 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_218 word868_0_219

def word868_0_221 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_220 word868_0_10

def word868_0_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
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

def word868_0_223 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_221 word868_0_222

def word868_0_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def word868_0_225 : WordLangProgHOL (BitVec 64) :=
.call (some (([54]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word868_0_6, 868, 36)) (some 461) ([6]) (some (6, word868_0_224, 868, 37))

def word868_0_226 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_223 word868_0_225

def word868_0_227 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_226 word868_0_10

def word868_0_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 32#64)

def word868_0_229 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_227 word868_0_228

def word868_0_230 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_229 word868_0_228

def word868_0_231 : WordLangProgHOL (BitVec 64) :=
.call (some (([54]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word868_0_6, 868, 38)) (some 68) ([6]) (some (6, word868_0_224, 868, 39))

def word868_0_232 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_230 word868_0_231

def word868_0_233 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_232 word868_0_10

def word868_0_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 54)

def word868_0_235 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_233 word868_0_234

def word868_0_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def word868_0_237 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word868_0_6, 868, 40)) (some 850) ([30]) (some (30, word868_0_236, 868, 41))

def word868_0_238 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_235 word868_0_237

def word868_0_239 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_238 word868_0_10

def word868_0_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 32#64)

def word868_0_241 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_239 word868_0_240

def word868_0_242 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_241 word868_0_240

def word868_0_243 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word868_0_6, 868, 42)) (some 68) ([30]) (some (30, word868_0_236, 868, 43))

def word868_0_244 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_242 word868_0_243

def word868_0_245 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_244 word868_0_10

def word868_0_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 36)

def word868_0_247 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_245 word868_0_246

def word868_0_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 12)

def word868_0_249 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_247 word868_0_248

def word868_0_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 6)

def word868_0_251 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_249 word868_0_250

def word868_0_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def word868_0_253 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word868_0_6, 868, 44)) (some 332) ([18, 44, 14]) (some (18, word868_0_252, 868, 45))

def word868_0_254 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_251 word868_0_253

def word868_0_255 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_254 word868_0_10

def word868_0_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 32#64)

def word868_0_257 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_255 word868_0_256

def word868_0_258 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_257 word868_0_256

def word868_0_259 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word868_0_6, 868, 46)) (some 68) ([18]) (some (18, word868_0_252, 868, 47))

def word868_0_260 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_258 word868_0_259

def word868_0_261 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_260 word868_0_10

def word868_0_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 24)

def word868_0_263 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_261 word868_0_262

def word868_0_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 12)

def word868_0_265 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_263 word868_0_264

def word868_0_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 30)

def word868_0_267 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_265 word868_0_266

def word868_0_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 44

def word868_0_269 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word868_0_6, 868, 48)) (some 332) ([44, 14, 38]) (some (44, word868_0_268, 868, 49))

def word868_0_270 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_267 word868_0_269

def word868_0_271 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_270 word868_0_10

def word868_0_272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 256#64)

def word868_0_273 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_271 word868_0_272

def word868_0_274 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_273 word868_0_272

def word868_0_275 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word868_0_6, 868, 50)) (some 68) ([44]) (some (44, word868_0_268, 868, 51))

def word868_0_276 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_274 word868_0_275

def word868_0_277 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_276 word868_0_10

def word868_0_278 : WordLangProgHOL (BitVec 64) :=
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
              Flapjack.WordLangExpHOL.const 416#64]),
        Flapjack.WordLangExpHOL.const 40#64]))

def word868_0_279 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_277 word868_0_278

def word868_0_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 18)

def word868_0_281 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_279 word868_0_280

def word868_0_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def word868_0_283 : WordLangProgHOL (BitVec 64) :=
.call (some (([44]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word868_0_6, 868, 52)) (some 839) ([14, 38]) (some (14, word868_0_282, 868, 53))

def word868_0_284 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_281 word868_0_283

def word868_0_285 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_284 word868_0_10

def word868_0_286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 32#64)

def word868_0_287 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_285 word868_0_286

def word868_0_288 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_287 word868_0_286

def word868_0_289 : WordLangProgHOL (BitVec 64) :=
.call (some (([44]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word868_0_6, 868, 54)) (some 68) ([14]) (some (14, word868_0_282, 868, 55))

def word868_0_290 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_288 word868_0_289

def word868_0_291 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_290 word868_0_10

def word868_0_292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 528#64]))

def word868_0_293 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_291 word868_0_292

def word868_0_294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 42, Flapjack.WordLangExpHOL.const 56#64]))

def word868_0_295 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_293 word868_0_294

def word868_0_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 44)

def word868_0_297 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_295 word868_0_296

def word868_0_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 38

def word868_0_299 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word868_0_6, 868, 56)) (some 332) ([38, 26, 52]) (some (38, word868_0_298, 868, 57))

def word868_0_300 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_297 word868_0_299

def word868_0_301 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_300 word868_0_10

def word868_0_302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 32#64)

def word868_0_303 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_301 word868_0_302

def word868_0_304 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_303 word868_0_302

def word868_0_305 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word868_0_6, 868, 58)) (some 68) ([38]) (some (38, word868_0_298, 868, 59))

def word868_0_306 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_304 word868_0_305

def word868_0_307 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_306 word868_0_10

def word868_0_308 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 416#64]),
        Flapjack.WordLangExpHOL.const 56#64]))

def word868_0_309 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_307 word868_0_308

def word868_0_310 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 416#64]),
        Flapjack.WordLangExpHOL.const 64#64]))

def word868_0_311 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_309 word868_0_310

def word868_0_312 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 14)

def word868_0_313 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_311 word868_0_312

def word868_0_314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def word868_0_315 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word868_0_6, 868, 60)) (some 847) ([26, 52, 10]) (some (26, word868_0_314, 868, 61))

def word868_0_316 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_313 word868_0_315

def word868_0_317 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_316 word868_0_10

def word868_0_318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 32#64)

def word868_0_319 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_317 word868_0_318

def word868_0_320 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_319 word868_0_318

def word868_0_321 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word868_0_6, 868, 62)) (some 68) ([26]) (some (26, word868_0_314, 868, 63))

def word868_0_322 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_320 word868_0_321

def word868_0_323 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_322 word868_0_10

def word868_0_324 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 40)

def word868_0_325 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_323 word868_0_324

def word868_0_326 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 28)

def word868_0_327 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_325 word868_0_326

def word868_0_328 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 38)

def word868_0_329 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_327 word868_0_328

def word868_0_330 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 52

def word868_0_331 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word868_0_6, 868, 64)) (some 158) ([52, 10, 34]) (some (52, word868_0_330, 868, 65))

def word868_0_332 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_329 word868_0_331

def word868_0_333 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_332 word868_0_10

def word868_0_334 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 416#64]),
        Flapjack.WordLangExpHOL.const 0#64]))

def word868_0_335 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_333 word868_0_334

def word868_0_336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 416#64]),
        Flapjack.WordLangExpHOL.const 8#64]))

def word868_0_337 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_335 word868_0_336

def word868_0_338 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word868_0_6, 868, 66)) (some 93) ([52, 10]) (some (52, word868_0_330, 868, 67))

def word868_0_339 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_337 word868_0_338

def word868_0_340 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_339 word868_0_10

def word868_0_341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 26)

def word868_0_342 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_340 word868_0_341

def word868_0_343 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 112#64]))

def word868_0_344 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_342 word868_0_343

def word868_0_345 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def word868_0_346 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_345 word868_0_10

def word868_0_347 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def word868_0_348 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_346 word868_0_347

def word868_0_349 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 110#64)

def word868_0_350 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_348 word868_0_349

def word868_0_351 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 52)

def word868_0_352 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_350 word868_0_351

def word868_0_353 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 4#64)

def word868_0_354 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_352 word868_0_353

def word868_0_355 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_354 word868_0_330

def word868_0_356 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 34) word868_0_355 word868_0_6

def word868_0_357 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def word868_0_358 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_357 word868_0_10

def word868_0_359 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def word868_0_360 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_358 word868_0_359

def word868_0_361 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_356 word868_0_360

def word868_0_362 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_344 word868_0_361

def word868_0_363 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_362 word868_0_10

def word868_0_364 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def word868_0_365 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_363 word868_0_364

def word868_0_366 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 40#64]))

def word868_0_367 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_365 word868_0_366

def word868_0_368 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 32#64)

def word868_0_369 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_367 word868_0_368

def word868_0_370 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_369 word868_0_368

def word868_0_371 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def word868_0_372 : WordLangProgHOL (BitVec 64) :=
.call (some (([52]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word868_0_6, 868, 68)) (some 79) ([10, 34, 22]) (some (10, word868_0_371, 868, 69))

def word868_0_373 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_370 word868_0_372

def word868_0_374 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_373 word868_0_10

def word868_0_375 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 52)

def word868_0_376 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_374 word868_0_375

def word868_0_377 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_376 word868_0_359

def word868_0_378 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 1#64)

def word868_0_379 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_378 word868_0_10

def word868_0_380 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 1#64)

def word868_0_381 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_379 word868_0_380

def word868_0_382 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 111#64)

def word868_0_383 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_381 word868_0_382

def word868_0_384 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 10)

def word868_0_385 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_383 word868_0_384

def word868_0_386 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 4#64)

def word868_0_387 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_385 word868_0_386

def word868_0_388 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_387 word868_0_371

def word868_0_389 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 34 (Flapjack.WordRegImm.reg 22) word868_0_388 word868_0_6

def word868_0_390 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def word868_0_391 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_390 word868_0_10

def word868_0_392 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.const 0#64)

def word868_0_393 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_391 word868_0_392

def word868_0_394 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_389 word868_0_393

def word868_0_395 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_377 word868_0_394

def word868_0_396 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_395 word868_0_10

def word868_0_397 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 54)

def word868_0_398 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_396 word868_0_397

def word868_0_399 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 32#64]))

def word868_0_400 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_398 word868_0_399

def word868_0_401 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_400 word868_0_368

def word868_0_402 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_401 word868_0_368

def word868_0_403 : WordLangProgHOL (BitVec 64) :=
.call (some (([52]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word868_0_6, 868, 70)) (some 79) ([10, 34, 22]) (some (10, word868_0_371, 868, 71))

def word868_0_404 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_402 word868_0_403

def word868_0_405 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_404 word868_0_10

def word868_0_406 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_405 word868_0_375

def word868_0_407 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_406 word868_0_359

def word868_0_408 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 112#64)

def word868_0_409 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_381 word868_0_408

def word868_0_410 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_409 word868_0_384

def word868_0_411 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_410 word868_0_386

def word868_0_412 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_411 word868_0_371

def word868_0_413 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 34 (Flapjack.WordRegImm.reg 22) word868_0_412 word868_0_6

def word868_0_414 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_413 word868_0_393

def word868_0_415 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_407 word868_0_414

def word868_0_416 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_415 word868_0_10

def word868_0_417 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 30)

def word868_0_418 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_416 word868_0_417

def word868_0_419 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64]))

def word868_0_420 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_418 word868_0_419

def word868_0_421 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_420 word868_0_368

def word868_0_422 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_421 word868_0_368

def word868_0_423 : WordLangProgHOL (BitVec 64) :=
.call (some (([52]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word868_0_6, 868, 72)) (some 79) ([10, 34, 22]) (some (10, word868_0_371, 868, 73))

def word868_0_424 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_422 word868_0_423

def word868_0_425 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_424 word868_0_10

def word868_0_426 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_425 word868_0_375

def word868_0_427 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_426 word868_0_359

def word868_0_428 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 113#64)

def word868_0_429 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_381 word868_0_428

def word868_0_430 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_429 word868_0_384

def word868_0_431 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_430 word868_0_386

def word868_0_432 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_431 word868_0_371

def word868_0_433 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 34 (Flapjack.WordRegImm.reg 22) word868_0_432 word868_0_6

def word868_0_434 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_433 word868_0_393

def word868_0_435 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_427 word868_0_434

def word868_0_436 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_435 word868_0_10

def word868_0_437 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 18)

def word868_0_438 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_436 word868_0_437

def word868_0_439 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 56#64]))

def word868_0_440 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_438 word868_0_439

def word868_0_441 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 256#64)

def word868_0_442 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_440 word868_0_441

def word868_0_443 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_442 word868_0_441

def word868_0_444 : WordLangProgHOL (BitVec 64) :=
.call (some (([52]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word868_0_6, 868, 74)) (some 79) ([10, 34, 22]) (some (10, word868_0_371, 868, 75))

def word868_0_445 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_443 word868_0_444

def word868_0_446 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_445 word868_0_10

def word868_0_447 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_446 word868_0_375

def word868_0_448 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_447 word868_0_359

def word868_0_449 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 114#64)

def word868_0_450 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_381 word868_0_449

def word868_0_451 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_450 word868_0_384

def word868_0_452 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_451 word868_0_386

def word868_0_453 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_452 word868_0_371

def word868_0_454 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 34 (Flapjack.WordRegImm.reg 22) word868_0_453 word868_0_6

def word868_0_455 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_454 word868_0_393

def word868_0_456 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_448 word868_0_455

def word868_0_457 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_456 word868_0_10

def word868_0_458 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 44)

def word868_0_459 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_457 word868_0_458

def word868_0_460 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 192#64]))

def word868_0_461 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_459 word868_0_460

def word868_0_462 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_461 word868_0_368

def word868_0_463 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_462 word868_0_368

def word868_0_464 : WordLangProgHOL (BitVec 64) :=
.call (some (([52]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word868_0_6, 868, 76)) (some 79) ([10, 34, 22]) (some (10, word868_0_371, 868, 77))

def word868_0_465 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_463 word868_0_464

def word868_0_466 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_465 word868_0_10

def word868_0_467 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_466 word868_0_375

def word868_0_468 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_467 word868_0_359

def word868_0_469 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 115#64)

def word868_0_470 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_381 word868_0_469

def word868_0_471 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_470 word868_0_384

def word868_0_472 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_471 word868_0_386

def word868_0_473 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_472 word868_0_371

def word868_0_474 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 34 (Flapjack.WordRegImm.reg 22) word868_0_473 word868_0_6

def word868_0_475 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_474 word868_0_393

def word868_0_476 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_468 word868_0_475

def word868_0_477 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_476 word868_0_10

def word868_0_478 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 416#64]),
        Flapjack.WordLangExpHOL.const 48#64]))

def word868_0_479 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_477 word868_0_478

def word868_0_480 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 200#64]))

def word868_0_481 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_479 word868_0_480

def word868_0_482 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 116#64)

def word868_0_483 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_381 word868_0_482

def word868_0_484 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_483 word868_0_384

def word868_0_485 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_484 word868_0_386

def word868_0_486 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_485 word868_0_371

def word868_0_487 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 34 (Flapjack.WordRegImm.reg 22) word868_0_486 word868_0_6

def word868_0_488 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_487 word868_0_393

def word868_0_489 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_481 word868_0_488

def word868_0_490 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_489 word868_0_10

def word868_0_491 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_490 word868_0_312

def word868_0_492 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 224#64]))

def word868_0_493 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_491 word868_0_492

def word868_0_494 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_493 word868_0_368

def word868_0_495 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_494 word868_0_368

def word868_0_496 : WordLangProgHOL (BitVec 64) :=
.call (some (([52]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word868_0_6, 868, 78)) (some 79) ([10, 34, 22]) (some (10, word868_0_371, 868, 79))

def word868_0_497 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_495 word868_0_496

def word868_0_498 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_497 word868_0_10

def word868_0_499 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_498 word868_0_375

def word868_0_500 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_499 word868_0_359

def word868_0_501 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 117#64)

def word868_0_502 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_381 word868_0_501

def word868_0_503 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_502 word868_0_384

def word868_0_504 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_503 word868_0_386

def word868_0_505 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_504 word868_0_371

def word868_0_506 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 34 (Flapjack.WordRegImm.reg 22) word868_0_505 word868_0_6

def word868_0_507 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_506 word868_0_393

def word868_0_508 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_500 word868_0_507

def word868_0_509 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_508 word868_0_10

def word868_0_510 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 38)

def word868_0_511 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_509 word868_0_510

def word868_0_512 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 232#64]))

def word868_0_513 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_511 word868_0_512

def word868_0_514 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_513 word868_0_368

def word868_0_515 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_514 word868_0_368

def word868_0_516 : WordLangProgHOL (BitVec 64) :=
.call (some (([52]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word868_0_6, 868, 80)) (some 79) ([10, 34, 22]) (some (10, word868_0_371, 868, 81))

def word868_0_517 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_515 word868_0_516

def word868_0_518 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_517 word868_0_10

def word868_0_519 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_518 word868_0_375

def word868_0_520 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_519 word868_0_359

def word868_0_521 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 118#64)

def word868_0_522 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_381 word868_0_521

def word868_0_523 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_522 word868_0_384

def word868_0_524 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_523 word868_0_386

def word868_0_525 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_524 word868_0_371

def word868_0_526 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 34 (Flapjack.WordRegImm.reg 22) word868_0_525 word868_0_6

def word868_0_527 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_526 word868_0_393

def word868_0_528 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_520 word868_0_527

def word868_0_529 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_528 word868_0_10

def word868_0_530 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_529 word868_0_357

def word868_0_531 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def word868_0_532 : WordLangProgHOL (BitVec 64) :=
.seq word868_0_530 word868_0_531

def pass868_0 : WordLangProgHOL (BitVec 64) :=
word868_0_532
theorem pass868_0_eq : WordSimp.compileExp (source868.2.2) = pass868_0 := by
  kernel_rfl
#print axioms pass868_0_eq
end InitECandidate.Proofs.WordStages
