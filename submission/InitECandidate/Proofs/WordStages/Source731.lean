import InitECandidate.Proofs.WordStages.Source715
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody731_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody731_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 2)

def sourceBody731_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 8505329371266088957#64)

def sourceBody731_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 17002214543764226050#64)

def sourceBody731_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 6865905132761471162#64)

def sourceBody731_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 8632934651105793861#64)

def sourceBody731_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 6631298214892334189#64)

def sourceBody731_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1582556514881692819#64)

def sourceBody731_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 16)

def sourceBody731_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 8) 12

def sourceBody731_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_9 sourceBody731_0

def sourceBody731_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_8 sourceBody731_10

def sourceBody731_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody731_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 8#64]) 12

def sourceBody731_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_13 sourceBody731_0

def sourceBody731_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_12 sourceBody731_14

def sourceBody731_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody731_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 16#64])
  12

def sourceBody731_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_17 sourceBody731_0

def sourceBody731_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_16 sourceBody731_18

def sourceBody731_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 10)

def sourceBody731_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 24#64])
  12

def sourceBody731_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_21 sourceBody731_0

def sourceBody731_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_20 sourceBody731_22

def sourceBody731_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 18)

def sourceBody731_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 32#64])
  12

def sourceBody731_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_25 sourceBody731_0

def sourceBody731_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_24 sourceBody731_26

def sourceBody731_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 4)

def sourceBody731_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 40#64])
  12

def sourceBody731_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_29 sourceBody731_0

def sourceBody731_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_28 sourceBody731_30

def sourceBody731_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_31 sourceBody731_0

def sourceBody731_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_27 sourceBody731_32

def sourceBody731_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_23 sourceBody731_33

def sourceBody731_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_19 sourceBody731_34

def sourceBody731_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_15 sourceBody731_35

def sourceBody731_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_11 sourceBody731_36

def sourceBody731_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_7 sourceBody731_37

def sourceBody731_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_0 sourceBody731_38

def sourceBody731_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_6 sourceBody731_39

def sourceBody731_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_0 sourceBody731_40

def sourceBody731_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_5 sourceBody731_41

def sourceBody731_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_0 sourceBody731_42

def sourceBody731_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_4 sourceBody731_43

def sourceBody731_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_0 sourceBody731_44

def sourceBody731_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_3 sourceBody731_45

def sourceBody731_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_0 sourceBody731_46

def sourceBody731_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_2 sourceBody731_47

def sourceBody731_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_0 sourceBody731_48

def sourceBody731_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_1 sourceBody731_49

def sourceBody731_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_0 sourceBody731_50

def sourceBody731_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64])

def sourceBody731_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody731_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody731_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody731_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody731_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody731_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody731_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_58 sourceBody731_37

def sourceBody731_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_0 sourceBody731_59

def sourceBody731_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_57 sourceBody731_60

def sourceBody731_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_0 sourceBody731_61

def sourceBody731_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_56 sourceBody731_62

def sourceBody731_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_0 sourceBody731_63

def sourceBody731_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_55 sourceBody731_64

def sourceBody731_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_0 sourceBody731_65

def sourceBody731_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_54 sourceBody731_66

def sourceBody731_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_0 sourceBody731_67

def sourceBody731_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_53 sourceBody731_68

def sourceBody731_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_0 sourceBody731_69

def sourceBody731_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_52 sourceBody731_70

def sourceBody731_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_0 sourceBody731_71

def sourceBody731_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_51 sourceBody731_72

def sourceBody731_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody731_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8]

def sourceBody731_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_75 sourceBody731_0

def sourceBody731_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_74 sourceBody731_76

def sourceBody731_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody731_73 sourceBody731_77

def source731 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (731, 2, sourceBody731_78)
end InitECandidate.Proofs.WordStages
