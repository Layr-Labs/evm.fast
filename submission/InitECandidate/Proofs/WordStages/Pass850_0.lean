import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Source850
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def word850_0_0 : WordLangProgHOL (BitVec 64) :=
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

def word850_0_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def word850_0_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 62

def word850_0_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), word850_0_1, 850, 2)) (some 199) ([62]) (some (62, word850_0_2, 850, 3))

def word850_0_4 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_0 word850_0_3

def word850_0_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def word850_0_6 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_4 word850_0_5

def word850_0_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 20#64)

def word850_0_8 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_6 word850_0_7

def word850_0_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 64#64)

def word850_0_10 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_8 word850_0_9

def word850_0_11 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_9 word850_0_7

def word850_0_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def word850_0_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([62]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word850_0_1, 850, 4)) (some 182) ([14, 52]) (some (14, word850_0_12, 850, 5))

def word850_0_14 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_11 word850_0_13

def word850_0_15 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_10 word850_0_14

def word850_0_16 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_15 word850_0_5

def word850_0_17 : WordLangProgHOL (BitVec 64) :=
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

def word850_0_18 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_16 word850_0_17

def word850_0_19 : WordLangProgHOL (BitVec 64) :=
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

def word850_0_20 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_18 word850_0_19

def word850_0_21 : WordLangProgHOL (BitVec 64) :=
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

def word850_0_22 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_20 word850_0_21

def word850_0_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 24#64]))

def word850_0_24 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_22 word850_0_23

def word850_0_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def word850_0_26 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_24 word850_0_25

def word850_0_27 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_26 word850_0_5

def word850_0_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 8)

def word850_0_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 72)

def word850_0_30 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_28 word850_0_29

def word850_0_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 1#64)

def word850_0_32 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_31 word850_0_5

def word850_0_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def word850_0_34 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_32 word850_0_33

def word850_0_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 14)

def word850_0_36 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_34 word850_0_35

def word850_0_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 8)

def word850_0_38 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_36 word850_0_37

def word850_0_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def word850_0_40 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word850_0_1, 850, 6)) (some 197) ([20, 58]) (some (20, word850_0_39, 850, 7))

def word850_0_41 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_38 word850_0_40

def word850_0_42 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_41 word850_0_5

def word850_0_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 46)

def word850_0_44 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_42 word850_0_43

def word850_0_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 0#64)

def word850_0_46 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_44 word850_0_45

def word850_0_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 1#64)

def word850_0_48 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_47 word850_0_5

def word850_0_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.const 1#64)

def word850_0_50 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_48 word850_0_49

def word850_0_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 30)

def word850_0_52 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_50 word850_0_51

def word850_0_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 68)

def word850_0_54 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_52 word850_0_53

def word850_0_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 24)

def word850_0_56 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_54 word850_0_55

def word850_0_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 20)

def word850_0_58 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_56 word850_0_57

def word850_0_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 78

def word850_0_60 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word850_0_1, 850, 8)) (some 187) ([78, 6]) (some (78, word850_0_59, 850, 9))

def word850_0_61 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_58 word850_0_60

def word850_0_62 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_61 word850_0_5

def word850_0_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 38)

def word850_0_64 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_62 word850_0_63

def word850_0_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 0#64)

def word850_0_66 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_64 word850_0_65

def word850_0_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def word850_0_68 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_67 word850_0_5

def word850_0_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def word850_0_70 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_68 word850_0_69

def word850_0_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 24)

def word850_0_72 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_70 word850_0_71

def word850_0_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 20)

def word850_0_74 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_72 word850_0_73

def word850_0_75 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_74 word850_0_69

def word850_0_76 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_75 word850_0_69

def word850_0_77 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_76 word850_0_69

def word850_0_78 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_77 word850_0_69

def word850_0_79 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_78 word850_0_69

def word850_0_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def word850_0_81 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word850_0_1, 850, 10)) (some 192) ([6, 44, 28]) (some (6, word850_0_80, 850, 11))

def word850_0_82 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_79 word850_0_81

def word850_0_83 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_82 word850_0_5

def word850_0_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def word850_0_85 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_84 word850_0_5

def word850_0_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def word850_0_87 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_85 word850_0_86

def word850_0_88 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 44) word850_0_83 word850_0_87

def word850_0_89 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_66 word850_0_88

def word850_0_90 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_89 word850_0_5

def word850_0_91 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_90 word850_0_57

def word850_0_92 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word850_0_1, 850, 12)) (some 399) ([6]) (some (6, word850_0_80, 850, 13))

def word850_0_93 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_91 word850_0_92

def word850_0_94 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_93 word850_0_5

def word850_0_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 34)

def word850_0_96 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_94 word850_0_95

def word850_0_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 78)

def word850_0_98 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_96 word850_0_97

