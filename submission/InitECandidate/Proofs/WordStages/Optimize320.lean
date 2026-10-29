import InitECandidate.Proofs.WordStages.Optimize304
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source320
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody320_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 0), (46, 8), (48, 2), (50, 10)]

def optimizedBody320_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 2), (44, 44), (10, 46), (14, 48), (12, 50)]

def optimizedBody320_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (10, 46), (14, 48), (12, 50)]

def optimizedBody320_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody320_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_2 optimizedBody320_3

def optimizedBody320_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody320_1, 320, 2)) (some 310) ([2, 4, 6]) (some (2, optimizedBody320_4, 320, 3))

def optimizedBody320_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody320_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody320_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 14 0#64))

def optimizedBody320_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody320_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody320_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 1#64)

def optimizedBody320_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8)]

def optimizedBody320_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_11 optimizedBody320_12

def optimizedBody320_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody320_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_14 optimizedBody320_12

def optimizedBody320_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 6) optimizedBody320_13 optimizedBody320_15

def optimizedBody320_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody320_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody320_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def optimizedBody320_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_18 optimizedBody320_19

def optimizedBody320_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_10 optimizedBody320_19

def optimizedBody320_22 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 6) optimizedBody320_20 optimizedBody320_21

def optimizedBody320_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 0#64)

def optimizedBody320_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6)]

def optimizedBody320_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 6 6 (Flapjack.WordRegImm.reg 8)))

def optimizedBody320_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 4), (4, 0), (2, 2)]

def optimizedBody320_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44), (46, 14)]

def optimizedBody320_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 44), (6, 46)]

def optimizedBody320_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (6, 46)]

def optimizedBody320_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_29 optimizedBody320_3

def optimizedBody320_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody320_28, 320, 4)) (some 319) ([2, 4, 6, 8]) (some (2, optimizedBody320_30, 320, 5))

def optimizedBody320_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (6, 6), (4, 4)]

def optimizedBody320_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_6 optimizedBody320_32

def optimizedBody320_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_31 optimizedBody320_33

def optimizedBody320_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_27 optimizedBody320_34

def optimizedBody320_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_14 optimizedBody320_35

def optimizedBody320_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_26 optimizedBody320_36

def optimizedBody320_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_6 optimizedBody320_37

def optimizedBody320_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (10, 10), (6, 4), (4, 0), (2, 2)]

def optimizedBody320_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 44), (46, 14)]

def optimizedBody320_41 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody320_28, 320, 6)) (some 315) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody320_30, 320, 7))

def optimizedBody320_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_41 optimizedBody320_33

def optimizedBody320_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_40 optimizedBody320_42

def optimizedBody320_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_14 optimizedBody320_43

def optimizedBody320_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_39 optimizedBody320_44

def optimizedBody320_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_6 optimizedBody320_45

def optimizedBody320_47 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.reg 6) optimizedBody320_38 optimizedBody320_46

def optimizedBody320_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody320_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody320_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody320_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody320_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody320_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_51 optimizedBody320_52

def optimizedBody320_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_50 optimizedBody320_53

def optimizedBody320_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_49 optimizedBody320_54

def optimizedBody320_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_48 optimizedBody320_55

def optimizedBody320_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_6 optimizedBody320_56

def optimizedBody320_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_47 optimizedBody320_57

def optimizedBody320_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_25 optimizedBody320_58

def optimizedBody320_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_24 optimizedBody320_59

def optimizedBody320_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_23 optimizedBody320_60

def optimizedBody320_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_6 optimizedBody320_61

def optimizedBody320_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_22 optimizedBody320_62

def optimizedBody320_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_10 optimizedBody320_63

def optimizedBody320_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_17 optimizedBody320_64

def optimizedBody320_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_6 optimizedBody320_65

def optimizedBody320_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_16 optimizedBody320_66

def optimizedBody320_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_10 optimizedBody320_67

def optimizedBody320_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_9 optimizedBody320_68

def optimizedBody320_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_8 optimizedBody320_69

def optimizedBody320_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_7 optimizedBody320_70

def optimizedBody320_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_6 optimizedBody320_71

def optimizedBody320_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_5 optimizedBody320_72

def optimizedBody320_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody320_0 optimizedBody320_73

def oracle320 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.ls 4)))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 3))))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 3))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)) (Flapjack.Spt.ls 3))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0)) 5
                (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 5)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 2))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 8))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2))))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 6)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 4)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) (Flapjack.Spt.ls 5)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 4))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 0))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
              (Flapjack.Spt.ls 25))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
              (Flapjack.Spt.ls 24))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) (Flapjack.Spt.ls 22))
            Flapjack.Spt.ln)))))
def optimized320 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(320, 6, optimizedBody320_74)
theorem optimize320_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source320, oracle320) = optimized320 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize320_eq
end InitECandidate.Proofs.WordStages
