import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Source863
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def word863_0_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def word863_0_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def word863_0_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([148]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 2)) (some 387) ([]) (some (30, word863_0_1, 863, 3))

def word863_0_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def word863_0_4 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_2 word863_0_3

def word863_0_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 148
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 224#64])

def word863_0_6 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_4 word863_0_5

def word863_0_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 1#64])

def word863_0_8 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_6 word863_0_7

def word863_0_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 124 (Flapjack.WordLangExpHOL.var 30)

def word863_0_10 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_8 word863_0_9

def word863_0_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 148) 124

def word863_0_12 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_10 word863_0_11

def word863_0_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 124 (Flapjack.WordLangExpHOL.var 2)

def word863_0_14 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_12 word863_0_13

def word863_0_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 124

def word863_0_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([148, 30]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 4)) (some 368) ([124]) (some (124, word863_0_15, 863, 5))

def word863_0_17 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_14 word863_0_16

def word863_0_18 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_17 word863_0_3

def word863_0_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 124
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 416#64]),
            Flapjack.WordLangExpHOL.const 24#64]),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
        (Flapjack.WordLangExpHOL.const 4#64)])

def word863_0_20 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_18 word863_0_19

def word863_0_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.var 148)

def word863_0_22 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_20 word863_0_21

def word863_0_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 172 (Flapjack.WordLangExpHOL.var 76)

def word863_0_24 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_22 word863_0_23

def word863_0_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 124) 172

def word863_0_26 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_24 word863_0_25

def word863_0_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 124
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 416#64]),
            Flapjack.WordLangExpHOL.const 24#64]),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
        (Flapjack.WordLangExpHOL.const 4#64),
      Flapjack.WordLangExpHOL.const 8#64])

def word863_0_28 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_26 word863_0_27

def word863_0_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.var 30)

def word863_0_30 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_28 word863_0_29

def word863_0_31 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_30 word863_0_23

def word863_0_32 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_31 word863_0_25

def word863_0_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 172 (Flapjack.WordLangExpHOL.var 2)

def word863_0_34 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_32 word863_0_33

def word863_0_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 172

def word863_0_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([124, 76]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))
        PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 6)) (some 377) ([172]) (some (172, word863_0_35, 863, 7))

def word863_0_37 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_34 word863_0_36

def word863_0_38 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_37 word863_0_3

def word863_0_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 124)

def word863_0_40 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_38 word863_0_39

def word863_0_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 112 (Flapjack.WordLangExpHOL.const 0#64)

def word863_0_42 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_40 word863_0_41

def word863_0_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def word863_0_44 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_43 word863_0_3

def word863_0_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.const 1#64)

def word863_0_46 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_44 word863_0_45

def word863_0_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 76)

def word863_0_48 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_46 word863_0_47

def word863_0_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 112
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
        Flapjack.WordLangExpHOL.const 0#64]))

def word863_0_50 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_48 word863_0_49

def word863_0_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 172 (Flapjack.WordLangExpHOL.const 100#64)

def word863_0_52 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_46 word863_0_51

def word863_0_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 172)

def word863_0_54 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_52 word863_0_53

def word863_0_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 172 (Flapjack.WordLangExpHOL.const 4#64)

def word863_0_56 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_54 word863_0_55

def word863_0_57 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_56 word863_0_35

def word863_0_58 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.reg 112) word863_0_57 word863_0_0

def word863_0_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def word863_0_60 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_59 word863_0_3

def word863_0_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.const 0#64)

def word863_0_62 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_60 word863_0_61

def word863_0_63 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_58 word863_0_62

def word863_0_64 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_50 word863_0_63

def word863_0_65 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_64 word863_0_3

def word863_0_66 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.reg 112) word863_0_65 word863_0_62

def word863_0_67 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_42 word863_0_66

def word863_0_68 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_67 word863_0_3

def word863_0_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 24#64)

def word863_0_70 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_68 word863_0_69

def word863_0_71 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_70 word863_0_69

def word863_0_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def word863_0_73 : WordLangProgHOL (BitVec 64) :=
.call (some (([172]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))
        PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 8)) (some 68) ([18]) (some (18, word863_0_72, 863, 9))

def word863_0_74 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_71 word863_0_73

def word863_0_75 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_74 word863_0_3

def word863_0_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 112 (Flapjack.WordLangExpHOL.var 2)

def word863_0_77 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_75 word863_0_76

def word863_0_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64
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
        Flapjack.WordLangExpHOL.const 0#64]))

def word863_0_79 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_77 word863_0_78

def word863_0_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 160 (Flapjack.WordLangExpHOL.var 172)

def word863_0_81 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_79 word863_0_80

def word863_0_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 112

def word863_0_83 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))
        PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 10)) (some 382) ([112, 64, 160]) (some (112, word863_0_82, 863, 11))

def word863_0_84 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_81 word863_0_83

def word863_0_85 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_84 word863_0_3

def word863_0_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 160 (Flapjack.WordLangExpHOL.var 2)

def word863_0_87 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_85 word863_0_86

def word863_0_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 172)

def word863_0_89 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_87 word863_0_88

def word863_0_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 160

def word863_0_91 : WordLangProgHOL (BitVec 64) :=
.call (some (([18, 112, 64]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))
        PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 12)) (some 385) ([160, 42]) (some (160, word863_0_90, 863, 13))

def word863_0_92 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_89 word863_0_91

def word863_0_93 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_92 word863_0_3

def word863_0_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 160
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.var 112])

def word863_0_95 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_93 word863_0_94

def word863_0_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def word863_0_97 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_95 word863_0_96

def word863_0_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 106 (Flapjack.WordLangExpHOL.var 172)

def word863_0_99 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_97 word863_0_98

def word863_0_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def word863_0_101 : WordLangProgHOL (BitVec 64) :=
.call (some (([42, 136, 88, 184]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 14)) (some 862) ([12, 106]) (some (12, word863_0_100, 863, 15))

def word863_0_102 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_99 word863_0_101

def word863_0_103 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_102 word863_0_3

def word863_0_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 106 (Flapjack.WordLangExpHOL.var 2)

def word863_0_105 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_103 word863_0_104

def word863_0_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 106

def word863_0_107 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 16)) (some 356) ([106]) (some (106, word863_0_106, 863, 17))

def word863_0_108 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_105 word863_0_107

def word863_0_109 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_108 word863_0_3

def word863_0_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 172)

def word863_0_111 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_109 word863_0_110

def word863_0_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 58

def word863_0_113 : WordLangProgHOL (BitVec 64) :=
.call (some (([106]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 18)) (some 407) ([58]) (some (58, word863_0_112, 863, 19))

def word863_0_114 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_111 word863_0_113

def word863_0_115 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_114 word863_0_3

def word863_0_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 0#64)

def word863_0_117 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_115 word863_0_116

def word863_0_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 154 (Flapjack.WordLangExpHOL.const 0#64)

def word863_0_119 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_117 word863_0_118

def word863_0_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 0#64)

def word863_0_121 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_119 word863_0_120

def word863_0_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 130 (Flapjack.WordLangExpHOL.const 0#64)

def word863_0_123 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_121 word863_0_122

def word863_0_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 178 (Flapjack.WordLangExpHOL.var 12)

def word863_0_125 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_123 word863_0_124

def word863_0_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def word863_0_127 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_125 word863_0_126

def word863_0_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 178 (Flapjack.WordLangExpHOL.const 1#64)

def word863_0_129 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_128 word863_0_3

def word863_0_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 118 (Flapjack.WordLangExpHOL.const 1#64)

def word863_0_131 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_129 word863_0_130

def word863_0_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70
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

def word863_0_133 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_131 word863_0_132

def word863_0_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 70

def word863_0_135 : WordLangProgHOL (BitVec 64) :=
.call (some (([82, 178, 24, 118]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 20)) (some 280) ([70]) (some (70, word863_0_134, 863, 21))

def word863_0_136 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_133 word863_0_135

def word863_0_137 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_136 word863_0_3

def word863_0_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 190 (Flapjack.WordLangExpHOL.var 12)

def word863_0_139 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_137 word863_0_138

def word863_0_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 82)

def word863_0_141 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_139 word863_0_140

def word863_0_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102 (Flapjack.WordLangExpHOL.var 178)

def word863_0_143 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_141 word863_0_142

def word863_0_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 24)

def word863_0_145 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_143 word863_0_144

def word863_0_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 152 (Flapjack.WordLangExpHOL.var 118)

def word863_0_147 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_145 word863_0_146

def word863_0_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 190

def word863_0_149 : WordLangProgHOL (BitVec 64) :=
.call (some (([70, 166, 48, 142, 94]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 22)) (some 857) ([190, 8, 102, 56, 152]) (some (190, word863_0_148, 863, 23))

def word863_0_150 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_147 word863_0_149

def word863_0_151 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_150 word863_0_3

def word863_0_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 166)

def word863_0_153 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_151 word863_0_152

def word863_0_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 154 (Flapjack.WordLangExpHOL.var 48)

def word863_0_155 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_153 word863_0_154

def word863_0_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 142)

def word863_0_157 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_155 word863_0_156

def word863_0_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 130 (Flapjack.WordLangExpHOL.var 94)

def word863_0_159 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_157 word863_0_158

def word863_0_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 178 (Flapjack.WordLangExpHOL.const 0#64)

def word863_0_161 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_160 word863_0_3

def word863_0_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 118 (Flapjack.WordLangExpHOL.const 0#64)

def word863_0_163 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_161 word863_0_162

def word863_0_164 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 178 (Flapjack.WordRegImm.reg 24) word863_0_159 word863_0_163

def word863_0_165 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_127 word863_0_164

def word863_0_166 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_165 word863_0_3

def word863_0_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 144#64]))

def word863_0_168 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_166 word863_0_167

def word863_0_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 82)

def word863_0_170 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_168 word863_0_169

def word863_0_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142 (Flapjack.WordLangExpHOL.var 42)

def word863_0_172 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_170 word863_0_171

def word863_0_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.var 136)

def word863_0_174 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_172 word863_0_173

def word863_0_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 190 (Flapjack.WordLangExpHOL.var 88)

def word863_0_176 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_174 word863_0_175

def word863_0_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 184)

def word863_0_178 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_176 word863_0_177

def word863_0_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 48

def word863_0_180 : WordLangProgHOL (BitVec 64) :=
.call (some (([178, 24, 118, 70, 166]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 24)) (some 857) ([48, 142, 94, 190, 8]) (some (48, word863_0_179, 863, 25))

def word863_0_181 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_178 word863_0_180

def word863_0_182 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_181 word863_0_3

def word863_0_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 24)

def word863_0_184 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_182 word863_0_183

def word863_0_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 142 (Flapjack.WordLangExpHOL.var 118)

def word863_0_186 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_184 word863_0_185

def word863_0_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 94 (Flapjack.WordLangExpHOL.var 70)

def word863_0_188 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_186 word863_0_187

def word863_0_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 190 (Flapjack.WordLangExpHOL.var 166)

def word863_0_190 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_188 word863_0_189

def word863_0_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 82, Flapjack.WordLangExpHOL.var 160])

