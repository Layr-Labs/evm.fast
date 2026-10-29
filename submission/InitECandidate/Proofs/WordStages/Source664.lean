import InitECandidate.Proofs.WordStages.Source648
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody664_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody664_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 2)

def sourceBody664_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody664_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 6)

def sourceBody664_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody664_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 4332616871279656263#64)

def sourceBody664_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 10917124144477883021#64)

def sourceBody664_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 13281191951274694749#64)

def sourceBody664_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 3486998266802970665#64)

def sourceBody664_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody664_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([24, 18, 30, 12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody664_0, 664, 2)) (some 210) ([22, 16, 28, 14, 26, 20, 32, 10]) (some (22, sourceBody664_9, 664, 3))

def sourceBody664_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody664_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody664_10 sourceBody664_11

def sourceBody664_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody664_12 sourceBody664_0

def sourceBody664_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody664_8 sourceBody664_13

def sourceBody664_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody664_7 sourceBody664_14

def sourceBody664_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody664_6 sourceBody664_15

def sourceBody664_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody664_5 sourceBody664_16

def sourceBody664_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody664_4 sourceBody664_17

def sourceBody664_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody664_3 sourceBody664_18

def sourceBody664_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody664_2 sourceBody664_19

def sourceBody664_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody664_1 sourceBody664_20

def sourceBody664_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 24)

def sourceBody664_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 18)

def sourceBody664_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 30)

def sourceBody664_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 12)

def sourceBody664_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 12812017116984455391#64)

def sourceBody664_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 7129779742913871286#64)

def sourceBody664_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.const 17257524443456604923#64)

def sourceBody664_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 2377177743836652868#64)

def sourceBody664_30 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 661) ([0, 22, 16, 28, 14, 26, 20, 32, 10]) (none)

def sourceBody664_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody664_30 sourceBody664_0

def sourceBody664_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody664_29 sourceBody664_31

def sourceBody664_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody664_28 sourceBody664_32

def sourceBody664_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody664_27 sourceBody664_33

def sourceBody664_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody664_26 sourceBody664_34

def sourceBody664_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody664_25 sourceBody664_35

def sourceBody664_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody664_24 sourceBody664_36

def sourceBody664_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody664_23 sourceBody664_37

def sourceBody664_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody664_22 sourceBody664_38

def sourceBody664_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody664_21 sourceBody664_39

def sourceBody664_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody664_0 sourceBody664_40

def sourceBody664_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody664_0 sourceBody664_41

def sourceBody664_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody664_0 sourceBody664_42

def sourceBody664_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody664_0 sourceBody664_43

def sourceBody664_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody664_0 sourceBody664_44

def sourceBody664_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody664_0 sourceBody664_45

def sourceBody664_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody664_0 sourceBody664_46

def sourceBody664_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody664_0 sourceBody664_47

def source664 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (664, 5, sourceBody664_48)
end InitECandidate.Proofs.WordStages
