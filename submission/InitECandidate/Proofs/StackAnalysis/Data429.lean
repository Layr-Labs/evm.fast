import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody429_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 8), (48, 4), (50, 2), (52, 10), (54, 6)]

def optimizedBody429_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody429_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody429_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody429_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_2 optimizedBody429_3

def optimizedBody429_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody429_1, 429, 2)) (some 407) ([2]) (some (2, optimizedBody429_4, 429, 3))

def optimizedBody429_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody429_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 54)]

def optimizedBody429_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (6, 46), (10, 48), (12, 50), (0, 52), (8, 54)]

def optimizedBody429_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (10, 48), (12, 50), (0, 52), (8, 54)]

def optimizedBody429_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_9 optimizedBody429_3

def optimizedBody429_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody429_8, 429, 4)) (some 395) ([2]) (some (2, optimizedBody429_10, 429, 5))

def optimizedBody429_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody429_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody429_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10), (0, 0), (6, 6), (8, 8)]

def optimizedBody429_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody429_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody429_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody429_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody429_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody429_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody429_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody429_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 12), (4, 4), (44, 44)]

def optimizedBody429_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody429_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody429_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_24 optimizedBody429_3

def optimizedBody429_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody429_23, 429, 6)) (some 423) ([2, 4]) (some (2, optimizedBody429_25, 429, 7))

def optimizedBody429_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody429_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody429_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody429_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_28 optimizedBody429_29

def optimizedBody429_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_27 optimizedBody429_30

def optimizedBody429_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_6 optimizedBody429_31

def optimizedBody429_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_26 optimizedBody429_32

def optimizedBody429_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_22 optimizedBody429_33

def optimizedBody429_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_21 optimizedBody429_34

def optimizedBody429_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_20 optimizedBody429_35

def optimizedBody429_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_19 optimizedBody429_36

def optimizedBody429_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_18 optimizedBody429_37

def optimizedBody429_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_17 optimizedBody429_38

def optimizedBody429_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_16 optimizedBody429_39

def optimizedBody429_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_15 optimizedBody429_40

def optimizedBody429_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_14 optimizedBody429_41

def optimizedBody429_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_13 optimizedBody429_42

def optimizedBody429_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_12 optimizedBody429_43

def optimizedBody429_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_6 optimizedBody429_44

def optimizedBody429_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_11 optimizedBody429_45

def optimizedBody429_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_7 optimizedBody429_46

def optimizedBody429_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_6 optimizedBody429_47

def optimizedBody429_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_5 optimizedBody429_48

def optimizedBody429_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody429_0 optimizedBody429_49

def optimized429 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(429, 6, optimizedBody429_50)
end InitECandidate.Proofs.StackAnalysis
