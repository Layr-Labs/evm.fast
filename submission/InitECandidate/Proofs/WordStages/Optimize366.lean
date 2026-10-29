import InitECandidate.Proofs.WordStages.Optimize350
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source366
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody366_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (0, 0)]

def optimizedBody366_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 6 208#64))

def optimizedBody366_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody366_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 6 216#64))

def optimizedBody366_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (46, 6)]

def optimizedBody366_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (0, 46)]

def optimizedBody366_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody366_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody366_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody366_6 optimizedBody366_7

def optimizedBody366_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody366_5, 366, 2)) (some 360) ([2, 4]) (some (2, optimizedBody366_8, 366, 3))

def optimizedBody366_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody366_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody366_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 272#64))

def optimizedBody366_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 280#64))

def optimizedBody366_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 6), (48, 0)]

def optimizedBody366_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 2), (14, 44), (10, 46), (8, 48)]

def optimizedBody366_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (14, 44), (10, 46), (8, 48)]

def optimizedBody366_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody366_16 optimizedBody366_7

def optimizedBody366_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody366_15, 366, 4)) (some 364) ([2, 4]) (some (2, optimizedBody366_17, 366, 5))

def optimizedBody366_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody366_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 8 264#64))

def optimizedBody366_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 33#64)

def optimizedBody366_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4)]

def optimizedBody366_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 6 0 0 4))

def optimizedBody366_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 12), (0, 0)]

def optimizedBody366_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 12)))

def optimizedBody366_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody366_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 10)))

def optimizedBody366_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 8 200#64))

def optimizedBody366_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 2)))

def optimizedBody366_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 655#64)))

def optimizedBody366_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody366_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 14 [2]

def optimizedBody366_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody366_31 optimizedBody366_32

def optimizedBody366_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody366_30 optimizedBody366_33

def optimizedBody366_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody366_29 optimizedBody366_34

def optimizedBody366_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody366_28 optimizedBody366_35

def optimizedBody366_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody366_19 optimizedBody366_36

def optimizedBody366_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody366_27 optimizedBody366_37

def optimizedBody366_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody366_26 optimizedBody366_38

def optimizedBody366_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody366_25 optimizedBody366_39

def optimizedBody366_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody366_24 optimizedBody366_40

def optimizedBody366_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody366_23 optimizedBody366_41

def optimizedBody366_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody366_22 optimizedBody366_42

def optimizedBody366_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody366_21 optimizedBody366_43

def optimizedBody366_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody366_20 optimizedBody366_44

def optimizedBody366_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody366_19 optimizedBody366_45

def optimizedBody366_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody366_10 optimizedBody366_46

def optimizedBody366_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody366_18 optimizedBody366_47

def optimizedBody366_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody366_14 optimizedBody366_48

def optimizedBody366_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody366_13 optimizedBody366_49

def optimizedBody366_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody366_11 optimizedBody366_50

def optimizedBody366_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody366_12 optimizedBody366_51

def optimizedBody366_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody366_11 optimizedBody366_52

def optimizedBody366_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody366_10 optimizedBody366_53

def optimizedBody366_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody366_9 optimizedBody366_54

def optimizedBody366_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody366_4 optimizedBody366_55

def optimizedBody366_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody366_3 optimizedBody366_56

def optimizedBody366_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody366_2 optimizedBody366_57

def optimizedBody366_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody366_1 optimizedBody366_58

def optimizedBody366_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody366_0 optimizedBody366_59

def oracle366 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 0 (Flapjack.Spt.ls 2))
            3
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
              (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 4))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 0))
              (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)))
            0
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 3
              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 6)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 4)) 22 (Flapjack.Spt.ls 0))
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 2 Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 5))
              (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)))
            (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))))
def optimized366 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(366, 2, optimizedBody366_60)
theorem optimize366_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source366, oracle366) = optimized366 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize366_eq
end InitECandidate.Proofs.WordStages
