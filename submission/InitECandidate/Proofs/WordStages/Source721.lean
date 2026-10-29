import InitECandidate.Proofs.WordStages.Source705
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody721_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody721_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 2)

def sourceBody721_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 4)

def sourceBody721_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 6)

def sourceBody721_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody721_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 10)

def sourceBody721_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 12)

def sourceBody721_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 38

def sourceBody721_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([44, 16, 34, 26, 42, 22]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody721_0, 721, 2)) (some 720) ([38, 30, 48, 14, 32, 24]) (some (38, sourceBody721_7, 721, 3))

def sourceBody721_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody721_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody721_8 sourceBody721_9

def sourceBody721_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody721_10 sourceBody721_0

def sourceBody721_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody721_6 sourceBody721_11

def sourceBody721_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody721_5 sourceBody721_12

def sourceBody721_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody721_4 sourceBody721_13

def sourceBody721_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody721_3 sourceBody721_14

def sourceBody721_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody721_2 sourceBody721_15

def sourceBody721_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody721_1 sourceBody721_16

def sourceBody721_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 44)

def sourceBody721_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 16)

def sourceBody721_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 34)

def sourceBody721_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 26)

def sourceBody721_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 42)

def sourceBody721_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 22)

def sourceBody721_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 17098105564519244256#64)

def sourceBody721_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 3557706395579559416#64)

def sourceBody721_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 11120290361046346205#64)

def sourceBody721_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 3801124253586036577#64)

def sourceBody721_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 2671430854784468776#64)

def sourceBody721_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 767358375875140941#64)

def sourceBody721_30 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 714) ([0, 38, 30, 48, 14, 32, 24, 40, 20, 36, 28, 46, 18]) (none)

def sourceBody721_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody721_30 sourceBody721_0

def sourceBody721_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody721_29 sourceBody721_31

def sourceBody721_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody721_28 sourceBody721_32

def sourceBody721_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody721_27 sourceBody721_33

def sourceBody721_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody721_26 sourceBody721_34

def sourceBody721_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody721_25 sourceBody721_35

def sourceBody721_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody721_24 sourceBody721_36

def sourceBody721_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody721_23 sourceBody721_37

def sourceBody721_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody721_22 sourceBody721_38

def sourceBody721_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody721_21 sourceBody721_39

def sourceBody721_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody721_20 sourceBody721_40

def sourceBody721_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody721_19 sourceBody721_41

def sourceBody721_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody721_18 sourceBody721_42

def sourceBody721_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody721_17 sourceBody721_43

def sourceBody721_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody721_0 sourceBody721_44

def sourceBody721_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody721_0 sourceBody721_45

def sourceBody721_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody721_0 sourceBody721_46

def sourceBody721_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody721_0 sourceBody721_47

def sourceBody721_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody721_0 sourceBody721_48

def sourceBody721_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody721_0 sourceBody721_49

def sourceBody721_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody721_0 sourceBody721_50

def sourceBody721_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody721_0 sourceBody721_51

def sourceBody721_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody721_0 sourceBody721_52

def sourceBody721_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody721_0 sourceBody721_53

def sourceBody721_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody721_0 sourceBody721_54

def sourceBody721_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody721_0 sourceBody721_55

def source721 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (721, 7, sourceBody721_56)
end InitECandidate.Proofs.WordStages