def word863_0_192 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_190 word863_0_191

def word863_0_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 102
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.const 16777216#64, Flapjack.WordLangExpHOL.var 18])

def word863_0_194 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_192 word863_0_193

def word863_0_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 152 (Flapjack.WordLangExpHOL.var 102)

def word863_0_196 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_194 word863_0_195

def word863_0_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 8)

def word863_0_198 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_196 word863_0_197

def word863_0_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 152

def word863_0_200 : WordLangProgHOL (BitVec 64) :=
.call (some (([56]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 26)) (some 92) ([152, 34]) (some (152, word863_0_199, 863, 27))

def word863_0_201 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_198 word863_0_200

def word863_0_202 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_201 word863_0_3

def word863_0_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 152
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.var 56])

def word863_0_204 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_202 word863_0_203

def word863_0_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 128 (Flapjack.WordLangExpHOL.var 172)

def word863_0_206 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_204 word863_0_205

def word863_0_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 128

def word863_0_208 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 28)) (some 430) ([128]) (some (128, word863_0_207, 863, 29))

def word863_0_209 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_206 word863_0_208

def word863_0_210 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_209 word863_0_3

def word863_0_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 106, Flapjack.WordLangExpHOL.const 8#64]))

def word863_0_212 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_210 word863_0_211

def word863_0_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 128
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 106, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def word863_0_214 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_212 word863_0_213

def word863_0_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 106, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def word863_0_216 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_214 word863_0_215

def word863_0_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 176
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 106, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def word863_0_218 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_216 word863_0_217

def word863_0_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 34)

def word863_0_220 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_218 word863_0_219

def word863_0_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 116 (Flapjack.WordLangExpHOL.var 128)

def word863_0_222 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_220 word863_0_221

def word863_0_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 80)

def word863_0_224 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_222 word863_0_223

def word863_0_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164 (Flapjack.WordLangExpHOL.var 176)

def word863_0_226 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_224 word863_0_225

def word863_0_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 48)

def word863_0_228 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_226 word863_0_227

def word863_0_229 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.var 142)

def word863_0_230 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_228 word863_0_229

def word863_0_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.var 94)

def word863_0_232 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_230 word863_0_231

def word863_0_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 188 (Flapjack.WordLangExpHOL.var 190)

def word863_0_234 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_232 word863_0_233

def word863_0_235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def word863_0_236 : WordLangProgHOL (BitVec 64) :=
.call (some (([34, 128, 80, 176]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 30)) (some 117) ([22, 116, 68, 164, 46, 140, 92, 188]) (some (22, word863_0_235, 863, 31))

def word863_0_237 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_234 word863_0_236

def word863_0_238 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_237 word863_0_3

def word863_0_239 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_238 word863_0_219

def word863_0_240 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_239 word863_0_221

def word863_0_241 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_240 word863_0_223

def word863_0_242 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_241 word863_0_225

def word863_0_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 58)

def word863_0_244 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_242 word863_0_243

def word863_0_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.var 154)

def word863_0_246 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_244 word863_0_245

def word863_0_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.var 36)

def word863_0_248 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_246 word863_0_247

def word863_0_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 188 (Flapjack.WordLangExpHOL.var 130)

def word863_0_250 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_248 word863_0_249

def word863_0_251 : WordLangProgHOL (BitVec 64) :=
.call (some (([34, 128, 80, 176]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 32)) (some 117) ([22, 116, 68, 164, 46, 140, 92, 188]) (some (22, word863_0_235, 863, 33))

def word863_0_252 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_250 word863_0_251

def word863_0_253 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_252 word863_0_3

def word863_0_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 116 (Flapjack.WordLangExpHOL.var 172)

def word863_0_255 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_253 word863_0_254

def word863_0_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 34)

def word863_0_257 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_255 word863_0_256

def word863_0_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164 (Flapjack.WordLangExpHOL.var 128)

def word863_0_259 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_257 word863_0_258

def word863_0_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 80)

def word863_0_261 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_259 word863_0_260

def word863_0_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.var 176)

def word863_0_263 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_261 word863_0_262

def word863_0_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 116

def word863_0_265 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 34)) (some 429) ([116, 68, 164, 46, 140]) (some (116, word863_0_264, 863, 35))

def word863_0_266 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_263 word863_0_265

def word863_0_267 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_266 word863_0_3

def word863_0_268 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 36)) (some 859) ([]) (some (116, word863_0_264, 863, 37))

def word863_0_269 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_267 word863_0_268

def word863_0_270 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_269 word863_0_3

def word863_0_271 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 116
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 0#64])

def word863_0_272 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_270 word863_0_271

def word863_0_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 172)

def word863_0_274 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_272 word863_0_273

def word863_0_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164 (Flapjack.WordLangExpHOL.var 68)

def word863_0_276 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_274 word863_0_275

def word863_0_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 116) 164

def word863_0_278 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_276 word863_0_277

def word863_0_279 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 116
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 8#64])

def word863_0_280 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_278 word863_0_279

def word863_0_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 152#64]))

def word863_0_282 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_280 word863_0_281

def word863_0_283 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_282 word863_0_275

def word863_0_284 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_283 word863_0_277

def word863_0_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 116
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 16#64])

def word863_0_286 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_284 word863_0_285

def word863_0_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 160#64]))

def word863_0_288 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_286 word863_0_287

def word863_0_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 160#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def word863_0_290 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_288 word863_0_289

def word863_0_291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 160#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def word863_0_292 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_290 word863_0_291

def word863_0_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 160#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def word863_0_294 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_292 word863_0_293

def word863_0_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.var 68)

def word863_0_296 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_294 word863_0_295

def word863_0_297 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 116) 92

def word863_0_298 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_296 word863_0_297

def word863_0_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.var 164)

def word863_0_300 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_298 word863_0_299

def word863_0_301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 116, Flapjack.WordLangExpHOL.const 8#64])
  92

def word863_0_302 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_300 word863_0_301

def word863_0_303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.var 46)

def word863_0_304 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_302 word863_0_303

def word863_0_305 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 116, Flapjack.WordLangExpHOL.const 16#64])
  92

def word863_0_306 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_304 word863_0_305

def word863_0_307 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.var 140)

def word863_0_308 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_306 word863_0_307

def word863_0_309 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 116, Flapjack.WordLangExpHOL.const 24#64])
  92

def word863_0_310 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_308 word863_0_309

def word863_0_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 116
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 48#64])

def word863_0_312 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_310 word863_0_311

def word863_0_313 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 42)

def word863_0_314 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_312 word863_0_313

def word863_0_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164 (Flapjack.WordLangExpHOL.var 136)

def word863_0_316 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_314 word863_0_315

def word863_0_317 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 88)

def word863_0_318 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_316 word863_0_317

def word863_0_319 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.var 184)

def word863_0_320 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_318 word863_0_319

def word863_0_321 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_320 word863_0_295

def word863_0_322 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_321 word863_0_297

def word863_0_323 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_322 word863_0_299

def word863_0_324 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_323 word863_0_301

def word863_0_325 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_324 word863_0_303

def word863_0_326 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_325 word863_0_305

def word863_0_327 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_326 word863_0_307

def word863_0_328 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_327 word863_0_309

def word863_0_329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 116
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 80#64])

def word863_0_330 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_328 word863_0_329

def word863_0_331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 56)

def word863_0_332 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_330 word863_0_331

def word863_0_333 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_332 word863_0_275

def word863_0_334 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_333 word863_0_277

def word863_0_335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 116
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 88#64])

def word863_0_336 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_334 word863_0_335

def word863_0_337 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 152)

def word863_0_338 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_336 word863_0_337

def word863_0_339 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_338 word863_0_275

def word863_0_340 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_339 word863_0_277

def word863_0_341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 116 (Flapjack.WordLangExpHOL.const 0#64)

def word863_0_342 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_340 word863_0_341

def word863_0_343 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 164 (Flapjack.WordLangExpHOL.var 2)

def word863_0_344 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_342 word863_0_343

def word863_0_345 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 164

def word863_0_346 : WordLangProgHOL (BitVec 64) :=
.call (some (([68]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 38)) (some 354) ([164]) (some (164, word863_0_345, 863, 39))

def word863_0_347 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_344 word863_0_346

def word863_0_348 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_347 word863_0_3

def word863_0_349 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 68)

def word863_0_350 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_348 word863_0_349

def word863_0_351 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.const 0#64)

def word863_0_352 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_350 word863_0_351

def word863_0_353 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 1#64)

def word863_0_354 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_353 word863_0_3

def word863_0_355 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.const 1#64)

def word863_0_356 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_354 word863_0_355

def word863_0_357 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 116
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 216#64]))

def word863_0_358 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_356 word863_0_357

def word863_0_359 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 0#64)

def word863_0_360 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_359 word863_0_3

def word863_0_361 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 92 (Flapjack.WordLangExpHOL.const 0#64)

def word863_0_362 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_360 word863_0_361

def word863_0_363 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 46 (Flapjack.WordRegImm.reg 140) word863_0_358 word863_0_362

def word863_0_364 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_352 word863_0_363

def word863_0_365 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_364 word863_0_3

def word863_0_366 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 116, Flapjack.WordLangExpHOL.const 1#64])
    (Flapjack.WordLangExpHOL.const 3#64))

def word863_0_367 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_365 word863_0_366

def word863_0_368 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 46

def word863_0_369 : WordLangProgHOL (BitVec 64) :=
.call (some (([164]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 40)) (some 68) ([46]) (some (46, word863_0_368, 863, 41))

def word863_0_370 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_367 word863_0_369

def word863_0_371 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_370 word863_0_3

def word863_0_372 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 164)

def word863_0_373 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_371 word863_0_372

def word863_0_374 : WordLangProgHOL (BitVec 64) :=
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
              Flapjack.WordLangExpHOL.const 408#64]),
        Flapjack.WordLangExpHOL.const 32#64]))

def word863_0_375 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_373 word863_0_374

def word863_0_376 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_375 word863_0_307

def word863_0_377 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 46) 92

def word863_0_378 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_376 word863_0_377

def word863_0_379 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_378 word863_0_359

def word863_0_380 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_379 word863_0_351

def word863_0_381 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_380 word863_0_3

def word863_0_382 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 188 (Flapjack.WordLangExpHOL.var 140)

def word863_0_383 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 116)

def word863_0_384 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_382 word863_0_383

def word863_0_385 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 188 (Flapjack.WordLangExpHOL.const 1#64)

def word863_0_386 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_385 word863_0_3

def word863_0_387 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 110 (Flapjack.WordLangExpHOL.const 1#64)

def word863_0_388 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_386 word863_0_387

def word863_0_389 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_388 word863_0_307

def word863_0_390 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 188 (Flapjack.WordLangExpHOL.const 24#64)

def word863_0_391 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_389 word863_0_390

def word863_0_392 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 16 16 92 188))

def word863_0_393 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_391 word863_0_392

def word863_0_394 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 110
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 208#64]),
      Flapjack.WordLangExpHOL.var 16])