def word850_0_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.const 1#64)

def word850_0_100 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_98 word850_0_99

def word850_0_101 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_100 word850_0_99

def word850_0_102 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_101 word850_0_99

def word850_0_103 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_102 word850_0_99

def word850_0_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 44

def word850_0_105 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word850_0_1, 850, 14)) (some 309) ([44, 28, 66]) (some (44, word850_0_104, 850, 15))

def word850_0_106 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_103 word850_0_105

def word850_0_107 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_106 word850_0_5

def word850_0_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 96#64)

def word850_0_109 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_107 word850_0_108

def word850_0_110 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_109 word850_0_108

def word850_0_111 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_110 word850_0_108

def word850_0_112 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_111 word850_0_108

def word850_0_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def word850_0_114 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word850_0_1, 850, 16)) (some 68) ([28]) (some (28, word850_0_113, 850, 17))

def word850_0_115 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_112 word850_0_114

def word850_0_116 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_115 word850_0_5

def word850_0_117 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_116 word850_0_86

def word850_0_118 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_117 word850_0_5

def word850_0_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 28)

def word850_0_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 2#64)

def word850_0_121 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_119 word850_0_120

def word850_0_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def word850_0_123 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_122 word850_0_5

def word850_0_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 1#64)

def word850_0_125 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_123 word850_0_124

def word850_0_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.const 0#64)

def word850_0_127 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_125 word850_0_126

def word850_0_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 58, Flapjack.WordLangExpHOL.const 24#64]))

def word850_0_129 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_127 word850_0_128

def word850_0_130 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_129 word850_0_5

def word850_0_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 66)

def word850_0_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.var 18)

def word850_0_133 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_131 word850_0_132

def word850_0_134 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_124 word850_0_5

def word850_0_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def word850_0_136 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_134 word850_0_135

def word850_0_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 58)

def word850_0_138 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_136 word850_0_137

def word850_0_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 66)

def word850_0_140 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_138 word850_0_139

def word850_0_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def word850_0_142 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word850_0_1, 850, 18)) (some 197) ([12, 50]) (some (12, word850_0_141, 850, 19))

def word850_0_143 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_140 word850_0_142

def word850_0_144 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_143 word850_0_5

def word850_0_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 56)

def word850_0_146 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_144 word850_0_145

def word850_0_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 0#64)

def word850_0_148 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_146 word850_0_147

def word850_0_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 1#64)

def word850_0_150 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_149 word850_0_5

def word850_0_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 1#64)

def word850_0_152 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_150 word850_0_151

def word850_0_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 76))

def word850_0_154 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_152 word850_0_153

def word850_0_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 76, Flapjack.WordLangExpHOL.const 8#64]))

def word850_0_156 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_154 word850_0_155

def word850_0_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 76, Flapjack.WordLangExpHOL.const 16#64]))

def word850_0_158 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_156 word850_0_157

def word850_0_159 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 76, Flapjack.WordLangExpHOL.const 24#64]))

def word850_0_160 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_158 word850_0_159

def word850_0_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 60 (Flapjack.WordLangExpHOL.var 12)

def word850_0_162 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_160 word850_0_161

def word850_0_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 50)

def word850_0_164 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_162 word850_0_163

def word850_0_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.var 32)

def word850_0_166 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_164 word850_0_165

def word850_0_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 70)

def word850_0_168 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_166 word850_0_167

def word850_0_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 60

def word850_0_170 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word850_0_1, 850, 20)) (some 102) ([60, 40, 80, 4]) (some (60, word850_0_169, 850, 21))

def word850_0_171 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_168 word850_0_170

def word850_0_172 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_171 word850_0_5

def word850_0_173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 28)

def word850_0_174 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_172 word850_0_173

def word850_0_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.const 0#64)

def word850_0_176 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_174 word850_0_175

def word850_0_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 1#64)

def word850_0_178 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_177 word850_0_5

def word850_0_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 0#64)

def word850_0_180 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_178 word850_0_179

def word850_0_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def word850_0_182 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_180 word850_0_181

def word850_0_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 1#64)

def word850_0_184 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_182 word850_0_183

def word850_0_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 0#64)

def word850_0_186 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_185 word850_0_5

def word850_0_187 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_186 word850_0_179

def word850_0_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def word850_0_189 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_187 word850_0_188

def word850_0_190 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_189 word850_0_179

def word850_0_191 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 40 (Flapjack.WordRegImm.reg 80) word850_0_184 word850_0_190

def word850_0_192 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_176 word850_0_191

def word850_0_193 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_192 word850_0_5

def word850_0_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 22)

def word850_0_195 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_193 word850_0_194

def word850_0_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.const 0#64)

def word850_0_197 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_195 word850_0_196

