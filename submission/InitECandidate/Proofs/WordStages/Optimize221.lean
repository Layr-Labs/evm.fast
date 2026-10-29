import InitECandidate.Proofs.WordStages.Optimize205
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source221
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody221_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (10, 10), (8, 8), (6, 6), (0, 0), (12, 12), (14, 14), (16, 16), (18, 18)]

def optimizedBody221_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody221_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody221_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody221_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody221_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody221_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10)]

def optimizedBody221_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody221_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody221_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody221_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (12, 12), (18, 18), (16, 16), (14, 14)]

def optimizedBody221_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody221_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (14, 14)]

def optimizedBody221_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody221_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (16, 16)]

def optimizedBody221_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 4 16#64))

def optimizedBody221_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (18, 18)]

def optimizedBody221_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody221_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody221_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody221_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody221_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody221_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody221_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody221_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody221_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody221_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody221_8 optimizedBody221_25

def optimizedBody221_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody221_24 optimizedBody221_26

def optimizedBody221_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody221_23 optimizedBody221_27

def optimizedBody221_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody221_8 optimizedBody221_28

def optimizedBody221_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody221_20 optimizedBody221_29

def optimizedBody221_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody221_22 optimizedBody221_30

def optimizedBody221_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody221_8 optimizedBody221_31

def optimizedBody221_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody221_20 optimizedBody221_32

def optimizedBody221_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody221_21 optimizedBody221_33

def optimizedBody221_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody221_8 optimizedBody221_34

def optimizedBody221_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody221_20 optimizedBody221_35

def optimizedBody221_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody221_1 optimizedBody221_36

def optimizedBody221_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody221_8 optimizedBody221_37

def optimizedBody221_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody221_19 optimizedBody221_38

def optimizedBody221_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody221_18 optimizedBody221_39

def optimizedBody221_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody221_8 optimizedBody221_40

def optimizedBody221_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody221_17 optimizedBody221_41

def optimizedBody221_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody221_16 optimizedBody221_42

def optimizedBody221_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody221_15 optimizedBody221_43

def optimizedBody221_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody221_14 optimizedBody221_44

def optimizedBody221_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody221_13 optimizedBody221_45

def optimizedBody221_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody221_12 optimizedBody221_46

def optimizedBody221_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody221_11 optimizedBody221_47

def optimizedBody221_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody221_10 optimizedBody221_48

def optimizedBody221_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody221_9 optimizedBody221_49

def optimizedBody221_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody221_8 optimizedBody221_50

def optimizedBody221_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody221_7 optimizedBody221_51

def optimizedBody221_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody221_6 optimizedBody221_52

def optimizedBody221_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody221_5 optimizedBody221_53

def optimizedBody221_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody221_4 optimizedBody221_54

def optimizedBody221_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody221_3 optimizedBody221_55

def optimizedBody221_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody221_2 optimizedBody221_56

def optimizedBody221_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody221_1 optimizedBody221_57

def optimizedBody221_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody221_0 optimizedBody221_58

def oracle221 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 9))) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 7 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.ls 7)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 4 (Flapjack.Spt.ls 9))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 8))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 (Flapjack.Spt.ls 6)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 3 (Flapjack.Spt.ls 8)) (Flapjack.Spt.ls 9))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 6
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 5 (Flapjack.Spt.ls 2)))
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 2))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 9)))
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 (Flapjack.Spt.ls 2)) 0
              (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 2))))))
      Flapjack.Spt.ln))
def optimized221 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(221, 10, optimizedBody221_59)
theorem optimize221_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source221, oracle221) = optimized221 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize221_eq
end InitECandidate.Proofs.WordStages
