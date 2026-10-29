import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Source846
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def word846_0_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 176#64]),
        Flapjack.WordLangExpHOL.const 72#64]))

def word846_0_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def word846_0_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 62

def word846_0_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), word846_0_1, 846, 2)) (some 199) ([62]) (some (62, word846_0_2, 846, 3))

def word846_0_4 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_0 word846_0_3

def word846_0_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def word846_0_6 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_4 word846_0_5

def word846_0_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 20#64)

def word846_0_8 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_6 word846_0_7

def word846_0_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 64#64)

def word846_0_10 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_8 word846_0_9

def word846_0_11 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_9 word846_0_7

def word846_0_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def word846_0_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([62]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_0_1, 846, 4)) (some 182) ([14, 52]) (some (14, word846_0_12, 846, 5))

def word846_0_14 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_11 word846_0_13

def word846_0_15 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_10 word846_0_14

def word846_0_16 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_15 word846_0_5

def word846_0_17 : WordLangProgHOL (BitVec 64) :=
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
              Flapjack.WordLangExpHOL.const 176#64]),
        Flapjack.WordLangExpHOL.const 32#64]))

def word846_0_18 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_16 word846_0_17

def word846_0_19 : WordLangProgHOL (BitVec 64) :=
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
              Flapjack.WordLangExpHOL.const 176#64]),
        Flapjack.WordLangExpHOL.const 16#64]))

def word846_0_20 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_18 word846_0_19

def word846_0_21 : WordLangProgHOL (BitVec 64) :=
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
              Flapjack.WordLangExpHOL.const 168#64]),
        Flapjack.WordLangExpHOL.const 0#64]))

def word846_0_22 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_20 word846_0_21

def word846_0_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 24#64]))

def word846_0_24 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_22 word846_0_23

def word846_0_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def word846_0_26 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_24 word846_0_25

def word846_0_27 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_26 word846_0_5

def word846_0_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 8)

def word846_0_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 72)

def word846_0_30 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_28 word846_0_29

def word846_0_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 1#64)

def word846_0_32 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_31 word846_0_5

def word846_0_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def word846_0_34 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_32 word846_0_33

def word846_0_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 14)

def word846_0_36 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_34 word846_0_35

def word846_0_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 8)

def word846_0_38 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_36 word846_0_37

def word846_0_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def word846_0_40 : WordLangProgHOL (BitVec 64) :=
.call (some (([46, 30, 68]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_0_1, 846, 6)) (some 197) ([20, 58]) (some (20, word846_0_39, 846, 7))

def word846_0_41 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_38 word846_0_40

def word846_0_42 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_41 word846_0_5

def word846_0_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 46)

def word846_0_44 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_42 word846_0_43

def word846_0_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 0#64)

def word846_0_46 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_44 word846_0_45

def word846_0_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 1#64)

def word846_0_48 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_47 word846_0_5

def word846_0_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.const 1#64)

def word846_0_50 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_48 word846_0_49

def word846_0_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 30)

def word846_0_52 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_50 word846_0_51

def word846_0_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 68)

def word846_0_54 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_52 word846_0_53

def word846_0_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 24)

def word846_0_56 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_54 word846_0_55

def word846_0_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 20)

def word846_0_58 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_56 word846_0_57

def word846_0_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 78

def word846_0_60 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_0_1, 846, 8)) (some 187) ([78, 6]) (some (78, word846_0_59, 846, 9))

def word846_0_61 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_58 word846_0_60

def word846_0_62 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_61 word846_0_5

def word846_0_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 38)

def word846_0_64 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_62 word846_0_63

def word846_0_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 0#64)

def word846_0_66 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_64 word846_0_65

def word846_0_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def word846_0_68 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_67 word846_0_5

def word846_0_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def word846_0_70 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_68 word846_0_69

def word846_0_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 24)

def word846_0_72 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_70 word846_0_71

def word846_0_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 20)

def word846_0_74 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_72 word846_0_73

def word846_0_75 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_74 word846_0_69

def word846_0_76 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_75 word846_0_69

def word846_0_77 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_76 word846_0_69

def word846_0_78 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_77 word846_0_69

def word846_0_79 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_78 word846_0_69

def word846_0_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def word846_0_81 : WordLangProgHOL (BitVec 64) :=
.call (some (([78]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_0_1, 846, 10)) (some 192) ([6, 44, 28]) (some (6, word846_0_80, 846, 11))

def word846_0_82 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_79 word846_0_81

def word846_0_83 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_82 word846_0_5

def word846_0_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def word846_0_85 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_84 word846_0_5

def word846_0_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def word846_0_87 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_85 word846_0_86

def word846_0_88 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 44) word846_0_83 word846_0_87

def word846_0_89 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_66 word846_0_88

def word846_0_90 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_89 word846_0_5

def word846_0_91 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_90 word846_0_57

