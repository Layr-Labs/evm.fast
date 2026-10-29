import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody297_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (8, 2), (4, 4), (6, 6)]

def optimizedBody297_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 56#64)

def optimizedBody297_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4), (48, 8), (50, 6)]

def optimizedBody297_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (10, 44), (0, 46), (6, 48), (4, 50)]

def optimizedBody297_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 44), (0, 46), (6, 48), (4, 50)]

def optimizedBody297_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody297_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_4 optimizedBody297_5

def optimizedBody297_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody297_3, 297, 2)) (some 68) ([2]) (some (2, optimizedBody297_6, 297, 3))

def optimizedBody297_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody297_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody297_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 2#64)

def optimizedBody297_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 8 0#64))

def optimizedBody297_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody297_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody297_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody297_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody297_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody297_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody297_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody297_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody297_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody297_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.imm 40#64)))

def optimizedBody297_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody297_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody297_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 8 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody297_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody297_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody297_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 8)]

def optimizedBody297_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2]

def optimizedBody297_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_27 optimizedBody297_28

def optimizedBody297_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_26 optimizedBody297_29

def optimizedBody297_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_25 optimizedBody297_30

def optimizedBody297_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_24 optimizedBody297_31

def optimizedBody297_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_9 optimizedBody297_32

def optimizedBody297_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_23 optimizedBody297_33

def optimizedBody297_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_22 optimizedBody297_34

def optimizedBody297_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_21 optimizedBody297_35

def optimizedBody297_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_9 optimizedBody297_36

def optimizedBody297_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_20 optimizedBody297_37

def optimizedBody297_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_19 optimizedBody297_38

def optimizedBody297_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_18 optimizedBody297_39

def optimizedBody297_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_9 optimizedBody297_40

def optimizedBody297_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_15 optimizedBody297_41

def optimizedBody297_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_14 optimizedBody297_42

def optimizedBody297_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_13 optimizedBody297_43

def optimizedBody297_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_17 optimizedBody297_44

def optimizedBody297_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_9 optimizedBody297_45

def optimizedBody297_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_15 optimizedBody297_46

def optimizedBody297_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_14 optimizedBody297_47

def optimizedBody297_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_13 optimizedBody297_48

def optimizedBody297_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_16 optimizedBody297_49

def optimizedBody297_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_9 optimizedBody297_50

def optimizedBody297_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_15 optimizedBody297_51

def optimizedBody297_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_14 optimizedBody297_52

def optimizedBody297_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_13 optimizedBody297_53

def optimizedBody297_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_12 optimizedBody297_54

def optimizedBody297_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_9 optimizedBody297_55

def optimizedBody297_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_11 optimizedBody297_56

def optimizedBody297_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_9 optimizedBody297_57

def optimizedBody297_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_10 optimizedBody297_58

def optimizedBody297_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_9 optimizedBody297_59

def optimizedBody297_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_8 optimizedBody297_60

def optimizedBody297_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_7 optimizedBody297_61

def optimizedBody297_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_2 optimizedBody297_62

def optimizedBody297_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_1 optimizedBody297_63

def optimizedBody297_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody297_0 optimizedBody297_64

def optimized297 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(297, 4, optimizedBody297_65)
end InitECandidate.Proofs.StackAnalysis
