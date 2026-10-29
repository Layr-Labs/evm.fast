import InitECandidate.Proofs.WordStages.Source375
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody391_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody391_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 2)

def sourceBody391_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody391_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody391_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody391_5 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 14 (Flapjack.WordRegImm.reg 6) sourceBody391_3 sourceBody391_4

def sourceBody391_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody391_5 sourceBody391_0

def sourceBody391_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody391_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody391_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
          Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
            (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
      Flapjack.WordLangExpHOL.const 16#64])

def sourceBody391_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 16#64]),
      Flapjack.WordLangExpHOL.const 1#64])

def sourceBody391_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 14)

def sourceBody391_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 8) 6

def sourceBody391_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody391_12 sourceBody391_8

def sourceBody391_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody391_11 sourceBody391_13

def sourceBody391_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody391_14 sourceBody391_8

def sourceBody391_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody391_10 sourceBody391_15

def sourceBody391_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody391_8 sourceBody391_16

def sourceBody391_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody391_9 sourceBody391_17

def sourceBody391_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody391_8 sourceBody391_18

def sourceBody391_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 200#64]),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
        (Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 16#64]))
        (Flapjack.WordLangExpHOL.const 5#64)])

def sourceBody391_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 8))

def sourceBody391_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody391_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody391_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody391_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody391_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody391_27 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.reg 16) sourceBody391_25 sourceBody391_26

def sourceBody391_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody391_27 sourceBody391_0

def sourceBody391_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 10)

def sourceBody391_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 14)

def sourceBody391_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 6)

def sourceBody391_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody391_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody391_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody391_8, 391, 2)) (some 192) ([10, 16, 4]) (some (10, sourceBody391_33, 391, 3))

def sourceBody391_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody391_34 sourceBody391_0

def sourceBody391_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody391_35 sourceBody391_8

def sourceBody391_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody391_32 sourceBody391_36

def sourceBody391_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody391_31 sourceBody391_37

def sourceBody391_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody391_30 sourceBody391_38

def sourceBody391_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody391_8 sourceBody391_39

def sourceBody391_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody391_8 sourceBody391_40

def sourceBody391_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody391_8, 391, 4)) (some 193) ([10, 16]) (some (10, sourceBody391_33, 391, 5))

def sourceBody391_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody391_42 sourceBody391_0

def sourceBody391_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody391_43 sourceBody391_8

def sourceBody391_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody391_31 sourceBody391_44

def sourceBody391_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody391_30 sourceBody391_45

def sourceBody391_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody391_8 sourceBody391_46

def sourceBody391_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody391_8 sourceBody391_47

def sourceBody391_49 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.imm 0#64) sourceBody391_41 sourceBody391_48

def sourceBody391_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody391_49 sourceBody391_0

def sourceBody391_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody391_50 sourceBody391_8

def sourceBody391_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody391_29 sourceBody391_51

def sourceBody391_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody391_28 sourceBody391_52

def sourceBody391_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody391_24 sourceBody391_53

def sourceBody391_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody391_23 sourceBody391_54

def sourceBody391_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody391_22 sourceBody391_55

def sourceBody391_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody391_8 sourceBody391_56

def sourceBody391_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody391_21 sourceBody391_57

def sourceBody391_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody391_8 sourceBody391_58

def sourceBody391_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody391_20 sourceBody391_59

def sourceBody391_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody391_8 sourceBody391_60

def sourceBody391_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody391_19 sourceBody391_61

def sourceBody391_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody391_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody391_62 sourceBody391_63

def sourceBody391_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody391_66 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody391_64 sourceBody391_65

def sourceBody391_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody391_66 sourceBody391_0

def sourceBody391_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody391_67 sourceBody391_8

def sourceBody391_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody391_7 sourceBody391_68

def sourceBody391_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody391_6 sourceBody391_69

def sourceBody391_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody391_2 sourceBody391_70

def sourceBody391_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody391_1 sourceBody391_71

def sourceBody391_73 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) sourceBody391_72 (Flapjack.Spt.ls PUnit.unit)

def sourceBody391_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody391_73 sourceBody391_0

def sourceBody391_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody391_0 sourceBody391_74

def sourceBody391_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody391_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody391_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody391_77 sourceBody391_8

def sourceBody391_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody391_76 sourceBody391_78

def sourceBody391_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody391_75 sourceBody391_79

def source391 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (391, 2, sourceBody391_80)
end InitECandidate.Proofs.WordStages
