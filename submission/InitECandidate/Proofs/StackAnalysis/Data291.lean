import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody291_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (4, 8), (44, 0), (46, 8), (48, 4), (50, 2), (52, 6)]

def optimizedBody291_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(16, 2), (14, 44), (12, 46), (10, 48), (18, 50), (0, 52)]

def optimizedBody291_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (14, 44), (12, 46), (10, 48), (18, 50), (0, 52)]

def optimizedBody291_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody291_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody291_2 optimizedBody291_3

def optimizedBody291_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody291_1, 291, 2)) (some 92) ([2, 4]) (some (2, optimizedBody291_4, 291, 3))

def optimizedBody291_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody291_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody291_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (2, 2), (12, 12), (10, 10), (16, 16), (18, 18), (0, 0)]

def optimizedBody291_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (2, 2)]

def optimizedBody291_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18), (2, 2)]

def optimizedBody291_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 2 (Flapjack.WordRegImm.reg 18)))

def optimizedBody291_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 6 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody291_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 2)]

def optimizedBody291_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody291_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 8 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody291_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6)]

def optimizedBody291_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody291_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 14 [2]

def optimizedBody291_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody291_17 optimizedBody291_18

def optimizedBody291_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody291_6 optimizedBody291_19

def optimizedBody291_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(4, 2)]

def optimizedBody291_22 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 8) optimizedBody291_20 optimizedBody291_21

def optimizedBody291_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody291_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody291_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (16, 16), (18, 18), (0, 0)]

def optimizedBody291_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody291_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody291_25 optimizedBody291_26

def optimizedBody291_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody291_24 optimizedBody291_27

def optimizedBody291_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody291_23 optimizedBody291_28

def optimizedBody291_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody291_6 optimizedBody291_29

def optimizedBody291_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody291_6 optimizedBody291_30

def optimizedBody291_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody291_22 optimizedBody291_31

def optimizedBody291_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody291_16 optimizedBody291_32

def optimizedBody291_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody291_15 optimizedBody291_33

def optimizedBody291_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody291_14 optimizedBody291_34

def optimizedBody291_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody291_13 optimizedBody291_35

def optimizedBody291_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody291_12 optimizedBody291_36

def optimizedBody291_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody291_11 optimizedBody291_37

def optimizedBody291_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody291_10 optimizedBody291_38

def optimizedBody291_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody291_6 optimizedBody291_39

def optimizedBody291_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(16, 16)]

def optimizedBody291_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody291_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody291_41 optimizedBody291_42

def optimizedBody291_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody291_6 optimizedBody291_43

def optimizedBody291_45 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.WordRegImm.reg 16) optimizedBody291_40 optimizedBody291_44

def optimizedBody291_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody291_6 optimizedBody291_25

def optimizedBody291_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody291_45 optimizedBody291_46

def optimizedBody291_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody291_9 optimizedBody291_47

def optimizedBody291_49 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody291_48 (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  Flapjack.Spt.ln)

def optimizedBody291_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 16)]

def optimizedBody291_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody291_50 optimizedBody291_18

def optimizedBody291_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody291_6 optimizedBody291_51

def optimizedBody291_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody291_49 optimizedBody291_52

def optimizedBody291_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody291_8 optimizedBody291_53

def optimizedBody291_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody291_6 optimizedBody291_54

def optimizedBody291_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody291_7 optimizedBody291_55

def optimizedBody291_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody291_6 optimizedBody291_56

def optimizedBody291_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody291_5 optimizedBody291_57

def optimizedBody291_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody291_0 optimizedBody291_58

def optimized291 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(291, 5, optimizedBody291_59)
end InitECandidate.Proofs.StackAnalysis