def word863_0_395 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_393 word863_0_394

def word863_0_396 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 164,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 140, Flapjack.WordLangExpHOL.const 1#64])
        (Flapjack.WordLangExpHOL.const 3#64)])

def word863_0_397 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_395 word863_0_396

def word863_0_398 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 158
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 110, Flapjack.WordLangExpHOL.const 0#64]))

def word863_0_399 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_397 word863_0_398

def word863_0_400 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 158)

def word863_0_401 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_399 word863_0_400

def word863_0_402 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 62) 40

def word863_0_403 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_401 word863_0_402

def word863_0_404 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 46,
      Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 110, Flapjack.WordLangExpHOL.const 16#64])])

def word863_0_405 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_403 word863_0_404

def word863_0_406 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 62)

def word863_0_407 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_405 word863_0_406

def word863_0_408 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 140, Flapjack.WordLangExpHOL.const 1#64])

def word863_0_409 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_407 word863_0_408

def word863_0_410 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.var 62)

def word863_0_411 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_409 word863_0_410

def word863_0_412 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def word863_0_413 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_411 word863_0_412

def word863_0_414 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 188 (Flapjack.WordLangExpHOL.const 0#64)

def word863_0_415 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_414 word863_0_3

def word863_0_416 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 110 (Flapjack.WordLangExpHOL.const 0#64)

def word863_0_417 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_415 word863_0_416

def word863_0_418 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def word863_0_419 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_417 word863_0_418

def word863_0_420 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 188 (Flapjack.WordRegImm.reg 16) word863_0_413 word863_0_419

def word863_0_421 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_384 word863_0_420

def word863_0_422 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_421 word863_0_3

def word863_0_423 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
  PUnit.unit Flapjack.Spt.ln) word863_0_422 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
  PUnit.unit Flapjack.Spt.ln)

def word863_0_424 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_381 word863_0_423

def word863_0_425 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_424 word863_0_3

def word863_0_426 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 188 (Flapjack.WordLangExpHOL.var 46)

def word863_0_427 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_425 word863_0_426

def word863_0_428 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 52#64)

def word863_0_429 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_427 word863_0_428

def word863_0_430 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 110 110 188 16))

def word863_0_431 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_429 word863_0_430

def word863_0_432 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 110, Flapjack.WordLangExpHOL.const 8#64])

def word863_0_433 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_431 word863_0_432

def word863_0_434 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 188

def word863_0_435 : WordLangProgHOL (BitVec 64) :=
.call (some (([92]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 42)) (some 68) ([62]) (some (188, word863_0_434, 863, 43))

def word863_0_436 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_433 word863_0_435

def word863_0_437 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_436 word863_0_3

def word863_0_438 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_437 word863_0_414

def word863_0_439 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_438 word863_0_351

def word863_0_440 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_439 word863_0_3

def word863_0_441 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 110 (Flapjack.WordLangExpHOL.var 140)

def word863_0_442 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 116)

def word863_0_443 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_441 word863_0_442

def word863_0_444 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_387 word863_0_3

def word863_0_445 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 158 (Flapjack.WordLangExpHOL.const 1#64)

def word863_0_446 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_444 word863_0_445

def word863_0_447 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 140)

def word863_0_448 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_446 word863_0_447

def word863_0_449 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 110 (Flapjack.WordLangExpHOL.const 24#64)

def word863_0_450 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_448 word863_0_449

def word863_0_451 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 62 62 16 110))

def word863_0_452 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_450 word863_0_451

def word863_0_453 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 158
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 208#64]),
      Flapjack.WordLangExpHOL.var 62])

def word863_0_454 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_452 word863_0_453

def word863_0_455 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 158, Flapjack.WordLangExpHOL.const 16#64]))

def word863_0_456 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_454 word863_0_455

def word863_0_457 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 134 (Flapjack.WordLangExpHOL.const 0#64)

def word863_0_458 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_456 word863_0_457

def word863_0_459 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_458 word863_0_3

def word863_0_460 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 182 (Flapjack.WordLangExpHOL.var 134)

def word863_0_461 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 40)

def word863_0_462 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_460 word863_0_461

def word863_0_463 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 182 (Flapjack.WordLangExpHOL.const 1#64)

def word863_0_464 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_463 word863_0_3

def word863_0_465 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122 (Flapjack.WordLangExpHOL.const 1#64)

def word863_0_466 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_464 word863_0_465

def word863_0_467 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 182 (Flapjack.WordLangExpHOL.var 188)

def word863_0_468 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_466 word863_0_467

def word863_0_469 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 52#64)

def word863_0_470 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_468 word863_0_469

def word863_0_471 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 122 122 182 28))

def word863_0_472 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_470 word863_0_471

def word863_0_473 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 92, Flapjack.WordLangExpHOL.var 122])

def word863_0_474 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_472 word863_0_473

def word863_0_475 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 170
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 158, Flapjack.WordLangExpHOL.const 0#64]))

def word863_0_476 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_474 word863_0_475

def word863_0_477 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 20#64)

def word863_0_478 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_476 word863_0_477

def word863_0_479 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_478 word863_0_477

def word863_0_480 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_479 word863_0_477

def word863_0_481 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_480 word863_0_477

def word863_0_482 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 182

def word863_0_483 : WordLangProgHOL (BitVec 64) :=
.call (some (([86]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 44)) (some 77) ([74, 170, 52]) (some (182, word863_0_482, 863, 45))

def word863_0_484 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_481 word863_0_483

def word863_0_485 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_484 word863_0_3

def word863_0_486 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_485 word863_0_467

def word863_0_487 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_486 word863_0_469

def word863_0_488 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_487 word863_0_471

def word863_0_489 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 92, Flapjack.WordLangExpHOL.var 122, Flapjack.WordLangExpHOL.const 20#64])

def word863_0_490 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_488 word863_0_489

def word863_0_491 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 170
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 158, Flapjack.WordLangExpHOL.const 8#64]),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 134)
        (Flapjack.WordLangExpHOL.const 5#64)])

def word863_0_492 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_490 word863_0_491

def word863_0_493 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 32#64)

def word863_0_494 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_492 word863_0_493

def word863_0_495 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_494 word863_0_493

def word863_0_496 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_495 word863_0_493

def word863_0_497 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_496 word863_0_493

def word863_0_498 : WordLangProgHOL (BitVec 64) :=
.call (some (([86]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 46)) (some 77) ([74, 170, 52]) (some (182, word863_0_482, 863, 47))

def word863_0_499 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_497 word863_0_498

def word863_0_500 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_499 word863_0_3

def word863_0_501 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 188, Flapjack.WordLangExpHOL.const 1#64])

def word863_0_502 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_500 word863_0_501

def word863_0_503 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 188 (Flapjack.WordLangExpHOL.var 86)

def word863_0_504 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_502 word863_0_503

def word863_0_505 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 134, Flapjack.WordLangExpHOL.const 1#64])

def word863_0_506 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_504 word863_0_505

def word863_0_507 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 134 (Flapjack.WordLangExpHOL.var 86)

def word863_0_508 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_506 word863_0_507

def word863_0_509 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_508 word863_0_412

def word863_0_510 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 182 (Flapjack.WordLangExpHOL.const 0#64)

def word863_0_511 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_510 word863_0_3

def word863_0_512 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122 (Flapjack.WordLangExpHOL.const 0#64)

def word863_0_513 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_511 word863_0_512

def word863_0_514 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_513 word863_0_418

def word863_0_515 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 182 (Flapjack.WordRegImm.reg 28) word863_0_509 word863_0_514

def word863_0_516 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_462 word863_0_515

def word863_0_517 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_516 word863_0_3

def word863_0_518 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
  PUnit.unit Flapjack.Spt.ln) word863_0_517 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
  PUnit.unit Flapjack.Spt.ln)

def word863_0_519 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_459 word863_0_518

def word863_0_520 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_519 word863_0_3

def word863_0_521 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 140, Flapjack.WordLangExpHOL.const 1#64])

def word863_0_522 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_520 word863_0_521

def word863_0_523 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.var 86)

def word863_0_524 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_522 word863_0_523

def word863_0_525 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_524 word863_0_412

def word863_0_526 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_416 word863_0_3

def word863_0_527 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 158 (Flapjack.WordLangExpHOL.const 0#64)

def word863_0_528 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_526 word863_0_527

def word863_0_529 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_528 word863_0_418

def word863_0_530 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 110 (Flapjack.WordRegImm.reg 62) word863_0_525 word863_0_529

def word863_0_531 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_443 word863_0_530

def word863_0_532 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_531 word863_0_3

def word863_0_533 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
  PUnit.unit Flapjack.Spt.ln) word863_0_532 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
  PUnit.unit Flapjack.Spt.ln)

def word863_0_534 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_440 word863_0_533

def word863_0_535 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_534 word863_0_3

def word863_0_536 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 96#64])

def word863_0_537 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_535 word863_0_536

def word863_0_538 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 110 (Flapjack.WordLangExpHOL.var 164)

def word863_0_539 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_537 word863_0_538

def word863_0_540 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 110)

def word863_0_541 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_539 word863_0_540

def word863_0_542 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 16) 62

def word863_0_543 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_541 word863_0_542

def word863_0_544 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 104#64])

def word863_0_545 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_543 word863_0_544

def word863_0_546 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 110
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 116, Flapjack.WordLangExpHOL.const 1#64])

def word863_0_547 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_545 word863_0_546

def word863_0_548 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_547 word863_0_540

def word863_0_549 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_548 word863_0_542

def word863_0_550 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 112#64])

def word863_0_551 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_549 word863_0_550

def word863_0_552 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 110 (Flapjack.WordLangExpHOL.var 92)

def word863_0_553 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_551 word863_0_552

def word863_0_554 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_553 word863_0_540

def word863_0_555 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_554 word863_0_542

def word863_0_556 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 120#64])

def word863_0_557 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_555 word863_0_556

def word863_0_558 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 110 (Flapjack.WordLangExpHOL.var 46)

def word863_0_559 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_557 word863_0_558

def word863_0_560 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_559 word863_0_540

def word863_0_561 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_560 word863_0_542

def word863_0_562 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 110 (Flapjack.WordLangExpHOL.var 2)

def word863_0_563 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_561 word863_0_562

def word863_0_564 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 110

def word863_0_565 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 48)) (some 855) ([110]) (some (110, word863_0_564, 863, 49))

def word863_0_566 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_563 word863_0_565

def word863_0_567 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_566 word863_0_3

def word863_0_568 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 16)

def word863_0_569 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_567 word863_0_568

def word863_0_570 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_569 word863_0_527

def word863_0_571 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 1#64)

def word863_0_572 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_571 word863_0_3

def word863_0_573 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 1#64)

def word863_0_574 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_572 word863_0_573

def word863_0_575 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 110
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 128#64])

def word863_0_576 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_574 word863_0_575

def word863_0_577 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 256#64]))

def word863_0_578 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_576 word863_0_577

