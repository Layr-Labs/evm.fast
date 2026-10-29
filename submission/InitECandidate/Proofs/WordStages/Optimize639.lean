import InitECandidate.Proofs.WordStages.Optimize623
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source639
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody639_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 0), (46, 16), (48, 8), (50, 12), (52, 2), (54, 10), (56, 6), (58, 14)]

def optimizedBody639_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (44, 44), (16, 46), (12, 48), (0, 50), (6, 52), (4, 54), (10, 56), (14, 58)]

def optimizedBody639_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (16, 46), (12, 48), (0, 50), (6, 52), (4, 54), (10, 56), (14, 58)]

def optimizedBody639_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody639_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody639_2 optimizedBody639_3

def optimizedBody639_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody639_1, 639, 2)) (some 126) ([2, 4]) (some (2, optimizedBody639_4, 639, 3))

def optimizedBody639_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody639_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (8, 8)]

def optimizedBody639_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (4, 6), (2, 4)]

def optimizedBody639_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 8 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody639_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (46, 44), (44, 12), (48, 2), (50, 8)]

def optimizedBody639_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (0, 44), (6, 48), (4, 50)]

def optimizedBody639_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (0, 44), (6, 48), (4, 50)]

def optimizedBody639_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody639_12 optimizedBody639_3

def optimizedBody639_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody639_11, 639, 4)) (some 77) ([2, 4, 6]) (some (2, optimizedBody639_13, 639, 5))

def optimizedBody639_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody639_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 4 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody639_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody639_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody639_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody639_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 0 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody639_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 0 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody639_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (46, 46)]

def optimizedBody639_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 46)]

def optimizedBody639_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (18, 46)]

def optimizedBody639_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody639_24 optimizedBody639_3

def optimizedBody639_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody639_23, 639, 6)) (some 78) ([2, 4]) (some (2, optimizedBody639_25, 639, 7))

def optimizedBody639_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody639_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody639_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 18 [2]

def optimizedBody639_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody639_28 optimizedBody639_29

def optimizedBody639_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody639_27 optimizedBody639_30

def optimizedBody639_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody639_6 optimizedBody639_31

def optimizedBody639_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody639_26 optimizedBody639_32

def optimizedBody639_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody639_22 optimizedBody639_33

def optimizedBody639_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody639_21 optimizedBody639_34

def optimizedBody639_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody639_20 optimizedBody639_35

def optimizedBody639_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody639_19 optimizedBody639_36

def optimizedBody639_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody639_18 optimizedBody639_37

def optimizedBody639_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody639_17 optimizedBody639_38

def optimizedBody639_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody639_16 optimizedBody639_39

def optimizedBody639_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody639_15 optimizedBody639_40

def optimizedBody639_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody639_6 optimizedBody639_41

def optimizedBody639_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody639_14 optimizedBody639_42

def optimizedBody639_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody639_10 optimizedBody639_43

def optimizedBody639_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody639_9 optimizedBody639_44

def optimizedBody639_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody639_8 optimizedBody639_45

def optimizedBody639_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody639_6 optimizedBody639_46

def optimizedBody639_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(16, 16), (12, 12), (0, 0), (6, 6), (4, 4), (10, 10), (14, 14), (8, 8), (44, 44)]

def optimizedBody639_49 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 12) optimizedBody639_47 optimizedBody639_48

def optimizedBody639_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44)]

def optimizedBody639_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody639_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody639_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody639_52 optimizedBody639_3

def optimizedBody639_54 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody639_51, 639, 8)) (some 638) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody639_53, 639, 9))

def optimizedBody639_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody639_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody639_28 optimizedBody639_55

def optimizedBody639_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody639_27 optimizedBody639_56

def optimizedBody639_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody639_6 optimizedBody639_57

def optimizedBody639_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody639_54 optimizedBody639_58

def optimizedBody639_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody639_50 optimizedBody639_59

def optimizedBody639_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody639_6 optimizedBody639_60

def optimizedBody639_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody639_6 optimizedBody639_61

def optimizedBody639_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody639_49 optimizedBody639_62

def optimizedBody639_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody639_7 optimizedBody639_63

def optimizedBody639_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody639_6 optimizedBody639_64

def optimizedBody639_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody639_5 optimizedBody639_65

def optimizedBody639_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody639_0 optimizedBody639_66

def oracle639 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 8 (Flapjack.Spt.ls 2))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))
                (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 6))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 8)) (Flapjack.Spt.ls 4))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))
                (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 2))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 4))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 1)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 22 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
              Flapjack.Spt.ln))))))
def optimized639 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(639, 9, optimizedBody639_67)
theorem optimize639_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source639, oracle639) = optimized639 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize639_eq
end InitECandidate.Proofs.WordStages