def word850_0_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def word850_0_199 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_198 word850_0_5

def word850_0_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.const 0#64)

def word850_0_201 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_199 word850_0_200

def word850_0_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def word850_0_203 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_201 word850_0_202

def word850_0_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.const 1#64)

def word850_0_205 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_203 word850_0_204

def word850_0_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def word850_0_207 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_206 word850_0_5

def word850_0_208 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_207 word850_0_200

def word850_0_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def word850_0_210 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_208 word850_0_209

def word850_0_211 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_210 word850_0_200

def word850_0_212 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 16 (Flapjack.WordRegImm.reg 54) word850_0_205 word850_0_211

def word850_0_213 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_197 word850_0_212

def word850_0_214 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_213 word850_0_5

def word850_0_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 42, Flapjack.WordLangExpHOL.var 74])

def word850_0_216 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_214 word850_0_215

def word850_0_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 12)

def word850_0_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.var 50)

def word850_0_219 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_217 word850_0_218

def word850_0_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 32)

def word850_0_221 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_219 word850_0_220

def word850_0_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 70)

def word850_0_223 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_221 word850_0_222

def word850_0_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 44, Flapjack.WordLangExpHOL.const 8#64])

def word850_0_225 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_223 word850_0_224

def word850_0_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def word850_0_227 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word850_0_1, 850, 22)) (some 148) ([40, 80, 4, 42, 26]) (some (40, word850_0_226, 850, 23))

def word850_0_228 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_225 word850_0_227

def word850_0_229 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_228 word850_0_5

def word850_0_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 44, Flapjack.WordLangExpHOL.const 8#64, Flapjack.WordLangExpHOL.const 32#64])

def word850_0_231 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_229 word850_0_230

def word850_0_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 44, Flapjack.WordLangExpHOL.const 8#64])

def word850_0_233 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_231 word850_0_232

def word850_0_234 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 60)

def word850_0_235 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_233 word850_0_234

def word850_0_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 80

def word850_0_237 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word850_0_1, 850, 24)) (some 176) ([80, 4, 42]) (some (80, word850_0_236, 850, 25))

def word850_0_238 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_235 word850_0_237

def word850_0_239 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_238 word850_0_5

def word850_0_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 40#64)

def word850_0_241 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_239 word850_0_240

def word850_0_242 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_241 word850_0_240

def word850_0_243 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_242 word850_0_240

def word850_0_244 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_243 word850_0_240

def word850_0_245 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_244 word850_0_240

def word850_0_246 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_245 word850_0_240

def word850_0_247 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_246 word850_0_240

def word850_0_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def word850_0_249 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word850_0_1, 850, 26)) (some 68) ([4]) (some (4, word850_0_248, 850, 27))

def word850_0_250 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_247 word850_0_249

def word850_0_251 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_250 word850_0_5

def word850_0_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 80)

def word850_0_253 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_251 word850_0_252

def word850_0_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 44, Flapjack.WordLangExpHOL.const 40#64])

def word850_0_255 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_253 word850_0_254

def word850_0_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 40)

def word850_0_257 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_255 word850_0_256

def word850_0_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 42

def word850_0_259 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word850_0_1, 850, 28)) (some 77) ([42, 26, 64]) (some (42, word850_0_258, 850, 29))

def word850_0_260 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_257 word850_0_259

def word850_0_261 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_260 word850_0_5

def word850_0_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 6)

def word850_0_263 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_261 word850_0_262

def word850_0_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 36)

def word850_0_265 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_263 word850_0_264

def word850_0_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.const 32#64)

def word850_0_267 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_265 word850_0_266

def word850_0_268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 80)

def word850_0_269 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_267 word850_0_268

def word850_0_270 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 40)

def word850_0_271 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_269 word850_0_270

def word850_0_272 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_271 word850_0_266

def word850_0_273 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_272 word850_0_266

def word850_0_274 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_273 word850_0_266

def word850_0_275 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_274 word850_0_266

def word850_0_276 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_275 word850_0_266

def word850_0_277 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_276 word850_0_266

def word850_0_278 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word850_0_1, 850, 30)) (some 320) ([42, 26, 64, 16, 54]) (some (42, word850_0_258, 850, 31))

def word850_0_279 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_277 word850_0_278

def word850_0_280 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_279 word850_0_5

def word850_0_281 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 48 (Flapjack.WordRegImm.imm 0#64) word850_0_280 word850_0_1

def word850_0_282 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_216 word850_0_281

def word850_0_283 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_282 word850_0_5

def word850_0_284 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_283 word850_0_173

def word850_0_285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.const 1#64)

def word850_0_286 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_284 word850_0_285

def word850_0_287 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_286 word850_0_191

def word850_0_288 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_287 word850_0_5

def word850_0_289 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_288 word850_0_194

def word850_0_290 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_289 word850_0_196

def word850_0_291 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.reg 54) word850_0_205 word850_0_211

