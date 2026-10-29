import InitECandidate.Proofs.WordStages.Source522
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody538_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody538_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.load
          (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
            [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
                [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                  Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                    (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength)
                    (Flapjack.WordLangExpHOL.const 1#64)],
              Flapjack.WordLangExpHOL.const 256#64]),
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody538_2 : WordLangProgHOL (BitVec 64) :=
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
              Flapjack.WordLangExpHOL.const 256#64]),
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody538_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 10,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
              [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 1#64],
            Flapjack.WordLangExpHOL.var 2])
        (Flapjack.WordLangExpHOL.const 5#64)])

def sourceBody538_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 10,
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
              [Flapjack.WordLangExpHOL.var 32, Flapjack.WordLangExpHOL.const 1#64],
            Flapjack.WordLangExpHOL.var 4])
        (Flapjack.WordLangExpHOL.const 5#64)])

def sourceBody538_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 28))

def sourceBody538_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody538_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody538_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody538_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 20))

def sourceBody538_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody538_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody538_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 20, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody538_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 28)

def sourceBody538_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 36)

def sourceBody538_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 14)

def sourceBody538_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 30)

def sourceBody538_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 22)

def sourceBody538_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody538_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 40) 12

def sourceBody538_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_19 sourceBody538_0

def sourceBody538_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_18 sourceBody538_20

def sourceBody538_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 24)

def sourceBody538_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 8#64])
  12

def sourceBody538_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_23 sourceBody538_0

def sourceBody538_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_22 sourceBody538_24

def sourceBody538_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 16)

def sourceBody538_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 16#64])
  12

def sourceBody538_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_27 sourceBody538_0

def sourceBody538_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_26 sourceBody538_28

def sourceBody538_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 34)

def sourceBody538_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 40, Flapjack.WordLangExpHOL.const 24#64])
  12

def sourceBody538_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_31 sourceBody538_0

def sourceBody538_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_30 sourceBody538_32

def sourceBody538_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_33 sourceBody538_0

def sourceBody538_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_29 sourceBody538_34

def sourceBody538_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_25 sourceBody538_35

def sourceBody538_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_21 sourceBody538_36

def sourceBody538_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_17 sourceBody538_37

def sourceBody538_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_0 sourceBody538_38

def sourceBody538_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_16 sourceBody538_39

def sourceBody538_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_0 sourceBody538_40

def sourceBody538_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_15 sourceBody538_41

def sourceBody538_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_0 sourceBody538_42

def sourceBody538_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_14 sourceBody538_43

def sourceBody538_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_0 sourceBody538_44

def sourceBody538_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_13 sourceBody538_45

def sourceBody538_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_0 sourceBody538_46

def sourceBody538_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 20)

def sourceBody538_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 38)

def sourceBody538_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 8)

def sourceBody538_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 26)

def sourceBody538_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 18)

def sourceBody538_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_52 sourceBody538_37

def sourceBody538_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_0 sourceBody538_53

def sourceBody538_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_51 sourceBody538_54

def sourceBody538_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_0 sourceBody538_55

def sourceBody538_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_50 sourceBody538_56

def sourceBody538_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_0 sourceBody538_57

def sourceBody538_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_49 sourceBody538_58

def sourceBody538_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_0 sourceBody538_59

def sourceBody538_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_48 sourceBody538_60

def sourceBody538_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_0 sourceBody538_61

def sourceBody538_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_47 sourceBody538_62

def sourceBody538_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody538_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [40]

def sourceBody538_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_65 sourceBody538_0

def sourceBody538_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_64 sourceBody538_66

def sourceBody538_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_63 sourceBody538_67

def sourceBody538_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_12 sourceBody538_68

def sourceBody538_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_0 sourceBody538_69

def sourceBody538_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_11 sourceBody538_70

def sourceBody538_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_0 sourceBody538_71

def sourceBody538_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_10 sourceBody538_72

def sourceBody538_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_0 sourceBody538_73

def sourceBody538_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_9 sourceBody538_74

def sourceBody538_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_0 sourceBody538_75

def sourceBody538_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_8 sourceBody538_76

def sourceBody538_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_0 sourceBody538_77

def sourceBody538_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_7 sourceBody538_78

def sourceBody538_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_0 sourceBody538_79

def sourceBody538_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_6 sourceBody538_80

def sourceBody538_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_0 sourceBody538_81

def sourceBody538_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_5 sourceBody538_82

def sourceBody538_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_0 sourceBody538_83

def sourceBody538_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_4 sourceBody538_84

def sourceBody538_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_0 sourceBody538_85

def sourceBody538_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_3 sourceBody538_86

def sourceBody538_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_0 sourceBody538_87

def sourceBody538_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_2 sourceBody538_88

def sourceBody538_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_0 sourceBody538_89

def sourceBody538_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_1 sourceBody538_90

def sourceBody538_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody538_0 sourceBody538_91

def source538 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (538, 3, sourceBody538_92)
end InitECandidate.Proofs.WordStages
