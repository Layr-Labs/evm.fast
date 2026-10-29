import InitECandidate.Proofs.WordStages.Source386
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody402_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody402_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def sourceBody402_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 136#64]))

def sourceBody402_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody402_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody402_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody402_0, 402, 2)) (some 79) ([16, 6, 14]) (some (16, sourceBody402_4, 402, 3))

def sourceBody402_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody402_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody402_5 sourceBody402_6

def sourceBody402_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody402_7 sourceBody402_0

def sourceBody402_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody402_3 sourceBody402_8

def sourceBody402_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody402_2 sourceBody402_9

def sourceBody402_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody402_1 sourceBody402_10

def sourceBody402_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def sourceBody402_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody402_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody402_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody402_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 14) sourceBody402_14 sourceBody402_15

def sourceBody402_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody402_16 sourceBody402_6

def sourceBody402_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody402_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody402_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [16, 6]

def sourceBody402_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody402_20 sourceBody402_0

def sourceBody402_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody402_15 sourceBody402_21

def sourceBody402_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody402_19 sourceBody402_22

def sourceBody402_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody402_23 sourceBody402_0

def sourceBody402_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody402_24 sourceBody402_6

def sourceBody402_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody402_25 sourceBody402_0

def sourceBody402_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody402_18 sourceBody402_26

def sourceBody402_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody402_17 sourceBody402_27

def sourceBody402_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody402_13 sourceBody402_28

def sourceBody402_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody402_12 sourceBody402_29

def sourceBody402_31 : WordLangProgHOL (BitVec 64) :=
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
              Flapjack.WordLangExpHOL.const 168#64]),
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody402_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 2)

def sourceBody402_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody402_34 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 6, 14]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody402_0, 402, 4)) (some 294) ([10, 18]) (some (10, sourceBody402_33, 402, 5))

def sourceBody402_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody402_34 sourceBody402_6

def sourceBody402_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody402_35 sourceBody402_0

def sourceBody402_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody402_32 sourceBody402_36

def sourceBody402_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody402_31 sourceBody402_37

def sourceBody402_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 16)

def sourceBody402_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody402_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody402_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody402_43 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 18 (Flapjack.WordRegImm.reg 4) sourceBody402_41 sourceBody402_42

def sourceBody402_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody402_43 sourceBody402_6

def sourceBody402_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 18)

def sourceBody402_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody402_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 10)

def sourceBody402_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody402_47 sourceBody402_0

def sourceBody402_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody402_48 sourceBody402_0

def sourceBody402_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody402_46 sourceBody402_49

def sourceBody402_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody402_0 sourceBody402_50

def sourceBody402_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 7#64)

def sourceBody402_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody402_52 sourceBody402_33

def sourceBody402_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody402_51 sourceBody402_53

def sourceBody402_55 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody402_54 sourceBody402_0

def sourceBody402_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody402_55 sourceBody402_6

def sourceBody402_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody402_56 sourceBody402_0

def sourceBody402_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody402_45 sourceBody402_57

def sourceBody402_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody402_44 sourceBody402_58

def sourceBody402_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody402_40 sourceBody402_59

def sourceBody402_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody402_39 sourceBody402_60

def sourceBody402_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 14)

def sourceBody402_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10, 18]

def sourceBody402_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody402_63 sourceBody402_0

def sourceBody402_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody402_62 sourceBody402_64

def sourceBody402_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody402_18 sourceBody402_65

def sourceBody402_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody402_61 sourceBody402_66

def sourceBody402_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody402_38 sourceBody402_67

def sourceBody402_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody402_0 sourceBody402_68

def sourceBody402_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody402_0 sourceBody402_69

def sourceBody402_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody402_0 sourceBody402_70

def sourceBody402_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody402_0 sourceBody402_71

def sourceBody402_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody402_0 sourceBody402_72

def sourceBody402_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody402_0 sourceBody402_73

def sourceBody402_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody402_30 sourceBody402_74

def sourceBody402_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody402_11 sourceBody402_75

def sourceBody402_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody402_0 sourceBody402_76

def sourceBody402_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody402_0 sourceBody402_77

def source402 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (402, 2, sourceBody402_78)
end InitECandidate.Proofs.WordStages