def word850_0_292 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_290 word850_0_291

def word850_0_293 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_292 word850_0_5

def word850_0_294 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_293 word850_0_215

def word850_0_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 6)

def word850_0_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.var 36)

def word850_0_297 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_295 word850_0_296

def word850_0_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 32#64)

def word850_0_299 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_297 word850_0_298

def word850_0_300 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_299 word850_0_179

def word850_0_301 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_300 word850_0_188

def word850_0_302 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_301 word850_0_188

def word850_0_303 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_302 word850_0_179

def word850_0_304 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_303 word850_0_298

def word850_0_305 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_304 word850_0_188

def word850_0_306 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_305 word850_0_179

def word850_0_307 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_306 word850_0_298

def word850_0_308 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_307 word850_0_188

def word850_0_309 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_308 word850_0_179

def word850_0_310 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_309 word850_0_298

def word850_0_311 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_310 word850_0_188

def word850_0_312 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_311 word850_0_179

def word850_0_313 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_312 word850_0_298

def word850_0_314 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_313 word850_0_188

def word850_0_315 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_314 word850_0_179

def word850_0_316 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_315 word850_0_298

def word850_0_317 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_316 word850_0_188

def word850_0_318 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_317 word850_0_179

def word850_0_319 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_318 word850_0_298

def word850_0_320 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word850_0_1, 850, 32)) (some 320) ([40, 80, 4, 42, 26]) (some (40, word850_0_226, 850, 33))

def word850_0_321 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_319 word850_0_320

def word850_0_322 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_321 word850_0_5

def word850_0_323 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 48 (Flapjack.WordRegImm.imm 0#64) word850_0_322 word850_0_1

def word850_0_324 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_294 word850_0_323

def word850_0_325 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_324 word850_0_5

def word850_0_326 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 0#64)

def word850_0_327 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_326 word850_0_5

def word850_0_328 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.const 0#64)

def word850_0_329 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_327 word850_0_328

def word850_0_330 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 50 (Flapjack.WordRegImm.reg 32) word850_0_325 word850_0_329

def word850_0_331 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_148 word850_0_330

def word850_0_332 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_331 word850_0_5

def word850_0_333 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 66, Flapjack.WordLangExpHOL.const 1#64])

def word850_0_334 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_332 word850_0_333

def word850_0_335 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 12)

def word850_0_336 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_334 word850_0_335

def word850_0_337 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def word850_0_338 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_336 word850_0_337

def word850_0_339 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 0#64)

def word850_0_340 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_339 word850_0_5

def word850_0_341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def word850_0_342 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_340 word850_0_341

def word850_0_343 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def word850_0_344 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_342 word850_0_343

def word850_0_345 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 36 (Flapjack.WordRegImm.reg 76) word850_0_338 word850_0_344

def word850_0_346 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_133 word850_0_345

def word850_0_347 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_346 word850_0_5

def word850_0_348 : WordLangProgHOL (BitVec 64) :=
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
  PUnit.unit Flapjack.Spt.ln) word850_0_347 (Flapjack.Spt.bs
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

def word850_0_349 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_130 word850_0_348

def word850_0_350 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_349 word850_0_5

def word850_0_351 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 1#64])

def word850_0_352 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_350 word850_0_351

def word850_0_353 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 56)

def word850_0_354 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_352 word850_0_353

def word850_0_355 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_354 word850_0_337

def word850_0_356 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def word850_0_357 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_356 word850_0_5

def word850_0_358 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_357 word850_0_339

def word850_0_359 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_358 word850_0_343

def word850_0_360 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 18 (Flapjack.WordRegImm.reg 56) word850_0_355 word850_0_359

def word850_0_361 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_121 word850_0_360

def word850_0_362 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_361 word850_0_5

def word850_0_363 : WordLangProgHOL (BitVec 64) :=
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
  PUnit.unit Flapjack.Spt.ln) word850_0_362 (Flapjack.Spt.bs
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

def word850_0_364 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_118 word850_0_363

def word850_0_365 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_364 word850_0_5

def word850_0_366 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 32#64)

def word850_0_367 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_365 word850_0_366

def word850_0_368 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_367 word850_0_366

def word850_0_369 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_368 word850_0_366

def word850_0_370 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_369 word850_0_366

def word850_0_371 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def word850_0_372 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word850_0_1, 850, 34)) (some 68) ([18]) (some (18, word850_0_371, 850, 35))

def word850_0_373 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_370 word850_0_372

def word850_0_374 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_373 word850_0_5

def word850_0_375 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 6)

def word850_0_376 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_374 word850_0_375

def word850_0_377 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_376 word850_0_131

def word850_0_378 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 56