def word846_0_92 : WordLangProgHOL (BitVec 64) :=
.call (some (([78]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_0_1, 846, 12)) (some 395) ([6]) (some (6, word846_0_80, 846, 13))

def word846_0_93 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_91 word846_0_92

def word846_0_94 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_93 word846_0_5

def word846_0_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 34)

def word846_0_96 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_94 word846_0_95

def word846_0_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 78)

def word846_0_98 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_96 word846_0_97

def word846_0_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.const 1#64)

def word846_0_100 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_98 word846_0_99

def word846_0_101 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_100 word846_0_99

def word846_0_102 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_101 word846_0_99

def word846_0_103 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_102 word846_0_99

def word846_0_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 44

def word846_0_105 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_0_1, 846, 14)) (some 305) ([44, 28, 66]) (some (44, word846_0_104, 846, 15))

def word846_0_106 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_103 word846_0_105

def word846_0_107 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_106 word846_0_5

def word846_0_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 96#64)

def word846_0_109 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_107 word846_0_108

def word846_0_110 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_109 word846_0_108

def word846_0_111 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_110 word846_0_108

def word846_0_112 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_111 word846_0_108

def word846_0_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def word846_0_114 : WordLangProgHOL (BitVec 64) :=
.call (some (([44]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_0_1, 846, 16)) (some 68) ([28]) (some (28, word846_0_113, 846, 17))

def word846_0_115 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_112 word846_0_114

def word846_0_116 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_115 word846_0_5

def word846_0_117 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_116 word846_0_86

def word846_0_118 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_117 word846_0_5

def word846_0_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 28)

def word846_0_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 2#64)

def word846_0_121 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_119 word846_0_120

def word846_0_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def word846_0_123 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_122 word846_0_5

def word846_0_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 1#64)

def word846_0_125 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_123 word846_0_124

def word846_0_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.const 0#64)

def word846_0_127 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_125 word846_0_126

def word846_0_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 58, Flapjack.WordLangExpHOL.const 24#64]))

def word846_0_129 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_127 word846_0_128

def word846_0_130 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_129 word846_0_5

def word846_0_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 66)

def word846_0_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.var 18)

def word846_0_133 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_131 word846_0_132

def word846_0_134 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_124 word846_0_5

def word846_0_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def word846_0_136 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_134 word846_0_135

def word846_0_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 58)

def word846_0_138 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_136 word846_0_137

def word846_0_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 66)

def word846_0_140 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_138 word846_0_139

def word846_0_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def word846_0_142 : WordLangProgHOL (BitVec 64) :=
.call (some (([56, 36, 76]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_0_1, 846, 18)) (some 197) ([12, 50]) (some (12, word846_0_141, 846, 19))

def word846_0_143 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_140 word846_0_142

def word846_0_144 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_143 word846_0_5

def word846_0_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 56)

def word846_0_146 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_144 word846_0_145

def word846_0_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 0#64)

def word846_0_148 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_146 word846_0_147

def word846_0_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 1#64)

def word846_0_150 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_149 word846_0_5

def word846_0_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 1#64)

def word846_0_152 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_150 word846_0_151

def word846_0_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 76))

def word846_0_154 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_152 word846_0_153

def word846_0_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 76, Flapjack.WordLangExpHOL.const 8#64]))

def word846_0_156 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_154 word846_0_155

def word846_0_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 76, Flapjack.WordLangExpHOL.const 16#64]))

def word846_0_158 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_156 word846_0_157

def word846_0_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 76, Flapjack.WordLangExpHOL.const 24#64]))

def word846_0_160 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_158 word846_0_159

def word846_0_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 12)

def word846_0_162 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_160 word846_0_161

def word846_0_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 50)

def word846_0_164 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_162 word846_0_163

def word846_0_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.var 32)

def word846_0_166 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_164 word846_0_165

def word846_0_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 70)

def word846_0_168 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_166 word846_0_167

def word846_0_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 60

def word846_0_170 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_0_1, 846, 20)) (some 102) ([60, 40, 80, 4]) (some (60, word846_0_169, 846, 21))

def word846_0_171 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_168 word846_0_170

def word846_0_172 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_171 word846_0_5

def word846_0_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 28)

def word846_0_174 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_172 word846_0_173

def word846_0_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.const 0#64)

def word846_0_176 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_174 word846_0_175

def word846_0_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 1#64)

def word846_0_178 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_177 word846_0_5

def word846_0_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 0#64)

def word846_0_180 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_178 word846_0_179

def word846_0_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def word846_0_182 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_180 word846_0_181

def word846_0_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 1#64)

def word846_0_184 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_182 word846_0_183

def word846_0_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 0#64)

def word846_0_186 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_185 word846_0_5

def word846_0_187 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_186 word846_0_179

def word846_0_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def word846_0_189 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_187 word846_0_188

def word846_0_190 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_189 word846_0_179

