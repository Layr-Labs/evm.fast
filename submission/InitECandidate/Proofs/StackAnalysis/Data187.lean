import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody187_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 4), (48, 2)]

def optimizedBody187_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (12, 44), (8, 46), (6, 48)]

def optimizedBody187_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (12, 44), (8, 46), (6, 48)]

def optimizedBody187_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody187_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody187_2 optimizedBody187_3

def optimizedBody187_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody187_1, 187, 2)) (some 185) ([2, 4]) (some (2, optimizedBody187_4, 187, 3))

def optimizedBody187_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody187_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody187_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody187_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody187_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 12 [2]

def optimizedBody187_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody187_9 optimizedBody187_10

def optimizedBody187_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody187_8 optimizedBody187_11

def optimizedBody187_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody187_6 optimizedBody187_12

def optimizedBody187_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody187_15 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody187_13 optimizedBody187_14

def optimizedBody187_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody187_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody187_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 6 8#64))

def optimizedBody187_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 6 32#64))

def optimizedBody187_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody187_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody187_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody187_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody187_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 8), (6, 10), (44, 12)]

def optimizedBody187_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 44)]

def optimizedBody187_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody187_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody187_26 optimizedBody187_3

def optimizedBody187_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody187_25, 187, 4)) (some 79) ([2, 4, 6]) (some (2, optimizedBody187_27, 187, 5))

def optimizedBody187_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody187_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody187_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody187_29 optimizedBody187_30

def optimizedBody187_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody187_6 optimizedBody187_31

def optimizedBody187_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody187_28 optimizedBody187_32

def optimizedBody187_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody187_24 optimizedBody187_33

def optimizedBody187_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody187_23 optimizedBody187_34

def optimizedBody187_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody187_22 optimizedBody187_35

def optimizedBody187_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody187_21 optimizedBody187_36

def optimizedBody187_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody187_20 optimizedBody187_37

def optimizedBody187_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody187_19 optimizedBody187_38

def optimizedBody187_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody187_16 optimizedBody187_39

def optimizedBody187_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody187_18 optimizedBody187_40

def optimizedBody187_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody187_16 optimizedBody187_41

def optimizedBody187_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody187_17 optimizedBody187_42

def optimizedBody187_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody187_16 optimizedBody187_43

def optimizedBody187_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody187_6 optimizedBody187_44

def optimizedBody187_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody187_6 optimizedBody187_45

def optimizedBody187_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody187_15 optimizedBody187_46

def optimizedBody187_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody187_8 optimizedBody187_47

def optimizedBody187_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody187_7 optimizedBody187_48

def optimizedBody187_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody187_6 optimizedBody187_49

def optimizedBody187_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody187_5 optimizedBody187_50

def optimizedBody187_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody187_0 optimizedBody187_51

def optimized187 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(187, 3, optimizedBody187_52)
end InitECandidate.Proofs.StackAnalysis