def word850_0_379 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word850_0_1, 850, 36)) (some 331) ([56, 36]) (some (56, word850_0_378, 850, 37))

def word850_0_380 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_377 word850_0_379

def word850_0_381 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_380 word850_0_5

def word850_0_382 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 62)

def word850_0_383 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_381 word850_0_382

def word850_0_384 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 20)

def word850_0_385 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_383 word850_0_384

def word850_0_386 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.var 66)

def word850_0_387 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_385 word850_0_386

def word850_0_388 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word850_0_1, 850, 38)) (some 192) ([56, 36, 76]) (some (56, word850_0_378, 850, 39))

def word850_0_389 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_387 word850_0_388

def word850_0_390 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_389 word850_0_5

def word850_0_391 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.const 0#64)

def word850_0_392 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_391 word850_0_5

def word850_0_393 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.const 0#64)

def word850_0_394 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_392 word850_0_393

def word850_0_395 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 58 (Flapjack.WordRegImm.reg 38) word850_0_390 word850_0_394

def word850_0_396 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_46 word850_0_395

def word850_0_397 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_396 word850_0_5

def word850_0_398 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 1#64])

def word850_0_399 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_397 word850_0_398

def word850_0_400 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 20)

def word850_0_401 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_399 word850_0_400

def word850_0_402 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_401 word850_0_337

def word850_0_403 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def word850_0_404 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_403 word850_0_5

def word850_0_405 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def word850_0_406 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_404 word850_0_405

def word850_0_407 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_406 word850_0_343

def word850_0_408 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 30 (Flapjack.WordRegImm.reg 68) word850_0_402 word850_0_407

def word850_0_409 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_30 word850_0_408

def word850_0_410 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_409 word850_0_5

def word850_0_411 : WordLangProgHOL (BitVec 64) :=
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
  PUnit.unit Flapjack.Spt.ln) word850_0_410 (Flapjack.Spt.bs
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

def word850_0_412 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_27 word850_0_411

def word850_0_413 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_412 word850_0_5

def word850_0_414 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 34)

def word850_0_415 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_413 word850_0_414

def word850_0_416 : WordLangProgHOL (BitVec 64) :=
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

def word850_0_417 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_415 word850_0_416

def word850_0_418 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_417 word850_0_33

def word850_0_419 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def word850_0_420 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word850_0_1, 850, 40)) (some 309) ([30, 68, 20]) (some (30, word850_0_419, 850, 41))

def word850_0_421 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_33 word850_0_420

def word850_0_422 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_418 word850_0_421

def word850_0_423 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_422 word850_0_5

def word850_0_424 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_423 word850_0_25

def word850_0_425 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_424 word850_0_5

def word850_0_426 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 8)

def word850_0_427 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 72)

def word850_0_428 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_426 word850_0_427

def word850_0_429 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.const 1#64)

def word850_0_430 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_429 word850_0_5

def word850_0_431 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_430 word850_0_47

def word850_0_432 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 14)

def word850_0_433 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_431 word850_0_432

def word850_0_434 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 8)

def word850_0_435 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_433 word850_0_434

def word850_0_436 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 58

def word850_0_437 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word850_0_1, 850, 42)) (some 197) ([58, 38]) (some (58, word850_0_436, 850, 43))

def word850_0_438 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_435 word850_0_437

def word850_0_439 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_438 word850_0_5

def word850_0_440 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 30)

def word850_0_441 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_439 word850_0_440

def word850_0_442 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_441 word850_0_393

def word850_0_443 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 1#64)

def word850_0_444 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_443 word850_0_5

def word850_0_445 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_444 word850_0_67

def word850_0_446 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 52)

def word850_0_447 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_445 word850_0_446

def word850_0_448 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 68)

def word850_0_449 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_447 word850_0_448

def word850_0_450 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 38

def word850_0_451 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word850_0_1, 850, 44)) (some 187) ([38, 78]) (some (38, word850_0_450, 850, 45))

def word850_0_452 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_449 word850_0_451

def word850_0_453 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_452 word850_0_5

def word850_0_454 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 58)

def word850_0_455 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_453 word850_0_454

def word850_0_456 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_455 word850_0_84

def word850_0_457 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_49 word850_0_5

def word850_0_458 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 1#64)

def word850_0_459 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_457 word850_0_458

def word850_0_460 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_459 word850_0_448

def word850_0_461 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word850_0_1, 850, 46)) (some 398) ([78]) (some (78, word850_0_59, 850, 47))

def word850_0_462 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_460 word850_0_461

def word850_0_463 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_462 word850_0_5

def word850_0_464 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_463 word850_0_71

def word850_0_465 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 68)

def word850_0_466 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_464 word850_0_465

def word850_0_467 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_466 word850_0_69

