import InitECandidate.Proofs.WordStages.Optimize501
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source517
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody517_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody517_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (6, 6), (0, 2), (8, 8), (44, 44)]

def optimizedBody517_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody517_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody517_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody517_2 optimizedBody517_3

def optimizedBody517_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody517_1, 517, 2)) (some 475) ([]) (some (2, optimizedBody517_4, 517, 3))

def optimizedBody517_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody517_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody517_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 4), (48, 6), (50, 0), (52, 8)]

def optimizedBody517_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (6, 48), (8, 50), (0, 52)]

def optimizedBody517_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (6, 48), (8, 50), (0, 52)]

def optimizedBody517_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody517_10 optimizedBody517_3

def optimizedBody517_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody517_9, 517, 4)) (some 470) ([2]) (some (2, optimizedBody517_11, 517, 5))

def optimizedBody517_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody517_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 2 8 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody517_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody517_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 4 4 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody517_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody517_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 6 6 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody517_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody517_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 8 0 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody517_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody517_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody517_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody517_22, 517, 6)) (some 476) ([2, 4, 6, 8]) (some (2, optimizedBody517_4, 517, 7))

def optimizedBody517_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody517_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody517_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody517_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody517_26 optimizedBody517_3

def optimizedBody517_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody517_25, 517, 8)) (some 490) ([2]) (some (2, optimizedBody517_27, 517, 9))

def optimizedBody517_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody517_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody517_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody517_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody517_30 optimizedBody517_31

def optimizedBody517_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody517_29 optimizedBody517_32

def optimizedBody517_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody517_6 optimizedBody517_33

def optimizedBody517_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody517_28 optimizedBody517_34

def optimizedBody517_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody517_2 optimizedBody517_35

def optimizedBody517_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody517_24 optimizedBody517_36

def optimizedBody517_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody517_6 optimizedBody517_37

def optimizedBody517_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody517_23 optimizedBody517_38

def optimizedBody517_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody517_21 optimizedBody517_39

def optimizedBody517_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody517_20 optimizedBody517_40

def optimizedBody517_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody517_19 optimizedBody517_41

def optimizedBody517_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody517_18 optimizedBody517_42

def optimizedBody517_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody517_17 optimizedBody517_43

def optimizedBody517_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody517_16 optimizedBody517_44

def optimizedBody517_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody517_15 optimizedBody517_45

def optimizedBody517_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody517_14 optimizedBody517_46

def optimizedBody517_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody517_13 optimizedBody517_47

def optimizedBody517_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody517_6 optimizedBody517_48

def optimizedBody517_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody517_12 optimizedBody517_49

def optimizedBody517_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody517_8 optimizedBody517_50

def optimizedBody517_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody517_7 optimizedBody517_51

def optimizedBody517_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody517_6 optimizedBody517_52

def optimizedBody517_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody517_5 optimizedBody517_53

def optimizedBody517_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody517_0 optimizedBody517_54

def oracle517 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 0 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 2)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 4)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) (Flapjack.Spt.ls 3))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 22)) 4
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 2)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 2 Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 4)))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 22 Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) 22 Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22 Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))))))
def optimized517 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(517, 1, optimizedBody517_55)
theorem optimize517_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source517, oracle517) = optimized517 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize517_eq
end InitECandidate.Proofs.WordStages
