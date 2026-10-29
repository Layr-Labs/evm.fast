import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody147_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 10), (0, 0), (2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody147_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 12 10 (Flapjack.WordRegImm.imm 7#64)))

def optimizedBody147_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody147_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody147_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 8), (50, 0), (44, 4), (46, 2), (48, 10), (52, 6)]

def optimizedBody147_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (50, 50), (44, 44), (46, 46), (0, 48), (6, 52)]

def optimizedBody147_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (50, 50), (44, 44), (46, 46), (0, 48), (6, 52)]

def optimizedBody147_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody147_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_6 optimizedBody147_7

def optimizedBody147_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody147_5, 147, 2)) (some 84) ([2]) (some (2, optimizedBody147_8, 147, 3))

def optimizedBody147_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody147_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody147_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (50, 50), (44, 44), (46, 46), (48, 0)]

def optimizedBody147_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (50, 50), (6, 44), (44, 46), (0, 48)]

def optimizedBody147_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (50, 50), (6, 44), (44, 46), (0, 48)]

def optimizedBody147_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_14 optimizedBody147_7

def optimizedBody147_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody147_13, 147, 4)) (some 84) ([2]) (some (2, optimizedBody147_15, 147, 5))

def optimizedBody147_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody147_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody147_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody147_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody147_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (50, 50), (44, 44), (46, 0)]

def optimizedBody147_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (50, 50), (6, 44), (0, 46)]

def optimizedBody147_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (50, 50), (6, 44), (0, 46)]

def optimizedBody147_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_23 optimizedBody147_7

def optimizedBody147_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody147_22, 147, 6)) (some 84) ([2]) (some (2, optimizedBody147_24, 147, 7))

def optimizedBody147_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody147_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (50, 50), (54, 0)]

def optimizedBody147_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 50), (4, 54)]

def optimizedBody147_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 50), (4, 54)]

def optimizedBody147_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_29 optimizedBody147_7

def optimizedBody147_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody147_28, 147, 8)) (some 84) ([2]) (some (2, optimizedBody147_30, 147, 9))

def optimizedBody147_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody147_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody147_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody147_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody147_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody147_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody147_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody147_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_37 optimizedBody147_38

def optimizedBody147_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_36 optimizedBody147_39

def optimizedBody147_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_35 optimizedBody147_40

def optimizedBody147_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_34 optimizedBody147_41

def optimizedBody147_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_33 optimizedBody147_42

def optimizedBody147_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_32 optimizedBody147_43

def optimizedBody147_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_3 optimizedBody147_44

def optimizedBody147_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_31 optimizedBody147_45

def optimizedBody147_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_27 optimizedBody147_46

def optimizedBody147_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_20 optimizedBody147_47

def optimizedBody147_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_19 optimizedBody147_48

def optimizedBody147_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_26 optimizedBody147_49

def optimizedBody147_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_17 optimizedBody147_50

def optimizedBody147_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_3 optimizedBody147_51

def optimizedBody147_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_25 optimizedBody147_52

def optimizedBody147_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_21 optimizedBody147_53

def optimizedBody147_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_20 optimizedBody147_54

def optimizedBody147_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_19 optimizedBody147_55

def optimizedBody147_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_18 optimizedBody147_56

def optimizedBody147_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_17 optimizedBody147_57

def optimizedBody147_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_3 optimizedBody147_58

def optimizedBody147_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_16 optimizedBody147_59

def optimizedBody147_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_12 optimizedBody147_60

def optimizedBody147_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_11 optimizedBody147_61

def optimizedBody147_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_10 optimizedBody147_62

def optimizedBody147_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_3 optimizedBody147_63

def optimizedBody147_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_9 optimizedBody147_64

def optimizedBody147_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_4 optimizedBody147_65

def optimizedBody147_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_3 optimizedBody147_66

def optimizedBody147_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(8, 8), (46, 4), (48, 2), (52, 6), (44, 0), (10, 10)]

def optimizedBody147_69 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 14) optimizedBody147_67 optimizedBody147_68

def optimizedBody147_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 10), (4, 8), (44, 44), (46, 46), (48, 48), (50, 10), (52, 52)]

def optimizedBody147_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (0, 50), (4, 52)]

def optimizedBody147_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50), (4, 52)]

def optimizedBody147_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_72 optimizedBody147_7

def optimizedBody147_74 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody147_71, 147, 10)) (some 89) ([2, 4]) (some (2, optimizedBody147_73, 147, 11))

def optimizedBody147_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 0)]

def optimizedBody147_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (46, 48), (0, 50)]

def optimizedBody147_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (46, 48), (0, 50)]

def optimizedBody147_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_77 optimizedBody147_7

def optimizedBody147_79 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody147_76, 147, 12)) (some 89) ([2, 4]) (some (2, optimizedBody147_78, 147, 13))

def optimizedBody147_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 0)]

def optimizedBody147_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (0, 48)]

def optimizedBody147_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody147_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_82 optimizedBody147_7

def optimizedBody147_84 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody147_81, 147, 14)) (some 89) ([2, 4]) (some (2, optimizedBody147_83, 147, 15))

def optimizedBody147_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody147_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody147_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody147_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody147_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_88 optimizedBody147_7

def optimizedBody147_90 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody147_87, 147, 16)) (some 89) ([2, 4]) (some (2, optimizedBody147_89, 147, 17))

def optimizedBody147_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody147_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_37 optimizedBody147_91

def optimizedBody147_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_36 optimizedBody147_92

def optimizedBody147_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_3 optimizedBody147_93

def optimizedBody147_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_90 optimizedBody147_94

def optimizedBody147_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_86 optimizedBody147_95

def optimizedBody147_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_85 optimizedBody147_96

def optimizedBody147_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_17 optimizedBody147_97

def optimizedBody147_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_3 optimizedBody147_98

def optimizedBody147_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_84 optimizedBody147_99

def optimizedBody147_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_80 optimizedBody147_100

def optimizedBody147_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_26 optimizedBody147_101

def optimizedBody147_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_17 optimizedBody147_102

def optimizedBody147_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_3 optimizedBody147_103

def optimizedBody147_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_79 optimizedBody147_104

def optimizedBody147_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_75 optimizedBody147_105

def optimizedBody147_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_18 optimizedBody147_106

def optimizedBody147_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_17 optimizedBody147_107

def optimizedBody147_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_3 optimizedBody147_108

def optimizedBody147_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_74 optimizedBody147_109

def optimizedBody147_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_70 optimizedBody147_110

def optimizedBody147_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_3 optimizedBody147_111

def optimizedBody147_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_3 optimizedBody147_112

def optimizedBody147_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_69 optimizedBody147_113

def optimizedBody147_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_2 optimizedBody147_114

def optimizedBody147_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_1 optimizedBody147_115

def optimizedBody147_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody147_0 optimizedBody147_116

def optimized147 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(147, 6, optimizedBody147_117)
end InitECandidate.Proofs.StackAnalysis
