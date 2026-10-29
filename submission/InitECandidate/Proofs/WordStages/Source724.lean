import InitECandidate.Proofs.WordStages.Source708
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody724_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody724_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 2)

def sourceBody724_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 4)

def sourceBody724_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 6)

def sourceBody724_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody724_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 10)

def sourceBody724_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 12)

def sourceBody724_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def sourceBody724_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([46, 16, 34, 26, 44, 22]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody724_0, 724, 2)) (some 717) ([40, 30, 50, 14, 32, 24]) (some (40, sourceBody724_7, 724, 3))

def sourceBody724_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody724_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody724_8 sourceBody724_9

def sourceBody724_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody724_10 sourceBody724_0

def sourceBody724_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody724_6 sourceBody724_11

def sourceBody724_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody724_5 sourceBody724_12

def sourceBody724_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody724_4 sourceBody724_13

def sourceBody724_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody724_3 sourceBody724_14

def sourceBody724_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody724_2 sourceBody724_15

def sourceBody724_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody724_1 sourceBody724_16

def sourceBody724_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 15924587544893707605#64)

def sourceBody724_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.const 1105070755758604287#64)

def sourceBody724_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 12941209323636816658#64)

def sourceBody724_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 12843041017062132063#64)

def sourceBody724_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 2706051889235351147#64)

def sourceBody724_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 936899308823769933#64)

def sourceBody724_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 46)

def sourceBody724_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 16)

def sourceBody724_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 34)

def sourceBody724_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 26)

def sourceBody724_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 44)

def sourceBody724_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 22)

def sourceBody724_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def sourceBody724_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody724_0, 724, 4)) (some 707) ([30, 50, 14, 32, 24, 42, 20, 38, 28, 48, 18, 36]) (some (30, sourceBody724_30, 724, 5))

def sourceBody724_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody724_31 sourceBody724_9

def sourceBody724_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody724_32 sourceBody724_0

def sourceBody724_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody724_29 sourceBody724_33

def sourceBody724_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody724_28 sourceBody724_34

def sourceBody724_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody724_27 sourceBody724_35

def sourceBody724_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody724_26 sourceBody724_36

def sourceBody724_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody724_25 sourceBody724_37

def sourceBody724_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody724_24 sourceBody724_38

def sourceBody724_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody724_23 sourceBody724_39

def sourceBody724_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody724_22 sourceBody724_40

def sourceBody724_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody724_21 sourceBody724_41

def sourceBody724_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody724_20 sourceBody724_42

def sourceBody724_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody724_19 sourceBody724_43

def sourceBody724_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody724_18 sourceBody724_44

def sourceBody724_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 40)

def sourceBody724_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [30]

def sourceBody724_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody724_47 sourceBody724_0

def sourceBody724_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody724_46 sourceBody724_48

def sourceBody724_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody724_45 sourceBody724_49

def sourceBody724_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody724_0 sourceBody724_50

def sourceBody724_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody724_0 sourceBody724_51

def sourceBody724_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody724_17 sourceBody724_52

def sourceBody724_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody724_0 sourceBody724_53

def sourceBody724_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody724_0 sourceBody724_54

def sourceBody724_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody724_0 sourceBody724_55

def sourceBody724_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody724_0 sourceBody724_56

def sourceBody724_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody724_0 sourceBody724_57

def sourceBody724_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody724_0 sourceBody724_58

def sourceBody724_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody724_0 sourceBody724_59

def sourceBody724_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody724_0 sourceBody724_60

def sourceBody724_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody724_0 sourceBody724_61

def sourceBody724_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody724_0 sourceBody724_62

def sourceBody724_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody724_0 sourceBody724_63

def sourceBody724_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody724_0 sourceBody724_64

def source724 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (724, 7, sourceBody724_65)
end InitECandidate.Proofs.WordStages
