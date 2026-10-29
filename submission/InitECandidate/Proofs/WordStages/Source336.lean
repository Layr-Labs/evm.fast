import InitECandidate.Proofs.WordStages.Source320
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody336_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody336_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody336_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 4)

def sourceBody336_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 6)

def sourceBody336_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody336_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([10, 16]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody336_0, 336, 2)) (some 335) ([12, 18, 8]) (some (12, sourceBody336_4, 336, 3))

def sourceBody336_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody336_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody336_5 sourceBody336_6

def sourceBody336_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody336_7 sourceBody336_0

def sourceBody336_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody336_3 sourceBody336_8

def sourceBody336_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody336_2 sourceBody336_9

def sourceBody336_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody336_1 sourceBody336_10

def sourceBody336_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody336_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 16)

def sourceBody336_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody336_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody336_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 18 (Flapjack.WordRegImm.reg 8) sourceBody336_14 sourceBody336_15

def sourceBody336_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody336_16 sourceBody336_6

def sourceBody336_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 18)

def sourceBody336_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 13#64)

def sourceBody336_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 12)

def sourceBody336_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody336_20 sourceBody336_0

def sourceBody336_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody336_21 sourceBody336_0

def sourceBody336_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody336_19 sourceBody336_22

def sourceBody336_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody336_0 sourceBody336_23

def sourceBody336_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 6#64)

def sourceBody336_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody336_25 sourceBody336_4

def sourceBody336_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody336_24 sourceBody336_26

def sourceBody336_28 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody336_27 sourceBody336_0

def sourceBody336_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody336_28 sourceBody336_6

def sourceBody336_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody336_29 sourceBody336_0

def sourceBody336_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody336_18 sourceBody336_30

def sourceBody336_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody336_17 sourceBody336_31

def sourceBody336_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody336_13 sourceBody336_32

def sourceBody336_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody336_12 sourceBody336_33

def sourceBody336_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 10)

def sourceBody336_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 16)

def sourceBody336_37 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 146) ([0, 12, 18]) (none)

def sourceBody336_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody336_37 sourceBody336_0

def sourceBody336_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody336_36 sourceBody336_38

def sourceBody336_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody336_35 sourceBody336_39

def sourceBody336_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody336_34 sourceBody336_40

def sourceBody336_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody336_11 sourceBody336_41

def sourceBody336_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody336_0 sourceBody336_42

def sourceBody336_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody336_0 sourceBody336_43

def sourceBody336_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody336_0 sourceBody336_44

def sourceBody336_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody336_0 sourceBody336_45

def source336 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (336, 4, sourceBody336_46)
end InitECandidate.Proofs.WordStages