def word863_0_579 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 158 (Flapjack.WordLangExpHOL.var 62)

def word863_0_580 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_578 word863_0_579

def word863_0_581 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 110) 158

def word863_0_582 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_580 word863_0_581

def word863_0_583 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 110
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 136#64])

def word863_0_584 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_582 word863_0_583

def word863_0_585 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 264#64]))

def word863_0_586 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_584 word863_0_585

def word863_0_587 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_586 word863_0_579

def word863_0_588 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_587 word863_0_581

def word863_0_589 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 0#64)

def word863_0_590 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_589 word863_0_3

def word863_0_591 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 0#64)

def word863_0_592 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_590 word863_0_591

def word863_0_593 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 62 (Flapjack.WordRegImm.reg 158) word863_0_588 word863_0_592

def word863_0_594 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_570 word863_0_593

def word863_0_595 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_594 word863_0_3

def word863_0_596 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 2)

def word863_0_597 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_595 word863_0_596

def word863_0_598 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 62

def word863_0_599 : WordLangProgHOL (BitVec 64) :=
.call (some (([110]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 50)) (some 856) ([62]) (some (62, word863_0_598, 863, 51))

def word863_0_600 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_597 word863_0_599

def word863_0_601 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_600 word863_0_3

def word863_0_602 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 158 (Flapjack.WordLangExpHOL.var 110)

def word863_0_603 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_601 word863_0_602

def word863_0_604 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_603 word863_0_591

def word863_0_605 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_445 word863_0_3

def word863_0_606 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 134 (Flapjack.WordLangExpHOL.const 1#64)

def word863_0_607 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_605 word863_0_606

def word863_0_608 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 144#64])

def word863_0_609 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_607 word863_0_608

def word863_0_610 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 158
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 272#64]))

def word863_0_611 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_609 word863_0_610

def word863_0_612 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_611 word863_0_400

def word863_0_613 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_612 word863_0_402

def word863_0_614 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 152#64])

def word863_0_615 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_613 word863_0_614

def word863_0_616 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 158
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 280#64]))

def word863_0_617 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_615 word863_0_616

def word863_0_618 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_617 word863_0_400

def word863_0_619 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_618 word863_0_402

def word863_0_620 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_527 word863_0_3

def word863_0_621 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_620 word863_0_457

def word863_0_622 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 158 (Flapjack.WordRegImm.reg 40) word863_0_619 word863_0_621

def word863_0_623 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_604 word863_0_622

def word863_0_624 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_623 word863_0_3

def word863_0_625 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 160#64])

def word863_0_626 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_624 word863_0_625

def word863_0_627 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_626 word863_0_445

def word863_0_628 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_627 word863_0_573

def word863_0_629 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_628 word863_0_402

def word863_0_630 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 168#64])

def word863_0_631 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_629 word863_0_630

def word863_0_632 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 158 (Flapjack.WordLangExpHOL.var 4)

def word863_0_633 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_631 word863_0_632

def word863_0_634 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_633 word863_0_400

def word863_0_635 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_634 word863_0_402

def word863_0_636 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 158 (Flapjack.WordLangExpHOL.const 32#64)

def word863_0_637 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_635 word863_0_636

def word863_0_638 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_637 word863_0_636

def word863_0_639 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 158

def word863_0_640 : WordLangProgHOL (BitVec 64) :=
.call (some (([62]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 52)) (some 68) ([158]) (some (158, word863_0_639, 863, 53))

def word863_0_641 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_638 word863_0_640

def word863_0_642 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_641 word863_0_3

def word863_0_643 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 148)

def word863_0_644 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_642 word863_0_643

def word863_0_645 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 134 (Flapjack.WordLangExpHOL.var 30)

def word863_0_646 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_644 word863_0_645

def word863_0_647 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.var 62)

def word863_0_648 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_646 word863_0_647

def word863_0_649 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def word863_0_650 : WordLangProgHOL (BitVec 64) :=
.call (some (([158]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 54)) (some 158) ([40, 134, 86]) (some (40, word863_0_649, 863, 55))

def word863_0_651 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_648 word863_0_650

def word863_0_652 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_651 word863_0_3

def word863_0_653 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 158
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 176#64])

def word863_0_654 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_652 word863_0_653

def word863_0_655 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 62)

def word863_0_656 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_654 word863_0_655

def word863_0_657 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 134 (Flapjack.WordLangExpHOL.var 40)

def word863_0_658 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_656 word863_0_657

def word863_0_659 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 158) 134

def word863_0_660 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_658 word863_0_659

def word863_0_661 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 158
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 184#64])

def word863_0_662 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_660 word863_0_661

def word863_0_663 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 18)

def word863_0_664 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_662 word863_0_663

def word863_0_665 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_664 word863_0_657

def word863_0_666 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_665 word863_0_659

def word863_0_667 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 158
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 192#64])

def word863_0_668 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_666 word863_0_667

def word863_0_669 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 112)

def word863_0_670 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_668 word863_0_669

def word863_0_671 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_670 word863_0_657

def word863_0_672 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_671 word863_0_659

def word863_0_673 : WordLangProgHOL (BitVec 64) :=
.call (some (([158]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 56)) (some 487) ([]) (some (40, word863_0_649, 863, 57))

def word863_0_674 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_672 word863_0_673

def word863_0_675 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_674 word863_0_3

def word863_0_676 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 158, Flapjack.WordLangExpHOL.const 0#64])

def word863_0_677 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_675 word863_0_676

def word863_0_678 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 134
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 408#64]))

def word863_0_679 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_677 word863_0_678

def word863_0_680 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.var 134)

def word863_0_681 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_679 word863_0_680

def word863_0_682 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 40) 86

def word863_0_683 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_681 word863_0_682

def word863_0_684 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 158, Flapjack.WordLangExpHOL.const 8#64])

def word863_0_685 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_683 word863_0_684

def word863_0_686 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 134 (Flapjack.WordLangExpHOL.var 22)

def word863_0_687 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_685 word863_0_686

def word863_0_688 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_687 word863_0_680

def word863_0_689 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_688 word863_0_682

def word863_0_690 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 158, Flapjack.WordLangExpHOL.const 16#64])

def word863_0_691 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_689 word863_0_690

def word863_0_692 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 134 (Flapjack.WordLangExpHOL.var 172)

def word863_0_693 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_691 word863_0_692

def word863_0_694 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_693 word863_0_680

def word863_0_695 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_694 word863_0_682

def word863_0_696 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 158, Flapjack.WordLangExpHOL.const 24#64])

def word863_0_697 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_695 word863_0_696

def word863_0_698 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 134
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 152#64]))

def word863_0_699 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_697 word863_0_698

def word863_0_700 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_699 word863_0_680

def word863_0_701 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_700 word863_0_682

def word863_0_702 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 158, Flapjack.WordLangExpHOL.const 40#64])

def word863_0_703 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_701 word863_0_702

def word863_0_704 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 134 (Flapjack.WordLangExpHOL.var 56)

def word863_0_705 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_703 word863_0_704

def word863_0_706 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_705 word863_0_680

def word863_0_707 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_706 word863_0_682

def word863_0_708 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 158, Flapjack.WordLangExpHOL.const 48#64])

def word863_0_709 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_707 word863_0_708

def word863_0_710 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 134 (Flapjack.WordLangExpHOL.var 152)

def word863_0_711 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_709 word863_0_710

def word863_0_712 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_711 word863_0_680

def word863_0_713 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_712 word863_0_682

def word863_0_714 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 158, Flapjack.WordLangExpHOL.const 56#64])

def word863_0_715 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_713 word863_0_714

def word863_0_716 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 134
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 160#64]))

def word863_0_717 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_715 word863_0_716

def word863_0_718 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 160#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def word863_0_719 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_717 word863_0_718

def word863_0_720 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 182
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 160#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def word863_0_721 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_719 word863_0_720

def word863_0_722 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 160#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def word863_0_723 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_721 word863_0_722

def word863_0_724 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122 (Flapjack.WordLangExpHOL.var 134)

def word863_0_725 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_723 word863_0_724

def word863_0_726 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 40) 122

def word863_0_727 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_725 word863_0_726

def word863_0_728 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122 (Flapjack.WordLangExpHOL.var 86)

def word863_0_729 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_727 word863_0_728

def word863_0_730 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 8#64])
  122

def word863_0_731 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_729 word863_0_730

def word863_0_732 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122 (Flapjack.WordLangExpHOL.var 182)

def word863_0_733 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_731 word863_0_732

def word863_0_734 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 16#64])
  122

def word863_0_735 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_733 word863_0_734

def word863_0_736 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122 (Flapjack.WordLangExpHOL.var 28)

def word863_0_737 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_735 word863_0_736

def word863_0_738 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 24#64])
  122

def word863_0_739 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_737 word863_0_738

def word863_0_740 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 134 (Flapjack.WordLangExpHOL.const 20#64)

def word863_0_741 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_739 word863_0_740

def word863_0_742 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.const 64#64)

def word863_0_743 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_741 word863_0_742

def word863_0_744 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_743 word863_0_742

def word863_0_745 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_744 word863_0_740

def word863_0_746 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 134

def word863_0_747 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 58)) (some 182) ([134, 86]) (some (134, word863_0_746, 863, 59))

def word863_0_748 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_745 word863_0_747

def word863_0_749 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_748 word863_0_3

def word863_0_750 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.var 40)

def word863_0_751 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_749 word863_0_750

def word863_0_752 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 182 (Flapjack.WordLangExpHOL.var 172)

def word863_0_753 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_751 word863_0_752

def word863_0_754 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def word863_0_755 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_753 word863_0_754

def word863_0_756 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_755 word863_0_754

def word863_0_757 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 86

def word863_0_758 : WordLangProgHOL (BitVec 64) :=
.call (some (([134]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 60)) (some 192) ([86, 182, 28]) (some (86, word863_0_757, 863, 61))

def word863_0_759 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_756 word863_0_758

def word863_0_760 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_759 word863_0_3

def word863_0_761 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_760 word863_0_351

def word863_0_762 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_761 word863_0_3

def word863_0_763 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.var 140)

def word863_0_764 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 182 (Flapjack.WordLangExpHOL.const 18#64)

def word863_0_765 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_763 word863_0_764

def word863_0_766 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.const 1#64)

def word863_0_767 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_766 word863_0_3

def word863_0_768 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_767 word863_0_754

def word863_0_769 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_768 word863_0_763

def word863_0_770 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 182 (Flapjack.WordLangExpHOL.const 20#64)

def word863_0_771 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_769 word863_0_770

def word863_0_772 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 28 28 86 182))

def word863_0_773 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_771 word863_0_772

def word863_0_774 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122 (Flapjack.WordLangExpHOL.var 40)

def word863_0_775 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_773 word863_0_774

def word863_0_776 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 424#64]),
      Flapjack.WordLangExpHOL.var 28])

def word863_0_777 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_775 word863_0_776

