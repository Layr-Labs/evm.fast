import InitECandidate.Proofs.WordStages.Source303
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody319_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody319_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody319_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody319_0, 319, 2)) (some 75) ([]) (some (14, sourceBody319_1, 319, 3))

def sourceBody319_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody319_4 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody319_2 sourceBody319_3

def sourceBody319_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody319_4 sourceBody319_0

def sourceBody319_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody319_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody319_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 6)

def sourceBody319_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 8)

def sourceBody319_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody319_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.lookup (Flapjack.WordStore.temp 0#5))

def sourceBody319_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody319_11 sourceBody319_0

def sourceBody319_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody319_12 sourceBody319_0

def sourceBody319_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 18)

def sourceBody319_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody319_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody319_0, 319, 5)) (some 76) ([16]) (some (16, sourceBody319_15, 319, 6))

def sourceBody319_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody319_16 sourceBody319_3

def sourceBody319_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody319_17 sourceBody319_0

def sourceBody319_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody319_14 sourceBody319_18

def sourceBody319_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody319_0 sourceBody319_19

def sourceBody319_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody319_0 sourceBody319_20

def sourceBody319_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 14)

def sourceBody319_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 10)

def sourceBody319_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody319_23 sourceBody319_0

def sourceBody319_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody319_24 sourceBody319_0

def sourceBody319_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody319_22 sourceBody319_25

def sourceBody319_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody319_0 sourceBody319_26

def sourceBody319_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 5#64)

def sourceBody319_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody319_28 sourceBody319_10

def sourceBody319_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody319_27 sourceBody319_29

def sourceBody319_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody319_21 sourceBody319_30

def sourceBody319_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody319_13 sourceBody319_31

def sourceBody319_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody319_3 sourceBody319_32

def sourceBody319_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 5#64) sourceBody319_10 sourceBody319_33

def sourceBody319_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody319_34 sourceBody319_3

def sourceBody319_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody319_0, 319, 4)) (some 318) ([10, 16, 12, 20]) (some (10, sourceBody319_35, 319, 7))

def sourceBody319_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody319_36 sourceBody319_3

def sourceBody319_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody319_37 sourceBody319_0

def sourceBody319_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody319_9 sourceBody319_38

def sourceBody319_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody319_8 sourceBody319_39

def sourceBody319_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody319_7 sourceBody319_40

def sourceBody319_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody319_6 sourceBody319_41

def sourceBody319_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody319_0, 319, 8)) (some 76) ([16]) (some (16, sourceBody319_15, 319, 9))

def sourceBody319_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody319_43 sourceBody319_3

def sourceBody319_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody319_44 sourceBody319_0

def sourceBody319_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody319_14 sourceBody319_45

def sourceBody319_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody319_0 sourceBody319_46

def sourceBody319_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody319_0 sourceBody319_47

def sourceBody319_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody319_42 sourceBody319_48

def sourceBody319_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 22)

def sourceBody319_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody319_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody319_51 sourceBody319_0

def sourceBody319_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody319_50 sourceBody319_52

def sourceBody319_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody319_49 sourceBody319_53

def sourceBody319_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody319_0 sourceBody319_54

def sourceBody319_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody319_0 sourceBody319_55

def sourceBody319_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody319_0 sourceBody319_56

def sourceBody319_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody319_0 sourceBody319_57

def sourceBody319_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody319_5 sourceBody319_58

def sourceBody319_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody319_0 sourceBody319_59

def sourceBody319_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody319_0 sourceBody319_60

def source319 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (319, 5, sourceBody319_61)
end InitECandidate.Proofs.WordStages
