import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody430_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 2)]

def optimizedBody430_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46)]

def optimizedBody430_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def optimizedBody430_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody430_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody430_2 optimizedBody430_3

def optimizedBody430_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody430_1, 430, 2)) (some 407) ([2]) (some (2, optimizedBody430_4, 430, 3))

def optimizedBody430_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody430_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46)]

def optimizedBody430_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (6, 46)]

def optimizedBody430_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46)]

def optimizedBody430_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody430_9 optimizedBody430_3

def optimizedBody430_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody430_8, 430, 4)) (some 395) ([2]) (some (2, optimizedBody430_10, 430, 5))

def optimizedBody430_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody430_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody430_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody430_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody430_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody430_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (44, 44)]

def optimizedBody430_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody430_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody430_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody430_19 optimizedBody430_3

def optimizedBody430_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody430_18, 430, 6)) (some 423) ([2, 4]) (some (2, optimizedBody430_20, 430, 7))

def optimizedBody430_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody430_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody430_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody430_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody430_23 optimizedBody430_24

def optimizedBody430_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody430_22 optimizedBody430_25

def optimizedBody430_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody430_6 optimizedBody430_26

def optimizedBody430_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody430_21 optimizedBody430_27

def optimizedBody430_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody430_17 optimizedBody430_28

def optimizedBody430_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody430_16 optimizedBody430_29

def optimizedBody430_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody430_15 optimizedBody430_30

def optimizedBody430_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody430_14 optimizedBody430_31

def optimizedBody430_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody430_13 optimizedBody430_32

def optimizedBody430_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody430_12 optimizedBody430_33

def optimizedBody430_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody430_6 optimizedBody430_34

def optimizedBody430_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody430_11 optimizedBody430_35

def optimizedBody430_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody430_7 optimizedBody430_36

def optimizedBody430_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody430_6 optimizedBody430_37

def optimizedBody430_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody430_5 optimizedBody430_38

def optimizedBody430_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody430_0 optimizedBody430_39

def optimized430 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(430, 2, optimizedBody430_40)
end InitECandidate.Proofs.StackAnalysis
