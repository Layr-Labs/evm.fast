import InitECandidate.Proofs.WordStages.Optimize415
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source431
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody431_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (8, 2), (4, 4), (6, 6)]

def optimizedBody431_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody431_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0), (46, 4), (48, 8), (50, 6)]

def optimizedBody431_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (0, 46), (48, 48), (4, 50)]

def optimizedBody431_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (4, 50)]

def optimizedBody431_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody431_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_4 optimizedBody431_5

def optimizedBody431_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody431_3, 431, 2)) (some 68) ([2]) (some (2, optimizedBody431_6, 431, 3))

def optimizedBody431_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody431_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (44, 44), (46, 0), (48, 48), (50, 6), (52, 4)]

def optimizedBody431_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (0, 50), (52, 52)]

def optimizedBody431_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50), (52, 52)]

def optimizedBody431_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_11 optimizedBody431_5

def optimizedBody431_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody431_10, 431, 4)) (some 158) ([2, 4, 6]) (some (2, optimizedBody431_12, 431, 5))

def optimizedBody431_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 0)]

def optimizedBody431_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody431_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody431_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody431_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 18446744073709551480#64))

def optimizedBody431_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody431_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 48), (50, 2), (52, 52)]

def optimizedBody431_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52)]

def optimizedBody431_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52)]

def optimizedBody431_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_22 optimizedBody431_5

def optimizedBody431_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody431_21, 431, 6)) (some 79) ([2, 4, 6]) (some (2, optimizedBody431_23, 431, 7))

def optimizedBody431_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody431_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody431_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 16#64)

def optimizedBody431_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (8, 46), (46, 48), (4, 50), (0, 52)]

def optimizedBody431_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (8, 46), (46, 48), (4, 50), (0, 52)]

def optimizedBody431_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_29 optimizedBody431_5

def optimizedBody431_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody431_28, 431, 8)) (some 68) ([2]) (some (2, optimizedBody431_30, 431, 9))

def optimizedBody431_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (8, 8)]

def optimizedBody431_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody431_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody431_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody431_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody431_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody431_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551432#64))

def optimizedBody431_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody431_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 4)]

def optimizedBody431_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (48, 48)]

def optimizedBody431_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48)]

def optimizedBody431_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_42 optimizedBody431_5

def optimizedBody431_44 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody431_41, 431, 10)) (some 388) ([2, 4, 6]) (some (2, optimizedBody431_43, 431, 11))

def optimizedBody431_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 0), (48, 48)]

def optimizedBody431_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_8 optimizedBody431_45

def optimizedBody431_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_44 optimizedBody431_46

def optimizedBody431_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_40 optimizedBody431_47

def optimizedBody431_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_39 optimizedBody431_48

def optimizedBody431_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_38 optimizedBody431_49

def optimizedBody431_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_17 optimizedBody431_50

def optimizedBody431_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_16 optimizedBody431_51

def optimizedBody431_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_15 optimizedBody431_52

def optimizedBody431_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_37 optimizedBody431_53

def optimizedBody431_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_36 optimizedBody431_54

def optimizedBody431_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_35 optimizedBody431_55

def optimizedBody431_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_34 optimizedBody431_56

def optimizedBody431_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_33 optimizedBody431_57

def optimizedBody431_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_32 optimizedBody431_58

def optimizedBody431_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_8 optimizedBody431_59

def optimizedBody431_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_31 optimizedBody431_60

def optimizedBody431_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_22 optimizedBody431_61

def optimizedBody431_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_27 optimizedBody431_62

def optimizedBody431_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_8 optimizedBody431_63

def optimizedBody431_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (0, 48), (48, 50)]

def optimizedBody431_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_8 optimizedBody431_65

def optimizedBody431_67 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody431_64 optimizedBody431_66

def optimizedBody431_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 0), (48, 48)]