def word863_0_778 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 170 (Flapjack.WordLangExpHOL.const 1#64)

def word863_0_779 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_777 word863_0_778

def word863_0_780 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_779 word863_0_778

def word863_0_781 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_780 word863_0_778

def word863_0_782 : WordLangProgHOL (BitVec 64) :=
.call (some (([134]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 62)) (some 192) ([122, 74, 170]) (some (86, word863_0_757, 863, 63))

def word863_0_783 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_781 word863_0_782

def word863_0_784 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_783 word863_0_3

def word863_0_785 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 134
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 140, Flapjack.WordLangExpHOL.const 1#64])

def word863_0_786 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_784 word863_0_785

def word863_0_787 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.var 134)

def word863_0_788 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_786 word863_0_787

def word863_0_789 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_788 word863_0_412

def word863_0_790 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.const 0#64)

def word863_0_791 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_790 word863_0_3

def word863_0_792 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def word863_0_793 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_791 word863_0_792

def word863_0_794 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_793 word863_0_418

def word863_0_795 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 86 (Flapjack.WordRegImm.reg 182) word863_0_789 word863_0_794

def word863_0_796 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_765 word863_0_795

def word863_0_797 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_796 word863_0_3

def word863_0_798 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
  PUnit.unit Flapjack.Spt.ln) word863_0_797 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
  PUnit.unit Flapjack.Spt.ln)

def word863_0_799 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_762 word863_0_798

def word863_0_800 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_799 word863_0_3

def word863_0_801 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_800 word863_0_351

def word863_0_802 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_801 word863_0_3

def word863_0_803 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 182
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 116, Flapjack.WordLangExpHOL.const 1#64])

def word863_0_804 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_763 word863_0_803

def word863_0_805 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_768 word863_0_750

def word863_0_806 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 182
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 164,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 140)
          (Flapjack.WordLangExpHOL.const 3#64)]))

def word863_0_807 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_805 word863_0_806

def word863_0_808 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_807 word863_0_754

def word863_0_809 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_808 word863_0_754

def word863_0_810 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_809 word863_0_754

def word863_0_811 : WordLangProgHOL (BitVec 64) :=
.call (some (([134]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 64)) (some 192) ([86, 182, 28]) (some (86, word863_0_757, 863, 65))

def word863_0_812 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_810 word863_0_811

def word863_0_813 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_812 word863_0_3

def word863_0_814 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_813 word863_0_785

def word863_0_815 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_814 word863_0_787

def word863_0_816 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_815 word863_0_412

def word863_0_817 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 86 (Flapjack.WordRegImm.reg 182) word863_0_816 word863_0_794

def word863_0_818 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_804 word863_0_817

def word863_0_819 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_818 word863_0_3

def word863_0_820 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
  PUnit.unit Flapjack.Spt.ln) word863_0_819 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
  PUnit.unit Flapjack.Spt.ln)

def word863_0_821 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_802 word863_0_820

def word863_0_822 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_821 word863_0_3

def word863_0_823 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 86 (Flapjack.WordLangExpHOL.const 52#64)

def word863_0_824 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_822 word863_0_823

def word863_0_825 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 182 (Flapjack.WordLangExpHOL.const 16#64)

def word863_0_826 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_824 word863_0_825

def word863_0_827 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_826 word863_0_825

def word863_0_828 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_827 word863_0_823

def word863_0_829 : WordLangProgHOL (BitVec 64) :=
.call (some (([134]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 66)) (some 182) ([86, 182]) (some (86, word863_0_757, 863, 67))

def word863_0_830 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_828 word863_0_829

def word863_0_831 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_830 word863_0_3

def word863_0_832 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_831 word863_0_351

def word863_0_833 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_832 word863_0_3

def word863_0_834 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 182 (Flapjack.WordLangExpHOL.var 140)

def word863_0_835 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 46)

def word863_0_836 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_834 word863_0_835

def word863_0_837 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_466 word863_0_834

def word863_0_838 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_837 word863_0_469

def word863_0_839 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_838 word863_0_471

def word863_0_840 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 134)

def word863_0_841 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_839 word863_0_840

def word863_0_842 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 170
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 92, Flapjack.WordLangExpHOL.var 122])

def word863_0_843 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_841 word863_0_842

def word863_0_844 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 1#64)

def word863_0_845 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_843 word863_0_844

def word863_0_846 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_845 word863_0_844

def word863_0_847 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_846 word863_0_844

def word863_0_848 : WordLangProgHOL (BitVec 64) :=
.call (some (([86]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 68)) (some 192) ([74, 170, 52]) (some (182, word863_0_482, 863, 69))

def word863_0_849 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_847 word863_0_848

def word863_0_850 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_849 word863_0_3

def word863_0_851 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_850 word863_0_521

def word863_0_852 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_851 word863_0_523

def word863_0_853 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_852 word863_0_412

def word863_0_854 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 182 (Flapjack.WordRegImm.reg 28) word863_0_853 word863_0_514

def word863_0_855 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_836 word863_0_854

def word863_0_856 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_855 word863_0_3

def word863_0_857 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
  PUnit.unit Flapjack.Spt.ln) word863_0_856 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
  PUnit.unit Flapjack.Spt.ln)

def word863_0_858 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_833 word863_0_857

def word863_0_859 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_858 word863_0_3

def word863_0_860 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 182 (Flapjack.WordLangExpHOL.const 8#64)

def word863_0_861 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_859 word863_0_860

def word863_0_862 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_861 word863_0_860

def word863_0_863 : WordLangProgHOL (BitVec 64) :=
.call (some (([86]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 70)) (some 68) ([182]) (some (182, word863_0_482, 863, 71))

def word863_0_864 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_862 word863_0_863

def word863_0_865 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_864 word863_0_3

def word863_0_866 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 152#64]))

def word863_0_867 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_865 word863_0_866

def word863_0_868 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_867 word863_0_512

def word863_0_869 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_754 word863_0_3

def word863_0_870 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.const 1#64)

def word863_0_871 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_869 word863_0_870

def word863_0_872 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 172)

def word863_0_873 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_871 word863_0_872

def word863_0_874 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def word863_0_875 : WordLangProgHOL (BitVec 64) :=
.call (some (([182]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 72)) (some 407) ([28]) (some (28, word863_0_874, 863, 73))

def word863_0_876 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_873 word863_0_875

def word863_0_877 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_876 word863_0_3

def word863_0_878 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122 (Flapjack.WordLangExpHOL.const 24#64)

def word863_0_879 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_877 word863_0_878

def word863_0_880 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_879 word863_0_878

def word863_0_881 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_880 word863_0_878

def word863_0_882 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 122

def word863_0_883 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 74)) (some 68) ([122]) (some (122, word863_0_882, 863, 75))

def word863_0_884 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_881 word863_0_883

def word863_0_885 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_884 word863_0_3

def word863_0_886 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 172)

def word863_0_887 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_885 word863_0_886

def word863_0_888 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 170
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 182, Flapjack.WordLangExpHOL.const 0#64]),
      Flapjack.WordLangExpHOL.const 1#64])

def word863_0_889 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_887 word863_0_888

def word863_0_890 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 28)

def word863_0_891 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_889 word863_0_890

def word863_0_892 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 74

def word863_0_893 : WordLangProgHOL (BitVec 64) :=
.call (some (([122]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 76)) (some 614) ([74, 170, 52]) (some (74, word863_0_892, 863, 77))

def word863_0_894 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_891 word863_0_893

def word863_0_895 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_894 word863_0_3

def word863_0_896 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 158, Flapjack.WordLangExpHOL.const 32#64])

def word863_0_897 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_895 word863_0_896

def word863_0_898 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 28)

def word863_0_899 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_897 word863_0_898

def word863_0_900 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 170 (Flapjack.WordLangExpHOL.var 74)

def word863_0_901 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_899 word863_0_900

def word863_0_902 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 122) 170

def word863_0_903 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_901 word863_0_902

def word863_0_904 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 158, Flapjack.WordLangExpHOL.const 88#64])

def word863_0_905 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_903 word863_0_904

def word863_0_906 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 86)

def word863_0_907 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_905 word863_0_906

def word863_0_908 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_907 word863_0_900

def word863_0_909 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_908 word863_0_902

def word863_0_910 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 158, Flapjack.WordLangExpHOL.const 96#64])

def word863_0_911 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_909 word863_0_910

def word863_0_912 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.const 0#64)

def word863_0_913 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_911 word863_0_912

def word863_0_914 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 170 (Flapjack.WordLangExpHOL.const 0#64)

def word863_0_915 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_913 word863_0_914

def word863_0_916 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_915 word863_0_902

def word863_0_917 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 158, Flapjack.WordLangExpHOL.const 112#64])

def word863_0_918 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_916 word863_0_917

def word863_0_919 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 192#64]))

def word863_0_920 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_918 word863_0_919

def word863_0_921 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_920 word863_0_900

def word863_0_922 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_921 word863_0_902

def word863_0_923 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 158, Flapjack.WordLangExpHOL.const 120#64])

def word863_0_924 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_922 word863_0_923

def word863_0_925 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 200#64]))

def word863_0_926 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_924 word863_0_925

def word863_0_927 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_926 word863_0_900

def word863_0_928 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_927 word863_0_902

def word863_0_929 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 158, Flapjack.WordLangExpHOL.const 104#64])

def word863_0_930 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_928 word863_0_929

def word863_0_931 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_930 word863_0_912

def word863_0_932 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_931 word863_0_914

def word863_0_933 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_932 word863_0_902

def word863_0_934 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_792 word863_0_3

def word863_0_935 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_934 word863_0_912

def word863_0_936 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 182
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 158, Flapjack.WordLangExpHOL.const 32#64])

def word863_0_937 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_935 word863_0_936

def word863_0_938 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_937 word863_0_866

def word863_0_939 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_938 word863_0_736

def word863_0_940 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 182) 122

def word863_0_941 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_939 word863_0_940

def word863_0_942 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 182
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 158, Flapjack.WordLangExpHOL.const 88#64])

def word863_0_943 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_941 word863_0_942

def word863_0_944 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 192#64]))

def word863_0_945 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_943 word863_0_944

def word863_0_946 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_945 word863_0_736

def word863_0_947 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_946 word863_0_940

def word863_0_948 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 182
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 158, Flapjack.WordLangExpHOL.const 96#64])

def word863_0_949 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_947 word863_0_948

def word863_0_950 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 200#64]))

def word863_0_951 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_949 word863_0_950

def word863_0_952 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_951 word863_0_736

def word863_0_953 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_952 word863_0_940

def word863_0_954 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 182
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 158, Flapjack.WordLangExpHOL.const 112#64])

def word863_0_955 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_953 word863_0_954

def word863_0_956 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 86)

def word863_0_957 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_955 word863_0_956

def word863_0_958 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_957 word863_0_736

def word863_0_959 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_958 word863_0_940

def word863_0_960 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 182
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 158, Flapjack.WordLangExpHOL.const 120#64])

def word863_0_961 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_959 word863_0_960

def word863_0_962 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_961 word863_0_792

def word863_0_963 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_962 word863_0_512