def word850_0_468 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_467 word850_0_69

def word850_0_469 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_468 word850_0_69

def word850_0_470 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_469 word850_0_69

def word850_0_471 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_470 word850_0_69

def word850_0_472 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word850_0_1, 850, 48)) (some 192) ([6, 44, 28]) (some (6, word850_0_80, 850, 49))

def word850_0_473 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_471 word850_0_472

def word850_0_474 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_473 word850_0_5

def word850_0_475 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_474 word850_0_63

def word850_0_476 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_475 word850_0_458

def word850_0_477 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 62)

def word850_0_478 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_70 word850_0_477

def word850_0_479 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 68)

def word850_0_480 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_478 word850_0_479

def word850_0_481 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word850_0_1, 850, 50)) (some 186) ([44, 28]) (some (44, word850_0_104, 850, 51))

def word850_0_482 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_480 word850_0_481

def word850_0_483 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_482 word850_0_5

def word850_0_484 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 128#64]))

def word850_0_485 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_483 word850_0_484

def word850_0_486 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 78)

def word850_0_487 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_485 word850_0_486

def word850_0_488 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_487 word850_0_356

def word850_0_489 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_99 word850_0_5

def word850_0_490 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 1#64)

def word850_0_491 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_489 word850_0_490

def word850_0_492 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 6)

def word850_0_493 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_491 word850_0_492

def word850_0_494 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_126 word850_0_5

def word850_0_495 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.const 0#64)

def word850_0_496 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_494 word850_0_495

def word850_0_497 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 66 (Flapjack.WordRegImm.reg 18) word850_0_493 word850_0_496

def word850_0_498 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_488 word850_0_497

def word850_0_499 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_498 word850_0_5

def word850_0_500 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.const 128#64)

def word850_0_501 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_499 word850_0_500

def word850_0_502 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_501 word850_0_500

def word850_0_503 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_502 word850_0_500

def word850_0_504 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_503 word850_0_500

def word850_0_505 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_504 word850_0_500

def word850_0_506 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_505 word850_0_500

def word850_0_507 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 66

def word850_0_508 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word850_0_1, 850, 52)) (some 68) ([66]) (some (66, word850_0_507, 850, 53))

def word850_0_509 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_506 word850_0_508

def word850_0_510 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_509 word850_0_5

def word850_0_511 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 0#64]))

def word850_0_512 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_510 word850_0_511

def word850_0_513 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 8#64]))

def word850_0_514 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_512 word850_0_513

def word850_0_515 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def word850_0_516 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_514 word850_0_515

def word850_0_517 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def word850_0_518 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_516 word850_0_517

def word850_0_519 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def word850_0_520 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_518 word850_0_519

def word850_0_521 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 44)

def word850_0_522 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_520 word850_0_521

def word850_0_523 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 38, Flapjack.WordLangExpHOL.const 48#64]))

def word850_0_524 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_522 word850_0_523

def word850_0_525 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70 (Flapjack.WordLangExpHOL.var 28)

def word850_0_526 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_524 word850_0_525

def word850_0_527 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word850_0_1, 850, 54)) (some 334) ([18, 56, 36, 76, 12, 50, 32, 70]) (some (18, word850_0_371, 850, 55))

def word850_0_528 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_526 word850_0_527

def word850_0_529 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_528 word850_0_5

def word850_0_530 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 46)

def word850_0_531 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_529 word850_0_530

def word850_0_532 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 68)

def word850_0_533 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_531 word850_0_532

def word850_0_534 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.const 20#64)

def word850_0_535 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_533 word850_0_534

def word850_0_536 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 28)

def word850_0_537 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_535 word850_0_536

def word850_0_538 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_537 word850_0_139

def word850_0_539 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_538 word850_0_534

def word850_0_540 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_539 word850_0_534

def word850_0_541 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_540 word850_0_534

def word850_0_542 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_541 word850_0_534

def word850_0_543 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_542 word850_0_534

def word850_0_544 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word850_0_1, 850, 56)) (some 320) ([56, 36, 76, 12, 50]) (some (56, word850_0_378, 850, 57))

def word850_0_545 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_543 word850_0_544

def word850_0_546 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_545 word850_0_5

def word850_0_547 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 44) word850_0_546 word850_0_87

def word850_0_548 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_476 word850_0_547

def word850_0_549 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_548 word850_0_5

def word850_0_550 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_393 word850_0_5

def word850_0_551 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_550 word850_0_65

def word850_0_552 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 78 (Flapjack.WordRegImm.reg 6) word850_0_549 word850_0_551

def word850_0_553 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_456 word850_0_552

def word850_0_554 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_553 word850_0_5

def word850_0_555 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_45 word850_0_5

def word850_0_556 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_555 word850_0_84

