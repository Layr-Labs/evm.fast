import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody573_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody573_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody573_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody573_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody573_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody573_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody573_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody573_4 optimizedBody573_5

def optimizedBody573_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody573_3, 573, 2)) (some 470) ([2]) (some (2, optimizedBody573_6, 573, 3))

def optimizedBody573_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody573_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44)]

def optimizedBody573_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody573_9, 573, 4)) (some 572) ([]) (some (2, optimizedBody573_6, 573, 5))

def optimizedBody573_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody573_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody573_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 56#64))

def optimizedBody573_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 64#64))

def optimizedBody573_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 72#64))

def optimizedBody573_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody573_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody573_3, 573, 6)) (some 476) ([2, 4, 6, 8]) (some (2, optimizedBody573_6, 573, 7))

def optimizedBody573_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody573_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody573_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody573_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody573_20 optimizedBody573_5

def optimizedBody573_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody573_19, 573, 8)) (some 490) ([2]) (some (2, optimizedBody573_21, 573, 9))

def optimizedBody573_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody573_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody573_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody573_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody573_24 optimizedBody573_25

def optimizedBody573_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody573_23 optimizedBody573_26

def optimizedBody573_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody573_8 optimizedBody573_27

def optimizedBody573_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody573_22 optimizedBody573_28

def optimizedBody573_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody573_4 optimizedBody573_29

def optimizedBody573_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody573_18 optimizedBody573_30

def optimizedBody573_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody573_8 optimizedBody573_31

def optimizedBody573_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody573_17 optimizedBody573_32

def optimizedBody573_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody573_16 optimizedBody573_33

def optimizedBody573_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody573_15 optimizedBody573_34

def optimizedBody573_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody573_11 optimizedBody573_35

def optimizedBody573_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody573_14 optimizedBody573_36

def optimizedBody573_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody573_11 optimizedBody573_37

def optimizedBody573_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody573_13 optimizedBody573_38

def optimizedBody573_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody573_11 optimizedBody573_39

def optimizedBody573_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody573_12 optimizedBody573_40

def optimizedBody573_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody573_11 optimizedBody573_41

def optimizedBody573_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody573_8 optimizedBody573_42

def optimizedBody573_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody573_10 optimizedBody573_43

def optimizedBody573_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody573_3 optimizedBody573_44

def optimizedBody573_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody573_8 optimizedBody573_45

def optimizedBody573_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody573_7 optimizedBody573_46

def optimizedBody573_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody573_2 optimizedBody573_47

def optimizedBody573_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody573_1 optimizedBody573_48

def optimizedBody573_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody573_0 optimizedBody573_49

def optimized573 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(573, 1, optimizedBody573_50)
end InitECandidate.Proofs.StackAnalysis
