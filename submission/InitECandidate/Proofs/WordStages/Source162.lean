import InitECandidate.Proofs.WordStages.Source146
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody162_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody162_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 2)

def sourceBody162_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 4)

def sourceBody162_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody162_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([18, 8, 16, 12]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody162_0, 162, 2)) (some 161) ([20, 6]) (some (20, sourceBody162_3, 162, 3))

def sourceBody162_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody162_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody162_4 sourceBody162_5

def sourceBody162_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody162_6 sourceBody162_0

def sourceBody162_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody162_2 sourceBody162_7

def sourceBody162_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody162_1 sourceBody162_8

def sourceBody162_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 12)

def sourceBody162_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody162_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody162_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody162_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 14) sourceBody162_12 sourceBody162_13

def sourceBody162_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody162_14 sourceBody162_5

def sourceBody162_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody162_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 6#64)

def sourceBody162_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody162_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody162_0, 162, 4)) (some 159) ([6]) (some (6, sourceBody162_18, 162, 5))

def sourceBody162_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody162_19 sourceBody162_5

def sourceBody162_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody162_20 sourceBody162_0

def sourceBody162_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody162_17 sourceBody162_21

def sourceBody162_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody162_0 sourceBody162_22

def sourceBody162_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody162_0 sourceBody162_23

def sourceBody162_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.WordRegImm.imm 0#64) sourceBody162_24 sourceBody162_0

def sourceBody162_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody162_25 sourceBody162_5

def sourceBody162_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody162_26 sourceBody162_0

def sourceBody162_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody162_16 sourceBody162_27

def sourceBody162_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody162_15 sourceBody162_28

def sourceBody162_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody162_11 sourceBody162_29

def sourceBody162_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody162_10 sourceBody162_30

def sourceBody162_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 18)

def sourceBody162_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def sourceBody162_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 16)

def sourceBody162_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 12)

def sourceBody162_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20, 6, 14, 10]

def sourceBody162_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody162_36 sourceBody162_0

def sourceBody162_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody162_35 sourceBody162_37

def sourceBody162_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody162_34 sourceBody162_38

def sourceBody162_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody162_33 sourceBody162_39

def sourceBody162_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody162_32 sourceBody162_40

def sourceBody162_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody162_31 sourceBody162_41

def sourceBody162_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody162_9 sourceBody162_42

def sourceBody162_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody162_0 sourceBody162_43

def sourceBody162_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody162_0 sourceBody162_44

def sourceBody162_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody162_0 sourceBody162_45

def sourceBody162_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody162_0 sourceBody162_46

def sourceBody162_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody162_0 sourceBody162_47

def sourceBody162_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody162_0 sourceBody162_48

def sourceBody162_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody162_0 sourceBody162_49

def sourceBody162_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody162_0 sourceBody162_50

def source162 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (162, 3, sourceBody162_51)
end InitECandidate.Proofs.WordStages