def word850_0_557 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 38 (Flapjack.WordRegImm.reg 78) word850_0_554 word850_0_556

def word850_0_558 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_442 word850_0_557

def word850_0_559 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_558 word850_0_5

def word850_0_560 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 1#64])

def word850_0_561 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_559 word850_0_560

def word850_0_562 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 58)

def word850_0_563 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_561 word850_0_562

def word850_0_564 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_563 word850_0_337

def word850_0_565 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.const 0#64)

def word850_0_566 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_565 word850_0_5

def word850_0_567 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_566 word850_0_391

def word850_0_568 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_567 word850_0_343

def word850_0_569 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 68 (Flapjack.WordRegImm.reg 20) word850_0_564 word850_0_568

def word850_0_570 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_428 word850_0_569

def word850_0_571 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_570 word850_0_5

def word850_0_572 : WordLangProgHOL (BitVec 64) :=
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
  PUnit.unit Flapjack.Spt.ln) word850_0_571 (Flapjack.Spt.bs
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

def word850_0_573 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_425 word850_0_572

def word850_0_574 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_573 word850_0_5

def word850_0_575 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 52, Flapjack.WordLangExpHOL.const 24#64]))

def word850_0_576 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_574 word850_0_575

def word850_0_577 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_576 word850_0_25

def word850_0_578 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_577 word850_0_5

def word850_0_579 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 8)

def word850_0_580 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 30)

def word850_0_581 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_579 word850_0_580

def word850_0_582 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_33 word850_0_5

def word850_0_583 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_582 word850_0_443

def word850_0_584 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_583 word850_0_446

def word850_0_585 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 8)

def word850_0_586 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_584 word850_0_585

def word850_0_587 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word850_0_1, 850, 58)) (some 197) ([38, 78]) (some (38, word850_0_450, 850, 59))

def word850_0_588 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_586 word850_0_587

def word850_0_589 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_588 word850_0_5

def word850_0_590 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_589 word850_0_448

def word850_0_591 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_590 word850_0_84

def word850_0_592 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 20)

def word850_0_593 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_459 word850_0_592

def word850_0_594 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_593 word850_0_454

def word850_0_595 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 78)

def word850_0_596 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_594 word850_0_595

def word850_0_597 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_596 word850_0_69

def word850_0_598 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_458 word850_0_5

def word850_0_599 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_598 word850_0_99

def word850_0_600 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 46)

def word850_0_601 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_599 word850_0_600

def word850_0_602 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 38)

def word850_0_603 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_601 word850_0_602

def word850_0_604 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.const 20#64)

def word850_0_605 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_603 word850_0_604

def word850_0_606 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_605 word850_0_356

def word850_0_607 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_606 word850_0_495

def word850_0_608 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_607 word850_0_495

def word850_0_609 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_608 word850_0_356

def word850_0_610 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_609 word850_0_604

def word850_0_611 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_610 word850_0_495

def word850_0_612 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_611 word850_0_356

def word850_0_613 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_612 word850_0_604

def word850_0_614 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_613 word850_0_495

def word850_0_615 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_614 word850_0_356

def word850_0_616 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_615 word850_0_604

def word850_0_617 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_616 word850_0_495

def word850_0_618 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_617 word850_0_356

def word850_0_619 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_618 word850_0_604

def word850_0_620 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word850_0_1, 850, 60)) (some 320) ([44, 28, 66, 18, 56]) (some (44, word850_0_104, 850, 61))

def word850_0_621 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_619 word850_0_620

def word850_0_622 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_621 word850_0_5

def word850_0_623 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_65 word850_0_5

def word850_0_624 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_623 word850_0_126

def word850_0_625 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 62)

def word850_0_626 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_624 word850_0_625

def word850_0_627 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 38)

def word850_0_628 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_626 word850_0_627

def word850_0_629 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word850_0_1, 850, 62)) (some 186) ([28, 66]) (some (28, word850_0_113, 850, 63))

def word850_0_630 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_628 word850_0_629

def word850_0_631 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_630 word850_0_5

def word850_0_632 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def word850_0_633 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_631 word850_0_632

def word850_0_634 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_633 word850_0_495

def word850_0_635 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 44)

def word850_0_636 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_125 word850_0_635

def word850_0_637 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 24)

def word850_0_638 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_358 word850_0_637

def word850_0_639 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 38)

def word850_0_640 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_638 word850_0_639

def word850_0_641 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word850_0_1, 850, 64)) (some 849) ([66, 18]) (some (66, word850_0_507, 850, 65))

def word850_0_642 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_640 word850_0_641

def word850_0_643 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_642 word850_0_5

def word850_0_644 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.reg 56) word850_0_636 word850_0_643

def word850_0_645 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_634 word850_0_644

def word850_0_646 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_645 word850_0_5