def optimizedBody431_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody431_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody431_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_70 optimizedBody431_5

def optimizedBody431_72 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody431_69, 431, 12)) (some 407) ([2]) (some (2, optimizedBody431_71, 431, 13))

def optimizedBody431_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 46), (48, 48)]

def optimizedBody431_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (6, 46), (0, 48)]

def optimizedBody431_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (0, 48)]

def optimizedBody431_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_75 optimizedBody431_5

def optimizedBody431_77 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody431_74, 431, 14)) (some 395) ([2]) (some (2, optimizedBody431_76, 431, 15))

def optimizedBody431_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody431_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody431_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (44, 44)]

def optimizedBody431_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody431_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody431_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_82 optimizedBody431_5

def optimizedBody431_84 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody431_81, 431, 16)) (some 423) ([2, 4]) (some (2, optimizedBody431_83, 431, 17))

def optimizedBody431_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody431_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody431_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_85 optimizedBody431_86

def optimizedBody431_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_26 optimizedBody431_87

def optimizedBody431_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_8 optimizedBody431_88

def optimizedBody431_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_84 optimizedBody431_89

def optimizedBody431_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_80 optimizedBody431_90

def optimizedBody431_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_37 optimizedBody431_91

def optimizedBody431_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_36 optimizedBody431_92

def optimizedBody431_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_79 optimizedBody431_93

def optimizedBody431_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_78 optimizedBody431_94

def optimizedBody431_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_8 optimizedBody431_95

def optimizedBody431_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_77 optimizedBody431_96

def optimizedBody431_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_73 optimizedBody431_97

def optimizedBody431_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_8 optimizedBody431_98

def optimizedBody431_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_72 optimizedBody431_99

def optimizedBody431_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_68 optimizedBody431_100

def optimizedBody431_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_8 optimizedBody431_101

def optimizedBody431_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_67 optimizedBody431_102

def optimizedBody431_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_26 optimizedBody431_103

def optimizedBody431_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_25 optimizedBody431_104

def optimizedBody431_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_8 optimizedBody431_105

def optimizedBody431_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_24 optimizedBody431_106

def optimizedBody431_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_20 optimizedBody431_107

def optimizedBody431_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_19 optimizedBody431_108

def optimizedBody431_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_18 optimizedBody431_109

def optimizedBody431_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_17 optimizedBody431_110

def optimizedBody431_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_16 optimizedBody431_111

def optimizedBody431_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_15 optimizedBody431_112

def optimizedBody431_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_14 optimizedBody431_113

def optimizedBody431_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_8 optimizedBody431_114

def optimizedBody431_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_13 optimizedBody431_115

def optimizedBody431_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_9 optimizedBody431_116

def optimizedBody431_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_8 optimizedBody431_117

def optimizedBody431_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_7 optimizedBody431_118

def optimizedBody431_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_2 optimizedBody431_119

def optimizedBody431_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_1 optimizedBody431_120

def optimizedBody431_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody431_0 optimizedBody431_121

def oracle431 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 22))))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 3
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
            4
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 1 Flapjack.Spt.ln))
              1
              (Flapjack.Spt.bs Flapjack.Spt.ln 24
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 0 Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0)))
                Flapjack.Spt.ln)
              3
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0))) 22
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 22)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                (Flapjack.Spt.ls 26)))
            0
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 0
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 22 (Flapjack.Spt.ls 1)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 Flapjack.Spt.ln))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))) 2
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 24
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22 Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
              2
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 3)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 24 (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs Flapjack.Spt.ln 22
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 23))))
              22 (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 22)))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                23 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
              23 (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) (Flapjack.Spt.ls 23)))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 22))))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
              (Flapjack.Spt.bs Flapjack.Spt.ln 25
                (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))))))))
def optimized431 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(431, 4, optimizedBody431_122)
theorem optimize431_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source431, oracle431) = optimized431 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize431_eq
end InitECandidate.Proofs.WordStages