def word846_0_191 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 40 (Flapjack.WordRegImm.reg 80) word846_0_184 word846_0_190

def word846_0_192 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_176 word846_0_191

def word846_0_193 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_192 word846_0_5

def word846_0_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 22)

def word846_0_195 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_193 word846_0_194

def word846_0_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 0#64)

def word846_0_197 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_195 word846_0_196

def word846_0_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def word846_0_199 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_198 word846_0_5

def word846_0_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.const 0#64)

def word846_0_201 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_199 word846_0_200

def word846_0_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def word846_0_203 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_201 word846_0_202

def word846_0_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.const 1#64)

def word846_0_205 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_203 word846_0_204

def word846_0_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def word846_0_207 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_206 word846_0_5

def word846_0_208 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_207 word846_0_200

def word846_0_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def word846_0_210 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_208 word846_0_209

def word846_0_211 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_210 word846_0_200

def word846_0_212 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 16 (Flapjack.WordRegImm.reg 54) word846_0_205 word846_0_211

def word846_0_213 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_197 word846_0_212

def word846_0_214 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_213 word846_0_5

def word846_0_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 42, Flapjack.WordLangExpHOL.var 74])

def word846_0_216 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_214 word846_0_215

def word846_0_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 12)

def word846_0_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.var 50)

def word846_0_219 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_217 word846_0_218

def word846_0_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 32)

def word846_0_221 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_219 word846_0_220

def word846_0_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 70)

def word846_0_223 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_221 word846_0_222

def word846_0_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 44, Flapjack.WordLangExpHOL.const 8#64])

def word846_0_225 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_223 word846_0_224

def word846_0_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def word846_0_227 : WordLangProgHOL (BitVec 64) :=
.call (some (([60]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_0_1, 846, 22)) (some 148) ([40, 80, 4, 42, 26]) (some (40, word846_0_226, 846, 23))

def word846_0_228 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_225 word846_0_227

def word846_0_229 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_228 word846_0_5

def word846_0_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 44, Flapjack.WordLangExpHOL.const 8#64, Flapjack.WordLangExpHOL.const 32#64])

def word846_0_231 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_229 word846_0_230

def word846_0_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 44, Flapjack.WordLangExpHOL.const 8#64])

def word846_0_233 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_231 word846_0_232

def word846_0_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 60)

def word846_0_235 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_233 word846_0_234

def word846_0_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 80

def word846_0_237 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_0_1, 846, 24)) (some 176) ([80, 4, 42]) (some (80, word846_0_236, 846, 25))

def word846_0_238 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_235 word846_0_237

def word846_0_239 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_238 word846_0_5

def word846_0_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 40#64)

def word846_0_241 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_239 word846_0_240

def word846_0_242 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_241 word846_0_240

def word846_0_243 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_242 word846_0_240

def word846_0_244 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_243 word846_0_240

def word846_0_245 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_244 word846_0_240

def word846_0_246 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_245 word846_0_240

def word846_0_247 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_246 word846_0_240

def word846_0_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def word846_0_249 : WordLangProgHOL (BitVec 64) :=
.call (some (([80]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_0_1, 846, 26)) (some 68) ([4]) (some (4, word846_0_248, 846, 27))

def word846_0_250 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_247 word846_0_249

def word846_0_251 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_250 word846_0_5

def word846_0_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 80)

def word846_0_253 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_251 word846_0_252

def word846_0_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 44, Flapjack.WordLangExpHOL.const 40#64])

def word846_0_255 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_253 word846_0_254

def word846_0_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 40)

def word846_0_257 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_255 word846_0_256

def word846_0_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 42

def word846_0_259 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_0_1, 846, 28)) (some 77) ([42, 26, 64]) (some (42, word846_0_258, 846, 29))

def word846_0_260 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_257 word846_0_259

def word846_0_261 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_260 word846_0_5

def word846_0_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 6)

def word846_0_263 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_261 word846_0_262

def word846_0_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 36)

def word846_0_265 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_263 word846_0_264

def word846_0_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.const 32#64)

def word846_0_267 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_265 word846_0_266

def word846_0_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 80)

def word846_0_269 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_267 word846_0_268

def word846_0_270 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 40)

def word846_0_271 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_269 word846_0_270

def word846_0_272 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_271 word846_0_266

def word846_0_273 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_272 word846_0_266

def word846_0_274 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_273 word846_0_266

def word846_0_275 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_274 word846_0_266

def word846_0_276 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_275 word846_0_266

def word846_0_277 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_276 word846_0_266

def word846_0_278 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_0_1, 846, 30)) (some 316) ([42, 26, 64, 16, 54]) (some (42, word846_0_258, 846, 31))

def word846_0_279 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_277 word846_0_278

def word846_0_280 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_279 word846_0_5

