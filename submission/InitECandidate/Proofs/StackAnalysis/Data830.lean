import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody830_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody830_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody830_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody830_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody830_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody830_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 112#64))

def optimizedBody830_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody830_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 96#64))

def optimizedBody830_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4), (48, 2)]

def optimizedBody830_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody830_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody830_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody830_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody830_10 optimizedBody830_11

def optimizedBody830_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody830_9, 830, 2)) (some 465) ([2]) (some (2, optimizedBody830_12, 830, 3))

def optimizedBody830_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody830_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody830_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 3#64)

def optimizedBody830_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody830_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody830_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 15#64)))

def optimizedBody830_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 44), (4, 46), (0, 48)]

def optimizedBody830_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (4, 46), (0, 48)]

def optimizedBody830_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody830_21 optimizedBody830_11

def optimizedBody830_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody830_20, 830, 4)) (some 470) ([2]) (some (2, optimizedBody830_22, 830, 5))

def optimizedBody830_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody830_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.imm 120#64)))

def optimizedBody830_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 88#64))

def optimizedBody830_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody830_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody830_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody830_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody830_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody830_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody830_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody830_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody830_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody830_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody830_34 optimizedBody830_35

def optimizedBody830_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody830_33 optimizedBody830_36

def optimizedBody830_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody830_32 optimizedBody830_37

def optimizedBody830_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody830_31 optimizedBody830_38

def optimizedBody830_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody830_30 optimizedBody830_39

def optimizedBody830_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody830_4 optimizedBody830_40

def optimizedBody830_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody830_29 optimizedBody830_41

def optimizedBody830_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody830_28 optimizedBody830_42

def optimizedBody830_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody830_27 optimizedBody830_43

def optimizedBody830_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody830_26 optimizedBody830_44

def optimizedBody830_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody830_6 optimizedBody830_45

def optimizedBody830_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody830_25 optimizedBody830_46

def optimizedBody830_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody830_24 optimizedBody830_47

def optimizedBody830_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody830_3 optimizedBody830_48

def optimizedBody830_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody830_2 optimizedBody830_49

def optimizedBody830_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody830_1 optimizedBody830_50

def optimizedBody830_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody830_14 optimizedBody830_51

def optimizedBody830_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody830_23 optimizedBody830_52

def optimizedBody830_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody830_10 optimizedBody830_53

def optimizedBody830_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody830_19 optimizedBody830_54

def optimizedBody830_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody830_0 optimizedBody830_55

def optimizedBody830_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody830_18 optimizedBody830_56

def optimizedBody830_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody830_17 optimizedBody830_57

def optimizedBody830_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody830_16 optimizedBody830_58

def optimizedBody830_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody830_15 optimizedBody830_59

def optimizedBody830_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody830_14 optimizedBody830_60

def optimizedBody830_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody830_13 optimizedBody830_61

def optimizedBody830_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody830_8 optimizedBody830_62

def optimizedBody830_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody830_7 optimizedBody830_63

def optimizedBody830_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody830_6 optimizedBody830_64

def optimizedBody830_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody830_5 optimizedBody830_65

def optimizedBody830_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody830_4 optimizedBody830_66

def optimizedBody830_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody830_3 optimizedBody830_67

def optimizedBody830_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody830_2 optimizedBody830_68

def optimizedBody830_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody830_1 optimizedBody830_69

def optimizedBody830_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody830_0 optimizedBody830_70

def optimized830 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(830, 1, optimizedBody830_71)
end InitECandidate.Proofs.StackAnalysis
