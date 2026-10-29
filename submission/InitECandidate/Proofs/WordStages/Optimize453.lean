import InitECandidate.Proofs.WordStages.Optimize437
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source453
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody453_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (8, 2), (4, 4), (6, 6)]

def optimizedBody453_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody453_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody453_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody453_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 18446744073709551400#64))

def optimizedBody453_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 8), (44, 0), (46, 4), (48, 6)]

def optimizedBody453_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (6, 2), (8, 44), (0, 46), (48, 48)]

def optimizedBody453_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (0, 46), (48, 48)]

def optimizedBody453_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody453_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody453_7 optimizedBody453_8

def optimizedBody453_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody453_6, 453, 2)) (some 186) ([2, 4]) (some (2, optimizedBody453_9, 453, 3))

def optimizedBody453_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody453_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody453_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody453_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody453_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody453_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody453_14 optimizedBody453_15

def optimizedBody453_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody453_13 optimizedBody453_16

def optimizedBody453_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody453_11 optimizedBody453_17

def optimizedBody453_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody453_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 2) optimizedBody453_18 optimizedBody453_19

def optimizedBody453_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody453_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody453_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 0), (44, 8), (46, 2), (50, 0), (48, 48)]

def optimizedBody453_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 2), (8, 44), (46, 46), (50, 50), (6, 48)]

def optimizedBody453_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (46, 46), (50, 50), (6, 48)]

def optimizedBody453_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody453_25 optimizedBody453_8

def optimizedBody453_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody453_24, 453, 4)) (some 186) ([2, 4]) (some (2, optimizedBody453_26, 453, 5))

def optimizedBody453_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody453_29 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody453_18 optimizedBody453_19

def optimizedBody453_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 4)]

def optimizedBody453_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 40#64)

def optimizedBody453_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 8), (46, 46), (48, 2), (50, 50)]

def optimizedBody453_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (6, 46), (0, 48), (4, 50)]

def optimizedBody453_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (0, 48), (4, 50)]

def optimizedBody453_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody453_34 optimizedBody453_8

def optimizedBody453_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody453_33, 453, 6)) (some 451) ([2, 4, 6]) (some (2, optimizedBody453_35, 453, 7))

def optimizedBody453_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody453_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (44, 44)]

def optimizedBody453_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody453_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody453_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody453_40 optimizedBody453_8

def optimizedBody453_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody453_39, 453, 8)) (some 193) ([2, 4]) (some (2, optimizedBody453_41, 453, 9))

def optimizedBody453_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody453_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody453_11 optimizedBody453_43

def optimizedBody453_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody453_42 optimizedBody453_44

def optimizedBody453_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody453_38 optimizedBody453_45

def optimizedBody453_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody453_11 optimizedBody453_46

def optimizedBody453_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44)]

def optimizedBody453_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody453_11 optimizedBody453_48

def optimizedBody453_50 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody453_47 optimizedBody453_49

def optimizedBody453_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody453_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody453_14 optimizedBody453_51

def optimizedBody453_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody453_13 optimizedBody453_52

def optimizedBody453_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody453_11 optimizedBody453_53

def optimizedBody453_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody453_50 optimizedBody453_54

def optimizedBody453_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody453_13 optimizedBody453_55

def optimizedBody453_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody453_37 optimizedBody453_56

def optimizedBody453_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody453_28 optimizedBody453_57

def optimizedBody453_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody453_11 optimizedBody453_58

def optimizedBody453_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody453_36 optimizedBody453_59

def optimizedBody453_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody453_32 optimizedBody453_60

def optimizedBody453_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody453_31 optimizedBody453_61

def optimizedBody453_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody453_30 optimizedBody453_62

def optimizedBody453_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody453_11 optimizedBody453_63

def optimizedBody453_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody453_11 optimizedBody453_64

def optimizedBody453_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody453_29 optimizedBody453_65

def optimizedBody453_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody453_13 optimizedBody453_66

def optimizedBody453_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody453_28 optimizedBody453_67

def optimizedBody453_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody453_11 optimizedBody453_68

def optimizedBody453_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody453_27 optimizedBody453_69

def optimizedBody453_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody453_23 optimizedBody453_70

def optimizedBody453_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody453_22 optimizedBody453_71

def optimizedBody453_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody453_21 optimizedBody453_72

def optimizedBody453_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody453_11 optimizedBody453_73

def optimizedBody453_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody453_11 optimizedBody453_74

def optimizedBody453_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody453_20 optimizedBody453_75

def optimizedBody453_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody453_13 optimizedBody453_76

def optimizedBody453_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody453_12 optimizedBody453_77

def optimizedBody453_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody453_11 optimizedBody453_78

def optimizedBody453_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody453_10 optimizedBody453_79

def optimizedBody453_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody453_5 optimizedBody453_80

def optimizedBody453_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody453_4 optimizedBody453_81

def optimizedBody453_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody453_3 optimizedBody453_82

def optimizedBody453_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody453_2 optimizedBody453_83

def optimizedBody453_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody453_1 optimizedBody453_84

def optimizedBody453_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody453_0 optimizedBody453_85

def oracle453 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.ls 2))))
            0
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 Flapjack.Spt.ln) 1
              (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
              1 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 0 Flapjack.Spt.ln))
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln) 2
              (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 1)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)) 1
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 3)))
              1
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 24
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 3 Flapjack.Spt.ln) 3
              (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs Flapjack.Spt.ln 1
              (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 1)) 4
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2)) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
              (Flapjack.Spt.ls 24)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) (Flapjack.Spt.ls 23))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
              (Flapjack.Spt.ls 22))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
              (Flapjack.Spt.ls 23)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 25)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))))
def optimized453 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(453, 4, optimizedBody453_86)
theorem optimize453_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source453, oracle453) = optimized453 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize453_eq
end InitECandidate.Proofs.WordStages
