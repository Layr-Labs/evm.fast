import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody445_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 8), (48, 4), (50, 6)]

def optimizedBody445_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (6, 48), (48, 50)]

def optimizedBody445_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (6, 48), (48, 50)]

def optimizedBody445_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody445_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody445_2 optimizedBody445_3

def optimizedBody445_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody445_1, 445, 2)) (some 439) ([2]) (some (2, optimizedBody445_4, 445, 3))

def optimizedBody445_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody445_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody445_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 32#64))

def optimizedBody445_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody445_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 24#64)

def optimizedBody445_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48)]

def optimizedBody445_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (8, 44), (0, 46), (6, 48)]

def optimizedBody445_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (0, 46), (6, 48)]

def optimizedBody445_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody445_13 optimizedBody445_3

def optimizedBody445_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody445_12, 445, 4)) (some 440) ([2, 4, 6]) (some (2, optimizedBody445_14, 445, 5))

def optimizedBody445_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody445_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody445_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody445_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody445_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody445_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody445_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody445_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody445_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody445_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody445_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody445_24 optimizedBody445_25

def optimizedBody445_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody445_23 optimizedBody445_26

def optimizedBody445_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody445_22 optimizedBody445_27

def optimizedBody445_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody445_21 optimizedBody445_28

def optimizedBody445_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody445_20 optimizedBody445_29

def optimizedBody445_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody445_16 optimizedBody445_30

def optimizedBody445_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody445_19 optimizedBody445_31

def optimizedBody445_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody445_18 optimizedBody445_32

def optimizedBody445_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody445_17 optimizedBody445_33

def optimizedBody445_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody445_16 optimizedBody445_34

def optimizedBody445_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody445_6 optimizedBody445_35

def optimizedBody445_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody445_15 optimizedBody445_36

def optimizedBody445_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody445_11 optimizedBody445_37

def optimizedBody445_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody445_10 optimizedBody445_38

def optimizedBody445_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody445_9 optimizedBody445_39

def optimizedBody445_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody445_8 optimizedBody445_40

def optimizedBody445_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody445_7 optimizedBody445_41

def optimizedBody445_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody445_6 optimizedBody445_42

def optimizedBody445_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody445_5 optimizedBody445_43

def optimizedBody445_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody445_0 optimizedBody445_44

def optimized445 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(445, 5, optimizedBody445_45)
end InitECandidate.Proofs.StackAnalysis