def word846_0_281 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 48 (Flapjack.WordRegImm.imm 0#64) word846_0_280 word846_0_1

def word846_0_282 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_216 word846_0_281

def word846_0_283 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_282 word846_0_5

def word846_0_284 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_283 word846_0_173

def word846_0_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.const 1#64)

def word846_0_286 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_284 word846_0_285

def word846_0_287 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_286 word846_0_191

def word846_0_288 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_287 word846_0_5

def word846_0_289 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_288 word846_0_194

def word846_0_290 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_289 word846_0_196

def word846_0_291 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.reg 54) word846_0_205 word846_0_211

def word846_0_292 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_290 word846_0_291

def word846_0_293 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_292 word846_0_5

def word846_0_294 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_293 word846_0_215

def word846_0_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 6)

def word846_0_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.var 36)

def word846_0_297 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_295 word846_0_296

def word846_0_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 32#64)

def word846_0_299 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_297 word846_0_298

def word846_0_300 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_299 word846_0_179

def word846_0_301 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_300 word846_0_188

def word846_0_302 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_301 word846_0_188

def word846_0_303 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_302 word846_0_179

def word846_0_304 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_303 word846_0_298

def word846_0_305 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_304 word846_0_188

def word846_0_306 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_305 word846_0_179

def word846_0_307 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_306 word846_0_298

def word846_0_308 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_307 word846_0_188

def word846_0_309 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_308 word846_0_179

def word846_0_310 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_309 word846_0_298

def word846_0_311 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_310 word846_0_188

def word846_0_312 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_311 word846_0_179

def word846_0_313 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_312 word846_0_298

def word846_0_314 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_313 word846_0_188

def word846_0_315 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_314 word846_0_179

def word846_0_316 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_315 word846_0_298

def word846_0_317 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_316 word846_0_188

def word846_0_318 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_317 word846_0_179

def word846_0_319 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_318 word846_0_298

def word846_0_320 : WordLangProgHOL (BitVec 64) :=
.call (some (([60]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_0_1, 846, 32)) (some 316) ([40, 80, 4, 42, 26]) (some (40, word846_0_226, 846, 33))

def word846_0_321 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_319 word846_0_320

def word846_0_322 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_321 word846_0_5

def word846_0_323 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 48 (Flapjack.WordRegImm.imm 0#64) word846_0_322 word846_0_1

def word846_0_324 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_294 word846_0_323

def word846_0_325 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_324 word846_0_5

def word846_0_326 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 0#64)

def word846_0_327 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_326 word846_0_5

def word846_0_328 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 0#64)

def word846_0_329 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_327 word846_0_328

def word846_0_330 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 50 (Flapjack.WordRegImm.reg 32) word846_0_325 word846_0_329

def word846_0_331 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_148 word846_0_330

def word846_0_332 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_331 word846_0_5

def word846_0_333 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 66, Flapjack.WordLangExpHOL.const 1#64])

def word846_0_334 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_332 word846_0_333

def word846_0_335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 12)

def word846_0_336 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_334 word846_0_335

def word846_0_337 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def word846_0_338 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_336 word846_0_337

def word846_0_339 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 0#64)

def word846_0_340 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_339 word846_0_5

def word846_0_341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def word846_0_342 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_340 word846_0_341

def word846_0_343 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def word846_0_344 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_342 word846_0_343

def word846_0_345 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 36 (Flapjack.WordRegImm.reg 76) word846_0_338 word846_0_344

def word846_0_346 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_133 word846_0_345

def word846_0_347 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_346 word846_0_5

def word846_0_348 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln) word846_0_347 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln)

def word846_0_349 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_130 word846_0_348

def word846_0_350 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_349 word846_0_5

def word846_0_351 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 1#64])

def word846_0_352 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_350 word846_0_351

def word846_0_353 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 56)

def word846_0_354 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_352 word846_0_353

def word846_0_355 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_354 word846_0_337

def word846_0_356 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def word846_0_357 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_356 word846_0_5

def word846_0_358 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_357 word846_0_339

def word846_0_359 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_358 word846_0_343

def word846_0_360 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 18 (Flapjack.WordRegImm.reg 56) word846_0_355 word846_0_359

def word846_0_361 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_121 word846_0_360

def word846_0_362 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_361 word846_0_5

def word846_0_363 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln) word846_0_362 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln)

def word846_0_364 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_118 word846_0_363

def word846_0_365 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_364 word846_0_5

def word846_0_366 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 32#64)

def word846_0_367 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_365 word846_0_366

def word846_0_368 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_367 word846_0_366

def word846_0_369 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_368 word846_0_366

def word846_0_370 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_369 word846_0_366

def word846_0_371 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def word846_0_372 : WordLangProgHOL (BitVec 64) :=
.call (some (([66]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_0_1, 846, 34)) (some 68) ([18]) (some (18, word846_0_371, 846, 35))

def word846_0_373 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_370 word846_0_372

def word846_0_374 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_373 word846_0_5

def word846_0_375 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 6)

