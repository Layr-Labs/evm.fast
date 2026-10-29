import InitECandidate.Proofs.WordStages.Source617
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody633_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody633_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 368#64]),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 2)
        (Flapjack.WordLangExpHOL.const 3#64)])

def sourceBody633_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 368#64]),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 4)
        (Flapjack.WordLangExpHOL.const 3#64)])

def sourceBody633_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 368#64]),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 6)
        (Flapjack.WordLangExpHOL.const 3#64)])

def sourceBody633_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 368#64]),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 8)
        (Flapjack.WordLangExpHOL.const 3#64)])

def sourceBody633_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 32))

def sourceBody633_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 16))

def sourceBody633_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 26))

def sourceBody633_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 20))

def sourceBody633_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.var 10])

def sourceBody633_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 34)

def sourceBody633_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_10 sourceBody633_0

def sourceBody633_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_11 sourceBody633_0

def sourceBody633_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_9 sourceBody633_12

def sourceBody633_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_0 sourceBody633_13

def sourceBody633_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.ror
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.var 30])
    (Flapjack.WordLangExpHOL.const 32#64))

def sourceBody633_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 34)

def sourceBody633_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_16 sourceBody633_0

def sourceBody633_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_17 sourceBody633_0

def sourceBody633_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_15 sourceBody633_18

def sourceBody633_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_0 sourceBody633_19

def sourceBody633_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_14 sourceBody633_20

def sourceBody633_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.var 22])

def sourceBody633_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 34)

def sourceBody633_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_23 sourceBody633_0

def sourceBody633_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_24 sourceBody633_0

def sourceBody633_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_22 sourceBody633_25

def sourceBody633_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_0 sourceBody633_26

def sourceBody633_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_21 sourceBody633_27

def sourceBody633_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.ror
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.var 28])
    (Flapjack.WordLangExpHOL.const 24#64))

def sourceBody633_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 34)

def sourceBody633_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_30 sourceBody633_0

def sourceBody633_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_31 sourceBody633_0

def sourceBody633_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_29 sourceBody633_32

def sourceBody633_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_0 sourceBody633_33

def sourceBody633_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_28 sourceBody633_34

def sourceBody633_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 30, Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.var 12])

def sourceBody633_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_36 sourceBody633_12

def sourceBody633_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_0 sourceBody633_37

def sourceBody633_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_35 sourceBody633_38

def sourceBody633_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.ror
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.var 30])
    (Flapjack.WordLangExpHOL.const 16#64))

def sourceBody633_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_40 sourceBody633_18

def sourceBody633_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_0 sourceBody633_41

def sourceBody633_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_39 sourceBody633_42

def sourceBody633_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_43 sourceBody633_27

def sourceBody633_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.ror
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.xor [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.var 28])
    (Flapjack.WordLangExpHOL.const 63#64))

def sourceBody633_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_45 sourceBody633_32

def sourceBody633_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_0 sourceBody633_46

def sourceBody633_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_44 sourceBody633_47

def sourceBody633_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 32)

def sourceBody633_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 30)

def sourceBody633_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 14)

def sourceBody633_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 34) 24

def sourceBody633_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_52 sourceBody633_0

def sourceBody633_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_51 sourceBody633_53

def sourceBody633_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_54 sourceBody633_0

def sourceBody633_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_50 sourceBody633_55

def sourceBody633_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_0 sourceBody633_56

def sourceBody633_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_49 sourceBody633_57

def sourceBody633_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_0 sourceBody633_58

def sourceBody633_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_48 sourceBody633_59

def sourceBody633_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 16)

def sourceBody633_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 18)

def sourceBody633_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_62 sourceBody633_55

def sourceBody633_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_0 sourceBody633_63

def sourceBody633_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_61 sourceBody633_64

def sourceBody633_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_0 sourceBody633_65

def sourceBody633_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_60 sourceBody633_66

def sourceBody633_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 26)

def sourceBody633_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 28)

def sourceBody633_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_69 sourceBody633_55

def sourceBody633_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_0 sourceBody633_70

def sourceBody633_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_68 sourceBody633_71

def sourceBody633_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_0 sourceBody633_72

def sourceBody633_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_67 sourceBody633_73

def sourceBody633_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 20)

def sourceBody633_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 22)

def sourceBody633_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_76 sourceBody633_55

def sourceBody633_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_0 sourceBody633_77

def sourceBody633_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_75 sourceBody633_78

def sourceBody633_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_0 sourceBody633_79

def sourceBody633_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_74 sourceBody633_80

def sourceBody633_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody633_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [34]

def sourceBody633_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_83 sourceBody633_0

def sourceBody633_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_82 sourceBody633_84

def sourceBody633_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_81 sourceBody633_85

def sourceBody633_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_8 sourceBody633_86

def sourceBody633_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_0 sourceBody633_87

def sourceBody633_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_7 sourceBody633_88

def sourceBody633_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_0 sourceBody633_89

def sourceBody633_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_6 sourceBody633_90

def sourceBody633_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_0 sourceBody633_91

def sourceBody633_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_5 sourceBody633_92

def sourceBody633_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_0 sourceBody633_93

def sourceBody633_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_4 sourceBody633_94

def sourceBody633_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_0 sourceBody633_95

def sourceBody633_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_3 sourceBody633_96

def sourceBody633_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_0 sourceBody633_97

def sourceBody633_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_2 sourceBody633_98

def sourceBody633_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_0 sourceBody633_99

def sourceBody633_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_1 sourceBody633_100

def sourceBody633_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody633_0 sourceBody633_101

def source633 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (633, 7, sourceBody633_102)
end InitECandidate.Proofs.WordStages
