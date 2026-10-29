import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody328_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 0)]

def optimizedBody328_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody328_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody328_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody328_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody328_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody328_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody328_2 optimizedBody328_5

def optimizedBody328_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody328_4 optimizedBody328_6

def optimizedBody328_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody328_9 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 6) optimizedBody328_7 optimizedBody328_8

def optimizedBody328_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody328_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody328_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 13#64)

def optimizedBody328_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4)]

def optimizedBody328_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46)]

def optimizedBody328_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46)]

def optimizedBody328_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody328_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody328_15 optimizedBody328_16

def optimizedBody328_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody328_14, 328, 2)) (some 286) ([2]) (some (2, optimizedBody328_17, 328, 3))

def optimizedBody328_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (46, 46)]

def optimizedBody328_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody328_4 optimizedBody328_19

def optimizedBody328_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody328_18 optimizedBody328_20

def optimizedBody328_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody328_13 optimizedBody328_21

def optimizedBody328_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody328_12 optimizedBody328_22

def optimizedBody328_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody328_4 optimizedBody328_23

def optimizedBody328_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 4)]

def optimizedBody328_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody328_4 optimizedBody328_25

def optimizedBody328_27 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 6) optimizedBody328_24 optimizedBody328_26

def optimizedBody328_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody328_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (0, 46)]

def optimizedBody328_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody328_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody328_30 optimizedBody328_16

def optimizedBody328_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody328_29, 328, 4)) (some 68) ([2]) (some (2, optimizedBody328_31, 328, 5))

def optimizedBody328_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody328_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody328_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody328_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 6), (48, 0)]

def optimizedBody328_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 44), (0, 46), (4, 48)]

def optimizedBody328_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (0, 46), (4, 48)]

def optimizedBody328_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody328_38 optimizedBody328_16

def optimizedBody328_40 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody328_37, 328, 6)) (some 158) ([2, 4, 6]) (some (2, optimizedBody328_39, 328, 7))

def optimizedBody328_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody328_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody328_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody328_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody328_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody328_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody328_44 optimizedBody328_45

def optimizedBody328_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody328_43 optimizedBody328_46

def optimizedBody328_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody328_42 optimizedBody328_47

def optimizedBody328_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody328_41 optimizedBody328_48

def optimizedBody328_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody328_10 optimizedBody328_49

def optimizedBody328_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody328_4 optimizedBody328_50

def optimizedBody328_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody328_40 optimizedBody328_51

def optimizedBody328_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody328_36 optimizedBody328_52

def optimizedBody328_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody328_35 optimizedBody328_53

def optimizedBody328_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody328_33 optimizedBody328_54

def optimizedBody328_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody328_34 optimizedBody328_55

def optimizedBody328_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody328_33 optimizedBody328_56

def optimizedBody328_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody328_4 optimizedBody328_57

def optimizedBody328_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody328_32 optimizedBody328_58

def optimizedBody328_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody328_15 optimizedBody328_59

def optimizedBody328_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody328_28 optimizedBody328_60

def optimizedBody328_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody328_4 optimizedBody328_61

def optimizedBody328_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody328_27 optimizedBody328_62

def optimizedBody328_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody328_3 optimizedBody328_63

def optimizedBody328_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody328_11 optimizedBody328_64

def optimizedBody328_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody328_10 optimizedBody328_65

def optimizedBody328_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody328_4 optimizedBody328_66

def optimizedBody328_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody328_4 optimizedBody328_67

def optimizedBody328_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody328_9 optimizedBody328_68

def optimizedBody328_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody328_3 optimizedBody328_69

def optimizedBody328_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody328_2 optimizedBody328_70

def optimizedBody328_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody328_1 optimizedBody328_71

def optimizedBody328_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody328_0 optimizedBody328_72

def optimized328 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(328, 2, optimizedBody328_73)
end InitECandidate.Proofs.StackAnalysis
