import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody89_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (0, 0), (4, 4)]

def optimizedBody89_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 6 (Flapjack.WordRegImm.imm 7#64)))

def optimizedBody89_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody89_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody89_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (46, 0), (48, 6)]

def optimizedBody89_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (10, 46), (8, 48)]

def optimizedBody89_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 46), (8, 48)]

def optimizedBody89_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody89_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody89_6 optimizedBody89_7

def optimizedBody89_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody89_5, 89, 2)) (some 84) ([2]) (some (2, optimizedBody89_8, 89, 3))

def optimizedBody89_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (0, 0)]

def optimizedBody89_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody89_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody89_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody89_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2]

def optimizedBody89_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody89_13 optimizedBody89_14

def optimizedBody89_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody89_12 optimizedBody89_15

def optimizedBody89_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody89_11 optimizedBody89_16

def optimizedBody89_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody89_10 optimizedBody89_17

def optimizedBody89_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody89_3 optimizedBody89_18

def optimizedBody89_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody89_9 optimizedBody89_19

def optimizedBody89_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody89_4 optimizedBody89_20

def optimizedBody89_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody89_3 optimizedBody89_21

def optimizedBody89_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(4, 4), (44, 0), (6, 6)]

def optimizedBody89_24 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 8) optimizedBody89_22 optimizedBody89_23

def optimizedBody89_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 4), (2, 6)]

def optimizedBody89_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 4 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody89_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 0), (48, 2)]

def optimizedBody89_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (0, 48)]

def optimizedBody89_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody89_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody89_29 optimizedBody89_7

def optimizedBody89_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody89_28, 89, 4)) (some 88) ([2, 4]) (some (2, optimizedBody89_30, 89, 5))

def optimizedBody89_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody89_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 4#64)))

def optimizedBody89_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody89_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody89_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody89_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody89_36 optimizedBody89_7

def optimizedBody89_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody89_35, 89, 6)) (some 88) ([2, 4]) (some (2, optimizedBody89_37, 89, 7))

def optimizedBody89_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody89_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody89_13 optimizedBody89_39

def optimizedBody89_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody89_12 optimizedBody89_40

def optimizedBody89_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody89_3 optimizedBody89_41

def optimizedBody89_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody89_38 optimizedBody89_42

def optimizedBody89_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody89_34 optimizedBody89_43

def optimizedBody89_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody89_33 optimizedBody89_44

def optimizedBody89_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody89_32 optimizedBody89_45

def optimizedBody89_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody89_3 optimizedBody89_46

def optimizedBody89_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody89_31 optimizedBody89_47

def optimizedBody89_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody89_27 optimizedBody89_48

def optimizedBody89_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody89_26 optimizedBody89_49

def optimizedBody89_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody89_25 optimizedBody89_50

def optimizedBody89_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody89_3 optimizedBody89_51

def optimizedBody89_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody89_3 optimizedBody89_52

def optimizedBody89_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody89_24 optimizedBody89_53

def optimizedBody89_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody89_2 optimizedBody89_54

def optimizedBody89_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody89_1 optimizedBody89_55

def optimizedBody89_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody89_0 optimizedBody89_56

def optimized89 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(89, 3, optimizedBody89_57)
end InitECandidate.Proofs.StackAnalysis