def word863_0_964 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_963 word863_0_940

def word863_0_965 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 182
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 158, Flapjack.WordLangExpHOL.const 104#64])

def word863_0_966 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_964 word863_0_965

def word863_0_967 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_966 word863_0_866

def word863_0_968 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_967 word863_0_736

def word863_0_969 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_968 word863_0_940

def word863_0_970 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 28 (Flapjack.WordRegImm.reg 122) word863_0_933 word863_0_969

def word863_0_971 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_868 word863_0_970

def word863_0_972 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_971 word863_0_3

def word863_0_973 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 182
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 158, Flapjack.WordLangExpHOL.const 136#64])

def word863_0_974 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_972 word863_0_973

def word863_0_975 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_974 word863_0_754

def word863_0_976 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_975 word863_0_465

def word863_0_977 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_976 word863_0_940

def word863_0_978 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_977 word863_0_461

def word863_0_979 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 122
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 158, Flapjack.WordLangExpHOL.const 32#64]))

def word863_0_980 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_978 word863_0_979

def word863_0_981 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_980 word863_0_870

def word863_0_982 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_981 word863_0_870

def word863_0_983 : WordLangProgHOL (BitVec 64) :=
.call (some (([182]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 78)) (some 192) ([28, 122, 74]) (some (28, word863_0_874, 863, 79))

def word863_0_984 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_982 word863_0_983

def word863_0_985 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_984 word863_0_3

def word863_0_986 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 182
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 158, Flapjack.WordLangExpHOL.const 152#64])

def word863_0_987 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_985 word863_0_986

def word863_0_988 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_987 word863_0_461

def word863_0_989 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_988 word863_0_736

def word863_0_990 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_989 word863_0_940

def word863_0_991 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 182
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 158, Flapjack.WordLangExpHOL.const 160#64])

def word863_0_992 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_990 word863_0_991

def word863_0_993 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 134)

def word863_0_994 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_992 word863_0_993

def word863_0_995 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_994 word863_0_736

def word863_0_996 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_995 word863_0_940

def word863_0_997 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 158)

def word863_0_998 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_996 word863_0_997

def word863_0_999 : WordLangProgHOL (BitVec 64) :=
.call (some (([182]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 80)) (some 625) ([28]) (some (28, word863_0_874, 863, 81))

def word863_0_1000 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_998 word863_0_999

def word863_0_1001 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1000 word863_0_3

def word863_0_1002 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
        [Flapjack.WordLangExpHOL.var 82,
          Flapjack.WordLangExpHOL.load
            (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.var 182, Flapjack.WordLangExpHOL.const 0#64])],
      Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 182, Flapjack.WordLangExpHOL.const 56#64])])

def word863_0_1003 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1001 word863_0_1002

def word863_0_1004 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1003 word863_0_898

def word863_0_1005 : WordLangProgHOL (BitVec 64) :=
.call (some (([122]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 82)) (some 864) ([74]) (some (74, word863_0_892, 863, 83))

def word863_0_1006 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1004 word863_0_1005

def word863_0_1007 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1006 word863_0_3

def word863_0_1008 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 170 (Flapjack.WordLangExpHOL.var 122)

def word863_0_1009 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1007 word863_0_1008

def word863_0_1010 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 182, Flapjack.WordLangExpHOL.const 8#64]))

def word863_0_1011 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1009 word863_0_1010

def word863_0_1012 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 170

def word863_0_1013 : WordLangProgHOL (BitVec 64) :=
.call (some (([74]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 84)) (some 92) ([170, 52]) (some (170, word863_0_1012, 863, 85))

def word863_0_1014 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1011 word863_0_1013

def word863_0_1015 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1014 word863_0_3

def word863_0_1016 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 170
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.var 74])

def word863_0_1017 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1015 word863_0_1016

def word863_0_1018 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 146 (Flapjack.WordLangExpHOL.var 170)

def word863_0_1019 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1017 word863_0_1018

def word863_0_1020 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 98 (Flapjack.WordLangExpHOL.var 64)

def word863_0_1021 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1019 word863_0_1020

def word863_0_1022 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 146

def word863_0_1023 : WordLangProgHOL (BitVec 64) :=
.call (some (([52]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 86)) (some 93) ([146, 98]) (some (146, word863_0_1022, 863, 87))

def word863_0_1024 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1021 word863_0_1023

def word863_0_1025 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1024 word863_0_3

def word863_0_1026 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 146
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 82, Flapjack.WordLangExpHOL.var 52])

def word863_0_1027 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1025 word863_0_1026

def word863_0_1028 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 150 (Flapjack.WordLangExpHOL.var 146)

def word863_0_1029 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1027 word863_0_1028

def word863_0_1030 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 42)

def word863_0_1031 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1029 word863_0_1030

def word863_0_1032 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 126 (Flapjack.WordLangExpHOL.var 136)

def word863_0_1033 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1031 word863_0_1032

def word863_0_1034 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 88)

def word863_0_1035 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1033 word863_0_1034

def word863_0_1036 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 174 (Flapjack.WordLangExpHOL.var 184)

def word863_0_1037 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1035 word863_0_1036

def word863_0_1038 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 150

def word863_0_1039 : WordLangProgHOL (BitVec 64) :=
.call (some (([98, 194, 6, 100, 54]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 88)) (some 857) ([150, 32, 126, 78, 174]) (some (150, word863_0_1038, 863, 89))

def word863_0_1040 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1037 word863_0_1039

def word863_0_1041 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1040 word863_0_3

def word863_0_1042 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 174 (Flapjack.WordLangExpHOL.var 42)

def word863_0_1043 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1041 word863_0_1042

def word863_0_1044 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 136)

def word863_0_1045 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1043 word863_0_1044

def word863_0_1046 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 114 (Flapjack.WordLangExpHOL.var 88)

def word863_0_1047 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1045 word863_0_1046

def word863_0_1048 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 184)

def word863_0_1049 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1047 word863_0_1048

def word863_0_1050 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 162
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

def word863_0_1051 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1049 word863_0_1050

def word863_0_1052 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44
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

def word863_0_1053 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1051 word863_0_1052

def word863_0_1054 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 138
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

def word863_0_1055 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1053 word863_0_1054

def word863_0_1056 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 90
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

def word863_0_1057 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1055 word863_0_1056

def word863_0_1058 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 174

def word863_0_1059 : WordLangProgHOL (BitVec 64) :=
.call (some (([150, 32, 126, 78]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 90)) (some 117) ([174, 20, 114, 66, 162, 44, 138, 90]) (some (174, word863_0_1058, 863, 91))

def word863_0_1060 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1057 word863_0_1059

def word863_0_1061 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1060 word863_0_3

def word863_0_1062 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 52)

def word863_0_1063 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1061 word863_0_1062

def word863_0_1064 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 138 (Flapjack.WordLangExpHOL.var 150)

def word863_0_1065 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1063 word863_0_1064

def word863_0_1066 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 90 (Flapjack.WordLangExpHOL.var 32)

def word863_0_1067 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1065 word863_0_1066

def word863_0_1068 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 186 (Flapjack.WordLangExpHOL.var 126)

def word863_0_1069 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1067 word863_0_1068

def word863_0_1070 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 78)

def word863_0_1071 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1069 word863_0_1070

def word863_0_1072 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 44

def word863_0_1073 : WordLangProgHOL (BitVec 64) :=
.call (some (([174, 20, 114, 66, 162]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 92)) (some 857) ([44, 138, 90, 186, 14]) (some (44, word863_0_1072, 863, 93))

def word863_0_1074 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1071 word863_0_1073

def word863_0_1075 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1074 word863_0_3

def word863_0_1076 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 138 (Flapjack.WordLangExpHOL.var 172)

def word863_0_1077 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1075 word863_0_1076

def word863_0_1078 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 90 (Flapjack.WordLangExpHOL.var 194)

def word863_0_1079 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1077 word863_0_1078

def word863_0_1080 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 186 (Flapjack.WordLangExpHOL.var 6)

def word863_0_1081 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1079 word863_0_1080

def word863_0_1082 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 100)

def word863_0_1083 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1081 word863_0_1082

def word863_0_1084 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108 (Flapjack.WordLangExpHOL.var 54)

def word863_0_1085 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1083 word863_0_1084

def word863_0_1086 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 138

def word863_0_1087 : WordLangProgHOL (BitVec 64) :=
.call (some (([44]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 94)) (some 428) ([138, 90, 186, 14, 108]) (some (138, word863_0_1086, 863, 95))

def word863_0_1088 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1085 word863_0_1087

def word863_0_1089 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1088 word863_0_3

def word863_0_1090 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 138
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
        Flapjack.WordLangExpHOL.const 32#64]))

def word863_0_1091 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1089 word863_0_1090

def word863_0_1092 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 90 (Flapjack.WordLangExpHOL.var 20)

def word863_0_1093 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1091 word863_0_1092

def word863_0_1094 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 186 (Flapjack.WordLangExpHOL.var 114)

def word863_0_1095 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1093 word863_0_1094

def word863_0_1096 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 66)

def word863_0_1097 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1095 word863_0_1096

def word863_0_1098 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108 (Flapjack.WordLangExpHOL.var 162)

def word863_0_1099 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1097 word863_0_1098

def word863_0_1100 : WordLangProgHOL (BitVec 64) :=
.call (some (([44]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 96)) (some 428) ([138, 90, 186, 14, 108]) (some (138, word863_0_1086, 863, 97))

def word863_0_1101 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1099 word863_0_1100

def word863_0_1102 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1101 word863_0_3

def word863_0_1103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 112,
      Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 182, Flapjack.WordLangExpHOL.const 72#64])])

def word863_0_1104 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1102 word863_0_1103

def word863_0_1105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 138 (Flapjack.WordLangExpHOL.var 44)

def word863_0_1106 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1104 word863_0_1105

def word863_0_1107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 186 (Flapjack.WordLangExpHOL.var 44)

def word863_0_1108 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1106 word863_0_1107

def word863_0_1109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def word863_0_1110 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1108 word863_0_1109

def word863_0_1111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 186 (Flapjack.WordLangExpHOL.const 1#64)

def word863_0_1112 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1111 word863_0_3

def word863_0_1113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108 (Flapjack.WordLangExpHOL.const 1#64)

def word863_0_1114 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1112 word863_0_1113

def word863_0_1115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 138 (Flapjack.WordLangExpHOL.const 0#64)

def word863_0_1116 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1114 word863_0_1115

def word863_0_1117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 186 (Flapjack.WordLangExpHOL.const 0#64)

def word863_0_1118 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1117 word863_0_3

def word863_0_1119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108 (Flapjack.WordLangExpHOL.const 0#64)

def word863_0_1120 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1118 word863_0_1119

def word863_0_1121 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 186 (Flapjack.WordRegImm.reg 14) word863_0_1116 word863_0_1120

def word863_0_1122 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1110 word863_0_1121

def word863_0_1123 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1122 word863_0_3

def word863_0_1124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 186
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.var 138])

def word863_0_1125 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1123 word863_0_1124

def word863_0_1126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 64)

def word863_0_1127 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1125 word863_0_1126

def word863_0_1128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 186

def word863_0_1129 : WordLangProgHOL (BitVec 64) :=
.call (some (([90]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 98)) (some 93) ([186, 14]) (some (186, word863_0_1128, 863, 99))

def word863_0_1130 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1127 word863_0_1129

def word863_0_1131 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1130 word863_0_3

def word863_0_1132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 186
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 416#64]),
      Flapjack.WordLangExpHOL.const 0#64])

def word863_0_1133 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1131 word863_0_1132

def word863_0_1134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 416#64]),
            Flapjack.WordLangExpHOL.const 0#64]),
      Flapjack.WordLangExpHOL.var 90])

def word863_0_1135 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1133 word863_0_1134

def word863_0_1136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108 (Flapjack.WordLangExpHOL.var 14)

def word863_0_1137 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1135 word863_0_1136

def word863_0_1138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 186) 108

def word863_0_1139 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1137 word863_0_1138

def word863_0_1140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 186
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 416#64]),
      Flapjack.WordLangExpHOL.const 8#64])

def word863_0_1141 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1139 word863_0_1140

def word863_0_1142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 416#64]),
            Flapjack.WordLangExpHOL.const 8#64]),
      Flapjack.WordLangExpHOL.var 138])