def word846_0_376 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_374 word846_0_375

def word846_0_377 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_376 word846_0_131

def word846_0_378 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 56

def word846_0_379 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_0_1, 846, 36)) (some 327) ([56, 36]) (some (56, word846_0_378, 846, 37))

def word846_0_380 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_377 word846_0_379

def word846_0_381 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_380 word846_0_5

def word846_0_382 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 62)

def word846_0_383 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_381 word846_0_382

def word846_0_384 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 20)

def word846_0_385 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_383 word846_0_384

def word846_0_386 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.var 66)

def word846_0_387 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_385 word846_0_386

def word846_0_388 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_0_1, 846, 38)) (some 192) ([56, 36, 76]) (some (56, word846_0_378, 846, 39))

def word846_0_389 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_387 word846_0_388

def word846_0_390 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_389 word846_0_5

def word846_0_391 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 0#64)

def word846_0_392 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_391 word846_0_5

def word846_0_393 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.const 0#64)

def word846_0_394 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_392 word846_0_393

def word846_0_395 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 58 (Flapjack.WordRegImm.reg 38) word846_0_390 word846_0_394

def word846_0_396 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_46 word846_0_395

def word846_0_397 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_396 word846_0_5

def word846_0_398 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 1#64])

def word846_0_399 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_397 word846_0_398

def word846_0_400 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 20)

def word846_0_401 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_399 word846_0_400

def word846_0_402 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_401 word846_0_337

def word846_0_403 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def word846_0_404 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_403 word846_0_5

def word846_0_405 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def word846_0_406 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_404 word846_0_405

def word846_0_407 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_406 word846_0_343

def word846_0_408 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 30 (Flapjack.WordRegImm.reg 68) word846_0_402 word846_0_407

def word846_0_409 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_30 word846_0_408

def word846_0_410 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_409 word846_0_5

def word846_0_411 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln) word846_0_410 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln)

def word846_0_412 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_27 word846_0_411

def word846_0_413 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_412 word846_0_5

def word846_0_414 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 34)

def word846_0_415 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_413 word846_0_414

def word846_0_416 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 168#64]),
        Flapjack.WordLangExpHOL.const 8#64]))

def word846_0_417 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_415 word846_0_416

def word846_0_418 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_417 word846_0_33

def word846_0_419 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def word846_0_420 : WordLangProgHOL (BitVec 64) :=
.call (some (([46]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_0_1, 846, 40)) (some 305) ([30, 68, 20]) (some (30, word846_0_419, 846, 41))

def word846_0_421 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_33 word846_0_420

def word846_0_422 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_418 word846_0_421

def word846_0_423 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_422 word846_0_5

def word846_0_424 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_423 word846_0_25

def word846_0_425 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_424 word846_0_5

def word846_0_426 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 8)

def word846_0_427 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 72)

def word846_0_428 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_426 word846_0_427

def word846_0_429 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.const 1#64)

def word846_0_430 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_429 word846_0_5

def word846_0_431 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_430 word846_0_47

def word846_0_432 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 14)

def word846_0_433 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_431 word846_0_432

def word846_0_434 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 8)

def word846_0_435 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_433 word846_0_434

def word846_0_436 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 58

def word846_0_437 : WordLangProgHOL (BitVec 64) :=
.call (some (([30, 68, 20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_0_1, 846, 42)) (some 197) ([58, 38]) (some (58, word846_0_436, 846, 43))

def word846_0_438 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_435 word846_0_437

def word846_0_439 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_438 word846_0_5

def word846_0_440 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 30)

def word846_0_441 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_439 word846_0_440

def word846_0_442 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_441 word846_0_393

def word846_0_443 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 1#64)

def word846_0_444 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_443 word846_0_5

def word846_0_445 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_444 word846_0_67

def word846_0_446 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 52)

def word846_0_447 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_445 word846_0_446

def word846_0_448 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 68)

def word846_0_449 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_447 word846_0_448

def word846_0_450 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 38

def word846_0_451 : WordLangProgHOL (BitVec 64) :=
.call (some (([58]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_0_1, 846, 44)) (some 187) ([38, 78]) (some (38, word846_0_450, 846, 45))

def word846_0_452 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_449 word846_0_451

def word846_0_453 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_452 word846_0_5

def word846_0_454 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 58)

def word846_0_455 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_453 word846_0_454

def word846_0_456 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_455 word846_0_84

def word846_0_457 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_49 word846_0_5

def word846_0_458 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 1#64)

def word846_0_459 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_457 word846_0_458

def word846_0_460 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_459 word846_0_448

def word846_0_461 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_0_1, 846, 46)) (some 394) ([78]) (some (78, word846_0_59, 846, 47))

def word846_0_462 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_460 word846_0_461

def word846_0_463 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_462 word846_0_5

