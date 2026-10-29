import InitECandidate.Proofs.WordStages.Source633
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody649_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody649_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 2)

def sourceBody649_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 4)

def sourceBody649_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 6)

def sourceBody649_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 8)

def sourceBody649_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 10)

def sourceBody649_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 28)

def sourceBody649_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 22) 30

def sourceBody649_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody649_7 sourceBody649_0

def sourceBody649_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody649_6 sourceBody649_8

def sourceBody649_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 20)

def sourceBody649_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 8#64])
  30

def sourceBody649_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody649_11 sourceBody649_0

def sourceBody649_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody649_10 sourceBody649_12

def sourceBody649_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 26)

def sourceBody649_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 16#64])
  30

def sourceBody649_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody649_15 sourceBody649_0

def sourceBody649_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody649_14 sourceBody649_16

def sourceBody649_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 24)

def sourceBody649_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 24#64])
  30

def sourceBody649_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody649_19 sourceBody649_0

def sourceBody649_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody649_18 sourceBody649_20

def sourceBody649_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody649_21 sourceBody649_0

def sourceBody649_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody649_17 sourceBody649_22

def sourceBody649_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody649_13 sourceBody649_23

def sourceBody649_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody649_9 sourceBody649_24

def sourceBody649_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody649_5 sourceBody649_25

def sourceBody649_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody649_0 sourceBody649_26

def sourceBody649_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody649_4 sourceBody649_27

def sourceBody649_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody649_0 sourceBody649_28

def sourceBody649_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody649_3 sourceBody649_29

def sourceBody649_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody649_0 sourceBody649_30

def sourceBody649_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody649_2 sourceBody649_31

def sourceBody649_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody649_0 sourceBody649_32

def sourceBody649_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody649_1 sourceBody649_33

def sourceBody649_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody649_0 sourceBody649_34

def sourceBody649_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody649_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 12)

def sourceBody649_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 14)

def sourceBody649_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 16)

def sourceBody649_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 18)

def sourceBody649_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody649_40 sourceBody649_25

def sourceBody649_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody649_0 sourceBody649_41

def sourceBody649_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody649_39 sourceBody649_42

def sourceBody649_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody649_0 sourceBody649_43

def sourceBody649_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody649_38 sourceBody649_44

def sourceBody649_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody649_0 sourceBody649_45

def sourceBody649_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody649_37 sourceBody649_46

def sourceBody649_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody649_0 sourceBody649_47

def sourceBody649_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody649_36 sourceBody649_48

def sourceBody649_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody649_0 sourceBody649_49

def sourceBody649_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody649_35 sourceBody649_50

def sourceBody649_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 64#64])

def sourceBody649_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody649_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody649_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody649_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody649_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody649_56 sourceBody649_25

def sourceBody649_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody649_0 sourceBody649_57

def sourceBody649_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody649_55 sourceBody649_58

def sourceBody649_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody649_0 sourceBody649_59

def sourceBody649_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody649_54 sourceBody649_60

def sourceBody649_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody649_0 sourceBody649_61

def sourceBody649_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody649_53 sourceBody649_62

def sourceBody649_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody649_0 sourceBody649_63

def sourceBody649_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody649_52 sourceBody649_64

def sourceBody649_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody649_0 sourceBody649_65

def sourceBody649_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody649_51 sourceBody649_66

def sourceBody649_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody649_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [22]

def sourceBody649_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody649_69 sourceBody649_0

def sourceBody649_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody649_68 sourceBody649_70

def sourceBody649_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody649_67 sourceBody649_71

def source649 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (649, 10, sourceBody649_72)
end InitECandidate.Proofs.WordStages
