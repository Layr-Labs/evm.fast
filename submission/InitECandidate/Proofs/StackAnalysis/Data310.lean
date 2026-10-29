import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody310_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0), (4, 4), (6, 6)]

def optimizedBody310_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody310_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody310_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody310_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 6), (2, 4)]

def optimizedBody310_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 6 Flapjack.WordStore.heapLength

def optimizedBody310_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody310_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 6 6

def optimizedBody310_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 6 18446744073709551464#64))

def optimizedBody310_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (48, 0)]

def optimizedBody310_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(48, 48)]

def optimizedBody310_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (48, 48)]

def optimizedBody310_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody310_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody310_11 optimizedBody310_12

def optimizedBody310_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody310_10, 310, 2)) (some 158) ([2, 4, 6]) (some (2, optimizedBody310_13, 310, 3))

def optimizedBody310_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 64#64)

def optimizedBody310_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (48, 48)]

def optimizedBody310_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody310_16, 310, 4)) (some 68) ([2]) (some (2, optimizedBody310_13, 310, 5))

def optimizedBody310_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody310_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody310_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody310_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 18446744073709551464#64))

def optimizedBody310_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody310_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def optimizedBody310_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (48, 48), (50, 6)]

def optimizedBody310_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 48), (0, 50)]

def optimizedBody310_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 48), (0, 50)]

def optimizedBody310_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody310_26 optimizedBody310_12

def optimizedBody310_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody310_25, 310, 6)) (some 288) ([2, 4, 6]) (some (2, optimizedBody310_27, 310, 7))

def optimizedBody310_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody310_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 64#64)

def optimizedBody310_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0), (4, 4)]

def optimizedBody310_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2, 4]

def optimizedBody310_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody310_31 optimizedBody310_32

def optimizedBody310_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody310_30 optimizedBody310_33

def optimizedBody310_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody310_29 optimizedBody310_34

def optimizedBody310_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody310_3 optimizedBody310_35

def optimizedBody310_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody310_28 optimizedBody310_36

def optimizedBody310_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody310_24 optimizedBody310_37

def optimizedBody310_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody310_23 optimizedBody310_38

def optimizedBody310_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody310_22 optimizedBody310_39

def optimizedBody310_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody310_21 optimizedBody310_40

def optimizedBody310_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody310_20 optimizedBody310_41

def optimizedBody310_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody310_19 optimizedBody310_42

def optimizedBody310_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody310_18 optimizedBody310_43

def optimizedBody310_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody310_3 optimizedBody310_44

def optimizedBody310_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody310_17 optimizedBody310_45

def optimizedBody310_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody310_11 optimizedBody310_46

def optimizedBody310_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody310_15 optimizedBody310_47

def optimizedBody310_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody310_3 optimizedBody310_48

def optimizedBody310_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody310_14 optimizedBody310_49

def optimizedBody310_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody310_9 optimizedBody310_50

def optimizedBody310_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody310_8 optimizedBody310_51

def optimizedBody310_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody310_7 optimizedBody310_52

def optimizedBody310_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody310_6 optimizedBody310_53

def optimizedBody310_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody310_5 optimizedBody310_54

def optimizedBody310_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody310_4 optimizedBody310_55

def optimizedBody310_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody310_3 optimizedBody310_56

def optimizedBody310_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(46, 4), (6, 6), (44, 0)]

def optimizedBody310_59 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 8) optimizedBody310_57 optimizedBody310_58

def optimizedBody310_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 6 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody310_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 6)]

def optimizedBody310_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (0, 46), (4, 48)]

def optimizedBody310_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48)]

def optimizedBody310_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody310_63 optimizedBody310_12

def optimizedBody310_65 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody310_62, 310, 8)) (some 68) ([2]) (some (2, optimizedBody310_64, 310, 9))

def optimizedBody310_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (44, 44), (46, 6), (48, 4)]

def optimizedBody310_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 44), (0, 46), (4, 48)]

def optimizedBody310_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44), (0, 46), (4, 48)]

def optimizedBody310_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody310_68 optimizedBody310_12

def optimizedBody310_70 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody310_67, 310, 10)) (some 288) ([2, 4, 6]) (some (2, optimizedBody310_69, 310, 11))

def optimizedBody310_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody310_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody310_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2, 4]

def optimizedBody310_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody310_31 optimizedBody310_73

def optimizedBody310_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody310_72 optimizedBody310_74

def optimizedBody310_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody310_71 optimizedBody310_75

def optimizedBody310_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody310_3 optimizedBody310_76

def optimizedBody310_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody310_70 optimizedBody310_77

def optimizedBody310_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody310_66 optimizedBody310_78

def optimizedBody310_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody310_3 optimizedBody310_79

def optimizedBody310_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody310_65 optimizedBody310_80

def optimizedBody310_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody310_61 optimizedBody310_81

def optimizedBody310_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody310_60 optimizedBody310_82

def optimizedBody310_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody310_22 optimizedBody310_83

def optimizedBody310_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody310_3 optimizedBody310_84

def optimizedBody310_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody310_3 optimizedBody310_85

def optimizedBody310_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody310_59 optimizedBody310_86

def optimizedBody310_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody310_2 optimizedBody310_87

def optimizedBody310_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody310_1 optimizedBody310_88

def optimizedBody310_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody310_0 optimizedBody310_89

def optimized310 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(310, 4, optimizedBody310_90)
end InitECandidate.Proofs.StackAnalysis
