import InitECandidate.Proofs.WordStages.Source377
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody393_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody393_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 56#64)

def sourceBody393_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody393_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody393_0, 393, 2)) (some 68) ([14]) (some (14, sourceBody393_2, 393, 3))

def sourceBody393_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody393_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_3 sourceBody393_4

def sourceBody393_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_5 sourceBody393_0

def sourceBody393_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_1 sourceBody393_6

def sourceBody393_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.const 0#64])

def sourceBody393_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 2)

def sourceBody393_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 20)

def sourceBody393_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 14) 18

def sourceBody393_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_11 sourceBody393_0

def sourceBody393_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_10 sourceBody393_12

def sourceBody393_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_13 sourceBody393_0

def sourceBody393_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_9 sourceBody393_14

def sourceBody393_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_0 sourceBody393_15

def sourceBody393_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_8 sourceBody393_16

def sourceBody393_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_0 sourceBody393_17

def sourceBody393_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody393_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 4)

def sourceBody393_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 6)

def sourceBody393_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 8)

def sourceBody393_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 10)

def sourceBody393_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 20)

def sourceBody393_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 14) 22

def sourceBody393_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_25 sourceBody393_0

def sourceBody393_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_24 sourceBody393_26

def sourceBody393_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 18)

def sourceBody393_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 8#64])
  22

def sourceBody393_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_29 sourceBody393_0

def sourceBody393_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_28 sourceBody393_30

def sourceBody393_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 24)

def sourceBody393_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 16#64])
  22

def sourceBody393_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_33 sourceBody393_0

def sourceBody393_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_32 sourceBody393_34

def sourceBody393_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 16)

def sourceBody393_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.const 24#64])
  22

def sourceBody393_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_37 sourceBody393_0

def sourceBody393_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_36 sourceBody393_38

def sourceBody393_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_39 sourceBody393_0

def sourceBody393_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_35 sourceBody393_40

def sourceBody393_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_31 sourceBody393_41

def sourceBody393_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_27 sourceBody393_42

def sourceBody393_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_23 sourceBody393_43

def sourceBody393_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_0 sourceBody393_44

def sourceBody393_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_22 sourceBody393_45

def sourceBody393_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_0 sourceBody393_46

def sourceBody393_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_21 sourceBody393_47

def sourceBody393_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_0 sourceBody393_48

def sourceBody393_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_20 sourceBody393_49

def sourceBody393_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_0 sourceBody393_50

def sourceBody393_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_19 sourceBody393_51

def sourceBody393_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_0 sourceBody393_52

def sourceBody393_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_18 sourceBody393_53

def sourceBody393_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.const 40#64])

def sourceBody393_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 128#64]))

def sourceBody393_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_56 sourceBody393_14

def sourceBody393_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_0 sourceBody393_57

def sourceBody393_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_55 sourceBody393_58

def sourceBody393_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_0 sourceBody393_59

def sourceBody393_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_54 sourceBody393_60

def sourceBody393_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.const 48#64])

def sourceBody393_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 12)

def sourceBody393_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_63 sourceBody393_14

def sourceBody393_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_0 sourceBody393_64

def sourceBody393_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_62 sourceBody393_65

def sourceBody393_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_0 sourceBody393_66

def sourceBody393_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_61 sourceBody393_67

def sourceBody393_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 26)

def sourceBody393_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody393_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_70 sourceBody393_0

def sourceBody393_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_69 sourceBody393_71

def sourceBody393_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_68 sourceBody393_72

def sourceBody393_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_7 sourceBody393_73

def sourceBody393_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_0 sourceBody393_74

def sourceBody393_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody393_0 sourceBody393_75

def source393 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (393, 7, sourceBody393_76)
end InitECandidate.Proofs.WordStages
