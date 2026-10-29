import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody152_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4)]

def optimizedBody152_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody152_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody152_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 0), (6, 4), (8, 8), (0, 2)]

def optimizedBody152_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody152_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody152_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 8 (Flapjack.WordRegImm.imm 2#64)))

def optimizedBody152_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody152_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody152_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 8 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody152_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody152_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.reg 0)))

def optimizedBody152_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody152_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 6), (48, 8), (50, 0)]

def optimizedBody152_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 44), (6, 46), (4, 48), (0, 50)]

def optimizedBody152_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 44), (6, 46), (4, 48), (0, 50)]

def optimizedBody152_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody152_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody152_15 optimizedBody152_16

def optimizedBody152_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody152_14, 152, 2)) (some 88) ([2, 4]) (some (2, optimizedBody152_17, 152, 3))

def optimizedBody152_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody152_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody152_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 10), (6, 6), (8, 8), (0, 0)]

def optimizedBody152_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody152_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody152_21 optimizedBody152_22

def optimizedBody152_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody152_20 optimizedBody152_23

def optimizedBody152_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody152_19 optimizedBody152_24

def optimizedBody152_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody152_2 optimizedBody152_25

def optimizedBody152_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody152_18 optimizedBody152_26

def optimizedBody152_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody152_13 optimizedBody152_27

def optimizedBody152_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody152_12 optimizedBody152_28

def optimizedBody152_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody152_11 optimizedBody152_29

def optimizedBody152_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody152_10 optimizedBody152_30

def optimizedBody152_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody152_9 optimizedBody152_31

def optimizedBody152_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody152_4 optimizedBody152_32

def optimizedBody152_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody152_8 optimizedBody152_33

def optimizedBody152_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody152_7 optimizedBody152_34

def optimizedBody152_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody152_6 optimizedBody152_35

def optimizedBody152_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody152_4 optimizedBody152_36

def optimizedBody152_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody152_2 optimizedBody152_37

def optimizedBody152_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody152_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody152_2 optimizedBody152_39

def optimizedBody152_41 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 8 (Flapjack.WordRegImm.reg 2) optimizedBody152_38 optimizedBody152_40

def optimizedBody152_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (6, 6), (8, 8), (0, 0)]

def optimizedBody152_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody152_2 optimizedBody152_42

def optimizedBody152_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody152_41 optimizedBody152_43

def optimizedBody152_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody152_5 optimizedBody152_44

def optimizedBody152_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody152_4 optimizedBody152_45

def optimizedBody152_47 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit Flapjack.Spt.ln) optimizedBody152_46 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  Flapjack.Spt.ln)

def optimizedBody152_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody152_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody152_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2]

def optimizedBody152_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody152_49 optimizedBody152_50

def optimizedBody152_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody152_48 optimizedBody152_51

def optimizedBody152_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody152_2 optimizedBody152_52

def optimizedBody152_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody152_47 optimizedBody152_53

def optimizedBody152_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody152_3 optimizedBody152_54

def optimizedBody152_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody152_2 optimizedBody152_55

def optimizedBody152_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody152_1 optimizedBody152_56

def optimizedBody152_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody152_0 optimizedBody152_57

def optimized152 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(152, 3, optimizedBody152_58)
end InitECandidate.Proofs.StackAnalysis