def word846_0_464 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_463 word846_0_71

def word846_0_465 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 68)

def word846_0_466 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_464 word846_0_465

def word846_0_467 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_466 word846_0_69

def word846_0_468 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_467 word846_0_69

def word846_0_469 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_468 word846_0_69

def word846_0_470 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_469 word846_0_69

def word846_0_471 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_470 word846_0_69

def word846_0_472 : WordLangProgHOL (BitVec 64) :=
.call (some (([78]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_0_1, 846, 48)) (some 192) ([6, 44, 28]) (some (6, word846_0_80, 846, 49))

def word846_0_473 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_471 word846_0_472

def word846_0_474 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_473 word846_0_5

def word846_0_475 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_474 word846_0_63

def word846_0_476 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_475 word846_0_458

def word846_0_477 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 62)

def word846_0_478 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_70 word846_0_477

def word846_0_479 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 68)

def word846_0_480 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_478 word846_0_479

def word846_0_481 : WordLangProgHOL (BitVec 64) :=
.call (some (([78, 6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_0_1, 846, 50)) (some 186) ([44, 28]) (some (44, word846_0_104, 846, 51))

def word846_0_482 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_480 word846_0_481

def word846_0_483 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_482 word846_0_5

def word846_0_484 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 128#64]))

def word846_0_485 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_483 word846_0_484

def word846_0_486 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 78)

def word846_0_487 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_485 word846_0_486

def word846_0_488 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_487 word846_0_356

def word846_0_489 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_99 word846_0_5

def word846_0_490 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 1#64)

def word846_0_491 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_489 word846_0_490

def word846_0_492 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 6)

def word846_0_493 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_491 word846_0_492

def word846_0_494 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_126 word846_0_5

def word846_0_495 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 0#64)

def word846_0_496 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_494 word846_0_495

def word846_0_497 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 66 (Flapjack.WordRegImm.reg 18) word846_0_493 word846_0_496

def word846_0_498 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_488 word846_0_497

def word846_0_499 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_498 word846_0_5

def word846_0_500 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.const 128#64)

def word846_0_501 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_499 word846_0_500

def word846_0_502 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_501 word846_0_500

def word846_0_503 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_502 word846_0_500

def word846_0_504 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_503 word846_0_500

def word846_0_505 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_504 word846_0_500

def word846_0_506 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_505 word846_0_500

def word846_0_507 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 66

def word846_0_508 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_0_1, 846, 52)) (some 68) ([66]) (some (66, word846_0_507, 846, 53))

def word846_0_509 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_506 word846_0_508

def word846_0_510 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_509 word846_0_5

def word846_0_511 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 0#64]))

def word846_0_512 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_510 word846_0_511

def word846_0_513 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 8#64]))

def word846_0_514 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_512 word846_0_513

def word846_0_515 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def word846_0_516 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_514 word846_0_515

def word846_0_517 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def word846_0_518 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_516 word846_0_517

def word846_0_519 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def word846_0_520 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_518 word846_0_519

def word846_0_521 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 44)

def word846_0_522 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_520 word846_0_521

def word846_0_523 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 48#64]))

def word846_0_524 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_522 word846_0_523

def word846_0_525 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 28)

def word846_0_526 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_524 word846_0_525

def word846_0_527 : WordLangProgHOL (BitVec 64) :=
.call (some (([66]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_0_1, 846, 54)) (some 330) ([18, 56, 36, 76, 12, 50, 32, 70]) (some (18, word846_0_371, 846, 55))

def word846_0_528 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_526 word846_0_527

def word846_0_529 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_528 word846_0_5

def word846_0_530 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 46)

def word846_0_531 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_529 word846_0_530

def word846_0_532 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 68)

def word846_0_533 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_531 word846_0_532

def word846_0_534 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.const 20#64)

def word846_0_535 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_533 word846_0_534

def word846_0_536 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 28)

def word846_0_537 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_535 word846_0_536

def word846_0_538 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_537 word846_0_139

def word846_0_539 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_538 word846_0_534

def word846_0_540 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_539 word846_0_534

def word846_0_541 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_540 word846_0_534

def word846_0_542 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_541 word846_0_534

def word846_0_543 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_542 word846_0_534

def word846_0_544 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_0_1, 846, 56)) (some 316) ([56, 36, 76, 12, 50]) (some (56, word846_0_378, 846, 57))

def word846_0_545 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_543 word846_0_544

def word846_0_546 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_545 word846_0_5

def word846_0_547 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 44) word846_0_546 word846_0_87

def word846_0_548 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_476 word846_0_547

def word846_0_549 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_548 word846_0_5

def word846_0_550 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_393 word846_0_5

def word846_0_551 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_550 word846_0_65

def word846_0_552 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 78 (Flapjack.WordRegImm.reg 6) word846_0_549 word846_0_551

def word846_0_553 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_456 word846_0_552

