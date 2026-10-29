import InitECandidate.Proofs.WordStages.Source750
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody766_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody766_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 2)

def sourceBody766_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 8505329371266088957#64)

def sourceBody766_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 17002214543764226050#64)

def sourceBody766_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 6865905132761471162#64)

def sourceBody766_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 8632934651105793861#64)

def sourceBody766_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 6631298214892334189#64)

def sourceBody766_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1582556514881692819#64)

def sourceBody766_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 16)

def sourceBody766_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 8) 12

def sourceBody766_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_9 sourceBody766_0

def sourceBody766_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_8 sourceBody766_10

def sourceBody766_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody766_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 8#64]) 12

def sourceBody766_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_13 sourceBody766_0

def sourceBody766_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_12 sourceBody766_14

def sourceBody766_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody766_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 16#64])
  12

def sourceBody766_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_17 sourceBody766_0

def sourceBody766_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_16 sourceBody766_18

def sourceBody766_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 10)

def sourceBody766_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 24#64])
  12

def sourceBody766_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_21 sourceBody766_0

def sourceBody766_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_20 sourceBody766_22

def sourceBody766_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 18)

def sourceBody766_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 32#64])
  12

def sourceBody766_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_25 sourceBody766_0

def sourceBody766_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_24 sourceBody766_26

def sourceBody766_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody766_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 40#64])
  12

def sourceBody766_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_29 sourceBody766_0

def sourceBody766_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_28 sourceBody766_30

def sourceBody766_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_31 sourceBody766_0

def sourceBody766_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_27 sourceBody766_32

def sourceBody766_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_23 sourceBody766_33

def sourceBody766_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_19 sourceBody766_34

def sourceBody766_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_15 sourceBody766_35

def sourceBody766_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_11 sourceBody766_36

def sourceBody766_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_7 sourceBody766_37

def sourceBody766_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_0 sourceBody766_38

def sourceBody766_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_6 sourceBody766_39

def sourceBody766_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_0 sourceBody766_40

def sourceBody766_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_5 sourceBody766_41

def sourceBody766_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_0 sourceBody766_42

def sourceBody766_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_4 sourceBody766_43

def sourceBody766_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_0 sourceBody766_44

def sourceBody766_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_3 sourceBody766_45

def sourceBody766_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_0 sourceBody766_46

def sourceBody766_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_2 sourceBody766_47

def sourceBody766_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_0 sourceBody766_48

def sourceBody766_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_1 sourceBody766_49

def sourceBody766_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_0 sourceBody766_50

def sourceBody766_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64])

def sourceBody766_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_52 sourceBody766_49

def sourceBody766_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_0 sourceBody766_53

def sourceBody766_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_51 sourceBody766_54

def sourceBody766_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody766_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody766_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody766_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody766_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody766_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody766_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody766_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_62 sourceBody766_37

def sourceBody766_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_0 sourceBody766_63

def sourceBody766_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_61 sourceBody766_64

def sourceBody766_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_0 sourceBody766_65

def sourceBody766_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_60 sourceBody766_66

def sourceBody766_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_0 sourceBody766_67

def sourceBody766_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_59 sourceBody766_68

def sourceBody766_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_0 sourceBody766_69

def sourceBody766_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_58 sourceBody766_70

def sourceBody766_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_0 sourceBody766_71

def sourceBody766_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_57 sourceBody766_72

def sourceBody766_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_0 sourceBody766_73

def sourceBody766_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_56 sourceBody766_74

def sourceBody766_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_0 sourceBody766_75

def sourceBody766_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_55 sourceBody766_76

def sourceBody766_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody766_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody766_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_79 sourceBody766_0

def sourceBody766_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_78 sourceBody766_80

def sourceBody766_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody766_77 sourceBody766_81

def source766 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (766, 2, sourceBody766_82)
end InitECandidate.Proofs.WordStages
