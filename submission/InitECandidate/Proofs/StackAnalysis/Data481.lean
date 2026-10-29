import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody481_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 0), (46, 32), (48, 24), (52, 20),
    (54, 28), (56, 18), (58, 26), (60, 22), (62, 30)]

def optimizedBody481_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (18, 2), (20, 44), (16, 46), (8, 48), (22, 52), (12, 54), (24, 56), (10, 58), (6, 60), (14, 62)]

def optimizedBody481_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (20, 44), (16, 46), (8, 48), (22, 52), (12, 54), (24, 56), (10, 58), (6, 60), (14, 62)]

def optimizedBody481_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody481_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_2 optimizedBody481_3

def optimizedBody481_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody481_1, 481, 2)) (some 480) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody481_4, 481, 3))

def optimizedBody481_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody481_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody481_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 18446744073709551615#64)

def optimizedBody481_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 18), (4, 4)]

def optimizedBody481_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 20 [2, 4]

def optimizedBody481_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_9 optimizedBody481_10

def optimizedBody481_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_6 optimizedBody481_11

def optimizedBody481_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(0, 4), (50, 18)]

def optimizedBody481_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 18 (Flapjack.WordRegImm.reg 2) optimizedBody481_12 optimizedBody481_13

def optimizedBody481_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody481_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody481_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody481_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody481_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 32#64))

def optimizedBody481_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4)]

def optimizedBody481_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18 4 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody481_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody481_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody481_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18), (4, 4)]

def optimizedBody481_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 18 0#64))

def optimizedBody481_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 24), (4, 22), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 20), (46, 0), (48, 2), (50, 50)]

def optimizedBody481_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 2), (4, 4), (16, 44), (6, 46), (14, 48), (10, 50)]

def optimizedBody481_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (16, 44), (6, 46), (14, 48), (10, 50)]

def optimizedBody481_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_28 optimizedBody481_3

def optimizedBody481_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody481_27, 481, 4)) (some 480) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody481_29, 481, 5))

def optimizedBody481_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody481_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody481_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (14, 14)]

def optimizedBody481_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody481_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody481_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 12), (4, 4)]

def optimizedBody481_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 16 [2, 4]

def optimizedBody481_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_36 optimizedBody481_37

def optimizedBody481_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_6 optimizedBody481_38

def optimizedBody481_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(8, 12), (0, 4)]

def optimizedBody481_41 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 2) optimizedBody481_39 optimizedBody481_40

def optimizedBody481_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (8, 8)]

def optimizedBody481_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 8 (Flapjack.WordRegImm.reg 10)))

def optimizedBody481_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody481_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody481_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody481_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_46 optimizedBody481_37

def optimizedBody481_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_45 optimizedBody481_47

def optimizedBody481_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_44 optimizedBody481_48

def optimizedBody481_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_43 optimizedBody481_49

def optimizedBody481_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_42 optimizedBody481_50

def optimizedBody481_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_6 optimizedBody481_51

def optimizedBody481_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_6 optimizedBody481_52

def optimizedBody481_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_41 optimizedBody481_53

def optimizedBody481_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_8 optimizedBody481_54

def optimizedBody481_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_35 optimizedBody481_55

def optimizedBody481_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_34 optimizedBody481_56

def optimizedBody481_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_33 optimizedBody481_57

def optimizedBody481_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_32 optimizedBody481_58

def optimizedBody481_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_31 optimizedBody481_59

def optimizedBody481_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_17 optimizedBody481_60

def optimizedBody481_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_16 optimizedBody481_61

def optimizedBody481_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_15 optimizedBody481_62

def optimizedBody481_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_6 optimizedBody481_63

def optimizedBody481_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_30 optimizedBody481_64

def optimizedBody481_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_26 optimizedBody481_65

def optimizedBody481_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_25 optimizedBody481_66

def optimizedBody481_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_24 optimizedBody481_67

def optimizedBody481_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_23 optimizedBody481_68

def optimizedBody481_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_22 optimizedBody481_69

def optimizedBody481_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_21 optimizedBody481_70

def optimizedBody481_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_20 optimizedBody481_71

def optimizedBody481_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_19 optimizedBody481_72

def optimizedBody481_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_18 optimizedBody481_73

def optimizedBody481_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_17 optimizedBody481_74

def optimizedBody481_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_16 optimizedBody481_75

def optimizedBody481_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_15 optimizedBody481_76

def optimizedBody481_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_6 optimizedBody481_77

def optimizedBody481_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_6 optimizedBody481_78

def optimizedBody481_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_14 optimizedBody481_79

def optimizedBody481_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_8 optimizedBody481_80

def optimizedBody481_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_7 optimizedBody481_81

def optimizedBody481_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_6 optimizedBody481_82

def optimizedBody481_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_5 optimizedBody481_83

def optimizedBody481_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody481_0 optimizedBody481_84

def optimized481 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(481, 17, optimizedBody481_85)
end InitECandidate.Proofs.StackAnalysis