def word846_0_554 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_553 word846_0_5

def word846_0_555 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_45 word846_0_5

def word846_0_556 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_555 word846_0_84

def word846_0_557 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 38 (Flapjack.WordRegImm.reg 78) word846_0_554 word846_0_556

def word846_0_558 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_442 word846_0_557

def word846_0_559 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_558 word846_0_5

def word846_0_560 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 1#64])

def word846_0_561 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_559 word846_0_560

def word846_0_562 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 58)

def word846_0_563 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_561 word846_0_562

def word846_0_564 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_563 word846_0_337

def word846_0_565 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.const 0#64)

def word846_0_566 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_565 word846_0_5

def word846_0_567 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_566 word846_0_391

def word846_0_568 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_567 word846_0_343

def word846_0_569 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 68 (Flapjack.WordRegImm.reg 20) word846_0_564 word846_0_568

def word846_0_570 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_428 word846_0_569

def word846_0_571 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_570 word846_0_5

def word846_0_572 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln) word846_0_571 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln)

def word846_0_573 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_425 word846_0_572

def word846_0_574 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_573 word846_0_5

def word846_0_575 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 52, Flapjack.WordLangExpHOL.const 24#64]))

def word846_0_576 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_574 word846_0_575

def word846_0_577 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_576 word846_0_25

def word846_0_578 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_577 word846_0_5

def word846_0_579 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 8)

def word846_0_580 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 30)

def word846_0_581 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_579 word846_0_580

def word846_0_582 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_33 word846_0_5

def word846_0_583 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_582 word846_0_443

def word846_0_584 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_583 word846_0_446

def word846_0_585 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 8)

def word846_0_586 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_584 word846_0_585

def word846_0_587 : WordLangProgHOL (BitVec 64) :=
.call (some (([68, 20, 58]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_0_1, 846, 58)) (some 197) ([38, 78]) (some (38, word846_0_450, 846, 59))

def word846_0_588 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_586 word846_0_587

def word846_0_589 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_588 word846_0_5

def word846_0_590 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_589 word846_0_448

def word846_0_591 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_590 word846_0_84

def word846_0_592 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 20)

def word846_0_593 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_459 word846_0_592

def word846_0_594 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_593 word846_0_454

def word846_0_595 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 78)

def word846_0_596 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_594 word846_0_595

def word846_0_597 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_596 word846_0_69

def word846_0_598 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_458 word846_0_5

def word846_0_599 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_598 word846_0_99

def word846_0_600 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 46)

def word846_0_601 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_599 word846_0_600

def word846_0_602 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 38)

def word846_0_603 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_601 word846_0_602

def word846_0_604 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.const 20#64)

def word846_0_605 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_603 word846_0_604

def word846_0_606 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_605 word846_0_356

def word846_0_607 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_606 word846_0_495

def word846_0_608 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_607 word846_0_495

def word846_0_609 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_608 word846_0_356

def word846_0_610 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_609 word846_0_604

def word846_0_611 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_610 word846_0_495

def word846_0_612 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_611 word846_0_356

def word846_0_613 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_612 word846_0_604

def word846_0_614 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_613 word846_0_495

def word846_0_615 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_614 word846_0_356

def word846_0_616 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_615 word846_0_604

def word846_0_617 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_616 word846_0_495

def word846_0_618 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_617 word846_0_356

def word846_0_619 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_618 word846_0_604

def word846_0_620 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_0_1, 846, 60)) (some 316) ([44, 28, 66, 18, 56]) (some (44, word846_0_104, 846, 61))

def word846_0_621 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_619 word846_0_620

def word846_0_622 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_621 word846_0_5

def word846_0_623 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_65 word846_0_5

def word846_0_624 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_623 word846_0_126

def word846_0_625 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 62)

def word846_0_626 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_624 word846_0_625

def word846_0_627 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 38)

def word846_0_628 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_626 word846_0_627

def word846_0_629 : WordLangProgHOL (BitVec 64) :=
.call (some (([6, 44]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_0_1, 846, 62)) (some 186) ([28, 66]) (some (28, word846_0_113, 846, 63))

def word846_0_630 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_628 word846_0_629

def word846_0_631 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_630 word846_0_5

def word846_0_632 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def word846_0_633 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_631 word846_0_632

def word846_0_634 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_633 word846_0_495

def word846_0_635 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 44)

def word846_0_636 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_125 word846_0_635

def word846_0_637 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 24)

def word846_0_638 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_358 word846_0_637

def word846_0_639 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 38)

def word846_0_640 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_638 word846_0_639

def word846_0_641 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_0_1, 846, 64)) (some 845) ([66, 18]) (some (66, word846_0_507, 846, 65))

def word846_0_642 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_640 word846_0_641

def word846_0_643 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_642 word846_0_5

def word846_0_644 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.reg 56) word846_0_636 word846_0_643

