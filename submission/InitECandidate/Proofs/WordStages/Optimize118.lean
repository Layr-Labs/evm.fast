import InitECandidate.Proofs.WordStages.Optimize102
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source118
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody118_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(10, 0), (2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody118_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody118_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody118_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 12 2 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody118_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 1#64)

def optimizedBody118_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody118_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 2 14 12 0))

def optimizedBody118_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody118_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody118_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 12 4 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody118_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 4 14 12 0))

def optimizedBody118_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0)]

def optimizedBody118_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody118_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 12 6 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody118_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 6 14 12 0))

def optimizedBody118_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (0, 0)]

def optimizedBody118_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody118_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 12 8 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def optimizedBody118_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.addCarry 8 14 12 0))

def optimizedBody118_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody118_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2, 4, 6, 8]

def optimizedBody118_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody118_19 optimizedBody118_20

def optimizedBody118_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody118_18 optimizedBody118_21

def optimizedBody118_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody118_5 optimizedBody118_22

def optimizedBody118_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody118_17 optimizedBody118_23

def optimizedBody118_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody118_16 optimizedBody118_24

def optimizedBody118_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody118_1 optimizedBody118_25

def optimizedBody118_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody118_15 optimizedBody118_26

def optimizedBody118_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody118_14 optimizedBody118_27

def optimizedBody118_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody118_5 optimizedBody118_28

def optimizedBody118_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody118_13 optimizedBody118_29

def optimizedBody118_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody118_12 optimizedBody118_30

def optimizedBody118_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody118_1 optimizedBody118_31

def optimizedBody118_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody118_11 optimizedBody118_32

def optimizedBody118_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody118_10 optimizedBody118_33

def optimizedBody118_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody118_5 optimizedBody118_34

def optimizedBody118_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody118_9 optimizedBody118_35

def optimizedBody118_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody118_8 optimizedBody118_36

def optimizedBody118_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody118_1 optimizedBody118_37

def optimizedBody118_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody118_7 optimizedBody118_38

def optimizedBody118_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody118_6 optimizedBody118_39

def optimizedBody118_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody118_5 optimizedBody118_40

def optimizedBody118_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody118_4 optimizedBody118_41

def optimizedBody118_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody118_3 optimizedBody118_42

def optimizedBody118_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody118_2 optimizedBody118_43

def optimizedBody118_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody118_1 optimizedBody118_44

def optimizedBody118_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody118_0 optimizedBody118_45

def oracle118 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 4))) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1 (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 0)))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 2 (Flapjack.Spt.ls 1)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3)))
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 7)) 5
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4)) 7 (Flapjack.Spt.ls 1))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 1
              (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 6))))
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 3 Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 3))
              (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 7))))))
      Flapjack.Spt.ln))
def optimized118 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(118, 5, optimizedBody118_46)
theorem optimize118_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source118, oracle118) = optimized118 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize118_eq
end InitECandidate.Proofs.WordStages
