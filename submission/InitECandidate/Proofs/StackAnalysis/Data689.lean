import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody689_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (2, 2)]

def optimizedBody689_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody689_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (46, 4), (0, 2), (4, 4)]

def optimizedBody689_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody689_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody689_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 4 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody689_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody689_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 6 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody689_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody689_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody689_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody689_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 0), (50, 6)]

def optimizedBody689_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (8, 44), (10, 46), (0, 48), (12, 50)]

def optimizedBody689_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (10, 46), (0, 48), (12, 50)]

def optimizedBody689_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody689_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_13 optimizedBody689_14

def optimizedBody689_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody689_12, 689, 2)) (some 80) ([2, 4]) (some (2, optimizedBody689_15, 689, 3))

def optimizedBody689_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 12)]

def optimizedBody689_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody689_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_17 optimizedBody689_18

def optimizedBody689_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_1 optimizedBody689_19

def optimizedBody689_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(4, 12)]

def optimizedBody689_22 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody689_20 optimizedBody689_21

def optimizedBody689_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 8), (46, 10), (0, 0), (4, 4)]

def optimizedBody689_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody689_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_23 optimizedBody689_24

def optimizedBody689_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_1 optimizedBody689_25

def optimizedBody689_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_1 optimizedBody689_26

def optimizedBody689_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_22 optimizedBody689_27

def optimizedBody689_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_3 optimizedBody689_28

def optimizedBody689_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_6 optimizedBody689_29

def optimizedBody689_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_1 optimizedBody689_30

def optimizedBody689_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_16 optimizedBody689_31

def optimizedBody689_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_11 optimizedBody689_32

def optimizedBody689_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_10 optimizedBody689_33

def optimizedBody689_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_9 optimizedBody689_34

def optimizedBody689_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_8 optimizedBody689_35

def optimizedBody689_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_7 optimizedBody689_36

def optimizedBody689_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_6 optimizedBody689_37

def optimizedBody689_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_5 optimizedBody689_38

def optimizedBody689_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_4 optimizedBody689_39

def optimizedBody689_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_1 optimizedBody689_40

def optimizedBody689_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody689_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_1 optimizedBody689_42

def optimizedBody689_44 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 4) optimizedBody689_41 optimizedBody689_43

def optimizedBody689_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (46, 6), (0, 0), (4, 4)]

def optimizedBody689_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_1 optimizedBody689_45

def optimizedBody689_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_44 optimizedBody689_46

def optimizedBody689_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_4 optimizedBody689_47

def optimizedBody689_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_3 optimizedBody689_48

def optimizedBody689_50 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln) optimizedBody689_49 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody689_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 18446744073709551615#64)

def optimizedBody689_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody689_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody689_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_52 optimizedBody689_53

def optimizedBody689_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_51 optimizedBody689_54

def optimizedBody689_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_1 optimizedBody689_55

def optimizedBody689_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_50 optimizedBody689_56

def optimizedBody689_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_2 optimizedBody689_57

def optimizedBody689_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_1 optimizedBody689_58

def optimizedBody689_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody689_0 optimizedBody689_59

def optimized689 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(689, 3, optimizedBody689_60)
end InitECandidate.Proofs.StackAnalysis
