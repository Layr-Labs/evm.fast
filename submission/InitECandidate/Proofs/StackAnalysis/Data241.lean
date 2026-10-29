import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody241_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (6, 2)]

def optimizedBody241_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 31#64)))

def optimizedBody241_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 8 2 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody241_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody241_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 8 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody241_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4), (48, 6), (50, 8)]

def optimizedBody241_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (6, 46), (4, 48), (50, 50)]

def optimizedBody241_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (4, 48), (50, 50)]

def optimizedBody241_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody241_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody241_7 optimizedBody241_8

def optimizedBody241_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody241_6, 241, 2)) (some 68) ([2]) (some (2, optimizedBody241_9, 241, 3))

def optimizedBody241_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody241_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (44, 44), (46, 0), (48, 6), (50, 50)]

def optimizedBody241_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (4, 48), (6, 50)]

def optimizedBody241_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48), (6, 50)]

def optimizedBody241_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody241_14 optimizedBody241_8

def optimizedBody241_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody241_13, 241, 4)) (some 77) ([2, 4, 6]) (some (2, optimizedBody241_15, 241, 5))

def optimizedBody241_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody241_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.reg 0)))

def optimizedBody241_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody241_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8 6 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody241_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody241_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 4 8 (Flapjack.WordRegImm.reg 4)))

def optimizedBody241_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 0), (48, 6)]

def optimizedBody241_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (6, 46), (4, 48)]

def optimizedBody241_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (6, 46), (4, 48)]

def optimizedBody241_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody241_25 optimizedBody241_8

def optimizedBody241_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody241_24, 241, 6)) (some 78) ([2, 4]) (some (2, optimizedBody241_26, 241, 7))

def optimizedBody241_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 6), (4, 4)]

def optimizedBody241_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4]

def optimizedBody241_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody241_28 optimizedBody241_29

def optimizedBody241_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody241_11 optimizedBody241_30

def optimizedBody241_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody241_27 optimizedBody241_31

def optimizedBody241_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody241_23 optimizedBody241_32

def optimizedBody241_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody241_22 optimizedBody241_33

def optimizedBody241_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody241_21 optimizedBody241_34

def optimizedBody241_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody241_20 optimizedBody241_35

def optimizedBody241_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody241_19 optimizedBody241_36

def optimizedBody241_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody241_18 optimizedBody241_37

def optimizedBody241_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody241_17 optimizedBody241_38

def optimizedBody241_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody241_11 optimizedBody241_39

def optimizedBody241_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody241_16 optimizedBody241_40

def optimizedBody241_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody241_12 optimizedBody241_41

def optimizedBody241_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody241_11 optimizedBody241_42

def optimizedBody241_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody241_10 optimizedBody241_43

def optimizedBody241_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody241_5 optimizedBody241_44

def optimizedBody241_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody241_4 optimizedBody241_45

def optimizedBody241_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody241_3 optimizedBody241_46

def optimizedBody241_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody241_2 optimizedBody241_47

def optimizedBody241_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody241_1 optimizedBody241_48

def optimizedBody241_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody241_0 optimizedBody241_49

def optimized241 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(241, 3, optimizedBody241_50)
end InitECandidate.Proofs.StackAnalysis
