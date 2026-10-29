import InitECandidate.Proofs.WordStages.Source432
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody448_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody448_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
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

def sourceBody448_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 2)

def sourceBody448_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 4)

def sourceBody448_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def sourceBody448_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([20, 8]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody448_0, 448, 2)) (some 409) ([18, 14, 24]) (some (18, sourceBody448_4, 448, 3))

def sourceBody448_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody448_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody448_5 sourceBody448_6

def sourceBody448_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody448_7 sourceBody448_0

def sourceBody448_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody448_3 sourceBody448_8

def sourceBody448_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody448_2 sourceBody448_9

def sourceBody448_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody448_1 sourceBody448_10

def sourceBody448_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 20)

def sourceBody448_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody448_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody448_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody448_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.reg 24) sourceBody448_14 sourceBody448_15

def sourceBody448_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody448_16 sourceBody448_6

def sourceBody448_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 14)

def sourceBody448_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 8))

def sourceBody448_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody448_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody448_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody448_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18, 14, 24, 6]

def sourceBody448_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody448_23 sourceBody448_0

def sourceBody448_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody448_22 sourceBody448_24

def sourceBody448_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody448_21 sourceBody448_25

def sourceBody448_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody448_20 sourceBody448_26

def sourceBody448_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody448_19 sourceBody448_27

def sourceBody448_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.imm 0#64) sourceBody448_28 sourceBody448_0

def sourceBody448_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody448_29 sourceBody448_6

def sourceBody448_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody448_30 sourceBody448_0

def sourceBody448_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody448_18 sourceBody448_31

def sourceBody448_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody448_17 sourceBody448_32

def sourceBody448_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody448_13 sourceBody448_33

def sourceBody448_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody448_12 sourceBody448_34

def sourceBody448_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody448_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody448_0, 448, 4)) (some 396) ([14]) (some (14, sourceBody448_36, 448, 5))

def sourceBody448_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody448_37 sourceBody448_6

def sourceBody448_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody448_38 sourceBody448_0

def sourceBody448_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody448_2 sourceBody448_39

def sourceBody448_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody448_0 sourceBody448_40

def sourceBody448_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody448_0 sourceBody448_41

def sourceBody448_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody448_35 sourceBody448_42

def sourceBody448_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def sourceBody448_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody448_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody448_47 : WordLangProgHOL (BitVec 64) :=
.call (some (([18, 14, 24, 6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody448_0, 448, 6)) (some 401) ([16, 12]) (some (16, sourceBody448_46, 448, 7))

def sourceBody448_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody448_47 sourceBody448_6

def sourceBody448_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody448_48 sourceBody448_0

def sourceBody448_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody448_45 sourceBody448_49

def sourceBody448_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody448_44 sourceBody448_50

def sourceBody448_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 18)

def sourceBody448_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody448_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 24)

def sourceBody448_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody448_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [16, 12, 22, 10]

def sourceBody448_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody448_56 sourceBody448_0

def sourceBody448_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody448_55 sourceBody448_57

def sourceBody448_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody448_54 sourceBody448_58

def sourceBody448_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody448_53 sourceBody448_59

def sourceBody448_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody448_52 sourceBody448_60

def sourceBody448_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody448_51 sourceBody448_61

def sourceBody448_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody448_0 sourceBody448_62

def sourceBody448_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody448_0 sourceBody448_63

def sourceBody448_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody448_0 sourceBody448_64

def sourceBody448_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody448_0 sourceBody448_65

def sourceBody448_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody448_0 sourceBody448_66

def sourceBody448_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody448_0 sourceBody448_67

def sourceBody448_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody448_0 sourceBody448_68

def sourceBody448_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody448_0 sourceBody448_69

def sourceBody448_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody448_43 sourceBody448_70

def sourceBody448_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody448_11 sourceBody448_71

def sourceBody448_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody448_0 sourceBody448_72

def sourceBody448_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody448_0 sourceBody448_73

def sourceBody448_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody448_0 sourceBody448_74

def sourceBody448_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody448_0 sourceBody448_75

def source448 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (448, 3, sourceBody448_76)
end InitECandidate.Proofs.WordStages
