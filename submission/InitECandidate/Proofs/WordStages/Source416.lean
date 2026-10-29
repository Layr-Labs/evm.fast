import InitECandidate.Proofs.WordStages.Source400
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody416_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody416_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody416_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody416_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody416_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.reg 4) sourceBody416_2 sourceBody416_3

def sourceBody416_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody416_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody416_4 sourceBody416_5

def sourceBody416_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody416_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody416_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody416_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody416_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody416_9 sourceBody416_10

def sourceBody416_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody416_8 sourceBody416_11

def sourceBody416_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody416_12 sourceBody416_10

def sourceBody416_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody416_13 sourceBody416_5

def sourceBody416_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody416_14 sourceBody416_10

def sourceBody416_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody416_7 sourceBody416_15

def sourceBody416_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody416_6 sourceBody416_16

def sourceBody416_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody416_1 sourceBody416_17

def sourceBody416_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody416_0 sourceBody416_18

def sourceBody416_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody416_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 136#64]))

def sourceBody416_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody416_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody416_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody416_10, 416, 2)) (some 79) ([12, 4, 10]) (some (12, sourceBody416_23, 416, 3))

def sourceBody416_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody416_24 sourceBody416_5

def sourceBody416_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody416_25 sourceBody416_10

def sourceBody416_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody416_22 sourceBody416_26

def sourceBody416_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody416_21 sourceBody416_27

def sourceBody416_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody416_20 sourceBody416_28

def sourceBody416_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 6)

def sourceBody416_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody416_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody416_33 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 10) sourceBody416_32 sourceBody416_1

def sourceBody416_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody416_33 sourceBody416_5

def sourceBody416_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 4)

def sourceBody416_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody416_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody416_36 sourceBody416_10

def sourceBody416_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody416_3 sourceBody416_37

def sourceBody416_39 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody416_38 sourceBody416_10

def sourceBody416_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody416_39 sourceBody416_5

def sourceBody416_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody416_40 sourceBody416_10

def sourceBody416_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody416_35 sourceBody416_41

def sourceBody416_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody416_34 sourceBody416_42

def sourceBody416_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody416_31 sourceBody416_43

def sourceBody416_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody416_30 sourceBody416_44

def sourceBody416_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody416_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody416_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody416_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 8#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody416_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def sourceBody416_51 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody416_10, 416, 4)) (some 102) ([4, 10, 8, 14]) (some (4, sourceBody416_50, 416, 5))

def sourceBody416_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody416_51 sourceBody416_5

def sourceBody416_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody416_52 sourceBody416_10

def sourceBody416_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody416_49 sourceBody416_53

def sourceBody416_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody416_48 sourceBody416_54

def sourceBody416_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody416_47 sourceBody416_55

def sourceBody416_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody416_46 sourceBody416_56

def sourceBody416_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 12)

def sourceBody416_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [4]

def sourceBody416_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody416_59 sourceBody416_10

def sourceBody416_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody416_58 sourceBody416_60

def sourceBody416_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody416_57 sourceBody416_61

def sourceBody416_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody416_10 sourceBody416_62

def sourceBody416_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody416_10 sourceBody416_63

def sourceBody416_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody416_45 sourceBody416_64

def sourceBody416_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody416_29 sourceBody416_65

def sourceBody416_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody416_10 sourceBody416_66

def sourceBody416_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody416_10 sourceBody416_67

def sourceBody416_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody416_19 sourceBody416_68

def source416 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (416, 2, sourceBody416_69)
end InitECandidate.Proofs.WordStages
