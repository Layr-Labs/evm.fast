import InitECandidate.Proofs.WordStages.Optimize735
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source751
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody751_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 4), (48, 2)]

def optimizedBody751_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (6, 48)]

def optimizedBody751_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (6, 48)]

def optimizedBody751_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody751_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_2 optimizedBody751_3

def optimizedBody751_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody751_1, 751, 2)) (some 736) ([2, 4]) (some (2, optimizedBody751_4, 751, 3))

def optimizedBody751_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody751_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody751_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 6 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody751_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody751_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 96#64)))

def optimizedBody751_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 0), (48, 6)]

def optimizedBody751_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (4, 48)]

def optimizedBody751_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48)]

def optimizedBody751_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_13 optimizedBody751_3

def optimizedBody751_15 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody751_12, 751, 4)) (some 736) ([2, 4]) (some (2, optimizedBody751_14, 751, 5))

def optimizedBody751_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody751_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody751_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody751_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody751_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody751_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody751_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_21 optimizedBody751_3

def optimizedBody751_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody751_20, 751, 6)) (some 736) ([2, 4]) (some (2, optimizedBody751_22, 751, 7))

def optimizedBody751_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody751_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody751_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody751_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_25 optimizedBody751_26

def optimizedBody751_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_24 optimizedBody751_27

def optimizedBody751_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_6 optimizedBody751_28

def optimizedBody751_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_23 optimizedBody751_29

def optimizedBody751_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_19 optimizedBody751_30

def optimizedBody751_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_18 optimizedBody751_31

def optimizedBody751_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_9 optimizedBody751_32

def optimizedBody751_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_17 optimizedBody751_33

def optimizedBody751_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_16 optimizedBody751_34

def optimizedBody751_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_6 optimizedBody751_35

def optimizedBody751_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_15 optimizedBody751_36

def optimizedBody751_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_11 optimizedBody751_37

def optimizedBody751_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_10 optimizedBody751_38

def optimizedBody751_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_9 optimizedBody751_39

def optimizedBody751_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_8 optimizedBody751_40

def optimizedBody751_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_7 optimizedBody751_41

def optimizedBody751_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_6 optimizedBody751_42

def optimizedBody751_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_5 optimizedBody751_43

def optimizedBody751_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody751_0 optimizedBody751_44

def oracle751 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.ls 22) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)) 0
              (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 2)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 22 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
            (Flapjack.Spt.ls 24))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 22 Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 23 Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))))))
def optimized751 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(751, 3, optimizedBody751_45)
theorem optimize751_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source751, oracle751) = optimized751 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize751_eq
end InitECandidate.Proofs.WordStages
