import InitECandidate.Proofs.WordStages.Optimize204
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source220
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody220_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody220_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 1#64)

def optimizedBody220_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody220_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody220_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody220_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody220_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody220_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody220_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 2 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody220_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def optimizedBody220_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody220_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody220_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody220_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody220_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 4 16#64))

def optimizedBody220_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 4 24#64))

def optimizedBody220_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody220_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody220_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody220_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody220_2 optimizedBody220_18

def optimizedBody220_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody220_17 optimizedBody220_19

def optimizedBody220_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody220_7 optimizedBody220_20

def optimizedBody220_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody220_2 optimizedBody220_21

def optimizedBody220_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody220_4 optimizedBody220_22

def optimizedBody220_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody220_6 optimizedBody220_23

def optimizedBody220_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody220_2 optimizedBody220_24

def optimizedBody220_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody220_4 optimizedBody220_25

def optimizedBody220_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody220_5 optimizedBody220_26

def optimizedBody220_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody220_2 optimizedBody220_27

def optimizedBody220_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody220_4 optimizedBody220_28

def optimizedBody220_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody220_3 optimizedBody220_29

def optimizedBody220_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody220_2 optimizedBody220_30

def optimizedBody220_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody220_4 optimizedBody220_31

def optimizedBody220_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody220_16 optimizedBody220_32

def optimizedBody220_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody220_2 optimizedBody220_33

def optimizedBody220_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody220_15 optimizedBody220_34

def optimizedBody220_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody220_10 optimizedBody220_35

def optimizedBody220_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody220_12 optimizedBody220_36

def optimizedBody220_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody220_14 optimizedBody220_37

def optimizedBody220_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody220_10 optimizedBody220_38

def optimizedBody220_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody220_12 optimizedBody220_39

def optimizedBody220_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody220_13 optimizedBody220_40

def optimizedBody220_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody220_10 optimizedBody220_41

def optimizedBody220_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody220_12 optimizedBody220_42

def optimizedBody220_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody220_11 optimizedBody220_43

def optimizedBody220_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody220_10 optimizedBody220_44

def optimizedBody220_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody220_9 optimizedBody220_45

def optimizedBody220_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody220_8 optimizedBody220_46

def optimizedBody220_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody220_2 optimizedBody220_47

def optimizedBody220_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody220_7 optimizedBody220_48

def optimizedBody220_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody220_2 optimizedBody220_49

def optimizedBody220_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody220_4 optimizedBody220_50

def optimizedBody220_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody220_6 optimizedBody220_51

def optimizedBody220_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody220_2 optimizedBody220_52

def optimizedBody220_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody220_4 optimizedBody220_53

def optimizedBody220_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody220_5 optimizedBody220_54

def optimizedBody220_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody220_2 optimizedBody220_55

def optimizedBody220_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody220_4 optimizedBody220_56

def optimizedBody220_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody220_3 optimizedBody220_57

def optimizedBody220_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody220_2 optimizedBody220_58

def optimizedBody220_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody220_1 optimizedBody220_59

def optimizedBody220_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody220_0 optimizedBody220_60

def oracle220 : Option (Spt Nat) :=
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
def optimized220 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(220, 2, optimizedBody220_61)
theorem optimize220_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source220, oracle220) = optimized220 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize220_eq
end InitECandidate.Proofs.WordStages
