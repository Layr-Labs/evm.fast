import InitECandidate.Proofs.WordStages.Optimize632
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source648
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody648_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody648_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody648_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody648_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody648_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody648_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody648_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody648_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody648_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody648_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody648_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody648_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody648_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody648_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody648_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 4 16#64))

def optimizedBody648_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody648_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody648_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody648_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody648_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody648_2 optimizedBody648_18

def optimizedBody648_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody648_17 optimizedBody648_19

def optimizedBody648_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody648_7 optimizedBody648_20

def optimizedBody648_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody648_2 optimizedBody648_21

def optimizedBody648_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody648_4 optimizedBody648_22

def optimizedBody648_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody648_6 optimizedBody648_23

def optimizedBody648_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody648_2 optimizedBody648_24

def optimizedBody648_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody648_4 optimizedBody648_25

def optimizedBody648_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody648_5 optimizedBody648_26

def optimizedBody648_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody648_2 optimizedBody648_27

def optimizedBody648_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody648_4 optimizedBody648_28

def optimizedBody648_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody648_3 optimizedBody648_29

def optimizedBody648_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody648_2 optimizedBody648_30

def optimizedBody648_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody648_4 optimizedBody648_31

def optimizedBody648_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody648_16 optimizedBody648_32

def optimizedBody648_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody648_2 optimizedBody648_33

def optimizedBody648_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody648_15 optimizedBody648_34

def optimizedBody648_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody648_10 optimizedBody648_35

def optimizedBody648_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody648_12 optimizedBody648_36

def optimizedBody648_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody648_14 optimizedBody648_37

def optimizedBody648_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody648_10 optimizedBody648_38

def optimizedBody648_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody648_12 optimizedBody648_39

def optimizedBody648_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody648_13 optimizedBody648_40

def optimizedBody648_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody648_10 optimizedBody648_41

def optimizedBody648_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody648_12 optimizedBody648_42

def optimizedBody648_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody648_11 optimizedBody648_43

def optimizedBody648_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody648_10 optimizedBody648_44

def optimizedBody648_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody648_9 optimizedBody648_45

def optimizedBody648_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody648_8 optimizedBody648_46

def optimizedBody648_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody648_2 optimizedBody648_47

def optimizedBody648_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody648_7 optimizedBody648_48

def optimizedBody648_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody648_2 optimizedBody648_49

def optimizedBody648_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody648_4 optimizedBody648_50

def optimizedBody648_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody648_6 optimizedBody648_51

def optimizedBody648_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody648_2 optimizedBody648_52

def optimizedBody648_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody648_4 optimizedBody648_53

def optimizedBody648_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody648_5 optimizedBody648_54

def optimizedBody648_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody648_2 optimizedBody648_55

def optimizedBody648_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody648_4 optimizedBody648_56

def optimizedBody648_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody648_3 optimizedBody648_57

def optimizedBody648_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody648_2 optimizedBody648_58

def optimizedBody648_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody648_1 optimizedBody648_59

def optimizedBody648_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody648_0 optimizedBody648_60

def oracle648 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)) 2
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2)) 2 (Flapjack.Spt.ls 1)))
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2)) 2 Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 2))
              (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)) 1 Flapjack.Spt.ln) 1
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)) 1 (Flapjack.Spt.ls 2)) 0
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))))))
      Flapjack.Spt.ln))
def optimized648 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(648, 2, optimizedBody648_61)
theorem optimize648_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source648, oracle648) = optimized648 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize648_eq
end InitECandidate.Proofs.WordStages