def word863_0_1143 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1141 word863_0_1142

def word863_0_1144 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1143 word863_0_1136

def word863_0_1145 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1144 word863_0_1138

def word863_0_1146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 186
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 416#64]),
      Flapjack.WordLangExpHOL.const 48#64])

def word863_0_1147 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1145 word863_0_1146

def word863_0_1148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 416#64]),
            Flapjack.WordLangExpHOL.const 48#64]),
      Flapjack.WordLangExpHOL.var 12])

def word863_0_1149 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1147 word863_0_1148

def word863_0_1150 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1149 word863_0_1136

def word863_0_1151 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1150 word863_0_1138

def word863_0_1152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 186
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 416#64]),
      Flapjack.WordLangExpHOL.const 16#64])

def word863_0_1153 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1151 word863_0_1152

def word863_0_1154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 416#64]),
            Flapjack.WordLangExpHOL.const 16#64]),
      Flapjack.WordLangExpHOL.var 52])

def word863_0_1155 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1153 word863_0_1154

def word863_0_1156 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1155 word863_0_1136

def word863_0_1157 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1156 word863_0_1138

def word863_0_1158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 186
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 182, Flapjack.WordLangExpHOL.const 16#64]))

def word863_0_1159 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1157 word863_0_1158

def word863_0_1160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 108 (Flapjack.WordLangExpHOL.var 186)

def word863_0_1161 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1159 word863_0_1160

def word863_0_1162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.const 0#64)

def word863_0_1163 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1161 word863_0_1162

def word863_0_1164 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1113 word863_0_3

def word863_0_1165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 156 (Flapjack.WordLangExpHOL.const 1#64)

def word863_0_1166 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1164 word863_0_1165

def word863_0_1167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 8#64)

def word863_0_1168 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1166 word863_0_1167

def word863_0_1169 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1168 word863_0_1113

def word863_0_1170 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1169 word863_0_1113

def word863_0_1171 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1170 word863_0_1167

def word863_0_1172 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1171 word863_0_1113

def word863_0_1173 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1172 word863_0_1167

def word863_0_1174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def word863_0_1175 : WordLangProgHOL (BitVec 64) :=
.call (some (([186]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 100)) (some 435) ([14, 108]) (some (14, word863_0_1174, 863, 101))

def word863_0_1176 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1173 word863_0_1175

def word863_0_1177 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1176 word863_0_3

def word863_0_1178 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1119 word863_0_3

def word863_0_1179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 156 (Flapjack.WordLangExpHOL.const 0#64)

def word863_0_1180 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1178 word863_0_1179

def word863_0_1181 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 108 (Flapjack.WordRegImm.reg 60) word863_0_1177 word863_0_1180

def word863_0_1182 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1163 word863_0_1181

def word863_0_1183 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1182 word863_0_3

def word863_0_1184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def word863_0_1185 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1183 word863_0_1184

def word863_0_1186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 182, Flapjack.WordLangExpHOL.const 32#64]))

def word863_0_1187 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1185 word863_0_1186

def word863_0_1188 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1187 word863_0_1179

def word863_0_1189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.const 1#64)

def word863_0_1190 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1189 word863_0_3

def word863_0_1191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 1#64)

def word863_0_1192 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1190 word863_0_1191

def word863_0_1193 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1192 word863_0_1109

def word863_0_1194 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1162 word863_0_3

def word863_0_1195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 0#64)

def word863_0_1196 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1194 word863_0_1195

def word863_0_1197 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 60 (Flapjack.WordRegImm.reg 156) word863_0_1193 word863_0_1196

def word863_0_1198 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1188 word863_0_1197

def word863_0_1199 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1198 word863_0_3

def word863_0_1200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 156
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64]))

def word863_0_1201 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1199 word863_0_1200

def word863_0_1202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 14)

def word863_0_1203 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1201 word863_0_1202

def word863_0_1204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 132
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
        Flapjack.WordLangExpHOL.const 16#64]))

def word863_0_1205 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1203 word863_0_1204

def word863_0_1206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 84 (Flapjack.WordLangExpHOL.var 186)

def word863_0_1207 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1205 word863_0_1206

def word863_0_1208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 156

def word863_0_1209 : WordLangProgHOL (BitVec 64) :=
.call (some (([108, 60]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 102)) (some 843) ([156, 38, 132, 84]) (some (156, word863_0_1208, 863, 103))

def word863_0_1210 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1207 word863_0_1209

def word863_0_1211 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1210 word863_0_3

def word863_0_1212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 156
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 416#64]),
            Flapjack.WordLangExpHOL.const 32#64]),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
        (Flapjack.WordLangExpHOL.const 4#64)])

def word863_0_1213 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1211 word863_0_1212

def word863_0_1214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 108)

def word863_0_1215 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1213 word863_0_1214

def word863_0_1216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 132 (Flapjack.WordLangExpHOL.var 38)

def word863_0_1217 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1215 word863_0_1216

def word863_0_1218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 156) 132

def word863_0_1219 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1217 word863_0_1218

def word863_0_1220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 156
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.load
              (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
                [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                    [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                        (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                        (Flapjack.WordLangExpHOL.const 1#64)],
                  Flapjack.WordLangExpHOL.const 416#64]),
            Flapjack.WordLangExpHOL.const 32#64]),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
        (Flapjack.WordLangExpHOL.const 4#64),
      Flapjack.WordLangExpHOL.const 8#64])

def word863_0_1221 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1219 word863_0_1220

def word863_0_1222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 60)

def word863_0_1223 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1221 word863_0_1222

def word863_0_1224 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1223 word863_0_1216

def word863_0_1225 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1224 word863_0_1218

def word863_0_1226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 156
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 186, Flapjack.WordLangExpHOL.const 8#64]))

def word863_0_1227 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1225 word863_0_1226

def word863_0_1228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 186, Flapjack.WordLangExpHOL.const 0#64]))

def word863_0_1229 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1227 word863_0_1228

def word863_0_1230 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1229 word863_0_351

def word863_0_1231 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1230 word863_0_3

def word863_0_1232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 84 (Flapjack.WordLangExpHOL.var 140)

def word863_0_1233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 180 (Flapjack.WordLangExpHOL.var 156)

def word863_0_1234 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1232 word863_0_1233

def word863_0_1235 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 84 (Flapjack.WordLangExpHOL.const 1#64)

def word863_0_1236 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1235 word863_0_3

def word863_0_1237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def word863_0_1238 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1236 word863_0_1237

def word863_0_1239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 84
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

def word863_0_1240 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1238 word863_0_1239

def word863_0_1241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 180 (Flapjack.WordLangExpHOL.const 8#64)

def word863_0_1242 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1240 word863_0_1241

def word863_0_1243 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1242 word863_0_1241

def word863_0_1244 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1243 word863_0_1241

def word863_0_1245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 84

def word863_0_1246 : WordLangProgHOL (BitVec 64) :=
.call (some (([132]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 104)) (some 437) ([84, 180]) (some (84, word863_0_1245, 863, 105))

def word863_0_1247 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1244 word863_0_1246

def word863_0_1248 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1247 word863_0_3

def word863_0_1249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 84 (Flapjack.WordLangExpHOL.var 132)

def word863_0_1250 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1248 word863_0_1249

def word863_0_1251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 180
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 38,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 140)
          (Flapjack.WordLangExpHOL.const 3#64)]))

def word863_0_1252 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1250 word863_0_1251

def word863_0_1253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 180)

def word863_0_1254 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1252 word863_0_1253

def word863_0_1255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 84) 26

def word863_0_1256 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1254 word863_0_1255

def word863_0_1257 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 84
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 140, Flapjack.WordLangExpHOL.const 1#64])

def word863_0_1258 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1256 word863_0_1257

def word863_0_1259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.var 84)

def word863_0_1260 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1258 word863_0_1259

def word863_0_1261 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1260 word863_0_412

def word863_0_1262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 84 (Flapjack.WordLangExpHOL.const 0#64)

def word863_0_1263 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1262 word863_0_3

def word863_0_1264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def word863_0_1265 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1263 word863_0_1264

def word863_0_1266 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1265 word863_0_418

def word863_0_1267 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 84 (Flapjack.WordRegImm.reg 180) word863_0_1261 word863_0_1266

def word863_0_1268 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1234 word863_0_1267

def word863_0_1269 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1268 word863_0_3

def word863_0_1270 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
  PUnit.unit Flapjack.Spt.ln) word863_0_1269 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
  PUnit.unit Flapjack.Spt.ln)

def word863_0_1271 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1231 word863_0_1270

def word863_0_1272 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1271 word863_0_3

def word863_0_1273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 132 (Flapjack.WordLangExpHOL.var 156)

def word863_0_1274 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1272 word863_0_1273

def word863_0_1275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 180 (Flapjack.WordLangExpHOL.var 132)

def word863_0_1276 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1274 word863_0_1275

def word863_0_1277 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1276 word863_0_1264

def word863_0_1278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 180 (Flapjack.WordLangExpHOL.const 1#64)

def word863_0_1279 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1278 word863_0_3

def word863_0_1280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 120 (Flapjack.WordLangExpHOL.const 1#64)

def word863_0_1281 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1279 word863_0_1280

def word863_0_1282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 132 (Flapjack.WordLangExpHOL.const 1#64)

def word863_0_1283 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1281 word863_0_1282

def word863_0_1284 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 180 (Flapjack.WordLangExpHOL.const 0#64)

def word863_0_1285 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1284 word863_0_3

def word863_0_1286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 120 (Flapjack.WordLangExpHOL.const 0#64)

def word863_0_1287 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1285 word863_0_1286

def word863_0_1288 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 180 (Flapjack.WordRegImm.reg 26) word863_0_1283 word863_0_1287

def word863_0_1289 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1277 word863_0_1288

def word863_0_1290 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1289 word863_0_3

def word863_0_1291 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1290 word863_0_1241

def word863_0_1292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 132)

def word863_0_1293 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1291 word863_0_1292

def word863_0_1294 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1293 word863_0_1241

def word863_0_1295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 180

def word863_0_1296 : WordLangProgHOL (BitVec 64) :=
.call (some (([84]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 106)) (some 435) ([180, 26]) (some (180, word863_0_1295, 863, 107))

def word863_0_1297 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1294 word863_0_1296

def word863_0_1298 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1297 word863_0_3

def word863_0_1299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 180
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 84, Flapjack.WordLangExpHOL.const 8#64])

def word863_0_1300 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1298 word863_0_1299

def word863_0_1301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 156)

def word863_0_1302 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1300 word863_0_1301

def word863_0_1303 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 120 (Flapjack.WordLangExpHOL.var 26)

def word863_0_1304 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1302 word863_0_1303

def word863_0_1305 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 180) 120

def word863_0_1306 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1304 word863_0_1305

def word863_0_1307 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 180
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 84, Flapjack.WordLangExpHOL.const 0#64]))

def word863_0_1308 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1306 word863_0_1307

def word863_0_1309 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1308 word863_0_351

def word863_0_1310 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1309 word863_0_3

def word863_0_1311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 120 (Flapjack.WordLangExpHOL.var 140)

def word863_0_1312 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 156)

def word863_0_1313 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1311 word863_0_1312

def word863_0_1314 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1280 word863_0_3

def word863_0_1315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 168 (Flapjack.WordLangExpHOL.const 1#64)

def word863_0_1316 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1314 word863_0_1315

def word863_0_1317 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 180,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 140)
        (Flapjack.WordLangExpHOL.const 3#64)])

def word863_0_1318 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1316 word863_0_1317

def word863_0_1319 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 120
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 38,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 140)
          (Flapjack.WordLangExpHOL.const 3#64)]))

def word863_0_1320 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1318 word863_0_1319

def word863_0_1321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 120)

def word863_0_1322 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1320 word863_0_1321

def word863_0_1323 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 26) 72

def word863_0_1324 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1322 word863_0_1323

def word863_0_1325 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 140, Flapjack.WordLangExpHOL.const 1#64])

def word863_0_1326 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1324 word863_0_1325

def word863_0_1327 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.var 26)

def word863_0_1328 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1326 word863_0_1327

def word863_0_1329 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1328 word863_0_412

def word863_0_1330 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1286 word863_0_3

def word863_0_1331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 168 (Flapjack.WordLangExpHOL.const 0#64)

def word863_0_1332 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1330 word863_0_1331

def word863_0_1333 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1332 word863_0_418

def word863_0_1334 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 120 (Flapjack.WordRegImm.reg 72) word863_0_1329 word863_0_1333

def word863_0_1335 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1313 word863_0_1334

def word863_0_1336 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1335 word863_0_3

def word863_0_1337 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
  PUnit.unit Flapjack.Spt.ln) word863_0_1336 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
  PUnit.unit Flapjack.Spt.ln)

def word863_0_1338 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1310 word863_0_1337

def word863_0_1339 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1338 word863_0_3

def word863_0_1340 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 120
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
        Flapjack.WordLangExpHOL.const 72#64]))

def word863_0_1341 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1339 word863_0_1340

def word863_0_1342 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.const 8#64)

def word863_0_1343 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1341 word863_0_1342

def word863_0_1344 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1343 word863_0_1342

def word863_0_1345 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 120

def word863_0_1346 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 108)) (some 437) ([120, 72]) (some (120, word863_0_1345, 863, 109))

def word863_0_1347 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1344 word863_0_1346

def word863_0_1348 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1347 word863_0_3

def word863_0_1349 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1348 word863_0_1303

def word863_0_1350 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 84)