def word850_0_647 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 128#64)

def word850_0_648 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_646 word850_0_647

def word850_0_649 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_648 word850_0_647

def word850_0_650 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_649 word850_0_647

def word850_0_651 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_650 word850_0_647

def word850_0_652 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_651 word850_0_647

def word850_0_653 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word850_0_1, 850, 66)) (some 68) ([18]) (some (18, word850_0_371, 850, 67))

def word850_0_654 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_652 word850_0_653

def word850_0_655 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_654 word850_0_5

def word850_0_656 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 78, Flapjack.WordLangExpHOL.const 0#64]))

def word850_0_657 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_655 word850_0_656

def word850_0_658 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 78, Flapjack.WordLangExpHOL.const 8#64]))

def word850_0_659 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_657 word850_0_658

def word850_0_660 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 78, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def word850_0_661 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_659 word850_0_660

def word850_0_662 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 78, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def word850_0_663 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_661 word850_0_662

def word850_0_664 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 78, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def word850_0_665 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_663 word850_0_664

def word850_0_666 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 28)

def word850_0_667 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_665 word850_0_666

def word850_0_668 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 70
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 78, Flapjack.WordLangExpHOL.const 48#64]))

def word850_0_669 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_667 word850_0_668

def word850_0_670 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 66)

def word850_0_671 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_669 word850_0_670

def word850_0_672 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word850_0_1, 850, 68)) (some 334) ([56, 36, 76, 12, 50, 32, 70, 22]) (some (56, word850_0_378, 850, 69))

def word850_0_673 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_671 word850_0_672

def word850_0_674 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_673 word850_0_5

def word850_0_675 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 46)

def word850_0_676 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_674 word850_0_675

def word850_0_677 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 76 (Flapjack.WordLangExpHOL.var 38)

def word850_0_678 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_676 word850_0_677

def word850_0_679 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 20#64)

def word850_0_680 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_678 word850_0_679

def word850_0_681 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_680 word850_0_139

def word850_0_682 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 18)

def word850_0_683 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_681 word850_0_682

def word850_0_684 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_683 word850_0_679

def word850_0_685 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_684 word850_0_679

def word850_0_686 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_685 word850_0_679

def word850_0_687 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_686 word850_0_679

def word850_0_688 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 36

def word850_0_689 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word850_0_1, 850, 70)) (some 320) ([36, 76, 12, 50, 32]) (some (36, word850_0_688, 850, 71))

def word850_0_690 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_687 word850_0_689

def word850_0_691 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_690 word850_0_5

def word850_0_692 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 44 (Flapjack.WordRegImm.reg 28) word850_0_622 word850_0_691

def word850_0_693 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_597 word850_0_692

def word850_0_694 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_693 word850_0_5

def word850_0_695 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 78 (Flapjack.WordRegImm.reg 6) word850_0_694 word850_0_551

def word850_0_696 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_591 word850_0_695

def word850_0_697 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_696 word850_0_5

def word850_0_698 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 1#64])

def word850_0_699 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_697 word850_0_698

def word850_0_700 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 38)

def word850_0_701 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_699 word850_0_700

def word850_0_702 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_701 word850_0_337

def word850_0_703 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_405 word850_0_5

def word850_0_704 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_703 word850_0_45

def word850_0_705 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_704 word850_0_343

def word850_0_706 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 20 (Flapjack.WordRegImm.reg 58) word850_0_702 word850_0_705

def word850_0_707 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_581 word850_0_706

def word850_0_708 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_707 word850_0_5

def word850_0_709 : WordLangProgHOL (BitVec 64) :=
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
  PUnit.unit Flapjack.Spt.ln) word850_0_708 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln)
  PUnit.unit Flapjack.Spt.ln)

def word850_0_710 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_578 word850_0_709

def word850_0_711 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_710 word850_0_5

def word850_0_712 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 46)

def word850_0_713 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_711 word850_0_712

def word850_0_714 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 2)

def word850_0_715 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_713 word850_0_714

def word850_0_716 : WordLangProgHOL (BitVec 64) :=
.call (some (([68]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word850_0_1, 850, 72)) (some 331) ([20, 58]) (some (20, word850_0_39, 850, 73))

def word850_0_717 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_715 word850_0_716

def word850_0_718 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_717 word850_0_5

def word850_0_719 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_718 word850_0_565

def word850_0_720 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [68]

def word850_0_721 : WordLangProgHOL (BitVec 64) :=
.seq word850_0_719 word850_0_720

def pass850_0 : WordLangProgHOL (BitVec 64) :=
word850_0_721
theorem pass850_0_eq : WordSimp.compileExp (source850.2.2) = pass850_0 := by
  kernel_rfl
#print axioms pass850_0_eq
end InitECandidate.Proofs.WordStages
