import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody440_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0), (4, 4), (6, 6)]

def optimizedBody440_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody440_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 2)]

def optimizedBody440_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 16 0#64))

def optimizedBody440_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody440_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody440_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 0), (2, 2), (4, 4), (8, 8), (16, 16), (18, 18), (46, 6)]

def optimizedBody440_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18), (2, 2)]

def optimizedBody440_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (12, 4), (2, 2)]

def optimizedBody440_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody440_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (0, 0)]

def optimizedBody440_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 8)))

def optimizedBody440_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody440_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 46)]

def optimizedBody440_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 12)]

def optimizedBody440_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.reg 8)))

def optimizedBody440_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody440_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 14 [2]

def optimizedBody440_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody440_16 optimizedBody440_17

def optimizedBody440_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody440_15 optimizedBody440_18

def optimizedBody440_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody440_10 optimizedBody440_19

def optimizedBody440_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody440_9 optimizedBody440_20

def optimizedBody440_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody440_14 optimizedBody440_21

def optimizedBody440_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody440_5 optimizedBody440_22

def optimizedBody440_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(10, 2), (22, 12), (20, 8)]

def optimizedBody440_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 24) optimizedBody440_23 optimizedBody440_24

def optimizedBody440_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody440_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 10 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody440_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 22), (8, 20), (18, 18), (46, 24)]

def optimizedBody440_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody440_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody440_28 optimizedBody440_29

def optimizedBody440_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody440_27 optimizedBody440_30

def optimizedBody440_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody440_26 optimizedBody440_31

def optimizedBody440_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody440_5 optimizedBody440_32

def optimizedBody440_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody440_5 optimizedBody440_33

def optimizedBody440_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody440_25 optimizedBody440_34

def optimizedBody440_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody440_13 optimizedBody440_35

def optimizedBody440_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody440_12 optimizedBody440_36

def optimizedBody440_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody440_11 optimizedBody440_37

def optimizedBody440_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody440_10 optimizedBody440_38

def optimizedBody440_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody440_9 optimizedBody440_39

def optimizedBody440_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody440_8 optimizedBody440_40

def optimizedBody440_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody440_5 optimizedBody440_41

def optimizedBody440_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody440_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody440_5 optimizedBody440_43

def optimizedBody440_45 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 2 (Flapjack.WordRegImm.reg 18) optimizedBody440_42 optimizedBody440_44

def optimizedBody440_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (8, 8), (18, 18), (46, 0)]

def optimizedBody440_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody440_5 optimizedBody440_46

def optimizedBody440_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody440_45 optimizedBody440_47

def optimizedBody440_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody440_7 optimizedBody440_48

def optimizedBody440_50 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
  Flapjack.Spt.ln) optimizedBody440_49 (Flapjack.Spt.bn
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
  Flapjack.Spt.ln)

def optimizedBody440_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 16), (4, 4), (44, 14), (46, 46)]

def optimizedBody440_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 44), (4, 46)]

def optimizedBody440_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (4, 46)]

def optimizedBody440_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody440_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody440_53 optimizedBody440_54

def optimizedBody440_56 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody440_52, 440, 2)) (some 437) ([2, 4]) (some (2, optimizedBody440_55, 440, 3))

def optimizedBody440_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody440_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody440_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody440_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody440_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody440_59 optimizedBody440_60

def optimizedBody440_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody440_58 optimizedBody440_61

def optimizedBody440_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody440_57 optimizedBody440_62

def optimizedBody440_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody440_5 optimizedBody440_63

def optimizedBody440_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody440_56 optimizedBody440_64

def optimizedBody440_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody440_51 optimizedBody440_65

def optimizedBody440_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody440_5 optimizedBody440_66

def optimizedBody440_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody440_50 optimizedBody440_67

def optimizedBody440_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody440_6 optimizedBody440_68

def optimizedBody440_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody440_5 optimizedBody440_69

def optimizedBody440_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody440_4 optimizedBody440_70

def optimizedBody440_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody440_3 optimizedBody440_71

def optimizedBody440_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody440_2 optimizedBody440_72

def optimizedBody440_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody440_1 optimizedBody440_73

def optimizedBody440_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody440_0 optimizedBody440_74

def optimized440 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(440, 4, optimizedBody440_75)
end InitECandidate.Proofs.StackAnalysis