def word863_0_1351 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1349 word863_0_1350

def word863_0_1352 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 168 (Flapjack.WordLangExpHOL.var 72)

def word863_0_1353 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1351 word863_0_1352

def word863_0_1354 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 120) 168

def word863_0_1355 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1353 word863_0_1354

def word863_0_1356 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 120
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 182, Flapjack.WordLangExpHOL.const 24#64]))

def word863_0_1357 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1355 word863_0_1356

def word863_0_1358 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 168 (Flapjack.WordLangExpHOL.var 120)

def word863_0_1359 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1357 word863_0_1358

def word863_0_1360 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 0#64)

def word863_0_1361 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1359 word863_0_1360

def word863_0_1362 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1315 word863_0_3

def word863_0_1363 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 144 (Flapjack.WordLangExpHOL.const 1#64)

def word863_0_1364 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1362 word863_0_1363

def word863_0_1365 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 120, Flapjack.WordLangExpHOL.const 24#64]))

def word863_0_1366 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1364 word863_0_1365

def word863_0_1367 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1366 word863_0_351

def word863_0_1368 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1367 word863_0_3

def word863_0_1369 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 140)

def word863_0_1370 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 144 (Flapjack.WordLangExpHOL.var 72)

def word863_0_1371 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1369 word863_0_1370

def word863_0_1372 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 1#64)

def word863_0_1373 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1372 word863_0_3

def word863_0_1374 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.const 1#64)

def word863_0_1375 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1373 word863_0_1374

def word863_0_1376 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.var 120)

def word863_0_1377 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1375 word863_0_1376

def word863_0_1378 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 192 (Flapjack.WordLangExpHOL.var 140)

def word863_0_1379 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1377 word863_0_1378

def word863_0_1380 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 96

def word863_0_1381 : WordLangProgHOL (BitVec 64) :=
.call (some (([168, 50, 144]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 110)) (some 197) ([96, 192]) (some (96, word863_0_1380, 863, 111))

def word863_0_1382 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1379 word863_0_1381

def word863_0_1383 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1382 word863_0_3

def word863_0_1384 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 192 (Flapjack.WordLangExpHOL.var 168)

def word863_0_1385 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1383 word863_0_1384

def word863_0_1386 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def word863_0_1387 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1385 word863_0_1386

def word863_0_1388 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 192 (Flapjack.WordLangExpHOL.const 1#64)

def word863_0_1389 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1388 word863_0_3

def word863_0_1390 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 104 (Flapjack.WordLangExpHOL.const 1#64)

def word863_0_1391 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1389 word863_0_1390

def word863_0_1392 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 192 (Flapjack.WordLangExpHOL.var 50)

def word863_0_1393 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1391 word863_0_1392

def word863_0_1394 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 192

def word863_0_1395 : WordLangProgHOL (BitVec 64) :=
.call (some (([96]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
            PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.ls PUnit.unit))
            PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 112)) (some 424) ([192]) (some (192, word863_0_1394, 863, 113))

def word863_0_1396 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1393 word863_0_1395

def word863_0_1397 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1396 word863_0_3

def word863_0_1398 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 192 (Flapjack.WordLangExpHOL.const 0#64)

def word863_0_1399 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1398 word863_0_3

def word863_0_1400 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 104 (Flapjack.WordLangExpHOL.const 0#64)

def word863_0_1401 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1399 word863_0_1400

def word863_0_1402 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 192 (Flapjack.WordRegImm.reg 10) word863_0_1397 word863_0_1401

def word863_0_1403 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1387 word863_0_1402

def word863_0_1404 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1403 word863_0_3

def word863_0_1405 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 140, Flapjack.WordLangExpHOL.const 1#64])

def word863_0_1406 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1404 word863_0_1405

def word863_0_1407 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 140 (Flapjack.WordLangExpHOL.var 96)

def word863_0_1408 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1406 word863_0_1407

def word863_0_1409 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1408 word863_0_412

def word863_0_1410 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1360 word863_0_3

def word863_0_1411 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 96 (Flapjack.WordLangExpHOL.const 0#64)

def word863_0_1412 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1410 word863_0_1411

def word863_0_1413 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1412 word863_0_418

def word863_0_1414 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 50 (Flapjack.WordRegImm.reg 144) word863_0_1409 word863_0_1413

def word863_0_1415 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1371 word863_0_1414

def word863_0_1416 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1415 word863_0_3

def word863_0_1417 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))))
  PUnit.unit Flapjack.Spt.ln) word863_0_1416 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)
  PUnit.unit Flapjack.Spt.ln)

def word863_0_1418 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1368 word863_0_1417

def word863_0_1419 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1418 word863_0_3

def word863_0_1420 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1331 word863_0_3

def word863_0_1421 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 144 (Flapjack.WordLangExpHOL.const 0#64)

def word863_0_1422 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1420 word863_0_1421

def word863_0_1423 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 168 (Flapjack.WordRegImm.reg 50) word863_0_1419 word863_0_1422

def word863_0_1424 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1361 word863_0_1423

def word863_0_1425 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1424 word863_0_3

def word863_0_1426 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 168

def word863_0_1427 : WordLangProgHOL (BitVec 64) :=
.call (some (([72]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 114)) (some 455) ([]) (some (168, word863_0_1426, 863, 115))

def word863_0_1428 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1425 word863_0_1427

def word863_0_1429 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1428 word863_0_3

def word863_0_1430 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 182, Flapjack.WordLangExpHOL.const 80#64]))

def word863_0_1431 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1429 word863_0_1430

def word863_0_1432 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 72)

def word863_0_1433 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1431 word863_0_1432

def word863_0_1434 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1433 word863_0_1421

def word863_0_1435 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1375 word863_0_1432

def word863_0_1436 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 50

def word863_0_1437 : WordLangProgHOL (BitVec 64) :=
.call (some (([168]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word863_0_0, 863, 116)) (some 76) ([50]) (some (50, word863_0_1436, 863, 117))

def word863_0_1438 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1435 word863_0_1437

def word863_0_1439 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1438 word863_0_3

def word863_0_1440 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 182, Flapjack.WordLangExpHOL.const 88#64]))

def word863_0_1441 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1439 word863_0_1440

def word863_0_1442 : WordLangProgHOL (BitVec 64) :=
.call (some (([168]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word863_0_0, 863, 118)) (some 73) ([50]) (some (50, word863_0_1436, 863, 119))

def word863_0_1443 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1441 word863_0_1442

def word863_0_1444 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1443 word863_0_3

def word863_0_1445 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 50 (Flapjack.WordRegImm.reg 144) word863_0_1444 word863_0_1412

def word863_0_1446 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1434 word863_0_1445

def word863_0_1447 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1446 word863_0_3

def word863_0_1448 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1447 word863_0_1331

def word863_0_1449 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [168]

def word863_0_1450 : WordLangProgHOL (BitVec 64) :=
.seq word863_0_1448 word863_0_1449

def pass863_0 : WordLangProgHOL (BitVec 64) :=
word863_0_1450
theorem pass863_0_eq : WordSimp.compileExp (source863.2.2) = pass863_0 := by
  kernel_rfl
#print axioms pass863_0_eq
end InitECandidate.Proofs.WordStages