def word846_0_645 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_634 word846_0_644

def word846_0_646 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_645 word846_0_5

def word846_0_647 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 128#64)

def word846_0_648 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_646 word846_0_647

def word846_0_649 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_648 word846_0_647

def word846_0_650 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_649 word846_0_647

def word846_0_651 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_650 word846_0_647

def word846_0_652 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_651 word846_0_647

def word846_0_653 : WordLangProgHOL (BitVec 64) :=
.call (some (([66]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_0_1, 846, 66)) (some 68) ([18]) (some (18, word846_0_371, 846, 67))

def word846_0_654 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_652 word846_0_653

def word846_0_655 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_654 word846_0_5

def word846_0_656 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 78, Flapjack.WordLangExpHOL.const 0#64]))

def word846_0_657 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_655 word846_0_656

def word846_0_658 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 78, Flapjack.WordLangExpHOL.const 8#64]))

def word846_0_659 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_657 word846_0_658

def word846_0_660 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 78, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def word846_0_661 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_659 word846_0_660

def word846_0_662 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 78, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def word846_0_663 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_661 word846_0_662

def word846_0_664 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 78, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def word846_0_665 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_663 word846_0_664

def word846_0_666 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 28)

def word846_0_667 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_665 word846_0_666

def word846_0_668 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 78, Flapjack.WordLangExpHOL.const 48#64]))

def word846_0_669 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_667 word846_0_668

def word846_0_670 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 66)

def word846_0_671 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_669 word846_0_670

def word846_0_672 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_0_1, 846, 68)) (some 330) ([56, 36, 76, 12, 50, 32, 70, 22]) (some (56, word846_0_378, 846, 69))

def word846_0_673 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_671 word846_0_672

def word846_0_674 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_673 word846_0_5

def word846_0_675 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 46)

def word846_0_676 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_674 word846_0_675

def word846_0_677 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.var 38)

def word846_0_678 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_676 word846_0_677

def word846_0_679 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 20#64)

def word846_0_680 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_678 word846_0_679

def word846_0_681 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_680 word846_0_139

def word846_0_682 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 18)

def word846_0_683 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_681 word846_0_682

def word846_0_684 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_683 word846_0_679

def word846_0_685 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_684 word846_0_679

def word846_0_686 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_685 word846_0_679

def word846_0_687 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_686 word846_0_679

def word846_0_688 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 36

def word846_0_689 : WordLangProgHOL (BitVec 64) :=
.call (some (([56]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_0_1, 846, 70)) (some 316) ([36, 76, 12, 50, 32]) (some (36, word846_0_688, 846, 71))

def word846_0_690 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_687 word846_0_689

def word846_0_691 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_690 word846_0_5

def word846_0_692 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 44 (Flapjack.WordRegImm.reg 28) word846_0_622 word846_0_691

def word846_0_693 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_597 word846_0_692

def word846_0_694 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_693 word846_0_5

def word846_0_695 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 78 (Flapjack.WordRegImm.reg 6) word846_0_694 word846_0_551

def word846_0_696 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_591 word846_0_695

def word846_0_697 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_696 word846_0_5

def word846_0_698 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 1#64])

def word846_0_699 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_697 word846_0_698

def word846_0_700 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 38)

def word846_0_701 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_699 word846_0_700

def word846_0_702 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_701 word846_0_337

def word846_0_703 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_405 word846_0_5

def word846_0_704 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_703 word846_0_45

def word846_0_705 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_704 word846_0_343

def word846_0_706 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 20 (Flapjack.WordRegImm.reg 58) word846_0_702 word846_0_705

def word846_0_707 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_581 word846_0_706

def word846_0_708 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_707 word846_0_5

def word846_0_709 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln) word846_0_708 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln)
  PUnit.unit Flapjack.Spt.ln)

def word846_0_710 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_578 word846_0_709

def word846_0_711 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_710 word846_0_5

def word846_0_712 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 46)

def word846_0_713 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_711 word846_0_712

def word846_0_714 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 2)

def word846_0_715 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_713 word846_0_714

def word846_0_716 : WordLangProgHOL (BitVec 64) :=
.call (some (([68]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word846_0_1, 846, 72)) (some 327) ([20, 58]) (some (20, word846_0_39, 846, 73))

def word846_0_717 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_715 word846_0_716

def word846_0_718 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_717 word846_0_5

def word846_0_719 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_718 word846_0_565

def word846_0_720 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [68]

def word846_0_721 : WordLangProgHOL (BitVec 64) :=
.seq word846_0_719 word846_0_720

def pass846_0 : WordLangProgHOL (BitVec 64) :=
word846_0_721
theorem pass846_0_eq : WordSimp.compileExp (source846.2.2) = pass846_0 := by
  kernel_rfl
#print axioms pass846_0_eq
end InitECandidate.Proofs.WordStages
